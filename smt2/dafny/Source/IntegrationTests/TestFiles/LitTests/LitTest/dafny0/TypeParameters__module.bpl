// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy

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

const unique class._System.array2?: ClassName;

function Tclass._System.array2?(Ty) : Ty;

const unique Tagclass._System.array2?: TyTag;

// Tclass._System.array2? Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tag(Tclass._System.array2?(_System.array2$arg)) == Tagclass._System.array2?
     && TagFamily(Tclass._System.array2?(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2?_0(Ty) : Ty;

// Tclass._System.array2? injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2?(_System.array2$arg) } 
  Tclass._System.array2?_0(Tclass._System.array2?(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2?
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2?(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2?(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2?(_System.array2$arg)));

axiom (forall o: ref :: { _System.array2.Length0(o) } 0 <= _System.array2.Length0(o));

axiom (forall o: ref :: { _System.array2.Length1(o) } 0 <= _System.array2.Length1(o));

// array2.: Type axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
     ==> $IsBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg));

// array2.: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int :: 
  { read($h, $o, MultiIndexField(IndexField($i0), $i1)), Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && 
      0 <= $i0
       && $i0 < _System.array2.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array2.Length1($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(IndexField($i0), $i1)), _System.array2$arg, $h));

// $Is axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array2?(_System.array2$arg)) } 
  $Is($o, Tclass._System.array2?(_System.array2$arg))
     <==> $o == null || dtype($o) == Tclass._System.array2?(_System.array2$arg));

// $IsAlloc axiom for array type array2
axiom (forall _System.array2$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc($o, Tclass._System.array2?(_System.array2$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array2.Length0(ref) : int;

// array2.Length0: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length0($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length0($o), TInt));

// array2.Length0: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length0($o), TInt, $h));

function _System.array2.Length1(ref) : int;

// array2.Length1: Type axiom
axiom (forall _System.array2$arg: Ty, $o: ref :: 
  { _System.array2.Length1($o), Tclass._System.array2?(_System.array2$arg) } 
  $o != null && dtype($o) == Tclass._System.array2?(_System.array2$arg)
     ==> $Is(_System.array2.Length1($o), TInt));

// array2.Length1: Allocation axiom
axiom (forall _System.array2$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array2.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array2?(_System.array2$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array2?(_System.array2$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array2.Length1($o), TInt, $h));

function Tclass._System.array2(Ty) : Ty;

const unique Tagclass._System.array2: TyTag;

// Tclass._System.array2 Tag
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tag(Tclass._System.array2(_System.array2$arg)) == Tagclass._System.array2
     && TagFamily(Tclass._System.array2(_System.array2$arg)) == tytagFamily$array2);

function Tclass._System.array2_0(Ty) : Ty;

// Tclass._System.array2 injectivity 0
axiom (forall _System.array2$arg: Ty :: 
  { Tclass._System.array2(_System.array2$arg) } 
  Tclass._System.array2_0(Tclass._System.array2(_System.array2$arg))
     == _System.array2$arg);

// Box/unbox axiom for Tclass._System.array2
axiom (forall _System.array2$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array2(_System.array2$arg)) } 
  $IsBox(bx, Tclass._System.array2(_System.array2$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array2(_System.array2$arg)));

// $Is axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array2(_System.array2$arg)) } 
    { $Is(c#0, Tclass._System.array2?(_System.array2$arg)) } 
  $Is(c#0, Tclass._System.array2(_System.array2$arg))
     <==> $Is(c#0, Tclass._System.array2?(_System.array2$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array2
axiom (forall _System.array2$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array2(_System.array2$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array2?(_System.array2$arg), $h));

const unique class._System.array3?: ClassName;

function Tclass._System.array3?(Ty) : Ty;

const unique Tagclass._System.array3?: TyTag;

// Tclass._System.array3? Tag
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3?(_System.array3$arg) } 
  Tag(Tclass._System.array3?(_System.array3$arg)) == Tagclass._System.array3?
     && TagFamily(Tclass._System.array3?(_System.array3$arg)) == tytagFamily$array3);

function Tclass._System.array3?_0(Ty) : Ty;

// Tclass._System.array3? injectivity 0
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3?(_System.array3$arg) } 
  Tclass._System.array3?_0(Tclass._System.array3?(_System.array3$arg))
     == _System.array3$arg);

// Box/unbox axiom for Tclass._System.array3?
axiom (forall _System.array3$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array3?(_System.array3$arg)) } 
  $IsBox(bx, Tclass._System.array3?(_System.array3$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array3?(_System.array3$arg)));

axiom (forall o: ref :: { _System.array3.Length0(o) } 0 <= _System.array3.Length0(o));

axiom (forall o: ref :: { _System.array3.Length1(o) } 0 <= _System.array3.Length1(o));

axiom (forall o: ref :: { _System.array3.Length2(o) } 0 <= _System.array3.Length2(o));

// array3.: Type axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int, $i2: int :: 
  { read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && 
      0 <= $i0
       && $i0 < _System.array3.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array3.Length1($o)
       && 
      0 <= $i2
       && $i2 < _System.array3.Length2($o)
     ==> $IsBox(read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), 
      _System.array3$arg));

// array3.: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref, $i0: int, $i1: int, $i2: int :: 
  { read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && 
      0 <= $i0
       && $i0 < _System.array3.Length0($o)
       && 
      0 <= $i1
       && $i1 < _System.array3.Length1($o)
       && 
      0 <= $i2
       && $i2 < _System.array3.Length2($o)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, MultiIndexField(MultiIndexField(IndexField($i0), $i1), $i2)), 
      _System.array3$arg, 
      $h));

// $Is axiom for array type array3
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { $Is($o, Tclass._System.array3?(_System.array3$arg)) } 
  $Is($o, Tclass._System.array3?(_System.array3$arg))
     <==> $o == null || dtype($o) == Tclass._System.array3?(_System.array3$arg));

// $IsAlloc axiom for array type array3
axiom (forall _System.array3$arg: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._System.array3?(_System.array3$arg), $h) } 
  $IsAlloc($o, Tclass._System.array3?(_System.array3$arg), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _System.array3.Length0(ref) : int;

// array3.Length0: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length0($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length0($o), TInt));

// array3.Length0: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length0($o), TInt, $h));

function _System.array3.Length1(ref) : int;

// array3.Length1: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length1($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length1($o), TInt));

// array3.Length1: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length1($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length1($o), TInt, $h));

function _System.array3.Length2(ref) : int;

// array3.Length2: Type axiom
axiom (forall _System.array3$arg: Ty, $o: ref :: 
  { _System.array3.Length2($o), Tclass._System.array3?(_System.array3$arg) } 
  $o != null && dtype($o) == Tclass._System.array3?(_System.array3$arg)
     ==> $Is(_System.array3.Length2($o), TInt));

// array3.Length2: Allocation axiom
axiom (forall _System.array3$arg: Ty, $h: Heap, $o: ref :: 
  { _System.array3.Length2($o), $Unbox(read($h, $o, alloc)): bool, Tclass._System.array3?(_System.array3$arg) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._System.array3?(_System.array3$arg)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_System.array3.Length2($o), TInt, $h));

function Tclass._System.array3(Ty) : Ty;

const unique Tagclass._System.array3: TyTag;

// Tclass._System.array3 Tag
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3(_System.array3$arg) } 
  Tag(Tclass._System.array3(_System.array3$arg)) == Tagclass._System.array3
     && TagFamily(Tclass._System.array3(_System.array3$arg)) == tytagFamily$array3);

function Tclass._System.array3_0(Ty) : Ty;

// Tclass._System.array3 injectivity 0
axiom (forall _System.array3$arg: Ty :: 
  { Tclass._System.array3(_System.array3$arg) } 
  Tclass._System.array3_0(Tclass._System.array3(_System.array3$arg))
     == _System.array3$arg);

// Box/unbox axiom for Tclass._System.array3
axiom (forall _System.array3$arg: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.array3(_System.array3$arg)) } 
  $IsBox(bx, Tclass._System.array3(_System.array3$arg))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._System.array3(_System.array3$arg)));

// $Is axiom for non-null type _System.array3
axiom (forall _System.array3$arg: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._System.array3(_System.array3$arg)) } 
    { $Is(c#0, Tclass._System.array3?(_System.array3$arg)) } 
  $Is(c#0, Tclass._System.array3(_System.array3$arg))
     <==> $Is(c#0, Tclass._System.array3?(_System.array3$arg)) && c#0 != null);

// $IsAlloc axiom for non-null type _System.array3
axiom (forall _System.array3$arg: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._System.array3(_System.array3$arg), $h) } 
    { $IsAlloc(c#0, Tclass._System.array3?(_System.array3$arg), $h) } 
  $IsAlloc(c#0, Tclass._System.array3(_System.array3$arg), $h)
     <==> $IsAlloc(c#0, Tclass._System.array3?(_System.array3$arg), $h));

function Tclass._System.___hFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hFunc3: TyTag;

// Tclass._System.___hFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hFunc3
     && TagFamily(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#Func3);

function Tclass._System.___hFunc3_0(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_0(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hFunc3_1(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_1(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hFunc3_2(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_2(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hFunc3_3(Ty) : Ty;

// Tclass._System.___hFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hFunc3_3(Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R)));

function Handle3([Heap,Box,Box,Box]Box, [Heap,Box,Box,Box]bool, [Heap,Box,Box,Box]Set)
   : HandleType;

function Apply3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Box;

function Requires3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : bool;

function Reads3(Ty, Ty, Ty, Ty, Heap, HandleType, Box, Box, Box) : Set;

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  Apply3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2)
     == h[heap, bx0, bx1, bx2]);

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2) } 
  r[heap, bx0, bx1, bx2]
     ==> Requires3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2));

axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    h: [Heap,Box,Box,Box]Box, 
    r: [Heap,Box,Box,Box]bool, 
    rd: [Heap,Box,Box,Box]Set, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box, 
    bx: Box :: 
  { Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx) } 
  Set#IsMember(Reads3(t0, t1, t2, t3, heap, Handle3(h, r, rd), bx0, bx1, bx2), bx)
     == Set#IsMember(rd[heap, bx0, bx1, bx2], bx));

function {:inline} Requires3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

function {:inline} Reads3#canCall(t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box)
   : bool
{
  true
}

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Reads3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Requires3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// frame axiom for Apply3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    h0: Heap, 
    h1: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { $HeapSucc(h0, h1), Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2) } 
  $HeapSucc(h0, h1)
       && 
      $IsGoodHeap(h0)
       && $IsGoodHeap(h1)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall o: ref, fld: Field :: 
        o != null && Set#IsMember(Reads3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2), $Box(o))
           ==> read(h0, o, fld) == read(h1, o, fld))
     ==> Apply3(t0, t1, t2, t3, h0, f, bx0, bx1, bx2)
       == Apply3(t0, t1, t2, t3, h1, f, bx0, bx1, bx2));

// empty-reads property for Reads3 
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     ==> (Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
       <==> Set#Equal(Reads3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2), Set#Empty(): Set)));

// empty-reads property for Requires3
axiom (forall t0: Ty, 
    t1: Ty, 
    t2: Ty, 
    t3: Ty, 
    heap: Heap, 
    f: HandleType, 
    bx0: Box, 
    bx1: Box, 
    bx2: Box :: 
  { Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), $IsGoodHeap(heap) } 
    { Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2) } 
  $IsGoodHeap(heap)
       && 
      $IsBox(bx0, t0)
       && $IsBox(bx1, t1)
       && $IsBox(bx2, t2)
       && $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && Set#Equal(Reads3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2), Set#Empty(): Set)
     ==> Requires3(t0, t1, t2, t3, $OneHeap, f, bx0, bx1, bx2)
       == Requires3(t0, t1, t2, t3, heap, f, bx0, bx1, bx2));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
     <==> (forall h: Heap, bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsGoodHeap(h)
           && 
          $IsBox(bx0, t0)
           && $IsBox(bx1, t1)
           && $IsBox(bx2, t2)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, u0: Ty, u1: Ty, u2: Ty, u3: Ty :: 
  { $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3)), $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)) } 
  $Is(f, Tclass._System.___hFunc3(t0, t1, t2, t3))
       && (forall bx: Box :: 
        { $IsBox(bx, u0) } { $IsBox(bx, t0) } 
        $IsBox(bx, u0) ==> $IsBox(bx, t0))
       && (forall bx: Box :: 
        { $IsBox(bx, u1) } { $IsBox(bx, t1) } 
        $IsBox(bx, u1) ==> $IsBox(bx, t1))
       && (forall bx: Box :: 
        { $IsBox(bx, u2) } { $IsBox(bx, t2) } 
        $IsBox(bx, u2) ==> $IsBox(bx, t2))
       && (forall bx: Box :: 
        { $IsBox(bx, t3) } { $IsBox(bx, u3) } 
        $IsBox(bx, t3) ==> $IsBox(bx, u3))
     ==> $Is(f, Tclass._System.___hFunc3(u0, u1, u2, u3)));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h)
     ==> ($IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
       <==> (forall bx0: Box, bx1: Box, bx2: Box :: 
        { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
          { Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
        $IsBox(bx0, t0)
             && $IsAllocBox(bx0, t0, h)
             && 
            $IsBox(bx1, t1)
             && $IsAllocBox(bx1, t1, h)
             && 
            $IsBox(bx2, t2)
             && $IsAllocBox(bx2, t2, h)
             && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
           ==> (forall r: ref :: 
            { Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r)) } 
            r != null && Set#IsMember(Reads3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), $Box(r))
               ==> $Unbox(read(h, r, alloc)): bool))));

axiom (forall f: HandleType, t0: Ty, t1: Ty, t2: Ty, t3: Ty, h: Heap :: 
  { $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h) } 
  $IsGoodHeap(h) && $IsAlloc(f, Tclass._System.___hFunc3(t0, t1, t2, t3), h)
     ==> (forall bx0: Box, bx1: Box, bx2: Box :: 
      { Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2) } 
      $IsAllocBox(bx0, t0, h)
           && $IsAllocBox(bx1, t1, h)
           && $IsAllocBox(bx2, t2, h)
           && Requires3(t0, t1, t2, t3, h, f, bx0, bx1, bx2)
         ==> $IsAllocBox(Apply3(t0, t1, t2, t3, h, f, bx0, bx1, bx2), t3, h)));

function Tclass._System.___hPartialFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hPartialFunc3: TyTag;

// Tclass._System.___hPartialFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hPartialFunc3
     && TagFamily(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#PartialFunc3);

function Tclass._System.___hPartialFunc3_0(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_0(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hPartialFunc3_1(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_1(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hPartialFunc3_2(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_2(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hPartialFunc3_3(Ty) : Ty;

// Tclass._System.___hPartialFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hPartialFunc3_3(Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hPartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Set#Equal(Reads3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0), Set#Empty(): Set)));

// $IsAlloc axiom for subset type _System._#PartialFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hFunc3(#$T0, #$T1, #$T2, #$R), $h));

function Tclass._System.___hTotalFunc3(Ty, Ty, Ty, Ty) : Ty;

const unique Tagclass._System.___hTotalFunc3: TyTag;

// Tclass._System.___hTotalFunc3 Tag
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tag(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == Tagclass._System.___hTotalFunc3
     && TagFamily(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
       == tytagFamily$_#TotalFunc3);

function Tclass._System.___hTotalFunc3_0(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 0
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_0(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T0);

function Tclass._System.___hTotalFunc3_1(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 1
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_1(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T1);

function Tclass._System.___hTotalFunc3_2(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 2
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_2(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$T2);

function Tclass._System.___hTotalFunc3_3(Ty) : Ty;

// Tclass._System.___hTotalFunc3 injectivity 3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty :: 
  { Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R) } 
  Tclass._System.___hTotalFunc3_3(Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     == #$R);

// Box/unbox axiom for Tclass._System.___hTotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $IsBox(bx, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     ==> $Box($Unbox(bx): HandleType) == bx
       && $Is($Unbox(bx): HandleType, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)));

// $Is axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType :: 
  { $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R)) } 
  $Is(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R))
     <==> $Is(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R))
       && (forall x0#0: Box, x1#0: Box, x2#0: Box :: 
        $IsBox(x0#0, #$T0) && $IsBox(x1#0, #$T1) && $IsBox(x2#0, #$T2)
           ==> Requires3(#$T0, #$T1, #$T2, #$R, $OneHeap, f#0, x0#0, x1#0, x2#0)));

// $IsAlloc axiom for subset type _System._#TotalFunc3
axiom (forall #$T0: Ty, #$T1: Ty, #$T2: Ty, #$R: Ty, f#0: HandleType, $h: Heap :: 
  { $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h) } 
  $IsAlloc(f#0, Tclass._System.___hTotalFunc3(#$T0, #$T1, #$T2, #$R), $h)
     <==> $IsAlloc(f#0, Tclass._System.___hPartialFunc3(#$T0, #$T1, #$T2, #$R), $h));

const BaseFuel_ParseGenerics._default.Many: LayerType;

const StartFuel_ParseGenerics._default.Many: LayerType;

const StartFuelAssert_ParseGenerics._default.Many: LayerType;

const unique class._module.__default: ClassName;

// function declaration for _module._default.IsCelebrity
function _module.__default.IsCelebrity(_module._default.IsCelebrity$Person: Ty, c#0: Box, people#0: Set) : bool
uses {
// definition axiom for _module.__default.IsCelebrity (revealed)
axiom {:id "id49"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.IsCelebrity$Person: Ty, c#0: Box, people#0: Set :: 
    { _module.__default.IsCelebrity(_module._default.IsCelebrity$Person, c#0, people#0) } 
    _module.__default.IsCelebrity#canCall(_module._default.IsCelebrity$Person, c#0, people#0)
         || (0 < $FunctionContextHeight
           && 
          $IsBox(c#0, _module._default.IsCelebrity$Person)
           && $Is(people#0, TSet(_module._default.IsCelebrity$Person))
           && (c#0 == c#0 || Set#IsMember(people#0, c#0)))
       ==> _module.__default.IsCelebrity(_module._default.IsCelebrity$Person, c#0, people#0)
         == Lit(false));
// definition axiom for _module.__default.IsCelebrity for decreasing-related literals (revealed)
axiom {:id "id50"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.IsCelebrity$Person: Ty, c#0: Box, people#0: Set :: 
    {:weight 3} { _module.__default.IsCelebrity(_module._default.IsCelebrity$Person, c#0, Lit(people#0)) } 
    _module.__default.IsCelebrity#canCall(_module._default.IsCelebrity$Person, c#0, Lit(people#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(c#0, _module._default.IsCelebrity$Person)
           && $Is(people#0, TSet(_module._default.IsCelebrity$Person))
           && (c#0 == c#0 || Set#IsMember(Lit(people#0), c#0)))
       ==> _module.__default.IsCelebrity(_module._default.IsCelebrity$Person, c#0, Lit(people#0))
         == Lit(false));
// definition axiom for _module.__default.IsCelebrity for all literals (revealed)
axiom {:id "id51"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.IsCelebrity$Person: Ty, c#0: Box, people#0: Set :: 
    {:weight 3} { _module.__default.IsCelebrity(_module._default.IsCelebrity$Person, Lit(c#0), Lit(people#0)) } 
    _module.__default.IsCelebrity#canCall(_module._default.IsCelebrity$Person, Lit(c#0), Lit(people#0))
         || (0 < $FunctionContextHeight
           && 
          $IsBox(c#0, _module._default.IsCelebrity$Person)
           && $Is(people#0, TSet(_module._default.IsCelebrity$Person))
           && (Lit(c#0) == Lit(c#0) || Set#IsMember(Lit(people#0), Lit(c#0))))
       ==> _module.__default.IsCelebrity(_module._default.IsCelebrity$Person, Lit(c#0), Lit(people#0))
         == Lit(false));
}

function _module.__default.IsCelebrity#canCall(_module._default.IsCelebrity$Person: Ty, c#0: Box, people#0: Set) : bool;

function _module.__default.IsCelebrity#requires(Ty, Box, Set) : bool;

// #requires axiom for _module.__default.IsCelebrity
axiom (forall _module._default.IsCelebrity$Person: Ty, c#0: Box, people#0: Set :: 
  { _module.__default.IsCelebrity#requires(_module._default.IsCelebrity$Person, c#0, people#0) } 
  $IsBox(c#0, _module._default.IsCelebrity$Person)
       && $Is(people#0, TSet(_module._default.IsCelebrity$Person))
     ==> _module.__default.IsCelebrity#requires(_module._default.IsCelebrity$Person, c#0, people#0)
       == (c#0 == c#0 || Set#IsMember(people#0, c#0)));

procedure {:verboseName "IsCelebrity (well-formedness)"} CheckWellformed$$_module.__default.IsCelebrity(_module._default.IsCelebrity$Person: Ty, 
    c#0: Box where $IsBox(c#0, _module._default.IsCelebrity$Person), 
    people#0: Set where $Is(people#0, TSet(_module._default.IsCelebrity$Person)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FindCelebrity3 (well-formedness)"} CheckWellFormed$$_module.__default.FindCelebrity3(people#0: Set
       where $Is(people#0, TSet(TInt)) && $IsAlloc(people#0, TSet(TInt), $Heap), 
    c#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindCelebrity3 (well-formedness)"} CheckWellFormed$$_module.__default.FindCelebrity3(people#0: Set, c#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##c#0: int;
  var ##people#0: Set;


    // AddMethodImpl: FindCelebrity3, CheckWellFormed$$_module.__default.FindCelebrity3
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##c#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#0, TInt, $Heap);
    ##people#0 := people#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##people#0, TSet(TInt), $Heap);
    assert {:id "id56"} {:subsumption 0} ##c#0 == ##c#0 || Set#IsMember(##people#0, $Box(##c#0));
    assume ##c#0 == ##c#0 || Set#IsMember(##people#0, $Box(##c#0));
    assume _module.__default.IsCelebrity#canCall(TInt, $Box(c#0), people#0);
    assume {:id "id57"} _module.__default.IsCelebrity(TInt, $Box(c#0), people#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "FindCelebrity3 (call)"} Call$$_module.__default.FindCelebrity3(people#0: Set
       where $Is(people#0, TSet(TInt)) && $IsAlloc(people#0, TSet(TInt), $Heap), 
    c#0: int);
  // user-defined preconditions
  requires {:id "id58"} _module.__default.IsCelebrity#canCall(TInt, $Box(c#0), people#0)
     ==> _module.__default.IsCelebrity(TInt, $Box(c#0), people#0) || Lit(false);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FindCelebrity3 (correctness)"} Impl$$_module.__default.FindCelebrity3(people#0: Set
       where $Is(people#0, TSet(TInt)) && $IsAlloc(people#0, TSet(TInt), $Heap), 
    c#0: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id59"} _module.__default.IsCelebrity#canCall(TInt, $Box(c#0), people#0)
     && 
    _module.__default.IsCelebrity(TInt, $Box(c#0), people#0)
     && Lit(false);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindCelebrity3 (correctness)"} Impl$$_module.__default.FindCelebrity3(people#0: Set, c#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0: bool;
  var ##c#1: int;
  var ##people#1: Set;
  var ##c#2: int;
  var ##people#2: Set;

    // AddMethodImpl: FindCelebrity3, Impl$$_module.__default.FindCelebrity3
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc b#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(115,5)
    assume true;
    ##c#1 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#1, TInt, $Heap);
    ##people#1 := people#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##people#1, TSet(TInt), $Heap);
    assert {:id "id60"} {:subsumption 0} ##c#1 == ##c#1 || Set#IsMember(##people#1, $Box(##c#1));
    assume ##c#1 == ##c#1 || Set#IsMember(##people#1, $Box(##c#1));
    assume _module.__default.IsCelebrity#canCall(TInt, $Box(c#0), people#0);
    assume _module.__default.IsCelebrity#canCall(TInt, $Box(c#0), people#0);
    b#0 := _module.__default.IsCelebrity(TInt, $Box(c#0), people#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(116,5)
    assume true;
    ##c#2 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#2, TInt, $Heap);
    ##people#2 := people#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##people#2, TSet(TInt), $Heap);
    assert {:id "id62"} {:subsumption 0} _module.__default.IsCelebrity#canCall(TInt, $Box(##c#2), ##people#2)
       ==> _module.__default.IsCelebrity(TInt, $Box(##c#2), ##people#2) || Lit(false);
    assume _module.__default.IsCelebrity(TInt, $Box(##c#2), ##people#2);
    assume _module.__default.F#canCall(c#0, people#0);
    assume _module.__default.F#canCall(c#0, people#0);
    b#0 := _module.__default.F(c#0, people#0);
}



// function declaration for _module._default.F
function _module.__default.F(c#0: int, people#0: Set) : bool
uses {
// definition axiom for _module.__default.F (revealed)
axiom {:id "id64"} 1 <= $FunctionContextHeight
   ==> (forall c#0: int, people#0: Set :: 
    { _module.__default.F(c#0, people#0) } 
    _module.__default.F#canCall(c#0, people#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(people#0, TSet(TInt))
           && _module.__default.IsCelebrity(TInt, $Box(c#0), people#0))
       ==> _module.__default.F(c#0, people#0) == Lit(false));
// definition axiom for _module.__default.F for all literals (revealed)
axiom {:id "id65"} 1 <= $FunctionContextHeight
   ==> (forall c#0: int, people#0: Set :: 
    {:weight 3} { _module.__default.F(LitInt(c#0), Lit(people#0)) } 
    _module.__default.F#canCall(LitInt(c#0), Lit(people#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(people#0, TSet(TInt))
           && Lit(_module.__default.IsCelebrity(TInt, $Box(LitInt(c#0)), Lit(people#0))))
       ==> _module.__default.F(LitInt(c#0), Lit(people#0)) == Lit(false));
}

function _module.__default.F#canCall(c#0: int, people#0: Set) : bool;

function _module.__default.F#requires(int, Set) : bool;

// #requires axiom for _module.__default.F
axiom (forall c#0: int, people#0: Set :: 
  { _module.__default.F#requires(c#0, people#0) } 
  $Is(people#0, TSet(TInt))
     ==> _module.__default.F#requires(c#0, people#0)
       == _module.__default.IsCelebrity(TInt, $Box(c#0), people#0));

procedure {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F(c#0: int, people#0: Set where $Is(people#0, TSet(TInt)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F(c#0: int, people#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##c#0: int;
  var ##people#0: Set;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    // Check well-formedness of preconditions, and then assume them
    ##c#0 := c#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##c#0, TInt, $Heap);
    ##people#0 := people#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##people#0, TSet(TInt), $Heap);
    assert {:id "id66"} {:subsumption 0} ##c#0 == ##c#0 || Set#IsMember(##people#0, $Box(##c#0));
    assume ##c#0 == ##c#0 || Set#IsMember(##people#0, $Box(##c#0));
    assume _module.__default.IsCelebrity#canCall(TInt, $Box(c#0), people#0);
    assume {:id "id67"} _module.__default.IsCelebrity(TInt, $Box(c#0), people#0);
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
        assume {:id "id68"} _module.__default.F(c#0, people#0) == Lit(false);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.F(c#0, people#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.RogerThat
function _module.__default.RogerThat(_module._default.RogerThat$G: Ty, g#0: Box) : Box
uses {
// consequence axiom for _module.__default.RogerThat
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.RogerThat$G: Ty, g#0: Box :: 
    { _module.__default.RogerThat(_module._default.RogerThat$G, g#0) } 
    _module.__default.RogerThat#canCall(_module._default.RogerThat$G, g#0)
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.RogerThat$G))
       ==> $IsBox(_module.__default.RogerThat(_module._default.RogerThat$G, g#0), 
        _module._default.RogerThat$G));
// alloc consequence axiom for _module.__default.RogerThat
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.RogerThat$G: Ty, g#0: Box :: 
    { $IsAllocBox(_module.__default.RogerThat(_module._default.RogerThat$G, g#0), 
        _module._default.RogerThat$G, 
        $Heap) } 
    (_module.__default.RogerThat#canCall(_module._default.RogerThat$G, g#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(g#0, _module._default.RogerThat$G)
             && $IsAllocBox(g#0, _module._default.RogerThat$G, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.__default.RogerThat(_module._default.RogerThat$G, g#0), 
        _module._default.RogerThat$G, 
        $Heap));
// definition axiom for _module.__default.RogerThat (revealed)
axiom {:id "id69"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.RogerThat$G: Ty, g#0: Box :: 
    { _module.__default.RogerThat(_module._default.RogerThat$G, g#0) } 
    _module.__default.RogerThat#canCall(_module._default.RogerThat$G, g#0)
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.RogerThat$G))
       ==> _module.__default.RogerThat(_module._default.RogerThat$G, g#0) == g#0);
// definition axiom for _module.__default.RogerThat for all literals (revealed)
axiom {:id "id70"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.RogerThat$G: Ty, g#0: Box :: 
    {:weight 3} { _module.__default.RogerThat(_module._default.RogerThat$G, Lit(g#0)) } 
    _module.__default.RogerThat#canCall(_module._default.RogerThat$G, Lit(g#0))
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.RogerThat$G))
       ==> _module.__default.RogerThat(_module._default.RogerThat$G, Lit(g#0)) == Lit(g#0));
}

function _module.__default.RogerThat#canCall(_module._default.RogerThat$G: Ty, g#0: Box) : bool;

function _module.__default.RogerThat#requires(Ty, Box) : bool;

// #requires axiom for _module.__default.RogerThat
axiom (forall _module._default.RogerThat$G: Ty, g#0: Box :: 
  { _module.__default.RogerThat#requires(_module._default.RogerThat$G, g#0) } 
  $IsBox(g#0, _module._default.RogerThat$G)
     ==> _module.__default.RogerThat#requires(_module._default.RogerThat$G, g#0) == true);

procedure {:verboseName "RogerThat (well-formedness)"} CheckWellformed$$_module.__default.RogerThat(_module._default.RogerThat$G: Ty, 
    g#0: Box where $IsBox(g#0, _module._default.RogerThat$G));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Cool
function _module.__default.Cool(b#0: bool) : bool
uses {
// definition axiom for _module.__default.Cool (revealed)
axiom {:id "id72"} 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    { _module.__default.Cool(b#0) } 
    _module.__default.Cool#canCall(b#0) || 0 < $FunctionContextHeight
       ==> _module.__default.Cool(b#0) == b#0);
// definition axiom for _module.__default.Cool for all literals (revealed)
axiom {:id "id73"} 0 <= $FunctionContextHeight
   ==> (forall b#0: bool :: 
    {:weight 3} { _module.__default.Cool(Lit(b#0)) } 
    _module.__default.Cool#canCall(Lit(b#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.Cool(Lit(b#0)) == Lit(b#0));
}

function _module.__default.Cool#canCall(b#0: bool) : bool;

function _module.__default.Cool#requires(bool) : bool;

// #requires axiom for _module.__default.Cool
axiom (forall b#0: bool :: 
  { _module.__default.Cool#requires(b#0) } 
  _module.__default.Cool#requires(b#0) == true);

procedure {:verboseName "Cool (well-formedness)"} CheckWellformed$$_module.__default.Cool(b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Rockin'
function _module.__default.Rockin_k(_module._default.Rockin'$G: Ty, g#0: Box) : Box
uses {
// consequence axiom for _module.__default.Rockin_k
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Rockin'$G: Ty, g#0: Box :: 
    { _module.__default.Rockin_k(_module._default.Rockin'$G, g#0) } 
    _module.__default.Rockin_k#canCall(_module._default.Rockin'$G, g#0)
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.Rockin'$G))
       ==> $IsBox(_module.__default.Rockin_k(_module._default.Rockin'$G, g#0), 
        _module._default.Rockin'$G));
// alloc consequence axiom for _module.__default.Rockin_k
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.Rockin'$G: Ty, g#0: Box :: 
    { $IsAllocBox(_module.__default.Rockin_k(_module._default.Rockin'$G, g#0), 
        _module._default.Rockin'$G, 
        $Heap) } 
    (_module.__default.Rockin_k#canCall(_module._default.Rockin'$G, g#0)
           || (0 < $FunctionContextHeight
             && 
            $IsBox(g#0, _module._default.Rockin'$G)
             && $IsAllocBox(g#0, _module._default.Rockin'$G, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.__default.Rockin_k(_module._default.Rockin'$G, g#0), 
        _module._default.Rockin'$G, 
        $Heap));
// definition axiom for _module.__default.Rockin_k (revealed)
axiom {:id "id75"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Rockin'$G: Ty, g#0: Box :: 
    { _module.__default.Rockin_k(_module._default.Rockin'$G, g#0) } 
    _module.__default.Rockin_k#canCall(_module._default.Rockin'$G, g#0)
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.Rockin'$G))
       ==> _module.__default.Rockin_k(_module._default.Rockin'$G, g#0)
         == (var h#0 := g#0; h#0));
// definition axiom for _module.__default.Rockin_k for all literals (revealed)
axiom {:id "id76"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Rockin'$G: Ty, g#0: Box :: 
    {:weight 3} { _module.__default.Rockin_k(_module._default.Rockin'$G, Lit(g#0)) } 
    _module.__default.Rockin_k#canCall(_module._default.Rockin'$G, Lit(g#0))
         || (0 < $FunctionContextHeight && $IsBox(g#0, _module._default.Rockin'$G))
       ==> _module.__default.Rockin_k(_module._default.Rockin'$G, Lit(g#0))
         == (var h#1 := Lit(g#0); h#1));
}

function _module.__default.Rockin_k#canCall(_module._default.Rockin'$G: Ty, g#0: Box) : bool;

function _module.__default.Rockin_k#requires(Ty, Box) : bool;

// #requires axiom for _module.__default.Rockin_k
axiom (forall _module._default.Rockin'$G: Ty, g#0: Box :: 
  { _module.__default.Rockin_k#requires(_module._default.Rockin'$G, g#0) } 
  $IsBox(g#0, _module._default.Rockin'$G)
     ==> _module.__default.Rockin_k#requires(_module._default.Rockin'$G, g#0) == true);

procedure {:verboseName "Rockin' (well-formedness)"} CheckWellformed$$_module.__default.Rockin_k(_module._default.Rockin'$G: Ty, 
    g#0: Box where $IsBox(g#0, _module._default.Rockin'$G));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Groovy
function _module.__default.Groovy(_module._default.Groovy$G: Ty, g#0: Box, x#0: int) : Box
uses {
// consequence axiom for _module.__default.Groovy
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Groovy$G: Ty, g#0: Box, x#0: int :: 
    { _module.__default.Groovy(_module._default.Groovy$G, g#0, x#0) } 
    _module.__default.Groovy#canCall(_module._default.Groovy$G, g#0, x#0)
         || (1 < $FunctionContextHeight && $IsBox(g#0, _module._default.Groovy$G))
       ==> $IsBox(_module.__default.Groovy(_module._default.Groovy$G, g#0, x#0), 
        _module._default.Groovy$G));
// alloc consequence axiom for _module.__default.Groovy
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.Groovy$G: Ty, g#0: Box, x#0: int :: 
    { $IsAllocBox(_module.__default.Groovy(_module._default.Groovy$G, g#0, x#0), 
        _module._default.Groovy$G, 
        $Heap) } 
    (_module.__default.Groovy#canCall(_module._default.Groovy$G, g#0, x#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(g#0, _module._default.Groovy$G)
             && $IsAllocBox(g#0, _module._default.Groovy$G, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.__default.Groovy(_module._default.Groovy$G, g#0, x#0), 
        _module._default.Groovy$G, 
        $Heap));
// definition axiom for _module.__default.Groovy (revealed)
axiom {:id "id80"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Groovy$G: Ty, g#0: Box, x#0: int :: 
    { _module.__default.Groovy(_module._default.Groovy$G, g#0, x#0) } 
    _module.__default.Groovy#canCall(_module._default.Groovy$G, g#0, x#0)
         || (1 < $FunctionContextHeight && $IsBox(g#0, _module._default.Groovy$G))
       ==> (var h#0 := g#0; 
          x#0 == LitInt(80)
             ==> _module.__default.RogerThat#canCall(_module._default.Groovy$G, h#0))
         && _module.__default.Groovy(_module._default.Groovy$G, g#0, x#0)
           == (var h#0 := g#0; 
            (if x#0 == LitInt(80)
               then _module.__default.RogerThat(_module._default.Groovy$G, h#0)
               else Seq#Index(Seq#Build(Seq#Empty(): Seq, h#0), LitInt(0)))));
// definition axiom for _module.__default.Groovy for decreasing-related literals (revealed)
axiom {:id "id81"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Groovy$G: Ty, g#0: Box, x#0: int :: 
    {:weight 3} { _module.__default.Groovy(_module._default.Groovy$G, g#0, LitInt(x#0)) } 
    _module.__default.Groovy#canCall(_module._default.Groovy$G, g#0, LitInt(x#0))
         || (1 < $FunctionContextHeight && $IsBox(g#0, _module._default.Groovy$G))
       ==> (var h#1 := g#0; 
          LitInt(x#0) == LitInt(80)
             ==> _module.__default.RogerThat#canCall(_module._default.Groovy$G, h#1))
         && _module.__default.Groovy(_module._default.Groovy$G, g#0, LitInt(x#0))
           == (var h#1 := g#0; 
            (if LitInt(x#0) == LitInt(80)
               then _module.__default.RogerThat(_module._default.Groovy$G, h#1)
               else Seq#Index(Seq#Build(Seq#Empty(): Seq, h#1), LitInt(0)))));
// definition axiom for _module.__default.Groovy for all literals (revealed)
axiom {:id "id82"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Groovy$G: Ty, g#0: Box, x#0: int :: 
    {:weight 3} { _module.__default.Groovy(_module._default.Groovy$G, Lit(g#0), LitInt(x#0)) } 
    _module.__default.Groovy#canCall(_module._default.Groovy$G, Lit(g#0), LitInt(x#0))
         || (1 < $FunctionContextHeight && $IsBox(g#0, _module._default.Groovy$G))
       ==> (var h#2 := Lit(g#0); 
          LitInt(x#0) == LitInt(80)
             ==> _module.__default.RogerThat#canCall(_module._default.Groovy$G, h#2))
         && _module.__default.Groovy(_module._default.Groovy$G, Lit(g#0), LitInt(x#0))
           == (var h#2 := Lit(g#0); 
            (if LitInt(x#0) == LitInt(80)
               then _module.__default.RogerThat(_module._default.Groovy$G, h#2)
               else Seq#Index(Lit(Seq#Build(Seq#Empty(): Seq, h#2)), LitInt(0)))));
}

function _module.__default.Groovy#canCall(_module._default.Groovy$G: Ty, g#0: Box, x#0: int) : bool;

function _module.__default.Groovy#requires(Ty, Box, int) : bool;

// #requires axiom for _module.__default.Groovy
axiom (forall _module._default.Groovy$G: Ty, g#0: Box, x#0: int :: 
  { _module.__default.Groovy#requires(_module._default.Groovy$G, g#0, x#0) } 
  $IsBox(g#0, _module._default.Groovy$G)
     ==> _module.__default.Groovy#requires(_module._default.Groovy$G, g#0, x#0) == true);

procedure {:verboseName "Groovy (well-formedness)"} CheckWellformed$$_module.__default.Groovy(_module._default.Groovy$G: Ty, 
    g#0: Box where $IsBox(g#0, _module._default.Groovy$G), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Groovy (well-formedness)"} CheckWellformed$$_module.__default.Groovy(_module._default.Groovy$G: Ty, g#0: Box, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var h#Z#0: Box;
  var let#0#0#0: Box;
  var ##g#0: Box;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(_module.__default.Groovy(_module._default.Groovy$G, g#0, x#0), 
          _module._default.Groovy$G);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc h#Z#0;
        assume {:id "id83"} let#0#0#0 == g#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#0#0#0, _module._default.Groovy$G);
        assume {:id "id84"} h#Z#0 == let#0#0#0;
        if (x#0 == LitInt(80))
        {
            ##g#0 := h#Z#0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##g#0, _module._default.Groovy$G, $Heap);
            assume _module.__default.RogerThat#canCall(_module._default.Groovy$G, h#Z#0);
            assume {:id "id85"} _module.__default.Groovy(_module._default.Groovy$G, g#0, x#0)
               == _module.__default.RogerThat(_module._default.Groovy$G, h#Z#0);
            assume _module.__default.RogerThat#canCall(_module._default.Groovy$G, h#Z#0);
            // CheckWellformedWithResult: any expression
            assume $IsBox(_module.__default.Groovy(_module._default.Groovy$G, g#0, x#0), 
              _module._default.Groovy$G);
            return;
        }
        else
        {
            assert {:id "id86"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(Seq#Build(Seq#Empty(): Seq, h#Z#0));
            assume {:id "id87"} _module.__default.Groovy(_module._default.Groovy$G, g#0, x#0)
               == Seq#Index(Seq#Build(Seq#Empty(): Seq, h#Z#0), LitInt(0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(_module.__default.Groovy(_module._default.Groovy$G, g#0, x#0), 
              _module._default.Groovy$G);
            return;
        }

        assume false;
    }
}



procedure {:verboseName "IsRogerCool (well-formedness)"} CheckWellFormed$$_module.__default.IsRogerCool(n#0: int);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IsRogerCool (call)"} Call$$_module.__default.IsRogerCool(n#0: int);
  // user-defined preconditions
  requires {:id "id89"} _module.__default.RogerThat#canCall(TBool, $Box(Lit(true)))
     ==> Lit($Unbox(_module.__default.RogerThat(TBool, $Box(Lit(true)))): bool)
       || Lit(true);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IsRogerCool (correctness)"} Impl$$_module.__default.IsRogerCool(n#0: int) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id90"} _module.__default.RogerThat#canCall(TBool, $Box(Lit(true)))
     && 
    Lit($Unbox(_module.__default.RogerThat(TBool, $Box(Lit(true)))): bool)
     && Lit(true);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IsRogerCool (correctness)"} Impl$$_module.__default.IsRogerCool(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##b#0_0: bool;
  var ##g#1_0_0: bool;
  var ##g#1_1_0_0: bool;
  var ##g#1_1_1_0_0: bool;
  var ##x#1_1_1_0_0: int;
  var ##g#1_1_1_1_0_0: bool;
  var ##x#1_1_1_1_0_0: int;

    // AddMethodImpl: IsRogerCool, Impl$$_module.__default.IsRogerCool
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(152,3)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(153,5)
        if (Lit(2 < 3))
        {
        }

        if (2 < 3 && n#0 < n#0)
        {
        }

        ##b#0_0 := 2 < 3 && n#0 < n#0 && n#0 < n#0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0_0, TBool, $Heap);
        assume _module.__default.Cool#canCall(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1);
        assume _module.__default.Cool#canCall(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1);
        assert {:id "id91"} {:subsumption 0} _module.__default.Cool#canCall(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1)
           ==> _module.__default.Cool(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1) || Lit(2 < 3);
        assert {:id "id92"} {:subsumption 0} _module.__default.Cool#canCall(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1)
           ==> _module.__default.Cool(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1) || n#0 < n#0;
        assert {:id "id93"} {:subsumption 0} _module.__default.Cool#canCall(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1)
           ==> _module.__default.Cool(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1) || n#0 < n#0 + 1;
        assume {:id "id94"} _module.__default.Cool(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1);
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(154,10)
        if (*)
        {
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(155,5)
            if (Lit(2 < 3))
            {
            }

            if (2 < 3 && n#0 < n#0)
            {
            }

            ##g#1_0_0 := 2 < 3 && n#0 < n#0 && n#0 < n#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##g#1_0_0, TBool, $Heap);
            assume _module.__default.RogerThat#canCall(TBool, $Box(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1));
            assume _module.__default.RogerThat#canCall(TBool, $Box(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1));
            assert {:id "id95"} {:subsumption 0} _module.__default.RogerThat#canCall(TBool, $Box(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1))
               ==> $Unbox(_module.__default.RogerThat(TBool, $Box(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1))): bool
                 || Lit(2 < 3);
            assert {:id "id96"} {:subsumption 0} _module.__default.RogerThat#canCall(TBool, $Box(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1))
               ==> $Unbox(_module.__default.RogerThat(TBool, $Box(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1))): bool
                 || n#0 < n#0;
            assert {:id "id97"} {:subsumption 0} _module.__default.RogerThat#canCall(TBool, $Box(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1))
               ==> $Unbox(_module.__default.RogerThat(TBool, $Box(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1))): bool
                 || n#0 < n#0 + 1;
            assume {:id "id98"} $Unbox(_module.__default.RogerThat(TBool, $Box(2 < 3 && n#0 < n#0 && n#0 < n#0 + 1))): bool;
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(156,10)
            if (*)
            {
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(157,5)
                ##g#1_1_0_0 := Lit(false);
                // assume allocatedness for argument to function
                assume $IsAlloc(##g#1_1_0_0, TBool, $Heap);
                assume _module.__default.Rockin_k#canCall(TBool, $Box(Lit(false)));
                assume _module.__default.Rockin_k#canCall(TBool, $Box(Lit(false)));
                assert {:id "id99"} {:subsumption 0} _module.__default.Rockin_k#canCall(TBool, $Box(Lit(false)))
                   ==> Lit($Unbox(_module.__default.Rockin_k(TBool, $Box(Lit(false)))): bool)
                     || (var h#1_1_0_0 := Lit(false); h#1_1_0_0);
                assume {:id "id100"} Lit($Unbox(_module.__default.Rockin_k(TBool, $Box(Lit(false)))): bool);
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(158,10)
                if (*)
                {
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(159,5)
                    ##g#1_1_1_0_0 := n#0 < n#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##g#1_1_1_0_0, TBool, $Heap);
                    ##x#1_1_1_0_0 := LitInt(80);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##x#1_1_1_0_0, TInt, $Heap);
                    assume _module.__default.Groovy#canCall(TBool, $Box(n#0 < n#0), LitInt(80));
                    assume _module.__default.Groovy#canCall(TBool, $Box(n#0 < n#0), LitInt(80));
                    assert {:id "id101"} {:subsumption 0} _module.__default.Groovy#canCall(TBool, $Box(n#0 < n#0), LitInt(80))
                       ==> $Unbox(_module.__default.Groovy(TBool, $Box(n#0 < n#0), LitInt(80))): bool
                         || (var h#1_1_1_0_0 := n#0 < n#0; 
                          LitInt(80) == LitInt(80)
                             ==> 
                            _module.__default.RogerThat#canCall(TBool, $Box(h#1_1_1_0_0))
                             ==> $Unbox(_module.__default.RogerThat(TBool, $Box(h#1_1_1_0_0))): bool
                               || h#1_1_1_0_0);
                    assert {:id "id102"} {:subsumption 0} _module.__default.Groovy#canCall(TBool, $Box(n#0 < n#0), LitInt(80))
                       ==> $Unbox(_module.__default.Groovy(TBool, $Box(n#0 < n#0), LitInt(80))): bool
                         || (var h#1_1_1_0_0 := n#0 < n#0; 
                          LitInt(80) != LitInt(80)
                             ==> $Unbox(Seq#Index(Seq#Build(Seq#Empty(): Seq, $Box(h#1_1_1_0_0)), LitInt(0))): bool);
                    assume {:id "id103"} $Unbox(_module.__default.Groovy(TBool, $Box(n#0 < n#0), LitInt(80))): bool;
                }
                else
                {
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(160,10)
                    if (*)
                    {
                        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(161,5)
                        ##g#1_1_1_1_0_0 := n#0 + 1 <= n#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##g#1_1_1_1_0_0, TBool, $Heap);
                        ##x#1_1_1_1_0_0 := LitInt(81);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##x#1_1_1_1_0_0, TInt, $Heap);
                        assume _module.__default.Groovy#canCall(TBool, $Box(n#0 + 1 <= n#0), LitInt(81));
                        assume _module.__default.Groovy#canCall(TBool, $Box(n#0 + 1 <= n#0), LitInt(81));
                        assert {:id "id104"} {:subsumption 0} _module.__default.Groovy#canCall(TBool, $Box(n#0 + 1 <= n#0), LitInt(81))
                           ==> $Unbox(_module.__default.Groovy(TBool, $Box(n#0 + 1 <= n#0), LitInt(81))): bool
                             || (var h#1_1_1_1_0_0 := n#0 + 1 <= n#0; 
                              LitInt(81) == LitInt(80)
                                 ==> 
                                _module.__default.RogerThat#canCall(TBool, $Box(h#1_1_1_1_0_0))
                                 ==> $Unbox(_module.__default.RogerThat(TBool, $Box(h#1_1_1_1_0_0))): bool
                                   || h#1_1_1_1_0_0);
                        assert {:id "id105"} {:subsumption 0} _module.__default.Groovy#canCall(TBool, $Box(n#0 + 1 <= n#0), LitInt(81))
                           ==> $Unbox(_module.__default.Groovy(TBool, $Box(n#0 + 1 <= n#0), LitInt(81))): bool
                             || (var h#1_1_1_1_0_0 := n#0 + 1 <= n#0; 
                              LitInt(81) != LitInt(80)
                                 ==> $Unbox(Seq#Index(Seq#Build(Seq#Empty(): Seq, $Box(h#1_1_1_1_0_0)), LitInt(0))): bool);
                        assume {:id "id106"} $Unbox(_module.__default.Groovy(TBool, $Box(n#0 + 1 <= n#0), LitInt(81))): bool;
                    }
                    else
                    {
                    }
                }
            }
        }
    }
}



procedure {:verboseName "LoopyRoger (well-formedness)"} CheckWellFormed$$_module.__default.LoopyRoger(n#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopyRoger (call)"} Call$$_module.__default.LoopyRoger(n#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LoopyRoger (correctness)"} Impl$$_module.__default.LoopyRoger(n#0: int) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopyRoger (correctness)"} Impl$$_module.__default.LoopyRoger(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##g#0: bool;
  var $decr$loop#00: int;
  var $PreLoopHeap$loop#1: Heap;
  var $decr_init$loop#10: int;
  var $w$loop#1: bool;
  var ##g#1: bool;
  var $decr$loop#10: int;

    // AddMethodImpl: LoopyRoger, Impl$$_module.__default.LoopyRoger
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(167,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(168,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0
         ==> _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0));
      invariant {:id "id109"} $w$loop#0
         ==> 
        _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0))
         ==> $Unbox(_module.__default.RogerThat(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0))): bool
           || (LitInt(0) <= n#0 ==> i#0 <= n#0);
      free invariant {:id "id110"} $w$loop#0
         ==> _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0))
           && 
          $Unbox(_module.__default.RogerThat(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0))): bool
           && (LitInt(0) <= n#0 ==> i#0 <= n#0);
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
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= n#0)
            {
            }

            ##g#0 := LitInt(0) <= n#0 ==> i#0 <= n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##g#0, TBool, $Heap);
            assume _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0));
            assume _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0));
            assume {:id "id108"} $Unbox(_module.__default.RogerThat(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0))): bool;
            assume true;
            assume false;
        }

        assume true;
        if (n#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := n#0 - i#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(171,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(168,3)
        assert {:id "id112"} 0 <= $decr$loop#00 || n#0 - i#0 == $decr$loop#00;
        assert {:id "id113"} n#0 - i#0 < $decr$loop#00;
        assume _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0));
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(173,5)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(174,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#1 := $Heap;
    $decr_init$loop#10 := n#0 - i#0;
    havoc $w$loop#1;
    while (true)
      free invariant $w$loop#1
         ==> _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0));
      invariant {:id "id116"} $w$loop#1
         ==> 
        _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0))
         ==> $Unbox(_module.__default.RogerThat(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0))): bool
           || (LitInt(0) <= n#0 ==> i#0 <= n#0);
      free invariant {:id "id117"} $w$loop#1
         ==> _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0))
           && 
          $Unbox(_module.__default.RogerThat(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0))): bool
           && (LitInt(0) <= n#0 ==> i#0 <= n#0);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#1[$o]);
      free invariant $HeapSucc($PreLoopHeap$loop#1, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#1, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant n#0 - i#0 <= $decr_init$loop#10;
    {
        if (!$w$loop#1)
        {
            if (LitInt(0) <= n#0)
            {
            }

            ##g#1 := LitInt(0) <= n#0 ==> i#0 <= n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##g#1, TBool, $Heap);
            assume _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0));
            assume _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0));
            assume {:id "id115"} $Unbox(_module.__default.RogerThat(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0))): bool;
            assume true;
            assume false;
        }

        assume true;
        if (n#0 <= i#0)
        {
            break;
        }

        $decr$loop#10 := n#0 - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(177,7)
        assume true;
        assume true;
        i#0 := i#0 + 2;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(174,3)
        assert {:id "id119"} 0 <= $decr$loop#10 || n#0 - i#0 == $decr$loop#10;
        assert {:id "id120"} n#0 - i#0 < $decr$loop#10;
        assume _module.__default.RogerThat#canCall(TBool, $Box(LitInt(0) <= n#0 ==> i#0 <= n#0));
    }
}



function Tclass._module.TyKn__K?() : Ty
uses {
// Tclass._module.TyKn__K? Tag
axiom Tag(Tclass._module.TyKn__K?()) == Tagclass._module.TyKn__K?
   && TagFamily(Tclass._module.TyKn__K?()) == tytagFamily$TyKn_K;
}

const unique Tagclass._module.TyKn__K?: TyTag;

// Box/unbox axiom for Tclass._module.TyKn__K?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.TyKn__K?()) } 
  $IsBox(bx, Tclass._module.TyKn__K?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.TyKn__K?()));

procedure {:verboseName "TyKn_Main (well-formedness)"} CheckWellFormed$$_module.__default.TyKn__Main(k0#0: ref
       where $Is(k0#0, Tclass._module.TyKn__K?())
         && $IsAlloc(k0#0, Tclass._module.TyKn__K?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TyKn_Main (call)"} Call$$_module.__default.TyKn__Main(k0#0: ref
       where $Is(k0#0, Tclass._module.TyKn__K?())
         && $IsAlloc(k0#0, Tclass._module.TyKn__K?(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TyKn_Main (correctness)"} Impl$$_module.__default.TyKn__Main(k0#0: ref
       where $Is(k0#0, Tclass._module.TyKn__K?())
         && $IsAlloc(k0#0, Tclass._module.TyKn__K?(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.TyKn__C(Ty) : Ty;

const unique Tagclass._module.TyKn__C: TyTag;

// Tclass._module.TyKn__C Tag
axiom (forall _module.TyKn_C$T: Ty :: 
  { Tclass._module.TyKn__C(_module.TyKn_C$T) } 
  Tag(Tclass._module.TyKn__C(_module.TyKn_C$T)) == Tagclass._module.TyKn__C
     && TagFamily(Tclass._module.TyKn__C(_module.TyKn_C$T)) == tytagFamily$TyKn_C);

function Tclass._module.TyKn__C_0(Ty) : Ty;

// Tclass._module.TyKn__C injectivity 0
axiom (forall _module.TyKn_C$T: Ty :: 
  { Tclass._module.TyKn__C(_module.TyKn_C$T) } 
  Tclass._module.TyKn__C_0(Tclass._module.TyKn__C(_module.TyKn_C$T))
     == _module.TyKn_C$T);

// Box/unbox axiom for Tclass._module.TyKn__C
axiom (forall _module.TyKn_C$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.TyKn__C(_module.TyKn_C$T)) } 
  $IsBox(bx, Tclass._module.TyKn__C(_module.TyKn_C$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.TyKn__C(_module.TyKn_C$T)));

function Tclass._module.TyKn__C?(Ty) : Ty;

const unique Tagclass._module.TyKn__C?: TyTag;

// Tclass._module.TyKn__C? Tag
axiom (forall _module.TyKn_C$T: Ty :: 
  { Tclass._module.TyKn__C?(_module.TyKn_C$T) } 
  Tag(Tclass._module.TyKn__C?(_module.TyKn_C$T)) == Tagclass._module.TyKn__C?
     && TagFamily(Tclass._module.TyKn__C?(_module.TyKn_C$T)) == tytagFamily$TyKn_C);

function Tclass._module.TyKn__C?_0(Ty) : Ty;

// Tclass._module.TyKn__C? injectivity 0
axiom (forall _module.TyKn_C$T: Ty :: 
  { Tclass._module.TyKn__C?(_module.TyKn_C$T) } 
  Tclass._module.TyKn__C?_0(Tclass._module.TyKn__C?(_module.TyKn_C$T))
     == _module.TyKn_C$T);

// Box/unbox axiom for Tclass._module.TyKn__C?
axiom (forall _module.TyKn_C$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.TyKn__C?(_module.TyKn_C$T)) } 
  $IsBox(bx, Tclass._module.TyKn__C?(_module.TyKn_C$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.TyKn__C?(_module.TyKn_C$T)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TyKn_Main (correctness)"} Impl$$_module.__default.TyKn__Main(k0#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.TyKn__C(Tclass._module.TyKn__K?()))
         && $IsAlloc(c#0, Tclass._module.TyKn__C(Tclass._module.TyKn__K?()), $Heap);
  var $nw: ref;
  var k1#0: ref
     where $Is(k1#0, Tclass._module.TyKn__K?())
       && $IsAlloc(k1#0, Tclass._module.TyKn__K?(), $Heap);
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var newtype$check#3: ref;
  var k2#0: ref
     where $Is(k2#0, Tclass._module.TyKn__K?())
       && $IsAlloc(k2#0, Tclass._module.TyKn__K?(), $Heap);
  var $rhs##0: ref;
  var $tmp##0: Box;
  var newtype$check#4: ref;

    // AddMethodImpl: TyKn_Main, Impl$$_module.__default.TyKn__Main
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(201,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.TyKn__C?(Tclass._module.TyKn__K?()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    havoc k1#0 /* where $Is(k1#0, Tclass._module.TyKn__K?())
       && $IsAlloc(k1#0, Tclass._module.TyKn__K?(), $Heap) */;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(204,3)
    newtype$check#0 := null;
    if (k0#0 != null)
    {
        assert {:id "id122"} {:subsumption 0} k0#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(k0#0), Tclass._module.TyKn__K?(), $Heap);
        assume _module.TyKn__K.F#canCall(k0#0);
    }

    assume k0#0 != null ==> _module.TyKn__K.F#canCall(k0#0);
    assert {:id "id123"} {:subsumption 0} k0#0 != null ==> _module.TyKn__K.F(k0#0) == LitInt(176);
    assume {:id "id124"} k0#0 != null ==> _module.TyKn__K.F(k0#0) == LitInt(176);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(205,3)
    newtype$check#1 := null;
    if (k1#0 != null)
    {
        assert {:id "id125"} {:subsumption 0} k1#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(k1#0), Tclass._module.TyKn__K?(), $Heap);
        assume _module.TyKn__K.F#canCall(k1#0);
    }

    assume k1#0 != null ==> _module.TyKn__K.F#canCall(k1#0);
    assert {:id "id126"} {:subsumption 0} k1#0 != null ==> _module.TyKn__K.F(k1#0) == LitInt(176);
    assume {:id "id127"} k1#0 != null ==> _module.TyKn__K.F(k1#0) == LitInt(176);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(207,3)
    assert {:id "id128"} defass#c#0;
    assert {:id "id129"} {:subsumption 0} c#0 != null;
    newtype$check#2 := null;
    if ($Unbox(read($Heap, c#0, _module.TyKn__C.x)): ref != null)
    {
        assert {:id "id130"} defass#c#0;
        assert {:id "id131"} {:subsumption 0} c#0 != null;
        assert {:id "id132"} {:subsumption 0} $Unbox(read($Heap, c#0, _module.TyKn__C.x)): ref != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(read($Heap, c#0, _module.TyKn__C.x), Tclass._module.TyKn__K?(), $Heap);
        assume _module.TyKn__K.F#canCall($Unbox(read($Heap, c#0, _module.TyKn__C.x)): ref);
    }

    assume $Unbox(read($Heap, c#0, _module.TyKn__C.x)): ref != null
       ==> _module.TyKn__K.F#canCall($Unbox(read($Heap, c#0, _module.TyKn__C.x)): ref);
    assert {:id "id133"} {:subsumption 0} $Unbox(read($Heap, c#0, _module.TyKn__C.x)): ref != null
       ==> _module.TyKn__K.F($Unbox(read($Heap, c#0, _module.TyKn__C.x)): ref)
         == LitInt(176);
    assume {:id "id134"} $Unbox(read($Heap, c#0, _module.TyKn__C.x)): ref != null
       ==> _module.TyKn__K.F($Unbox(read($Heap, c#0, _module.TyKn__C.x)): ref)
         == LitInt(176);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(208,3)
    assert {:id "id135"} defass#c#0;
    assert {:id "id136"} {:subsumption 0} c#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(c#0), Tclass._module.TyKn__C?(Tclass._module.TyKn__K?()), $Heap);
    assume _module.TyKn__C.G#canCall(Tclass._module.TyKn__K?(), $Heap, c#0);
    newtype$check#3 := null;
    if ($Unbox(_module.TyKn__C.G(Tclass._module.TyKn__K?(), $Heap, c#0)): ref != null)
    {
        assert {:id "id137"} defass#c#0;
        assert {:id "id138"} {:subsumption 0} c#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(c#0), Tclass._module.TyKn__C?(Tclass._module.TyKn__K?()), $Heap);
        assume _module.TyKn__C.G#canCall(Tclass._module.TyKn__K?(), $Heap, c#0);
        assert {:id "id139"} {:subsumption 0} $Unbox(_module.TyKn__C.G(Tclass._module.TyKn__K?(), $Heap, c#0)): ref != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox(_module.TyKn__C.G(Tclass._module.TyKn__K?(), $Heap, c#0), 
          Tclass._module.TyKn__K?(), 
          $Heap);
        assume _module.TyKn__K.F#canCall($Unbox(_module.TyKn__C.G(Tclass._module.TyKn__K?(), $Heap, c#0)): ref);
    }

    assume _module.TyKn__C.G#canCall(Tclass._module.TyKn__K?(), $Heap, c#0)
       && ($Unbox(_module.TyKn__C.G(Tclass._module.TyKn__K?(), $Heap, c#0)): ref != null
         ==> _module.TyKn__C.G#canCall(Tclass._module.TyKn__K?(), $Heap, c#0)
           && _module.TyKn__K.F#canCall($Unbox(_module.TyKn__C.G(Tclass._module.TyKn__K?(), $Heap, c#0)): ref));
    assert {:id "id140"} {:subsumption 0} $Unbox(_module.TyKn__C.G(Tclass._module.TyKn__K?(), $Heap, c#0)): ref != null
       ==> _module.TyKn__K.F($Unbox(_module.TyKn__C.G(Tclass._module.TyKn__K?(), $Heap, c#0)): ref)
         == LitInt(176);
    assume {:id "id141"} $Unbox(_module.TyKn__C.G(Tclass._module.TyKn__K?(), $Heap, c#0)): ref != null
       ==> _module.TyKn__K.F($Unbox(_module.TyKn__C.G(Tclass._module.TyKn__K?(), $Heap, c#0)): ref)
         == LitInt(176);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(209,16)
    assume true;
    // TrCallStmt: Adding lhs with type TyKn_K?
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id142"} defass#c#0;
    assume true;
    assert {:id "id143"} c#0 != null;
    call {:id "id144"} $tmp##0 := Call$$_module.TyKn__C.M(Tclass._module.TyKn__K?(), c#0);
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): ref;
    // TrCallStmt: After ProcessCallStmt
    k2#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(210,3)
    newtype$check#4 := null;
    if (k2#0 != null)
    {
        assert {:id "id146"} {:subsumption 0} k2#0 != null;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(k2#0), Tclass._module.TyKn__K?(), $Heap);
        assume _module.TyKn__K.F#canCall(k2#0);
    }

    assume k2#0 != null ==> _module.TyKn__K.F#canCall(k2#0);
    assert {:id "id147"} {:subsumption 0} k2#0 != null ==> _module.TyKn__K.F(k2#0) == LitInt(176);
    assume {:id "id148"} k2#0 != null ==> _module.TyKn__K.F(k2#0) == LitInt(176);
}



// function declaration for _module._default.InList
function _module.__default.InList(_module._default.InList$T: Ty, x#0: Box, xs#0: DatatypeType) : bool;

function _module.__default.InList#canCall(_module._default.InList$T: Ty, x#0: Box, xs#0: DatatypeType) : bool;

function Tclass._module.List(Ty) : Ty;

const unique Tagclass._module.List: TyTag;

// Tclass._module.List Tag
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tag(Tclass._module.List(_module.List$T)) == Tagclass._module.List
     && TagFamily(Tclass._module.List(_module.List$T)) == tytagFamily$List);

function Tclass._module.List_0(Ty) : Ty;

// Tclass._module.List injectivity 0
axiom (forall _module.List$T: Ty :: 
  { Tclass._module.List(_module.List$T) } 
  Tclass._module.List_0(Tclass._module.List(_module.List$T)) == _module.List$T);

// Box/unbox axiom for Tclass._module.List
axiom (forall _module.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.List(_module.List$T)) } 
  $IsBox(bx, Tclass._module.List(_module.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.List(_module.List$T)));

function _module.__default.InList#requires(Ty, Box, DatatypeType) : bool;

// #requires axiom for _module.__default.InList
axiom (forall _module._default.InList$T: Ty, x#0: Box, xs#0: DatatypeType :: 
  { _module.__default.InList#requires(_module._default.InList$T, x#0, xs#0) } 
  $IsBox(x#0, _module._default.InList$T)
       && $Is(xs#0, Tclass._module.List(_module._default.InList$T))
     ==> _module.__default.InList#requires(_module._default.InList$T, x#0, xs#0) == true);

procedure {:verboseName "InList (well-formedness)"} CheckWellformed$$_module.__default.InList(_module._default.InList$T: Ty, 
    x#0: Box where $IsBox(x#0, _module._default.InList$T), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.InList$T)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Subset
function _module.__default.Subset(_module._default.Subset$T: Ty, xs#0: DatatypeType, ys#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.Subset (revealed)
axiom {:id "id149"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.Subset$T: Ty, xs#0: DatatypeType, ys#0: DatatypeType :: 
    { _module.__default.Subset(_module._default.Subset$T, xs#0, ys#0) } 
    _module.__default.Subset#canCall(_module._default.Subset$T, xs#0, ys#0)
         || (2 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.Subset$T))
           && $Is(ys#0, Tclass._module.List(_module._default.Subset$T)))
       ==> (forall x#0: Box :: 
          { _module.__default.InList(_module._default.Subset$T, x#0, ys#0) } 
            { _module.__default.InList(_module._default.Subset$T, x#0, xs#0) } 
          $IsBox(x#0, _module._default.Subset$T)
             ==> _module.__default.InList#canCall(_module._default.Subset$T, x#0, xs#0)
               && (_module.__default.InList(_module._default.Subset$T, x#0, xs#0)
                 ==> _module.__default.InList#canCall(_module._default.Subset$T, x#0, ys#0)))
         && _module.__default.Subset(_module._default.Subset$T, xs#0, ys#0)
           == (forall x#0: Box :: 
            { _module.__default.InList(_module._default.Subset$T, x#0, ys#0) } 
              { _module.__default.InList(_module._default.Subset$T, x#0, xs#0) } 
            $IsBox(x#0, _module._default.Subset$T)
               ==> 
              _module.__default.InList(_module._default.Subset$T, x#0, xs#0)
               ==> _module.__default.InList(_module._default.Subset$T, x#0, ys#0)));
// definition axiom for _module.__default.Subset for all literals (revealed)
axiom {:id "id150"} 2 <= $FunctionContextHeight
   ==> (forall _module._default.Subset$T: Ty, xs#0: DatatypeType, ys#0: DatatypeType :: 
    {:weight 3} { _module.__default.Subset(_module._default.Subset$T, Lit(xs#0), Lit(ys#0)) } 
    _module.__default.Subset#canCall(_module._default.Subset$T, Lit(xs#0), Lit(ys#0))
         || (2 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass._module.List(_module._default.Subset$T))
           && $Is(ys#0, Tclass._module.List(_module._default.Subset$T)))
       ==> (forall x#1: Box :: 
          { _module.__default.InList(_module._default.Subset$T, x#1, ys#0) } 
            { _module.__default.InList(_module._default.Subset$T, x#1, xs#0) } 
          $IsBox(x#1, _module._default.Subset$T)
             ==> _module.__default.InList#canCall(_module._default.Subset$T, x#1, Lit(xs#0))
               && (_module.__default.InList(_module._default.Subset$T, x#1, Lit(xs#0))
                 ==> _module.__default.InList#canCall(_module._default.Subset$T, x#1, Lit(ys#0))))
         && _module.__default.Subset(_module._default.Subset$T, Lit(xs#0), Lit(ys#0))
           == (forall x#1: Box :: 
            { _module.__default.InList(_module._default.Subset$T, x#1, ys#0) } 
              { _module.__default.InList(_module._default.Subset$T, x#1, xs#0) } 
            $IsBox(x#1, _module._default.Subset$T)
               ==> 
              _module.__default.InList(_module._default.Subset$T, x#1, Lit(xs#0))
               ==> _module.__default.InList(_module._default.Subset$T, x#1, Lit(ys#0))));
}

function _module.__default.Subset#canCall(_module._default.Subset$T: Ty, xs#0: DatatypeType, ys#0: DatatypeType) : bool;

function _module.__default.Subset#requires(Ty, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.Subset
axiom (forall _module._default.Subset$T: Ty, xs#0: DatatypeType, ys#0: DatatypeType :: 
  { _module.__default.Subset#requires(_module._default.Subset$T, xs#0, ys#0) } 
  $Is(xs#0, Tclass._module.List(_module._default.Subset$T))
       && $Is(ys#0, Tclass._module.List(_module._default.Subset$T))
     ==> _module.__default.Subset#requires(_module._default.Subset$T, xs#0, ys#0) == true);

procedure {:verboseName "Subset (well-formedness)"} CheckWellformed$$_module.__default.Subset(_module._default.Subset$T: Ty where $AlwaysAllocated(_module._default.Subset$T), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.Subset$T)), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.Subset$T)));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ListLemma_T (well-formedness)"} CheckWellFormed$$_module.__default.ListLemma__T(_module._default.ListLemma_T$T: Ty
       where $AlwaysAllocated(_module._default.ListLemma_T$T), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ListLemma_T$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ListLemma_T$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.ListLemma_T$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.ListLemma_T$T), $Heap)
         && $IsA#_module.List(ys#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ListLemma_T (call)"} Call$$_module.__default.ListLemma__T(_module._default.ListLemma_T$T: Ty
       where $AlwaysAllocated(_module._default.ListLemma_T$T), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ListLemma_T$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ListLemma_T$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.ListLemma_T$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.ListLemma_T$T), $Heap)
         && $IsA#_module.List(ys#0));
  // user-defined preconditions
  requires {:id "id156"} (forall x#1: Box :: 
    { _module.__default.InList(_module._default.ListLemma_T$T, x#1, ys#0) } 
      { _module.__default.InList(_module._default.ListLemma_T$T, x#1, xs#0) } 
    $IsBox(x#1, _module._default.ListLemma_T$T)
       ==> 
      _module.__default.InList(_module._default.ListLemma_T$T, x#1, xs#0)
       ==> _module.__default.InList(_module._default.ListLemma_T$T, x#1, ys#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "ListLemma_T (correctness)"} Impl$$_module.__default.ListLemma__T(_module._default.ListLemma_T$T: Ty
       where $AlwaysAllocated(_module._default.ListLemma_T$T), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ListLemma_T$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ListLemma_T$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.ListLemma_T$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.ListLemma_T$T), $Heap)
         && $IsA#_module.List(ys#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id157"} (forall x#1: Box :: 
    { _module.__default.InList(_module._default.ListLemma_T$T, x#1, ys#0) } 
      { _module.__default.InList(_module._default.ListLemma_T$T, x#1, xs#0) } 
    $IsBox(x#1, _module._default.ListLemma_T$T)
       ==> 
      _module.__default.InList(_module._default.ListLemma_T$T, x#1, xs#0)
       ==> _module.__default.InList(_module._default.ListLemma_T$T, x#1, ys#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ListLemma_T (correctness)"} Impl$$_module.__default.ListLemma__T(_module._default.ListLemma_T$T: Ty, xs#0: DatatypeType, ys#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##xs#2: DatatypeType;
  var ##ys#0: DatatypeType;

    // AddMethodImpl: ListLemma_T, Impl$$_module.__default.ListLemma__T
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(253,3)
    ##xs#2 := xs#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#2, Tclass._module.List(_module._default.ListLemma_T$T), $Heap);
    ##ys#0 := ys#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##ys#0, Tclass._module.List(_module._default.ListLemma_T$T), $Heap);
    assume _module.__default.Subset#canCall(_module._default.ListLemma_T$T, xs#0, ys#0);
    assume _module.__default.Subset#canCall(_module._default.ListLemma_T$T, xs#0, ys#0);
    assert {:id "id158"} {:subsumption 0} _module.__default.Subset#canCall(_module._default.ListLemma_T$T, xs#0, ys#0)
       ==> _module.__default.Subset(_module._default.ListLemma_T$T, xs#0, ys#0)
         || (forall x#2: Box :: 
          { _module.__default.InList(_module._default.ListLemma_T$T, x#2, ys#0) } 
            { _module.__default.InList(_module._default.ListLemma_T$T, x#2, xs#0) } 
          $IsBox(x#2, _module._default.ListLemma_T$T)
             ==> 
            _module.__default.InList(_module._default.ListLemma_T$T, x#2, xs#0)
             ==> _module.__default.InList(_module._default.ListLemma_T$T, x#2, ys#0));
    assume {:id "id159"} _module.__default.Subset(_module._default.ListLemma_T$T, xs#0, ys#0);
}



procedure {:verboseName "ammeLtsiL_T (well-formedness)"} CheckWellFormed$$_module.__default.ammeLtsiL__T(_module._default.ammeLtsiL_T$T: Ty
       where $AlwaysAllocated(_module._default.ammeLtsiL_T$T), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ammeLtsiL_T$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ammeLtsiL_T$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.ammeLtsiL_T$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.ammeLtsiL_T$T), $Heap)
         && $IsA#_module.List(ys#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ammeLtsiL_T (call)"} Call$$_module.__default.ammeLtsiL__T(_module._default.ammeLtsiL_T$T: Ty
       where $AlwaysAllocated(_module._default.ammeLtsiL_T$T), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ammeLtsiL_T$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ammeLtsiL_T$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.ammeLtsiL_T$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.ammeLtsiL_T$T), $Heap)
         && $IsA#_module.List(ys#0));
  // user-defined preconditions
  requires {:id "id161"} _module.__default.Subset#canCall(_module._default.ammeLtsiL_T$T, xs#0, ys#0)
     ==> _module.__default.Subset(_module._default.ammeLtsiL_T$T, xs#0, ys#0)
       || (forall x#0: Box :: 
        { _module.__default.InList(_module._default.ammeLtsiL_T$T, x#0, ys#0) } 
          { _module.__default.InList(_module._default.ammeLtsiL_T$T, x#0, xs#0) } 
        $IsBox(x#0, _module._default.ammeLtsiL_T$T)
           ==> 
          _module.__default.InList(_module._default.ammeLtsiL_T$T, x#0, xs#0)
           ==> _module.__default.InList(_module._default.ammeLtsiL_T$T, x#0, ys#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "ammeLtsiL_T (correctness)"} Impl$$_module.__default.ammeLtsiL__T(_module._default.ammeLtsiL_T$T: Ty
       where $AlwaysAllocated(_module._default.ammeLtsiL_T$T), 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.ammeLtsiL_T$T))
         && $IsAlloc(xs#0, Tclass._module.List(_module._default.ammeLtsiL_T$T), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(_module._default.ammeLtsiL_T$T))
         && $IsAlloc(ys#0, Tclass._module.List(_module._default.ammeLtsiL_T$T), $Heap)
         && $IsA#_module.List(ys#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id162"} _module.__default.Subset#canCall(_module._default.ammeLtsiL_T$T, xs#0, ys#0)
     && 
    _module.__default.Subset(_module._default.ammeLtsiL_T$T, xs#0, ys#0)
     && (forall x#1: Box :: 
      { _module.__default.InList(_module._default.ammeLtsiL_T$T, x#1, ys#0) } 
        { _module.__default.InList(_module._default.ammeLtsiL_T$T, x#1, xs#0) } 
      $IsBox(x#1, _module._default.ammeLtsiL_T$T)
         ==> 
        _module.__default.InList(_module._default.ammeLtsiL_T$T, x#1, xs#0)
         ==> _module.__default.InList(_module._default.ammeLtsiL_T$T, x#1, ys#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ammeLtsiL_T (correctness)"} Impl$$_module.__default.ammeLtsiL__T(_module._default.ammeLtsiL_T$T: Ty, xs#0: DatatypeType, ys#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#2: Box;
  var ##x#0: Box;
  var ##xs#1: DatatypeType;
  var ##x#1: Box;
  var ##xs#2: DatatypeType;

    // AddMethodImpl: ammeLtsiL_T, Impl$$_module.__default.ammeLtsiL__T
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(258,3)
    // Begin Comprehension WF check
    havoc x#2;
    if ($IsBox(x#2, _module._default.ammeLtsiL_T$T)
       && $IsAllocBox(x#2, _module._default.ammeLtsiL_T$T, $Heap))
    {
        ##x#0 := x#2;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0, _module._default.ammeLtsiL_T$T, $Heap);
        ##xs#1 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1, Tclass._module.List(_module._default.ammeLtsiL_T$T), $Heap);
        assume _module.__default.InList#canCall(_module._default.ammeLtsiL_T$T, x#2, xs#0);
        if (_module.__default.InList(_module._default.ammeLtsiL_T$T, x#2, xs#0))
        {
            ##x#1 := x#2;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#1, _module._default.ammeLtsiL_T$T, $Heap);
            ##xs#2 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#2, Tclass._module.List(_module._default.ammeLtsiL_T$T), $Heap);
            assume _module.__default.InList#canCall(_module._default.ammeLtsiL_T$T, x#2, ys#0);
        }
    }

    // End Comprehension WF check
    assume (forall x#3: Box :: 
      { _module.__default.InList(_module._default.ammeLtsiL_T$T, x#3, ys#0) } 
        { _module.__default.InList(_module._default.ammeLtsiL_T$T, x#3, xs#0) } 
      $IsBox(x#3, _module._default.ammeLtsiL_T$T)
         ==> _module.__default.InList#canCall(_module._default.ammeLtsiL_T$T, x#3, xs#0)
           && (_module.__default.InList(_module._default.ammeLtsiL_T$T, x#3, xs#0)
             ==> _module.__default.InList#canCall(_module._default.ammeLtsiL_T$T, x#3, ys#0)));
    assert {:id "id163"} (forall x#3: Box :: 
      { _module.__default.InList(_module._default.ammeLtsiL_T$T, x#3, ys#0) } 
        { _module.__default.InList(_module._default.ammeLtsiL_T$T, x#3, xs#0) } 
      $IsBox(x#3, _module._default.ammeLtsiL_T$T)
         ==> 
        _module.__default.InList(_module._default.ammeLtsiL_T$T, x#3, xs#0)
         ==> _module.__default.InList(_module._default.ammeLtsiL_T$T, x#3, ys#0));
}



procedure {:verboseName "ListLemma_int (well-formedness)"} CheckWellFormed$$_module.__default.ListLemma__int(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(TInt))
         && $IsAlloc(ys#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(ys#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ListLemma_int (call)"} Call$$_module.__default.ListLemma__int(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(TInt))
         && $IsAlloc(ys#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(ys#0));
  // user-defined preconditions
  requires {:id "id168"} (forall x#1: int :: 
    { _module.__default.InList(TInt, $Box(x#1), ys#0) } 
      { _module.__default.InList(TInt, $Box(x#1), xs#0) } 
    _module.__default.InList(TInt, $Box(x#1), xs#0)
       ==> _module.__default.InList(TInt, $Box(x#1), ys#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "ListLemma_int (correctness)"} Impl$$_module.__default.ListLemma__int(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(TInt))
         && $IsAlloc(ys#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(ys#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id169"} (forall x#1: int :: 
    { _module.__default.InList(TInt, $Box(x#1), ys#0) } 
      { _module.__default.InList(TInt, $Box(x#1), xs#0) } 
    _module.__default.InList(TInt, $Box(x#1), xs#0)
       ==> _module.__default.InList(TInt, $Box(x#1), ys#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ListLemma_int (correctness)"} Impl$$_module.__default.ListLemma__int(xs#0: DatatypeType, ys#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##xs#2: DatatypeType;
  var ##ys#0: DatatypeType;

    // AddMethodImpl: ListLemma_int, Impl$$_module.__default.ListLemma__int
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(263,3)
    ##xs#2 := xs#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#2, Tclass._module.List(TInt), $Heap);
    ##ys#0 := ys#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##ys#0, Tclass._module.List(TInt), $Heap);
    assume _module.__default.Subset#canCall(TInt, xs#0, ys#0);
    assume _module.__default.Subset#canCall(TInt, xs#0, ys#0);
    assert {:id "id170"} {:subsumption 0} _module.__default.Subset#canCall(TInt, xs#0, ys#0)
       ==> _module.__default.Subset(TInt, xs#0, ys#0)
         || (forall x#2: int :: 
          { _module.__default.InList(TInt, $Box(x#2), ys#0) } 
            { _module.__default.InList(TInt, $Box(x#2), xs#0) } 
          _module.__default.InList(TInt, $Box(x#2), xs#0)
             ==> _module.__default.InList(TInt, $Box(x#2), ys#0));
    assume {:id "id171"} _module.__default.Subset(TInt, xs#0, ys#0);
}



procedure {:verboseName "ammeLtsiL_int (well-formedness)"} CheckWellFormed$$_module.__default.ammeLtsiL__int(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(TInt))
         && $IsAlloc(ys#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(ys#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ammeLtsiL_int (call)"} Call$$_module.__default.ammeLtsiL__int(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(TInt))
         && $IsAlloc(ys#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(ys#0));
  // user-defined preconditions
  requires {:id "id173"} _module.__default.Subset#canCall(TInt, xs#0, ys#0)
     ==> _module.__default.Subset(TInt, xs#0, ys#0)
       || (forall x#0: int :: 
        { _module.__default.InList(TInt, $Box(x#0), ys#0) } 
          { _module.__default.InList(TInt, $Box(x#0), xs#0) } 
        _module.__default.InList(TInt, $Box(x#0), xs#0)
           ==> _module.__default.InList(TInt, $Box(x#0), ys#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "ammeLtsiL_int (correctness)"} Impl$$_module.__default.ammeLtsiL__int(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(TInt))
         && $IsAlloc(xs#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass._module.List(TInt))
         && $IsAlloc(ys#0, Tclass._module.List(TInt), $Heap)
         && $IsA#_module.List(ys#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id174"} _module.__default.Subset#canCall(TInt, xs#0, ys#0)
     && 
    _module.__default.Subset(TInt, xs#0, ys#0)
     && (forall x#1: int :: 
      { _module.__default.InList(TInt, $Box(x#1), ys#0) } 
        { _module.__default.InList(TInt, $Box(x#1), xs#0) } 
      _module.__default.InList(TInt, $Box(x#1), xs#0)
         ==> _module.__default.InList(TInt, $Box(x#1), ys#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ammeLtsiL_int (correctness)"} Impl$$_module.__default.ammeLtsiL__int(xs#0: DatatypeType, ys#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#2: int;
  var ##x#0: int;
  var ##xs#1: DatatypeType;
  var ##x#1: int;
  var ##xs#2: DatatypeType;

    // AddMethodImpl: ammeLtsiL_int, Impl$$_module.__default.ammeLtsiL__int
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(268,3)
    // Begin Comprehension WF check
    havoc x#2;
    if (true)
    {
        ##x#0 := x#2;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        ##xs#1 := xs#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#1, Tclass._module.List(TInt), $Heap);
        assume _module.__default.InList#canCall(TInt, $Box(x#2), xs#0);
        if (_module.__default.InList(TInt, $Box(x#2), xs#0))
        {
            ##x#1 := x#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1, TInt, $Heap);
            ##xs#2 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#2, Tclass._module.List(TInt), $Heap);
            assume _module.__default.InList#canCall(TInt, $Box(x#2), ys#0);
        }
    }

    // End Comprehension WF check
    assume (forall x#3: int :: 
      { _module.__default.InList(TInt, $Box(x#3), ys#0) } 
        { _module.__default.InList(TInt, $Box(x#3), xs#0) } 
      _module.__default.InList#canCall(TInt, $Box(x#3), xs#0)
         && (_module.__default.InList(TInt, $Box(x#3), xs#0)
           ==> _module.__default.InList#canCall(TInt, $Box(x#3), ys#0)));
    assert {:id "id175"} (forall x#3: int :: 
      { _module.__default.InList(TInt, $Box(x#3), ys#0) } 
        { _module.__default.InList(TInt, $Box(x#3), xs#0) } 
      _module.__default.InList(TInt, $Box(x#3), xs#0)
         ==> _module.__default.InList(TInt, $Box(x#3), ys#0));
}



// function declaration for _module._default.length
function _module.__default.length(_module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType) : int
uses {
// consequence axiom for _module.__default.length
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.length(_module._default.length$_T0, $ly, xs#0) } 
    _module.__default.length#canCall(_module._default.length$_T0, xs#0)
         || (1 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.length$_T0)))
       ==> LitInt(0) <= _module.__default.length(_module._default.length$_T0, $ly, xs#0));
// definition axiom for _module.__default.length (revealed)
axiom {:id "id176"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.length(_module._default.length$_T0, $LS($ly), xs#0) } 
    _module.__default.length#canCall(_module._default.length$_T0, xs#0)
         || (1 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.length$_T0)))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var tail#1 := _module.List._h2(xs#0); 
            _module.__default.length#canCall(_module._default.length$_T0, tail#1)))
         && _module.__default.length(_module._default.length$_T0, $LS($ly), xs#0)
           == (if _module.List.Nil_q(xs#0)
             then 0
             else (var tail#0 := _module.List._h2(xs#0); 
              1 + _module.__default.length(_module._default.length$_T0, $ly, tail#0))));
// definition axiom for _module.__default.length for all literals (revealed)
axiom {:id "id177"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.length(_module._default.length$_T0, $LS($ly), Lit(xs#0)) } 
    _module.__default.length#canCall(_module._default.length$_T0, Lit(xs#0))
         || (1 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.length$_T0)))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var tail#3 := Lit(_module.List._h2(Lit(xs#0))); 
            _module.__default.length#canCall(_module._default.length$_T0, tail#3)))
         && _module.__default.length(_module._default.length$_T0, $LS($ly), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then 0
             else (var tail#2 := Lit(_module.List._h2(Lit(xs#0))); 
              LitInt(1 + _module.__default.length(_module._default.length$_T0, $LS($ly), tail#2)))));
}

function _module.__default.length#canCall(_module._default.length$_T0: Ty, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.length(_module._default.length$_T0, $LS($ly), xs#0) } 
  _module.__default.length(_module._default.length$_T0, $LS($ly), xs#0)
     == _module.__default.length(_module._default.length$_T0, $ly, xs#0));

// fuel synonym axiom
axiom (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.length(_module._default.length$_T0, AsFuelBottom($ly), xs#0) } 
  _module.__default.length(_module._default.length$_T0, $ly, xs#0)
     == _module.__default.length(_module._default.length$_T0, $LZ, xs#0));

function _module.__default.length#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.length
axiom (forall _module._default.length$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.length#requires(_module._default.length$_T0, $ly, xs#0) } 
  $Is(xs#0, Tclass._module.List(_module._default.length$_T0))
     ==> _module.__default.length#requires(_module._default.length$_T0, $ly, xs#0)
       == true);

procedure {:verboseName "length (well-formedness)"} CheckWellformed$$_module.__default.length(_module._default.length$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.length$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "length (well-formedness)"} CheckWellformed$$_module.__default.length(_module._default.length$_T0: Ty, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0)
           <= _module.__default.length(_module._default.length$_T0, $LS($LZ), xs#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assert {:id "id183"} $Is(LitInt(0), Tclass._System.nat());
            assume {:id "id184"} _module.__default.length(_module._default.length$_T0, $LS($LZ), xs#0)
               == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.length(_module._default.length$_T0, $LS($LZ), xs#0), 
              Tclass._System.nat());
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.length$_T0);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.length$_T0));
            havoc tail#Z#0;
            assume {:id "id178"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.length$_T0));
            assume {:id "id179"} tail#Z#0 == let#0#0#0;
            ##xs#0 := tail#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.length$_T0), $Heap);
            assert {:id "id180"} DtRank(##xs#0) < DtRank(xs#0);
            assume _module.__default.length#canCall(_module._default.length$_T0, tail#Z#0);
            assert {:id "id181"} $Is(1 + _module.__default.length(_module._default.length$_T0, $LS($LZ), tail#Z#0), 
              Tclass._System.nat());
            assume {:id "id182"} _module.__default.length(_module._default.length$_T0, $LS($LZ), xs#0)
               == 1 + _module.__default.length(_module._default.length$_T0, $LS($LZ), tail#Z#0);
            assume _module.__default.length#canCall(_module._default.length$_T0, tail#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.length(_module._default.length$_T0, $LS($LZ), xs#0), 
              Tclass._System.nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.elems
function _module.__default.elems(_module._default.elems$_T0: Ty, $ly: LayerType, xs#0: DatatypeType) : Set
uses {
// consequence axiom for _module.__default.elems
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.elems$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.elems(_module._default.elems$_T0, $ly, xs#0) } 
    _module.__default.elems#canCall(_module._default.elems$_T0, xs#0)
         || (1 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.elems$_T0)))
       ==> $Is(_module.__default.elems(_module._default.elems$_T0, $ly, xs#0), 
        TSet(_module._default.elems$_T0)));
// alloc consequence axiom for _module.__default.elems
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.elems$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    { $IsAlloc(_module.__default.elems(_module._default.elems$_T0, $ly, xs#0), 
        TSet(_module._default.elems$_T0), 
        $Heap) } 
    (_module.__default.elems#canCall(_module._default.elems$_T0, xs#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(xs#0, Tclass._module.List(_module._default.elems$_T0))
             && $IsAlloc(xs#0, Tclass._module.List(_module._default.elems$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.elems(_module._default.elems$_T0, $ly, xs#0), 
        TSet(_module._default.elems$_T0), 
        $Heap));
// definition axiom for _module.__default.elems (revealed)
axiom {:id "id185"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.elems$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.elems(_module._default.elems$_T0, $LS($ly), xs#0) } 
    _module.__default.elems#canCall(_module._default.elems$_T0, xs#0)
         || (1 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.elems$_T0)))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var tail#1 := _module.List._h2(xs#0); 
            _module.__default.elems#canCall(_module._default.elems$_T0, tail#1)))
         && _module.__default.elems(_module._default.elems$_T0, $LS($ly), xs#0)
           == (if _module.List.Nil_q(xs#0)
             then Set#Empty(): Set
             else (var tail#0 := _module.List._h2(xs#0); 
              (var x#0 := _module.List._h1(xs#0); 
                Set#Union(Set#UnionOne(Set#Empty(): Set, x#0), 
                  _module.__default.elems(_module._default.elems$_T0, $ly, tail#0))))));
// definition axiom for _module.__default.elems for all literals (revealed)
axiom {:id "id186"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.elems$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.elems(_module._default.elems$_T0, $LS($ly), Lit(xs#0)) } 
    _module.__default.elems#canCall(_module._default.elems$_T0, Lit(xs#0))
         || (1 < $FunctionContextHeight
           && $Is(xs#0, Tclass._module.List(_module._default.elems$_T0)))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var tail#3 := Lit(_module.List._h2(Lit(xs#0))); 
            _module.__default.elems#canCall(_module._default.elems$_T0, tail#3)))
         && _module.__default.elems(_module._default.elems$_T0, $LS($ly), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then Set#Empty(): Set
             else (var tail#2 := Lit(_module.List._h2(Lit(xs#0))); 
              (var x#2 := Lit(_module.List._h1(Lit(xs#0))); 
                Set#Union(Set#UnionOne(Set#Empty(): Set, x#2), 
                  _module.__default.elems(_module._default.elems$_T0, $LS($ly), tail#2))))));
}

function _module.__default.elems#canCall(_module._default.elems$_T0: Ty, xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.elems$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.elems(_module._default.elems$_T0, $LS($ly), xs#0) } 
  _module.__default.elems(_module._default.elems$_T0, $LS($ly), xs#0)
     == _module.__default.elems(_module._default.elems$_T0, $ly, xs#0));

// fuel synonym axiom
axiom (forall _module._default.elems$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.elems(_module._default.elems$_T0, AsFuelBottom($ly), xs#0) } 
  _module.__default.elems(_module._default.elems$_T0, $ly, xs#0)
     == _module.__default.elems(_module._default.elems$_T0, $LZ, xs#0));

function _module.__default.elems#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.elems
axiom (forall _module._default.elems$_T0: Ty, $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.elems#requires(_module._default.elems$_T0, $ly, xs#0) } 
  $Is(xs#0, Tclass._module.List(_module._default.elems$_T0))
     ==> _module.__default.elems#requires(_module._default.elems$_T0, $ly, xs#0) == true);

procedure {:verboseName "elems (well-formedness)"} CheckWellformed$$_module.__default.elems(_module._default.elems$_T0: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List(_module._default.elems$_T0)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "elems (well-formedness)"} CheckWellformed$$_module.__default.elems(_module._default.elems$_T0: Ty, xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: Box;
  var let#1#0#0: Box;
  var ##xs#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.elems(_module._default.elems$_T0, $LS($LZ), xs#0), 
          TSet(_module._default.elems$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id193"} _module.__default.elems(_module._default.elems$_T0, $LS($LZ), xs#0)
               == Lit(Set#Empty(): Set);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.elems(_module._default.elems$_T0, $LS($LZ), xs#0), 
              TSet(_module._default.elems$_T0));
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.elems$_T0);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.elems$_T0));
            havoc tail#Z#0;
            assume {:id "id187"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.elems$_T0));
            assume {:id "id188"} tail#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id189"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, _module._default.elems$_T0);
            assume {:id "id190"} x#Z#0 == let#1#0#0;
            ##xs#0 := tail#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(_module._default.elems$_T0), $Heap);
            assert {:id "id191"} DtRank(##xs#0) < DtRank(xs#0);
            assume _module.__default.elems#canCall(_module._default.elems$_T0, tail#Z#0);
            assume {:id "id192"} _module.__default.elems(_module._default.elems$_T0, $LS($LZ), xs#0)
               == Set#Union(Set#UnionOne(Set#Empty(): Set, x#Z#0), 
                _module.__default.elems(_module._default.elems$_T0, $LS($LZ), tail#Z#0));
            assume _module.__default.elems#canCall(_module._default.elems$_T0, tail#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.elems(_module._default.elems$_T0, $LS($LZ), xs#0), 
              TSet(_module._default.elems$_T0));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.Card
function _module.__default.Card(_module._default.Card$_T0: Ty, s#0: Set) : int
uses {
// consequence axiom for _module.__default.Card
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Card$_T0: Ty, s#0: Set :: 
    { _module.__default.Card(_module._default.Card$_T0, s#0) } 
    _module.__default.Card#canCall(_module._default.Card$_T0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(_module._default.Card$_T0)))
       ==> LitInt(0) <= _module.__default.Card(_module._default.Card$_T0, s#0));
// definition axiom for _module.__default.Card (revealed)
axiom {:id "id194"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Card$_T0: Ty, s#0: Set :: 
    { _module.__default.Card(_module._default.Card$_T0, s#0) } 
    _module.__default.Card#canCall(_module._default.Card$_T0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(_module._default.Card$_T0)))
       ==> _module.__default.Card(_module._default.Card$_T0, s#0) == Set#Card(s#0));
// definition axiom for _module.__default.Card for all literals (revealed)
axiom {:id "id195"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Card$_T0: Ty, s#0: Set :: 
    {:weight 3} { _module.__default.Card(_module._default.Card$_T0, Lit(s#0)) } 
    _module.__default.Card#canCall(_module._default.Card$_T0, Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(_module._default.Card$_T0)))
       ==> _module.__default.Card(_module._default.Card$_T0, Lit(s#0))
         == Set#Card(Lit(s#0)));
}

function _module.__default.Card#canCall(_module._default.Card$_T0: Ty, s#0: Set) : bool;

function _module.__default.Card#requires(Ty, Set) : bool;

// #requires axiom for _module.__default.Card
axiom (forall _module._default.Card$_T0: Ty, s#0: Set :: 
  { _module.__default.Card#requires(_module._default.Card$_T0, s#0) } 
  $Is(s#0, TSet(_module._default.Card$_T0))
     ==> _module.__default.Card#requires(_module._default.Card$_T0, s#0) == true);

procedure {:verboseName "Card (well-formedness)"} CheckWellformed$$_module.__default.Card(_module._default.Card$_T0: Ty, 
    s#0: Set where $Is(s#0, TSet(_module._default.Card$_T0)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Card (well-formedness)"} CheckWellformed$$_module.__default.Card(_module._default.Card$_T0: Ty, s#0: Set)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.__default.Card(_module._default.Card$_T0, s#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id196"} $Is(Set#Card(s#0), Tclass._System.nat());
        assume {:id "id197"} _module.__default.Card(_module._default.Card$_T0, s#0) == Set#Card(s#0);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.Card(_module._default.Card$_T0, s#0), Tclass._System.nat());
        return;

        assume false;
    }
}



// function declaration for _module._default.Identity
function _module.__default.Identity(_module._default.Identity$_T0: Ty, s#0: Set) : Set
uses {
// consequence axiom for _module.__default.Identity
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.Identity$_T0: Ty, s#0: Set :: 
    { _module.__default.Identity(_module._default.Identity$_T0, s#0) } 
    _module.__default.Identity#canCall(_module._default.Identity$_T0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(_module._default.Identity$_T0)))
       ==> $Is(_module.__default.Identity(_module._default.Identity$_T0, s#0), 
        TSet(_module._default.Identity$_T0)));
// alloc consequence axiom for _module.__default.Identity
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.Identity$_T0: Ty, s#0: Set :: 
    { $IsAlloc(_module.__default.Identity(_module._default.Identity$_T0, s#0), 
        TSet(_module._default.Identity$_T0), 
        $Heap) } 
    (_module.__default.Identity#canCall(_module._default.Identity$_T0, s#0)
           || (0 < $FunctionContextHeight
             && 
            $Is(s#0, TSet(_module._default.Identity$_T0))
             && $IsAlloc(s#0, TSet(_module._default.Identity$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Identity(_module._default.Identity$_T0, s#0), 
        TSet(_module._default.Identity$_T0), 
        $Heap));
// definition axiom for _module.__default.Identity (revealed)
axiom {:id "id198"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Identity$_T0: Ty, s#0: Set :: 
    { _module.__default.Identity(_module._default.Identity$_T0, s#0) } 
    _module.__default.Identity#canCall(_module._default.Identity$_T0, s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(_module._default.Identity$_T0)))
       ==> _module.__default.Identity(_module._default.Identity$_T0, s#0) == s#0);
// definition axiom for _module.__default.Identity for all literals (revealed)
axiom {:id "id199"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.Identity$_T0: Ty, s#0: Set :: 
    {:weight 3} { _module.__default.Identity(_module._default.Identity$_T0, Lit(s#0)) } 
    _module.__default.Identity#canCall(_module._default.Identity$_T0, Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSet(_module._default.Identity$_T0)))
       ==> _module.__default.Identity(_module._default.Identity$_T0, Lit(s#0)) == Lit(s#0));
}

function _module.__default.Identity#canCall(_module._default.Identity$_T0: Ty, s#0: Set) : bool;

function _module.__default.Identity#requires(Ty, Set) : bool;

// #requires axiom for _module.__default.Identity
axiom (forall _module._default.Identity$_T0: Ty, s#0: Set :: 
  { _module.__default.Identity#requires(_module._default.Identity$_T0, s#0) } 
  $Is(s#0, TSet(_module._default.Identity$_T0))
     ==> _module.__default.Identity#requires(_module._default.Identity$_T0, s#0) == true);

procedure {:verboseName "Identity (well-formedness)"} CheckWellformed$$_module.__default.Identity(_module._default.Identity$_T0: Ty, 
    s#0: Set where $Is(s#0, TSet(_module._default.Identity$_T0)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.MultisetToSet
function _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0: Ty, $ly: LayerType, m#0: MultiSet) : Set
uses {
// consequence axiom for _module.__default.MultisetToSet
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.MultisetToSet$_T0: Ty, $ly: LayerType, m#0: MultiSet :: 
    { _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $ly, m#0) } 
    _module.__default.MultisetToSet#canCall(_module._default.MultisetToSet$_T0, m#0)
         || (0 < $FunctionContextHeight
           && $Is(m#0, TMultiSet(_module._default.MultisetToSet$_T0)))
       ==> $Is(_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $ly, m#0), 
        TSet(_module._default.MultisetToSet$_T0)));
// alloc consequence axiom for _module.__default.MultisetToSet
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.MultisetToSet$_T0: Ty, 
      $ly: LayerType, 
      m#0: MultiSet :: 
    { $IsAlloc(_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $ly, m#0), 
        TSet(_module._default.MultisetToSet$_T0), 
        $Heap) } 
    (_module.__default.MultisetToSet#canCall(_module._default.MultisetToSet$_T0, m#0)
           || (0 < $FunctionContextHeight
             && 
            $Is(m#0, TMultiSet(_module._default.MultisetToSet$_T0))
             && $IsAlloc(m#0, TMultiSet(_module._default.MultisetToSet$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $ly, m#0), 
        TSet(_module._default.MultisetToSet$_T0), 
        $Heap));
// definition axiom for _module.__default.MultisetToSet (revealed)
axiom {:id "id201"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.MultisetToSet$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      m#0: MultiSet :: 
    { _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($ly), m#0), $IsGoodHeap($Heap) } 
    _module.__default.MultisetToSet#canCall(_module._default.MultisetToSet$_T0, m#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(m#0, TMultiSet(_module._default.MultisetToSet$_T0)))
       ==> (MultiSet#Card(m#0) != LitInt(0)
           ==> $let#0$canCall(_module._default.MultisetToSet$_T0, m#0)
             && _module.__default.MultisetToSet#canCall(_module._default.MultisetToSet$_T0, 
              MultiSet#Difference(m#0, 
                MultiSet#UnionOne(MultiSet#Empty(): MultiSet, $let#0_x(_module._default.MultisetToSet$_T0, m#0)))))
         && _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($ly), m#0)
           == (if MultiSet#Card(m#0) == LitInt(0)
             then Set#Empty(): Set
             else (var x#0 := $let#0_x(_module._default.MultisetToSet$_T0, m#0); 
              Set#Union(_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, 
                  $ly, 
                  MultiSet#Difference(m#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0))), 
                Set#UnionOne(Set#Empty(): Set, x#0)))));
// definition axiom for _module.__default.MultisetToSet for all literals (revealed)
axiom {:id "id202"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.MultisetToSet$_T0: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      m#0: MultiSet :: 
    {:weight 3} { _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($ly), Lit(m#0)), $IsGoodHeap($Heap) } 
    _module.__default.MultisetToSet#canCall(_module._default.MultisetToSet$_T0, Lit(m#0))
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(m#0, TMultiSet(_module._default.MultisetToSet$_T0)))
       ==> (MultiSet#Card(Lit(m#0)) != LitInt(0)
           ==> $let#0$canCall(_module._default.MultisetToSet$_T0, Lit(m#0))
             && _module.__default.MultisetToSet#canCall(_module._default.MultisetToSet$_T0, 
              MultiSet#Difference(m#0, 
                MultiSet#UnionOne(MultiSet#Empty(): MultiSet, 
                  $let#0_x(_module._default.MultisetToSet$_T0, Lit(m#0))))))
         && _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($ly), Lit(m#0))
           == (if MultiSet#Card(Lit(m#0)) == LitInt(0)
             then Set#Empty(): Set
             else (var x#1 := $let#0_x(_module._default.MultisetToSet$_T0, Lit(m#0)); 
              Set#Union(_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, 
                  $LS($ly), 
                  MultiSet#Difference(m#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#1))), 
                Set#UnionOne(Set#Empty(): Set, x#1)))));
}

function _module.__default.MultisetToSet#canCall(_module._default.MultisetToSet$_T0: Ty, m#0: MultiSet) : bool;

// layer synonym axiom
axiom (forall _module._default.MultisetToSet$_T0: Ty, $ly: LayerType, m#0: MultiSet :: 
  { _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($ly), m#0) } 
  _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($ly), m#0)
     == _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $ly, m#0));

// fuel synonym axiom
axiom (forall _module._default.MultisetToSet$_T0: Ty, $ly: LayerType, m#0: MultiSet :: 
  { _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, AsFuelBottom($ly), m#0) } 
  _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $ly, m#0)
     == _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LZ, m#0));

function _module.__default.MultisetToSet#requires(Ty, LayerType, MultiSet) : bool;

// #requires axiom for _module.__default.MultisetToSet
axiom (forall _module._default.MultisetToSet$_T0: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    m#0: MultiSet :: 
  { _module.__default.MultisetToSet#requires(_module._default.MultisetToSet$_T0, $ly, m#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap) && $Is(m#0, TMultiSet(_module._default.MultisetToSet$_T0))
     ==> _module.__default.MultisetToSet#requires(_module._default.MultisetToSet$_T0, $ly, m#0)
       == true);

function $let#0_x(_module._default.MultisetToSet$_T0: Ty, m: MultiSet) : Box;

function $let#0$canCall(_module._default.MultisetToSet$_T0: Ty, m: MultiSet) : bool;

axiom (forall _module._default.MultisetToSet$_T0: Ty, m: MultiSet :: 
  { $let#0_x(_module._default.MultisetToSet$_T0, m) } 
  $let#0$canCall(_module._default.MultisetToSet$_T0, m)
     ==> MultiSet#Multiplicity(m, $let#0_x(_module._default.MultisetToSet$_T0, m)) > 0);

procedure {:verboseName "MultisetToSet (well-formedness)"} CheckWellformed$$_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0: Ty, 
    m#0: MultiSet where $Is(m#0, TMultiSet(_module._default.MultisetToSet$_T0)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetToSet (well-formedness)"} CheckWellformed$$_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0: Ty, m#0: MultiSet)
{
  var $_ReadsFrame: [ref,Field]bool;
  var x#2: Box;
  var ##m#0: MultiSet;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($LZ), m#0), 
          TSet(_module._default.MultisetToSet$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (MultiSet#Card(m#0) == LitInt(0))
        {
            assume {:id "id203"} _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($LZ), m#0)
               == Lit(Set#Empty(): Set);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($LZ), m#0), 
              TSet(_module._default.MultisetToSet$_T0));
            return;
        }
        else
        {
            havoc x#2;
            if ($IsBox(x#2, _module._default.MultisetToSet$_T0)
               && $IsAllocBox(x#2, _module._default.MultisetToSet$_T0, $Heap))
            {
            }

            assert {:id "id204"} (exists x#3: Box :: 
              $IsBox(x#3, _module._default.MultisetToSet$_T0)
                 && MultiSet#Multiplicity(m#0, x#3) > 0);
            assume $IsBox(x#2, _module._default.MultisetToSet$_T0)
               && $IsAllocBox(x#2, _module._default.MultisetToSet$_T0, $Heap);
            assume MultiSet#Multiplicity(m#0, x#2) > 0;
            ##m#0 := MultiSet#Difference(m#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#2));
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, TMultiSet(_module._default.MultisetToSet$_T0), $Heap);
            assert {:id "id205"} MultiSet#Subset(##m#0, m#0) && !MultiSet#Equal(##m#0, m#0);
            assume _module.__default.MultisetToSet#canCall(_module._default.MultisetToSet$_T0, 
              MultiSet#Difference(m#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#2)));
            assume $let#0$canCall(_module._default.MultisetToSet$_T0, m#0);
            assume {:id "id206"} _module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($LZ), m#0)
               == Set#Union(_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, 
                  $LS($LZ), 
                  MultiSet#Difference(m#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#2))), 
                Set#UnionOne(Set#Empty(): Set, x#2));
            assume _module.__default.MultisetToSet#canCall(_module._default.MultisetToSet$_T0, 
              MultiSet#Difference(m#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#2)));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.MultisetToSet(_module._default.MultisetToSet$_T0, $LS($LZ), m#0), 
              TSet(_module._default.MultisetToSet$_T0));
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.SeqToSet
function _module.__default.SeqToSet(_module._default.SeqToSet$_T0: Ty, $ly: LayerType, q#0: Seq) : Set
uses {
// consequence axiom for _module.__default.SeqToSet
axiom 0 <= $FunctionContextHeight
   ==> (forall _module._default.SeqToSet$_T0: Ty, $ly: LayerType, q#0: Seq :: 
    { _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $ly, q#0) } 
    _module.__default.SeqToSet#canCall(_module._default.SeqToSet$_T0, q#0)
         || (0 < $FunctionContextHeight && $Is(q#0, TSeq(_module._default.SeqToSet$_T0)))
       ==> $Is(_module.__default.SeqToSet(_module._default.SeqToSet$_T0, $ly, q#0), 
        TSet(_module._default.SeqToSet$_T0)));
// alloc consequence axiom for _module.__default.SeqToSet
axiom 0 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module._default.SeqToSet$_T0: Ty, $ly: LayerType, q#0: Seq :: 
    { $IsAlloc(_module.__default.SeqToSet(_module._default.SeqToSet$_T0, $ly, q#0), 
        TSet(_module._default.SeqToSet$_T0), 
        $Heap) } 
    (_module.__default.SeqToSet#canCall(_module._default.SeqToSet$_T0, q#0)
           || (0 < $FunctionContextHeight
             && 
            $Is(q#0, TSeq(_module._default.SeqToSet$_T0))
             && $IsAlloc(q#0, TSeq(_module._default.SeqToSet$_T0), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.SeqToSet(_module._default.SeqToSet$_T0, $ly, q#0), 
        TSet(_module._default.SeqToSet$_T0), 
        $Heap));
// definition axiom for _module.__default.SeqToSet (revealed)
axiom {:id "id207"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.SeqToSet$_T0: Ty, $ly: LayerType, q#0: Seq :: 
    { _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($ly), q#0) } 
    _module.__default.SeqToSet#canCall(_module._default.SeqToSet$_T0, q#0)
         || (0 < $FunctionContextHeight && $Is(q#0, TSeq(_module._default.SeqToSet$_T0)))
       ==> (!Seq#Equal(q#0, Seq#Empty(): Seq)
           ==> _module.__default.SeqToSet#canCall(_module._default.SeqToSet$_T0, Seq#Drop(q#0, LitInt(1))))
         && _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($ly), q#0)
           == (if Seq#Equal(q#0, Seq#Empty(): Seq)
             then Set#Empty(): Set
             else Set#Union(Set#UnionOne(Set#Empty(): Set, Seq#Index(q#0, LitInt(0))), 
              _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $ly, Seq#Drop(q#0, LitInt(1))))));
// definition axiom for _module.__default.SeqToSet for all literals (revealed)
axiom {:id "id208"} 0 <= $FunctionContextHeight
   ==> (forall _module._default.SeqToSet$_T0: Ty, $ly: LayerType, q#0: Seq :: 
    {:weight 3} { _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($ly), Lit(q#0)) } 
    _module.__default.SeqToSet#canCall(_module._default.SeqToSet$_T0, Lit(q#0))
         || (0 < $FunctionContextHeight && $Is(q#0, TSeq(_module._default.SeqToSet$_T0)))
       ==> (!Seq#Equal(q#0, Seq#Empty(): Seq)
           ==> _module.__default.SeqToSet#canCall(_module._default.SeqToSet$_T0, Lit(Seq#Drop(Lit(q#0), LitInt(1)))))
         && _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($ly), Lit(q#0))
           == (if Seq#Equal(q#0, Seq#Empty(): Seq)
             then Set#Empty(): Set
             else Set#Union(Set#UnionOne(Set#Empty(): Set, Seq#Index(Lit(q#0), LitInt(0))), 
              _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($ly), Lit(Seq#Drop(Lit(q#0), LitInt(1)))))));
}

function _module.__default.SeqToSet#canCall(_module._default.SeqToSet$_T0: Ty, q#0: Seq) : bool;

// layer synonym axiom
axiom (forall _module._default.SeqToSet$_T0: Ty, $ly: LayerType, q#0: Seq :: 
  { _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($ly), q#0) } 
  _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($ly), q#0)
     == _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $ly, q#0));

// fuel synonym axiom
axiom (forall _module._default.SeqToSet$_T0: Ty, $ly: LayerType, q#0: Seq :: 
  { _module.__default.SeqToSet(_module._default.SeqToSet$_T0, AsFuelBottom($ly), q#0) } 
  _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $ly, q#0)
     == _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LZ, q#0));

function _module.__default.SeqToSet#requires(Ty, LayerType, Seq) : bool;

// #requires axiom for _module.__default.SeqToSet
axiom (forall _module._default.SeqToSet$_T0: Ty, $ly: LayerType, q#0: Seq :: 
  { _module.__default.SeqToSet#requires(_module._default.SeqToSet$_T0, $ly, q#0) } 
  $Is(q#0, TSeq(_module._default.SeqToSet$_T0))
     ==> _module.__default.SeqToSet#requires(_module._default.SeqToSet$_T0, $ly, q#0)
       == true);

procedure {:verboseName "SeqToSet (well-formedness)"} CheckWellformed$$_module.__default.SeqToSet(_module._default.SeqToSet$_T0: Ty, 
    q#0: Seq where $Is(q#0, TSeq(_module._default.SeqToSet$_T0)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SeqToSet (well-formedness)"} CheckWellformed$$_module.__default.SeqToSet(_module._default.SeqToSet$_T0: Ty, q#0: Seq)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##q#0: Seq;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($LZ), q#0), 
          TSet(_module._default.SeqToSet$_T0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (Seq#Equal(q#0, Seq#Empty(): Seq))
        {
            assume {:id "id209"} _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($LZ), q#0)
               == Lit(Set#Empty(): Set);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($LZ), q#0), 
              TSet(_module._default.SeqToSet$_T0));
            return;
        }
        else
        {
            assert {:id "id210"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(q#0);
            assert {:id "id211"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(q#0);
            ##q#0 := Seq#Drop(q#0, LitInt(1));
            // assume allocatedness for argument to function
            assume $IsAlloc(##q#0, TSeq(_module._default.SeqToSet$_T0), $Heap);
            assert {:id "id212"} Seq#Rank(##q#0) < Seq#Rank(q#0);
            assume _module.__default.SeqToSet#canCall(_module._default.SeqToSet$_T0, Seq#Drop(q#0, LitInt(1)));
            assume {:id "id213"} _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($LZ), q#0)
               == Set#Union(Set#UnionOne(Set#Empty(): Set, Seq#Index(q#0, LitInt(0))), 
                _module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($LZ), Seq#Drop(q#0, LitInt(1))));
            assume _module.__default.SeqToSet#canCall(_module._default.SeqToSet$_T0, Seq#Drop(q#0, LitInt(1)));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.SeqToSet(_module._default.SeqToSet$_T0, $LS($LZ), q#0), 
              TSet(_module._default.SeqToSet$_T0));
            return;
        }

        assume false;
    }
}



function Tclass._module.Pair(Ty, Ty) : Ty;

const unique Tagclass._module.Pair: TyTag;

// Tclass._module.Pair Tag
axiom (forall _module.Pair$T: Ty, _module.Pair$U: Ty :: 
  { Tclass._module.Pair(_module.Pair$T, _module.Pair$U) } 
  Tag(Tclass._module.Pair(_module.Pair$T, _module.Pair$U))
       == Tagclass._module.Pair
     && TagFamily(Tclass._module.Pair(_module.Pair$T, _module.Pair$U))
       == tytagFamily$Pair);

function Tclass._module.Pair_0(Ty) : Ty;

// Tclass._module.Pair injectivity 0
axiom (forall _module.Pair$T: Ty, _module.Pair$U: Ty :: 
  { Tclass._module.Pair(_module.Pair$T, _module.Pair$U) } 
  Tclass._module.Pair_0(Tclass._module.Pair(_module.Pair$T, _module.Pair$U))
     == _module.Pair$T);

function Tclass._module.Pair_1(Ty) : Ty;

// Tclass._module.Pair injectivity 1
axiom (forall _module.Pair$T: Ty, _module.Pair$U: Ty :: 
  { Tclass._module.Pair(_module.Pair$T, _module.Pair$U) } 
  Tclass._module.Pair_1(Tclass._module.Pair(_module.Pair$T, _module.Pair$U))
     == _module.Pair$U);

// Box/unbox axiom for Tclass._module.Pair
axiom (forall _module.Pair$T: Ty, _module.Pair$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Pair(_module.Pair$T, _module.Pair$U)) } 
  $IsBox(bx, Tclass._module.Pair(_module.Pair$T, _module.Pair$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Pair(_module.Pair$T, _module.Pair$U)));

procedure {:verboseName "IdentityMap (well-formedness)"} CheckWellFormed$$_module.__default.IdentityMap(_module._default.IdentityMap$_T0: Ty, 
    _module._default.IdentityMap$_T1: Ty, 
    s#0: Set
       where $Is(s#0, 
          TSet(Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1)))
         && $IsAlloc(s#0, 
          TSet(Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1)), 
          $Heap))
   returns (m#0: Map
       where $Is(m#0, TMap(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1))
         && $IsAlloc(m#0, 
          TMap(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1), 
          $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IdentityMap (call)"} Call$$_module.__default.IdentityMap(_module._default.IdentityMap$_T0: Ty, 
    _module._default.IdentityMap$_T1: Ty, 
    s#0: Set
       where $Is(s#0, 
          TSet(Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1)))
         && $IsAlloc(s#0, 
          TSet(Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1)), 
          $Heap))
   returns (m#0: Map
       where $Is(m#0, TMap(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1))
         && $IsAlloc(m#0, 
          TMap(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1), 
          $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "IdentityMap (correctness)"} Impl$$_module.__default.IdentityMap(_module._default.IdentityMap$_T0: Ty, 
    _module._default.IdentityMap$_T1: Ty, 
    s#0: Set
       where $Is(s#0, 
          TSet(Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1)))
         && $IsAlloc(s#0, 
          TSet(Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1)), 
          $Heap))
   returns (m#0: Map
       where $Is(m#0, TMap(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1))
         && $IsAlloc(m#0, 
          TMap(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1), 
          $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IdentityMap (correctness)"} Impl$$_module.__default.IdentityMap(_module._default.IdentityMap$_T0: Ty, 
    _module._default.IdentityMap$_T1: Ty, 
    s#0: Set)
   returns (m#0: Map, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#1: Set
     where $Is(s#1, 
        TSet(Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1)))
       && $IsAlloc(s#1, 
        TSet(Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1)), 
        $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#p#0_0: bool;
  var p#0_0: DatatypeType
     where defass#p#0_0
       ==> $Is(p#0_0, 
          Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1))
         && $IsAlloc(p#0_0, 
          Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1), 
          $Heap);
  var p#0_1: DatatypeType;
  var $rhs#0_0: Map;
  var $rhs#0_1: Set;

    // AddMethodImpl: IdentityMap, Impl$$_module.__default.IdentityMap
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(312,5)
    assume true;
    assume true;
    m#0 := Lit(Map#Empty(): Map);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(313,9)
    assume true;
    assume true;
    s#1 := s#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(314,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#1;
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
      free invariant Set#Subset(s#1, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Set#Equal(s#1, Set#Empty(): Set))
        {
            break;
        }

        $decr$loop#00 := s#1;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(317,11)
        havoc p#0_1;
        if ($Is(p#0_1, 
            Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1))
           && $IsAlloc(p#0_1, 
            Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1), 
            $Heap))
        {
            assume true;
        }

        assert {:id "id216"} (exists $as#p0_0#0_0: DatatypeType :: 
          $Is($as#p0_0#0_0, 
              Tclass._module.Pair(_module._default.IdentityMap$_T0, _module._default.IdentityMap$_T1))
             && Set#IsMember(s#1, $Box($as#p0_0#0_0)));
        defass#p#0_0 := true;
        havoc p#0_0;
        assume {:id "id217"} Set#IsMember(s#1, $Box(p#0_0));
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(318,10)
        assume true;
        assume true;
        assert {:id "id218"} defass#p#0_0;
        assume _module.Pair.MkPair_q(p#0_0);
        assert {:id "id219"} defass#p#0_0;
        assume _module.Pair.MkPair_q(p#0_0);
        assume _module.Pair.MkPair_q(p#0_0) && _module.Pair.MkPair_q(p#0_0);
        $rhs#0_0 := Map#Build(m#0, _module.Pair._0(p#0_0), _module.Pair._1(p#0_0));
        assert {:id "id221"} defass#p#0_0;
        assume true;
        $rhs#0_1 := Set#Difference(s#1, Set#UnionOne(Set#Empty(): Set, $Box(p#0_0)));
        m#0 := $rhs#0_0;
        s#1 := $rhs#0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(314,3)
        assert {:id "id225"} Set#Subset(s#1, $decr$loop#00) && !Set#Subset($decr$loop#00, s#1);
    }
}



const unique class._module.C?: ClassName;

function Tclass._module.C?(Ty) : Ty;

const unique Tagclass._module.C?: TyTag;

// Tclass._module.C? Tag
axiom (forall _module.C$U: Ty :: 
  { Tclass._module.C?(_module.C$U) } 
  Tag(Tclass._module.C?(_module.C$U)) == Tagclass._module.C?
     && TagFamily(Tclass._module.C?(_module.C$U)) == tytagFamily$C);

function Tclass._module.C?_0(Ty) : Ty;

// Tclass._module.C? injectivity 0
axiom (forall _module.C$U: Ty :: 
  { Tclass._module.C?(_module.C$U) } 
  Tclass._module.C?_0(Tclass._module.C?(_module.C$U)) == _module.C$U);

// Box/unbox axiom for Tclass._module.C?
axiom (forall _module.C$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.C?(_module.C$U)) } 
  $IsBox(bx, Tclass._module.C?(_module.C$U))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.C?(_module.C$U)));

// $Is axiom for class C
axiom (forall _module.C$U: Ty, $o: ref :: 
  { $Is($o, Tclass._module.C?(_module.C$U)) } 
  $Is($o, Tclass._module.C?(_module.C$U))
     <==> $o == null || dtype($o) == Tclass._module.C?(_module.C$U));

// $IsAlloc axiom for class C
axiom (forall _module.C$U: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.C?(_module.C$U), $h) } 
  $IsAlloc($o, Tclass._module.C?(_module.C$U), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.C(Ty) : Ty;

const unique Tagclass._module.C: TyTag;

// Tclass._module.C Tag
axiom (forall _module.C$U: Ty :: 
  { Tclass._module.C(_module.C$U) } 
  Tag(Tclass._module.C(_module.C$U)) == Tagclass._module.C
     && TagFamily(Tclass._module.C(_module.C$U)) == tytagFamily$C);

function Tclass._module.C_0(Ty) : Ty;

// Tclass._module.C injectivity 0
axiom (forall _module.C$U: Ty :: 
  { Tclass._module.C(_module.C$U) } 
  Tclass._module.C_0(Tclass._module.C(_module.C$U)) == _module.C$U);

// Box/unbox axiom for Tclass._module.C
axiom (forall _module.C$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.C(_module.C$U)) } 
  $IsBox(bx, Tclass._module.C(_module.C$U))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.C(_module.C$U)));

procedure {:verboseName "C.M (well-formedness)"} CheckWellFormed$$_module.C.M(_module.C$U: Ty, 
    _module.C.M$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C(_module.C$U))
         && $IsAlloc(this, Tclass._module.C(_module.C$U), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.C.M$T) && $IsAllocBox(x#0, _module.C.M$T, $Heap), 
    u#0: Box where $IsBox(u#0, _module.C$U) && $IsAllocBox(u#0, _module.C$U, $Heap))
   returns (y#0: Box
       where $IsBox(y#0, _module.C.M$T) && $IsAllocBox(y#0, _module.C.M$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.M (call)"} Call$$_module.C.M(_module.C$U: Ty, 
    _module.C.M$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C(_module.C$U))
         && $IsAlloc(this, Tclass._module.C(_module.C$U), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.C.M$T) && $IsAllocBox(x#0, _module.C.M$T, $Heap), 
    u#0: Box where $IsBox(u#0, _module.C$U) && $IsAllocBox(u#0, _module.C$U, $Heap))
   returns (y#0: Box
       where $IsBox(y#0, _module.C.M$T) && $IsAllocBox(y#0, _module.C.M$T, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id228"} x#0 == y#0;
  ensures {:id "id229"} u#0 == u#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.M (correctness)"} Impl$$_module.C.M(_module.C$U: Ty, 
    _module.C.M$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C(_module.C$U))
         && $IsAlloc(this, Tclass._module.C(_module.C$U), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.C.M$T) && $IsAllocBox(x#0, _module.C.M$T, $Heap), 
    u#0: Box where $IsBox(u#0, _module.C$U) && $IsAllocBox(u#0, _module.C$U, $Heap))
   returns (defass#y#0: bool, 
    y#0: Box
       where defass#y#0
         ==> $IsBox(y#0, _module.C.M$T) && $IsAllocBox(y#0, _module.C.M$T, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id230"} x#0 == y#0;
  ensures {:id "id231"} u#0 == u#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.M (correctness)"} Impl$$_module.C.M(_module.C$U: Ty, _module.C.M$T: Ty, this: ref, x#0: Box, u#0: Box)
   returns (defass#y#0: bool, y#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M, Impl$$_module.C.M
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(8,7)
    assume true;
    assume true;
    y#0 := x#0;
    defass#y#0 := true;
    assert {:id "id233"} defass#y#0;
}



// function declaration for _module.C.F
function _module.C.F(_module.C$U: Ty, _module.C.F$X: Ty, this: ref, x#0: Box, u#0: Box) : bool
uses {
// definition axiom for _module.C.F (revealed)
axiom {:id "id234"} 0 <= $FunctionContextHeight
   ==> (forall _module.C$U: Ty, _module.C.F$X: Ty, this: ref, x#0: Box, u#0: Box :: 
    { _module.C.F(_module.C$U, _module.C.F$X, this, x#0, u#0) } 
    _module.C.F#canCall(_module.C$U, _module.C.F$X, this, x#0, u#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C(_module.C$U))
           && $IsBox(x#0, _module.C.F$X)
           && $IsBox(u#0, _module.C$U))
       ==> _module.C.F(_module.C$U, _module.C.F$X, this, x#0, u#0)
         == (x#0 == x#0 && u#0 == u#0));
// definition axiom for _module.C.F for all literals (revealed)
axiom {:id "id235"} 0 <= $FunctionContextHeight
   ==> (forall _module.C$U: Ty, _module.C.F$X: Ty, this: ref, x#0: Box, u#0: Box :: 
    {:weight 3} { _module.C.F(_module.C$U, _module.C.F$X, Lit(this), Lit(x#0), Lit(u#0)) } 
    _module.C.F#canCall(_module.C$U, _module.C.F$X, Lit(this), Lit(x#0), Lit(u#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.C(_module.C$U))
           && $IsBox(x#0, _module.C.F$X)
           && $IsBox(u#0, _module.C$U))
       ==> _module.C.F(_module.C$U, _module.C.F$X, Lit(this), Lit(x#0), Lit(u#0))
         == (Lit(x#0) == Lit(x#0) && Lit(u#0) == Lit(u#0)));
}

function _module.C.F#canCall(_module.C$U: Ty, _module.C.F$X: Ty, this: ref, x#0: Box, u#0: Box) : bool;

function _module.C.F#requires(Ty, Ty, ref, Box, Box) : bool;

// #requires axiom for _module.C.F
axiom (forall _module.C$U: Ty, _module.C.F$X: Ty, this: ref, x#0: Box, u#0: Box :: 
  { _module.C.F#requires(_module.C$U, _module.C.F$X, this, x#0, u#0) } 
  this != null
       && $Is(this, Tclass._module.C(_module.C$U))
       && $IsBox(x#0, _module.C.F$X)
       && $IsBox(u#0, _module.C$U)
     ==> _module.C.F#requires(_module.C$U, _module.C.F$X, this, x#0, u#0) == true);

procedure {:verboseName "C.F (well-formedness)"} CheckWellformed$$_module.C.F(_module.C$U: Ty, 
    _module.C.F$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C(_module.C$U))
         && $IsAlloc(this, Tclass._module.C(_module.C$U), $Heap), 
    x#0: Box where $IsBox(x#0, _module.C.F$X), 
    u#0: Box where $IsBox(u#0, _module.C$U));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.Main (well-formedness)"} CheckWellFormed$$_module.C.Main(_module.C$U: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C(_module.C$U))
         && $IsAlloc(this, Tclass._module.C(_module.C$U), $Heap), 
    u#0: Box where $IsBox(u#0, _module.C$U) && $IsAllocBox(u#0, _module.C$U, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.Main (call)"} Call$$_module.C.Main(_module.C$U: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C(_module.C$U))
         && $IsAlloc(this, Tclass._module.C(_module.C$U), $Heap), 
    u#0: Box where $IsBox(u#0, _module.C$U) && $IsAllocBox(u#0, _module.C$U, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.Main (correctness)"} Impl$$_module.C.Main(_module.C$U: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C(_module.C$U))
         && $IsAlloc(this, Tclass._module.C(_module.C$U), $Heap), 
    u#0: Box where $IsBox(u#0, _module.C$U) && $IsAllocBox(u#0, _module.C$U, $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.Main (correctness)"} Impl$$_module.C.Main(_module.C$U: Ty, this: ref, u#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var t#0: bool;
  var ##x#0: int;
  var ##u#0: Box;
  var ##x#1: ref;
  var ##u#1: Box;
  var kz#0: bool;
  var $rhs##0: bool;
  var x##0: bool;
  var u##0: Box;
  var $tmp##0: Box;
  var a#0: bool;
  var $rhs##1: bool;
  var $tmp##1: Box;

    // AddMethodImpl: Main, Impl$$_module.C.Main
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(18,11)
    assume true;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.C?(_module.C$U), $Heap);
    ##x#0 := LitInt(3);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    ##u#0 := u#0;
    // assume allocatedness for argument to function
    assume $IsAllocBox(##u#0, _module.C$U, $Heap);
    assume _module.C.F#canCall(_module.C$U, TInt, this, $Box(LitInt(3)), u#0);
    if (_module.C.F(_module.C$U, TInt, this, $Box(LitInt(3)), u#0))
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.C?(_module.C$U), $Heap);
        ##x#1 := this;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#1, Tclass._module.C(_module.C$U), $Heap);
        ##u#1 := u#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##u#1, _module.C$U, $Heap);
        assume _module.C.F#canCall(_module.C$U, Tclass._module.C(_module.C$U), this, $Box(this), u#0);
    }

    assume _module.C.F#canCall(_module.C$U, TInt, this, $Box(LitInt(3)), u#0)
       && (_module.C.F(_module.C$U, TInt, this, $Box(LitInt(3)), u#0)
         ==> _module.C.F#canCall(_module.C$U, Tclass._module.C(_module.C$U), this, $Box(this), u#0));
    t#0 := _module.C.F(_module.C$U, TInt, this, $Box(LitInt(3)), u#0)
       && _module.C.F(_module.C$U, Tclass._module.C(_module.C$U), this, $Box(this), u#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(19,16)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := t#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := u#0;
    call {:id "id238"} $tmp##0 := Call$$_module.C.M(_module.C$U, TBool, this, $Box(x##0), u##0);
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): bool;
    // TrCallStmt: After ProcessCallStmt
    kz#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(20,15)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id240"} $tmp##1 := Call$$_module.C.G(_module.C$U, TBool, this);
    havoc $rhs##1;
    assume $rhs##1 == $Unbox($tmp##1): bool;
    // TrCallStmt: After ProcessCallStmt
    a#0 := $rhs##1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(21,5)
    if (kz#0)
    {
        if (!a#0)
        {
        }
    }

    assume true;
    assert {:id "id242"} {:subsumption 0} kz#0;
    assert {:id "id243"} {:subsumption 0} a#0 || !a#0;
    assume {:id "id244"} kz#0 && (a#0 || !a#0);
}



procedure {:verboseName "C.G (well-formedness)"} CheckWellFormed$$_module.C.G(_module.C$U: Ty, 
    _module.C.G$Y: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C(_module.C$U))
         && $IsAlloc(this, Tclass._module.C(_module.C$U), $Heap))
   returns (a#0: Box
       where $IsBox(a#0, _module.C.G$Y) && $IsAllocBox(a#0, _module.C.G$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.G (call)"} Call$$_module.C.G(_module.C$U: Ty, 
    _module.C.G$Y: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C(_module.C$U))
         && $IsAlloc(this, Tclass._module.C(_module.C$U), $Heap))
   returns (a#0: Box
       where $IsBox(a#0, _module.C.G$Y) && $IsAllocBox(a#0, _module.C.G$Y, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.C
axiom (forall _module.C$U: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.C(_module.C$U)) } 
    { $Is(c#0, Tclass._module.C?(_module.C$U)) } 
  $Is(c#0, Tclass._module.C(_module.C$U))
     <==> $Is(c#0, Tclass._module.C?(_module.C$U)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.C
axiom (forall _module.C$U: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.C(_module.C$U), $h) } 
    { $IsAlloc(c#0, Tclass._module.C?(_module.C$U), $h) } 
  $IsAlloc(c#0, Tclass._module.C(_module.C$U), $h)
     <==> $IsAlloc(c#0, Tclass._module.C?(_module.C$U), $h));

const unique class._module.SetTest?: ClassName;

function Tclass._module.SetTest?() : Ty
uses {
// Tclass._module.SetTest? Tag
axiom Tag(Tclass._module.SetTest?()) == Tagclass._module.SetTest?
   && TagFamily(Tclass._module.SetTest?()) == tytagFamily$SetTest;
}

const unique Tagclass._module.SetTest?: TyTag;

// Box/unbox axiom for Tclass._module.SetTest?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SetTest?()) } 
  $IsBox(bx, Tclass._module.SetTest?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.SetTest?()));

// $Is axiom for class SetTest
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.SetTest?()) } 
  $Is($o, Tclass._module.SetTest?())
     <==> $o == null || dtype($o) == Tclass._module.SetTest?());

// $IsAlloc axiom for class SetTest
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.SetTest?(), $h) } 
  $IsAlloc($o, Tclass._module.SetTest?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.SetTest() : Ty
uses {
// Tclass._module.SetTest Tag
axiom Tag(Tclass._module.SetTest()) == Tagclass._module.SetTest
   && TagFamily(Tclass._module.SetTest()) == tytagFamily$SetTest;
}

const unique Tagclass._module.SetTest: TyTag;

// Box/unbox axiom for Tclass._module.SetTest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SetTest()) } 
  $IsBox(bx, Tclass._module.SetTest())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.SetTest()));

procedure {:verboseName "SetTest.Add (well-formedness)"} CheckWellFormed$$_module.SetTest.Add(_module.SetTest.Add$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SetTest())
         && $IsAlloc(this, Tclass._module.SetTest(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(_module.SetTest.Add$T))
         && $IsAlloc(s#0, TSet(_module.SetTest.Add$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.SetTest.Add$T)
         && $IsAllocBox(x#0, _module.SetTest.Add$T, $Heap))
   returns (t#0: Set
       where $Is(t#0, TSet(_module.SetTest.Add$T))
         && $IsAlloc(t#0, TSet(_module.SetTest.Add$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetTest.Add (call)"} Call$$_module.SetTest.Add(_module.SetTest.Add$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SetTest())
         && $IsAlloc(this, Tclass._module.SetTest(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(_module.SetTest.Add$T))
         && $IsAlloc(s#0, TSet(_module.SetTest.Add$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.SetTest.Add$T)
         && $IsAllocBox(x#0, _module.SetTest.Add$T, $Heap))
   returns (t#0: Set
       where $Is(t#0, TSet(_module.SetTest.Add$T))
         && $IsAlloc(t#0, TSet(_module.SetTest.Add$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id246"} Set#Equal(t#0, Set#Union(s#0, Set#UnionOne(Set#Empty(): Set, x#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetTest.Add (correctness)"} Impl$$_module.SetTest.Add(_module.SetTest.Add$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SetTest())
         && $IsAlloc(this, Tclass._module.SetTest(), $Heap), 
    s#0: Set
       where $Is(s#0, TSet(_module.SetTest.Add$T))
         && $IsAlloc(s#0, TSet(_module.SetTest.Add$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.SetTest.Add$T)
         && $IsAllocBox(x#0, _module.SetTest.Add$T, $Heap))
   returns (t#0: Set
       where $Is(t#0, TSet(_module.SetTest.Add$T))
         && $IsAlloc(t#0, TSet(_module.SetTest.Add$T), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id247"} Set#Equal(t#0, Set#Union(s#0, Set#UnionOne(Set#Empty(): Set, x#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetTest.Add (correctness)"} Impl$$_module.SetTest.Add(_module.SetTest.Add$T: Ty, this: ref, s#0: Set, x#0: Box)
   returns (t#0: Set, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Add, Impl$$_module.SetTest.Add
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(30,7)
    assume true;
    assume true;
    t#0 := Set#Union(s#0, Set#UnionOne(Set#Empty(): Set, x#0));
}



procedure {:verboseName "SetTest.Good (well-formedness)"} CheckWellFormed$$_module.SetTest.Good(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SetTest())
         && $IsAlloc(this, Tclass._module.SetTest(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetTest.Good (call)"} Call$$_module.SetTest.Good(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SetTest())
         && $IsAlloc(this, Tclass._module.SetTest(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetTest.Good (correctness)"} Impl$$_module.SetTest.Good(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SetTest())
         && $IsAlloc(this, Tclass._module.SetTest(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetTest.Good (correctness)"} Impl$$_module.SetTest.Good(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap);
  var t#0: Set where $Is(t#0, TSet(TInt)) && $IsAlloc(t#0, TSet(TInt), $Heap);
  var $rhs##0: Set;
  var s##0: Set;
  var x##0: int;

    // AddMethodImpl: Good, Impl$$_module.SetTest.Good
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(35,11)
    assume true;
    assume true;
    s#0 := Lit(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(2))), $Box(LitInt(5))), 
        $Box(LitInt(3))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(36,17)
    assume true;
    // TrCallStmt: Adding lhs with type set<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(7);
    call {:id "id250"} $rhs##0 := Call$$_module.SetTest.Add(TInt, this, s##0, $Box(x##0));
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(37,5)
    assume true;
    assert {:id "id252"} Set#Equal(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(5))), $Box(LitInt(7))), 
          $Box(LitInt(2))), 
        $Box(LitInt(3))), 
      t#0);
}



procedure {:verboseName "SetTest.Bad (well-formedness)"} CheckWellFormed$$_module.SetTest.Bad(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SetTest())
         && $IsAlloc(this, Tclass._module.SetTest(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetTest.Bad (call)"} Call$$_module.SetTest.Bad(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SetTest())
         && $IsAlloc(this, Tclass._module.SetTest(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetTest.Bad (correctness)"} Impl$$_module.SetTest.Bad(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SetTest())
         && $IsAlloc(this, Tclass._module.SetTest(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetTest.Bad (correctness)"} Impl$$_module.SetTest.Bad(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap);
  var t#0: Set where $Is(t#0, TSet(TInt)) && $IsAlloc(t#0, TSet(TInt), $Heap);
  var $rhs##0: Set;
  var s##0: Set;
  var x##0: int;

    // AddMethodImpl: Bad, Impl$$_module.SetTest.Bad
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(42,11)
    assume true;
    assume true;
    s#0 := Lit(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(2))), $Box(LitInt(50))), 
        $Box(LitInt(3))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(43,17)
    assume true;
    // TrCallStmt: Adding lhs with type set<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(7);
    call {:id "id254"} $rhs##0 := Call$$_module.SetTest.Add(TInt, this, s##0, $Box(x##0));
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(44,5)
    assume true;
    assert {:id "id256"} Set#Equal(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(5))), $Box(LitInt(7))), 
          $Box(LitInt(2))), 
        $Box(LitInt(3))), 
      t#0);
}



// $Is axiom for non-null type _module.SetTest
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.SetTest()) } { $Is(c#0, Tclass._module.SetTest?()) } 
  $Is(c#0, Tclass._module.SetTest())
     <==> $Is(c#0, Tclass._module.SetTest?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.SetTest
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.SetTest(), $h) } 
    { $IsAlloc(c#0, Tclass._module.SetTest?(), $h) } 
  $IsAlloc(c#0, Tclass._module.SetTest(), $h)
     <==> $IsAlloc(c#0, Tclass._module.SetTest?(), $h));

const unique class._module.SequenceTest?: ClassName;

function Tclass._module.SequenceTest?() : Ty
uses {
// Tclass._module.SequenceTest? Tag
axiom Tag(Tclass._module.SequenceTest?()) == Tagclass._module.SequenceTest?
   && TagFamily(Tclass._module.SequenceTest?()) == tytagFamily$SequenceTest;
}

const unique Tagclass._module.SequenceTest?: TyTag;

// Box/unbox axiom for Tclass._module.SequenceTest?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SequenceTest?()) } 
  $IsBox(bx, Tclass._module.SequenceTest?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.SequenceTest?()));

// $Is axiom for class SequenceTest
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.SequenceTest?()) } 
  $Is($o, Tclass._module.SequenceTest?())
     <==> $o == null || dtype($o) == Tclass._module.SequenceTest?());

// $IsAlloc axiom for class SequenceTest
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.SequenceTest?(), $h) } 
  $IsAlloc($o, Tclass._module.SequenceTest?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.SequenceTest() : Ty
uses {
// Tclass._module.SequenceTest Tag
axiom Tag(Tclass._module.SequenceTest()) == Tagclass._module.SequenceTest
   && TagFamily(Tclass._module.SequenceTest()) == tytagFamily$SequenceTest;
}

const unique Tagclass._module.SequenceTest: TyTag;

// Box/unbox axiom for Tclass._module.SequenceTest
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SequenceTest()) } 
  $IsBox(bx, Tclass._module.SequenceTest())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.SequenceTest()));

procedure {:verboseName "SequenceTest.Add (well-formedness)"} CheckWellFormed$$_module.SequenceTest.Add(_module.SequenceTest.Add$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SequenceTest())
         && $IsAlloc(this, Tclass._module.SequenceTest(), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(_module.SequenceTest.Add$T))
         && $IsAlloc(s#0, TSeq(_module.SequenceTest.Add$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.SequenceTest.Add$T)
         && $IsAllocBox(x#0, _module.SequenceTest.Add$T, $Heap))
   returns (t#0: Seq
       where $Is(t#0, TSeq(_module.SequenceTest.Add$T))
         && $IsAlloc(t#0, TSeq(_module.SequenceTest.Add$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SequenceTest.Add (call)"} Call$$_module.SequenceTest.Add(_module.SequenceTest.Add$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SequenceTest())
         && $IsAlloc(this, Tclass._module.SequenceTest(), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(_module.SequenceTest.Add$T))
         && $IsAlloc(s#0, TSeq(_module.SequenceTest.Add$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.SequenceTest.Add$T)
         && $IsAllocBox(x#0, _module.SequenceTest.Add$T, $Heap))
   returns (t#0: Seq
       where $Is(t#0, TSeq(_module.SequenceTest.Add$T))
         && $IsAlloc(t#0, TSeq(_module.SequenceTest.Add$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id258"} Seq#Equal(t#0, Seq#Append(s#0, Seq#Build(Seq#Empty(): Seq, x#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SequenceTest.Add (correctness)"} Impl$$_module.SequenceTest.Add(_module.SequenceTest.Add$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SequenceTest())
         && $IsAlloc(this, Tclass._module.SequenceTest(), $Heap), 
    s#0: Seq
       where $Is(s#0, TSeq(_module.SequenceTest.Add$T))
         && $IsAlloc(s#0, TSeq(_module.SequenceTest.Add$T), $Heap), 
    x#0: Box
       where $IsBox(x#0, _module.SequenceTest.Add$T)
         && $IsAllocBox(x#0, _module.SequenceTest.Add$T, $Heap))
   returns (t#0: Seq
       where $Is(t#0, TSeq(_module.SequenceTest.Add$T))
         && $IsAlloc(t#0, TSeq(_module.SequenceTest.Add$T), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id259"} Seq#Equal(t#0, Seq#Append(s#0, Seq#Build(Seq#Empty(): Seq, x#0)));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SequenceTest.Add (correctness)"} Impl$$_module.SequenceTest.Add(_module.SequenceTest.Add$T: Ty, this: ref, s#0: Seq, x#0: Box)
   returns (t#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Add, Impl$$_module.SequenceTest.Add
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(52,7)
    assume true;
    assume true;
    t#0 := Seq#Append(s#0, Seq#Build(Seq#Empty(): Seq, x#0));
}



procedure {:verboseName "SequenceTest.Good (well-formedness)"} CheckWellFormed$$_module.SequenceTest.Good(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SequenceTest())
         && $IsAlloc(this, Tclass._module.SequenceTest(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SequenceTest.Good (call)"} Call$$_module.SequenceTest.Good(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SequenceTest())
         && $IsAlloc(this, Tclass._module.SequenceTest(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SequenceTest.Good (correctness)"} Impl$$_module.SequenceTest.Good(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SequenceTest())
         && $IsAlloc(this, Tclass._module.SequenceTest(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SequenceTest.Good (correctness)"} Impl$$_module.SequenceTest.Good(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);
  var t#0: Seq where $Is(t#0, TSeq(TInt)) && $IsAlloc(t#0, TSeq(TInt), $Heap);
  var $rhs##0: Seq;
  var s##0: Seq;
  var x##0: int;

    // AddMethodImpl: Good, Impl$$_module.SequenceTest.Good
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(57,11)
    assume true;
    assume true;
    s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(5))), 
        $Box(LitInt(3))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(58,17)
    assume true;
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(7);
    call {:id "id262"} $rhs##0 := Call$$_module.SequenceTest.Add(TInt, this, s##0, $Box(x##0));
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(59,5)
    assume true;
    assert {:id "id264"} Seq#Equal(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(5))), 
          $Box(LitInt(3))), 
        $Box(LitInt(7))), 
      t#0);
}



procedure {:verboseName "SequenceTest.Bad (well-formedness)"} CheckWellFormed$$_module.SequenceTest.Bad(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SequenceTest())
         && $IsAlloc(this, Tclass._module.SequenceTest(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SequenceTest.Bad (call)"} Call$$_module.SequenceTest.Bad(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SequenceTest())
         && $IsAlloc(this, Tclass._module.SequenceTest(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SequenceTest.Bad (correctness)"} Impl$$_module.SequenceTest.Bad(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.SequenceTest())
         && $IsAlloc(this, Tclass._module.SequenceTest(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SequenceTest.Bad (correctness)"} Impl$$_module.SequenceTest.Bad(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap);
  var t#0: Seq where $Is(t#0, TSeq(TInt)) && $IsAlloc(t#0, TSeq(TInt), $Heap);
  var $rhs##0: Seq;
  var s##0: Seq;
  var x##0: int;

    // AddMethodImpl: Bad, Impl$$_module.SequenceTest.Bad
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(64,11)
    assume true;
    assume true;
    s#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(5))), 
        $Box(LitInt(3))));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(65,17)
    assume true;
    // TrCallStmt: Adding lhs with type seq<int>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(7);
    call {:id "id266"} $rhs##0 := Call$$_module.SequenceTest.Add(TInt, this, s##0, $Box(x##0));
    // TrCallStmt: After ProcessCallStmt
    t#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(66,5)
    if (!Seq#Equal(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(5))), 
          $Box(LitInt(7))), 
        $Box(LitInt(3))), 
      t#0))
    {
    }

    assume true;
    assert {:id "id268"} Seq#Equal(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(5))), 
            $Box(LitInt(7))), 
          $Box(LitInt(3))), 
        t#0)
       || Seq#Equal(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(2))), $Box(LitInt(5))), 
          $Box(LitInt(3))), 
        t#0);
}



// $Is axiom for non-null type _module.SequenceTest
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.SequenceTest()) } 
    { $Is(c#0, Tclass._module.SequenceTest?()) } 
  $Is(c#0, Tclass._module.SequenceTest())
     <==> $Is(c#0, Tclass._module.SequenceTest?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.SequenceTest
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.SequenceTest(), $h) } 
    { $IsAlloc(c#0, Tclass._module.SequenceTest?(), $h) } 
  $IsAlloc(c#0, Tclass._module.SequenceTest(), $h)
     <==> $IsAlloc(c#0, Tclass._module.SequenceTest?(), $h));

const unique class._module.CC?: ClassName;

function Tclass._module.CC?(Ty) : Ty;

const unique Tagclass._module.CC?: TyTag;

// Tclass._module.CC? Tag
axiom (forall _module.CC$T: Ty :: 
  { Tclass._module.CC?(_module.CC$T) } 
  Tag(Tclass._module.CC?(_module.CC$T)) == Tagclass._module.CC?
     && TagFamily(Tclass._module.CC?(_module.CC$T)) == tytagFamily$CC);

function Tclass._module.CC?_0(Ty) : Ty;

// Tclass._module.CC? injectivity 0
axiom (forall _module.CC$T: Ty :: 
  { Tclass._module.CC?(_module.CC$T) } 
  Tclass._module.CC?_0(Tclass._module.CC?(_module.CC$T)) == _module.CC$T);

// Box/unbox axiom for Tclass._module.CC?
axiom (forall _module.CC$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.CC?(_module.CC$T)) } 
  $IsBox(bx, Tclass._module.CC?(_module.CC$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.CC?(_module.CC$T)));

// $Is axiom for class CC
axiom (forall _module.CC$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.CC?(_module.CC$T)) } 
  $Is($o, Tclass._module.CC?(_module.CC$T))
     <==> $o == null || dtype($o) == Tclass._module.CC?(_module.CC$T));

// $IsAlloc axiom for class CC
axiom (forall _module.CC$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.CC?(_module.CC$T), $h) } 
  $IsAlloc($o, Tclass._module.CC?(_module.CC$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.CC.x: Field
uses {
axiom FDim(_module.CC.x) == 0
   && FieldOfDecl(class._module.CC?, field$x) == _module.CC.x
   && !$IsGhostField(_module.CC.x);
}

// CC.x: Type axiom
axiom (forall _module.CC$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.CC.x), Tclass._module.CC?(_module.CC$T) } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.CC?(_module.CC$T)
     ==> $IsBox(read($h, $o, _module.CC.x), _module.CC$T));

// CC.x: Allocation axiom
axiom (forall _module.CC$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.CC.x), Tclass._module.CC?(_module.CC$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.CC?(_module.CC$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.CC.x), _module.CC$T, $h));

function Tclass._module.CC(Ty) : Ty;

const unique Tagclass._module.CC: TyTag;

// Tclass._module.CC Tag
axiom (forall _module.CC$T: Ty :: 
  { Tclass._module.CC(_module.CC$T) } 
  Tag(Tclass._module.CC(_module.CC$T)) == Tagclass._module.CC
     && TagFamily(Tclass._module.CC(_module.CC$T)) == tytagFamily$CC);

function Tclass._module.CC_0(Ty) : Ty;

// Tclass._module.CC injectivity 0
axiom (forall _module.CC$T: Ty :: 
  { Tclass._module.CC(_module.CC$T) } 
  Tclass._module.CC_0(Tclass._module.CC(_module.CC$T)) == _module.CC$T);

// Box/unbox axiom for Tclass._module.CC
axiom (forall _module.CC$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.CC(_module.CC$T)) } 
  $IsBox(bx, Tclass._module.CC(_module.CC$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.CC(_module.CC$T)));

procedure {:verboseName "CC.M (well-formedness)"} CheckWellFormed$$_module.CC.M(_module.CC$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC(_module.CC$T))
         && $IsAlloc(this, Tclass._module.CC(_module.CC$T), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.CC(_module.CC$T))
         && $IsAlloc(c#0, Tclass._module.CC(_module.CC$T), $Heap), 
    z#0: Box
       where $IsBox(z#0, _module.CC$T) && $IsAllocBox(z#0, _module.CC$T, $Heap))
   returns (y#0: Box
       where $IsBox(y#0, _module.CC$T) && $IsAllocBox(y#0, _module.CC$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CC.M (well-formedness)"} CheckWellFormed$$_module.CC.M(_module.CC$T: Ty, this: ref, c#0: ref, z#0: Box) returns (y#0: Box)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M, CheckWellFormed$$_module.CC.M
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    havoc y#0;
    assert {:id "id269"} c#0 != null;
    assume {:id "id270"} y#0 == read($Heap, c#0, _module.CC.x);
    assume {:id "id271"} read($Heap, this, _module.CC.x) == z#0;
}



procedure {:verboseName "CC.M (call)"} Call$$_module.CC.M(_module.CC$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC(_module.CC$T))
         && $IsAlloc(this, Tclass._module.CC(_module.CC$T), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.CC(_module.CC$T))
         && $IsAlloc(c#0, Tclass._module.CC(_module.CC$T), $Heap), 
    z#0: Box
       where $IsBox(z#0, _module.CC$T) && $IsAllocBox(z#0, _module.CC$T, $Heap))
   returns (y#0: Box
       where $IsBox(y#0, _module.CC$T) && $IsAllocBox(y#0, _module.CC$T, $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id272"} y#0 == read($Heap, c#0, _module.CC.x);
  ensures {:id "id273"} read($Heap, this, _module.CC.x) == z#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CC.M (correctness)"} Impl$$_module.CC.M(_module.CC$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CC(_module.CC$T))
         && $IsAlloc(this, Tclass._module.CC(_module.CC$T), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.CC(_module.CC$T))
         && $IsAlloc(c#0, Tclass._module.CC(_module.CC$T), $Heap), 
    z#0: Box
       where $IsBox(z#0, _module.CC$T) && $IsAllocBox(z#0, _module.CC$T, $Heap))
   returns (y#0: Box
       where $IsBox(y#0, _module.CC$T) && $IsAllocBox(y#0, _module.CC$T, $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id274"} y#0 == read($Heap, c#0, _module.CC.x);
  ensures {:id "id275"} read($Heap, this, _module.CC.x) == z#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CC.M (correctness)"} Impl$$_module.CC.M(_module.CC$T: Ty, this: ref, c#0: ref, z#0: Box)
   returns (y#0: Box, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Box;
  var $rhs#1: Box;

    // AddMethodImpl: M, Impl$$_module.CC.M
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(79,7)
    assume true;
    assert {:id "id276"} $_ModifiesFrame[this, _module.CC.x];
    assert {:id "id277"} c#0 != null;
    assume true;
    $rhs#0 := read($Heap, c#0, _module.CC.x);
    $Heap := update($Heap, this, _module.CC.x, $rhs#0);
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(80,7)
    assume true;
    assert {:id "id280"} $_ModifiesFrame[this, _module.CC.x];
    assume true;
    $rhs#1 := z#0;
    $Heap := update($Heap, this, _module.CC.x, $rhs#1);
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(81,7)
    assume true;
    assert {:id "id283"} c#0 != null;
    assume true;
    y#0 := read($Heap, c#0, _module.CC.x);
}



// $Is axiom for non-null type _module.CC
axiom (forall _module.CC$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.CC(_module.CC$T)) } 
    { $Is(c#0, Tclass._module.CC?(_module.CC$T)) } 
  $Is(c#0, Tclass._module.CC(_module.CC$T))
     <==> $Is(c#0, Tclass._module.CC?(_module.CC$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.CC
axiom (forall _module.CC$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.CC(_module.CC$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.CC?(_module.CC$T), $h) } 
  $IsAlloc(c#0, Tclass._module.CC(_module.CC$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.CC?(_module.CC$T), $h));

const unique class._module.CClient?: ClassName;

function Tclass._module.CClient?() : Ty
uses {
// Tclass._module.CClient? Tag
axiom Tag(Tclass._module.CClient?()) == Tagclass._module.CClient?
   && TagFamily(Tclass._module.CClient?()) == tytagFamily$CClient;
}

const unique Tagclass._module.CClient?: TyTag;

// Box/unbox axiom for Tclass._module.CClient?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CClient?()) } 
  $IsBox(bx, Tclass._module.CClient?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CClient?()));

// $Is axiom for class CClient
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CClient?()) } 
  $Is($o, Tclass._module.CClient?())
     <==> $o == null || dtype($o) == Tclass._module.CClient?());

// $IsAlloc axiom for class CClient
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.CClient?(), $h) } 
  $IsAlloc($o, Tclass._module.CClient?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.CClient() : Ty
uses {
// Tclass._module.CClient Tag
axiom Tag(Tclass._module.CClient()) == Tagclass._module.CClient
   && TagFamily(Tclass._module.CClient()) == tytagFamily$CClient;
}

const unique Tagclass._module.CClient: TyTag;

// Box/unbox axiom for Tclass._module.CClient
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CClient()) } 
  $IsBox(bx, Tclass._module.CClient())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CClient()));

procedure {:verboseName "CClient.Main (well-formedness)"} CheckWellFormed$$_module.CClient.Main(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CClient())
         && $IsAlloc(this, Tclass._module.CClient(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CClient.Main (call)"} Call$$_module.CClient.Main(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CClient())
         && $IsAlloc(this, Tclass._module.CClient(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CClient.Main (correctness)"} Impl$$_module.CClient.Main(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CClient())
         && $IsAlloc(this, Tclass._module.CClient(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CClient.Main (correctness)"} Impl$$_module.CClient.Main(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.CC(TInt))
         && $IsAlloc(c#0, Tclass._module.CC(TInt), $Heap);
  var $nw: ref;
  var k#0: int;
  var m#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var z#0: int;
  var $rhs##0: int;
  var c##0: ref;
  var z##0: int;
  var $tmp##0: Box;

    // AddMethodImpl: Main, Impl$$_module.CClient.Main
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(87,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.CC?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(88,11)
    assume true;
    assert {:id "id286"} defass#c#0;
    assert {:id "id287"} c#0 != null;
    assume true;
    k#0 := $Unbox(read($Heap, c#0, _module.CC.x)): int + 3;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(89,5)
    assert {:id "id289"} defass#c#0;
    assert {:id "id290"} c#0 != null;
    assert {:id "id291"} defass#c#0;
    assert {:id "id292"} c#0 != null;
    assume true;
    if ($Unbox(read($Heap, c#0, _module.CC.x)): int
       == $Unbox(read($Heap, c#0, _module.CC.x)): int)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(90,9)
        assume true;
        assume true;
        k#0 := k#0 + 1;
        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(92,11)
    assume true;
    assert {:id "id294"} defass#c#0;
    assert {:id "id295"} c#0 != null;
    assume true;
    m#0 := $Unbox(read($Heap, c#0, _module.CC.x)): int;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(93,5)
    assert {:id "id297"} defass#c#0;
    assert {:id "id298"} c#0 != null;
    assume true;
    if (m#0 == $Unbox(read($Heap, c#0, _module.CC.x)): int)
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(94,9)
        assume true;
        assume true;
        k#0 := k#0 + 1;
        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(96,9)
    assert {:id "id300"} defass#c#0;
    assert {:id "id301"} c#0 != null;
    assume true;
    assert {:id "id302"} $_ModifiesFrame[c#0, _module.CC.x];
    assume true;
    $rhs#0 := LitInt(5);
    $Heap := update($Heap, c#0, _module.CC.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(97,9)
    assert {:id "id305"} defass#c#0;
    assert {:id "id306"} c#0 != null;
    assume true;
    assert {:id "id307"} $_ModifiesFrame[c#0, _module.CC.x];
    assert {:id "id308"} defass#c#0;
    assert {:id "id309"} c#0 != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, c#0, _module.CC.x)): int;
    $Heap := update($Heap, c#0, _module.CC.x, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(98,17)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id312"} defass#c#0;
    assume true;
    assert {:id "id313"} c#0 != null;
    assert {:id "id314"} defass#c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    z##0 := LitInt(17);
    assert {:id "id315"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == c#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id316"} $tmp##0 := Call$$_module.CC.M(TInt, c#0, c##0, $Box(z##0));
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): int;
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeParameters.dfy(99,5)
    assert {:id "id318"} defass#c#0;
    assert {:id "id319"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id320"} z#0 == $Unbox(read($Heap, c#0, _module.CC.x)): int;
}



// $Is axiom for non-null type _module.CClient
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.CClient()) } { $Is(c#0, Tclass._module.CClient?()) } 
  $Is(c#0, Tclass._module.CClient())
     <==> $Is(c#0, Tclass._module.CClient?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.CClient
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.CClient(), $h) } 
    { $IsAlloc(c#0, Tclass._module.CClient?(), $h) } 
  $IsAlloc(c#0, Tclass._module.CClient(), $h)
     <==> $IsAlloc(c#0, Tclass._module.CClient?(), $h));

const unique class._module.TyKn__C?: ClassName;

// $Is axiom for class TyKn_C
axiom (forall _module.TyKn_C$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.TyKn__C?(_module.TyKn_C$T)) } 
  $Is($o, Tclass._module.TyKn__C?(_module.TyKn_C$T))
     <==> $o == null || dtype($o) == Tclass._module.TyKn__C?(_module.TyKn_C$T));

// $IsAlloc axiom for class TyKn_C
axiom (forall _module.TyKn_C$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.TyKn__C?(_module.TyKn_C$T), $h) } 
  $IsAlloc($o, Tclass._module.TyKn__C?(_module.TyKn_C$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.TyKn__C.x: Field
uses {
axiom FDim(_module.TyKn__C.x) == 0
   && FieldOfDecl(class._module.TyKn__C?, field$x) == _module.TyKn__C.x
   && !$IsGhostField(_module.TyKn__C.x);
}

// TyKn_C.x: Type axiom
axiom (forall _module.TyKn_C$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.TyKn__C.x), Tclass._module.TyKn__C?(_module.TyKn_C$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.TyKn__C?(_module.TyKn_C$T)
     ==> $IsBox(read($h, $o, _module.TyKn__C.x), _module.TyKn_C$T));

// TyKn_C.x: Allocation axiom
axiom (forall _module.TyKn_C$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.TyKn__C.x), Tclass._module.TyKn__C?(_module.TyKn_C$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.TyKn__C?(_module.TyKn_C$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.TyKn__C.x), _module.TyKn_C$T, $h));

// function declaration for _module.TyKn_C.G
function _module.TyKn__C.G(_module.TyKn_C$T: Ty, $heap: Heap, this: ref) : Box
uses {
// consequence axiom for _module.TyKn__C.G
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.TyKn_C$T: Ty, $Heap: Heap, this: ref :: 
    { _module.TyKn__C.G(_module.TyKn_C$T, $Heap, this) } 
    _module.TyKn__C.G#canCall(_module.TyKn_C$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TyKn__C(_module.TyKn_C$T))
           && $IsAlloc(this, Tclass._module.TyKn__C(_module.TyKn_C$T), $Heap))
       ==> $IsBox(_module.TyKn__C.G(_module.TyKn_C$T, $Heap, this), _module.TyKn_C$T));
// alloc consequence axiom for _module.TyKn__C.G
axiom 0 <= $FunctionContextHeight
   ==> (forall _module.TyKn_C$T: Ty, $Heap: Heap, this: ref :: 
    { $IsAllocBox(_module.TyKn__C.G(_module.TyKn_C$T, $Heap, this), _module.TyKn_C$T, $Heap) } 
    _module.TyKn__C.G#canCall(_module.TyKn_C$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && this != null
           && $IsAlloc(this, Tclass._module.TyKn__C(_module.TyKn_C$T), $Heap))
       ==> $IsAllocBox(_module.TyKn__C.G(_module.TyKn_C$T, $Heap, this), _module.TyKn_C$T, $Heap));
// definition axiom for _module.TyKn__C.G (revealed)
axiom {:id "id321"} 0 <= $FunctionContextHeight
   ==> (forall _module.TyKn_C$T: Ty, $Heap: Heap, this: ref :: 
    { _module.TyKn__C.G(_module.TyKn_C$T, $Heap, this), $IsGoodHeap($Heap) } 
    _module.TyKn__C.G#canCall(_module.TyKn_C$T, $Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.TyKn__C(_module.TyKn_C$T))
           && $IsAlloc(this, Tclass._module.TyKn__C(_module.TyKn_C$T), $Heap))
       ==> _module.TyKn__C.G(_module.TyKn_C$T, $Heap, this)
         == read($Heap, this, _module.TyKn__C.x));
}

function _module.TyKn__C.G#canCall(_module.TyKn_C$T: Ty, $heap: Heap, this: ref) : bool;

// frame axiom for _module.TyKn__C.G
axiom (forall _module.TyKn_C$T: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.TyKn__C.G(_module.TyKn_C$T, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.TyKn__C(_module.TyKn_C$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $o == this ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.TyKn__C.G(_module.TyKn_C$T, $h0, this)
       == _module.TyKn__C.G(_module.TyKn_C$T, $h1, this));

function _module.TyKn__C.G#requires(Ty, Heap, ref) : bool;

// #requires axiom for _module.TyKn__C.G
axiom (forall _module.TyKn_C$T: Ty, $Heap: Heap, this: ref :: 
  { _module.TyKn__C.G#requires(_module.TyKn_C$T, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.TyKn__C(_module.TyKn_C$T))
       && $IsAlloc(this, Tclass._module.TyKn__C(_module.TyKn_C$T), $Heap)
     ==> _module.TyKn__C.G#requires(_module.TyKn_C$T, $Heap, this) == true);

procedure {:verboseName "TyKn_C.G (well-formedness)"} CheckWellformed$$_module.TyKn__C.G(_module.TyKn_C$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TyKn__C(_module.TyKn_C$T))
         && $IsAlloc(this, Tclass._module.TyKn__C(_module.TyKn_C$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TyKn_C.G (well-formedness)"} CheckWellformed$$_module.TyKn__C.G(_module.TyKn_C$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    // initialize fuel constant
    assume StartFuel_ParseGenerics._default.Many
       == $LS(BaseFuel_ParseGenerics._default.Many);
    assume StartFuelAssert_ParseGenerics._default.Many
       == $LS($LS(BaseFuel_ParseGenerics._default.Many));
    assume AsFuelBottom(BaseFuel_ParseGenerics._default.Many)
       == BaseFuel_ParseGenerics._default.Many;
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $IsBox(_module.TyKn__C.G(_module.TyKn_C$T, $Heap, this), _module.TyKn_C$T);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        b$reqreads#0 := $_ReadsFrame[this, _module.TyKn__C.x];
        assume {:id "id322"} _module.TyKn__C.G(_module.TyKn_C$T, $Heap, this)
           == read($Heap, this, _module.TyKn__C.x);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(_module.TyKn__C.G(_module.TyKn_C$T, $Heap, this), _module.TyKn_C$T);
        assert {:id "id323"} b$reqreads#0;
        return;

        assume false;
    }
}



procedure {:verboseName "TyKn_C.M (well-formedness)"} CheckWellFormed$$_module.TyKn__C.M(_module.TyKn_C$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TyKn__C(_module.TyKn_C$T))
         && $IsAlloc(this, Tclass._module.TyKn__C(_module.TyKn_C$T), $Heap))
   returns (t#0: Box
       where $IsBox(t#0, _module.TyKn_C$T) && $IsAllocBox(t#0, _module.TyKn_C$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TyKn_C.M (call)"} Call$$_module.TyKn__C.M(_module.TyKn_C$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TyKn__C(_module.TyKn_C$T))
         && $IsAlloc(this, Tclass._module.TyKn__C(_module.TyKn_C$T), $Heap))
   returns (t#0: Box
       where $IsBox(t#0, _module.TyKn_C$T) && $IsAllocBox(t#0, _module.TyKn_C$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TyKn_C.M (correctness)"} Impl$$_module.TyKn__C.M(_module.TyKn_C$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TyKn__C(_module.TyKn_C$T))
         && $IsAlloc(this, Tclass._module.TyKn__C(_module.TyKn_C$T), $Heap))
   returns (t#0: Box
       where $IsBox(t#0, _module.TyKn_C$T) && $IsAllocBox(t#0, _module.TyKn_C$T, $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.TyKn_C
axiom (forall _module.TyKn_C$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.TyKn__C(_module.TyKn_C$T)) } 
    { $Is(c#0, Tclass._module.TyKn__C?(_module.TyKn_C$T)) } 
  $Is(c#0, Tclass._module.TyKn__C(_module.TyKn_C$T))
     <==> $Is(c#0, Tclass._module.TyKn__C?(_module.TyKn_C$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.TyKn_C
axiom (forall _module.TyKn_C$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.TyKn__C(_module.TyKn_C$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.TyKn__C?(_module.TyKn_C$T), $h) } 
  $IsAlloc(c#0, Tclass._module.TyKn__C(_module.TyKn_C$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.TyKn__C?(_module.TyKn_C$T), $h));

const unique class._module.TyKn__K?: ClassName;

// $Is axiom for class TyKn_K
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.TyKn__K?()) } 
  $Is($o, Tclass._module.TyKn__K?())
     <==> $o == null || dtype($o) == Tclass._module.TyKn__K?());

// $IsAlloc axiom for class TyKn_K
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.TyKn__K?(), $h) } 
  $IsAlloc($o, Tclass._module.TyKn__K?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.TyKn_K.F
function _module.TyKn__K.F(this: ref) : int
uses {
// definition axiom for _module.TyKn__K.F (revealed)
axiom {:id "id325"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.TyKn__K.F(this) } 
    _module.TyKn__K.F#canCall(this)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TyKn__K()))
       ==> _module.TyKn__K.F(this) == LitInt(176));
// definition axiom for _module.TyKn__K.F for all literals (revealed)
axiom {:id "id326"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    {:weight 3} { _module.TyKn__K.F(Lit(this)) } 
    _module.TyKn__K.F#canCall(Lit(this))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.TyKn__K()))
       ==> _module.TyKn__K.F(Lit(this)) == LitInt(176));
}

function _module.TyKn__K.F#canCall(this: ref) : bool;

function Tclass._module.TyKn__K() : Ty
uses {
// Tclass._module.TyKn__K Tag
axiom Tag(Tclass._module.TyKn__K()) == Tagclass._module.TyKn__K
   && TagFamily(Tclass._module.TyKn__K()) == tytagFamily$TyKn_K;
}

const unique Tagclass._module.TyKn__K: TyTag;

// Box/unbox axiom for Tclass._module.TyKn__K
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.TyKn__K()) } 
  $IsBox(bx, Tclass._module.TyKn__K())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.TyKn__K()));

function _module.TyKn__K.F#requires(ref) : bool;

// #requires axiom for _module.TyKn__K.F
axiom (forall this: ref :: 
  { _module.TyKn__K.F#requires(this) } 
  this != null && $Is(this, Tclass._module.TyKn__K())
     ==> _module.TyKn__K.F#requires(this) == true);

procedure {:verboseName "TyKn_K.F (well-formedness)"} CheckWellformed$$_module.TyKn__K.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TyKn__K())
         && $IsAlloc(this, Tclass._module.TyKn__K(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type _module.TyKn_K
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.TyKn__K()) } { $Is(c#0, Tclass._module.TyKn__K?()) } 
  $Is(c#0, Tclass._module.TyKn__K())
     <==> $Is(c#0, Tclass._module.TyKn__K?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.TyKn_K
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.TyKn__K(), $h) } 
    { $IsAlloc(c#0, Tclass._module.TyKn__K?(), $h) } 
  $IsAlloc(c#0, Tclass._module.TyKn__K(), $h)
     <==> $IsAlloc(c#0, Tclass._module.TyKn__K?(), $h));

// Constructor function declaration
function #_module.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
// Constructor literal
axiom #_module.List.Nil() == Lit(#_module.List.Nil());
}

const unique ##_module.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
}

function _module.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) <==> DatatypeCtorId(d) == ##_module.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Nil_q(d) } 
  _module.List.Nil_q(d) ==> d == #_module.List.Nil());

// Constructor $Is
axiom (forall _module.List$T: Ty :: 
  { $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Nil(), Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#_module.List.Nil(), Tclass._module.List(_module.List$T), $h));

// Constructor function declaration
function #_module.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##_module.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #_module.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#_module.List.Cons(a#4#0#0, a#4#1#0)) == ##_module.List.Cons);
}

function _module.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d) <==> DatatypeCtorId(d) == ##_module.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d) } 
  _module.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #_module.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall _module.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T)) } 
  $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T))
     <==> $IsBox(a#6#0#0, _module.List$T)
       && $Is(a#6#1#0, Tclass._module.List(_module.List$T)));

// Constructor $IsAlloc
axiom (forall _module.List$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List(_module.List$T), $h)
       <==> $IsAllocBox(a#6#0#0, _module.List$T, $h)
         && $IsAlloc(a#6#1#0, Tclass._module.List(_module.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.List._h1(d), _module.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAllocBox(_module.List._h1(d), _module.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.List._h2(d), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAlloc(_module.List._h2(d), Tclass._module.List(_module.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.List.Cons(a#7#0#0, a#7#1#0)));

function _module.List._h1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #_module.List.Cons(a#8#0#0, a#8#1#0) } 
  _module.List._h1(#_module.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #_module.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.List.Cons(a#9#0#0, a#9#1#0)));

function _module.List._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #_module.List.Cons(a#10#0#0, a#10#1#0) } 
  _module.List._h2(#_module.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #_module.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#_module.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#_module.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.List(d) } 
  $IsA#_module.List(d) ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.List$T: Ty, d: DatatypeType :: 
  { _module.List.Cons_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
    { _module.List.Nil_q(d), $Is(d, Tclass._module.List(_module.List$T)) } 
  $Is(d, Tclass._module.List(_module.List$T))
     ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Datatype extensional equality declaration
function _module.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Nil_q(a) } 
    { _module.List#Equal(a, b), _module.List.Nil_q(b) } 
  _module.List.Nil_q(a) && _module.List.Nil_q(b) ==> _module.List#Equal(a, b));

// Datatype extensional equality definition: #_module.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b), _module.List.Cons_q(a) } 
    { _module.List#Equal(a, b), _module.List.Cons_q(b) } 
  _module.List.Cons_q(a) && _module.List.Cons_q(b)
     ==> (_module.List#Equal(a, b)
       <==> _module.List._h1(a) == _module.List._h1(b)
         && _module.List#Equal(_module.List._h2(a), _module.List._h2(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

// Constructor function declaration
function #_module.Pair.MkPair(Box, Box) : DatatypeType;

const unique ##_module.Pair.MkPair: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: Box :: 
  { #_module.Pair.MkPair(a#12#0#0, a#12#1#0) } 
  DatatypeCtorId(#_module.Pair.MkPair(a#12#0#0, a#12#1#0))
     == ##_module.Pair.MkPair);
}

function _module.Pair.MkPair_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Pair.MkPair_q(d) } 
  _module.Pair.MkPair_q(d) <==> DatatypeCtorId(d) == ##_module.Pair.MkPair);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Pair.MkPair_q(d) } 
  _module.Pair.MkPair_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: Box :: 
      d == #_module.Pair.MkPair(a#13#0#0, a#13#1#0)));

// Constructor $Is
axiom (forall _module.Pair$T: Ty, _module.Pair$U: Ty, a#14#0#0: Box, a#14#1#0: Box :: 
  { $Is(#_module.Pair.MkPair(a#14#0#0, a#14#1#0), 
      Tclass._module.Pair(_module.Pair$T, _module.Pair$U)) } 
  $Is(#_module.Pair.MkPair(a#14#0#0, a#14#1#0), 
      Tclass._module.Pair(_module.Pair$T, _module.Pair$U))
     <==> $IsBox(a#14#0#0, _module.Pair$T) && $IsBox(a#14#1#0, _module.Pair$U));

// Constructor $IsAlloc
axiom (forall _module.Pair$T: Ty, _module.Pair$U: Ty, a#14#0#0: Box, a#14#1#0: Box, $h: Heap :: 
  { $IsAlloc(#_module.Pair.MkPair(a#14#0#0, a#14#1#0), 
      Tclass._module.Pair(_module.Pair$T, _module.Pair$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Pair.MkPair(a#14#0#0, a#14#1#0), 
        Tclass._module.Pair(_module.Pair$T, _module.Pair$U), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _module.Pair$T, $h)
         && $IsAllocBox(a#14#1#0, _module.Pair$U, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Pair$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Pair._0(d), _module.Pair$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Pair.MkPair_q(d)
       && (exists _module.Pair$U: Ty :: 
        { $IsAlloc(d, Tclass._module.Pair(_module.Pair$T, _module.Pair$U), $h) } 
        $IsAlloc(d, Tclass._module.Pair(_module.Pair$T, _module.Pair$U), $h))
     ==> $IsAllocBox(_module.Pair._0(d), _module.Pair$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Pair$U: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Pair._1(d), _module.Pair$U, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Pair.MkPair_q(d)
       && (exists _module.Pair$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Pair(_module.Pair$T, _module.Pair$U), $h) } 
        $IsAlloc(d, Tclass._module.Pair(_module.Pair$T, _module.Pair$U), $h))
     ==> $IsAllocBox(_module.Pair._1(d), _module.Pair$U, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, a#15#1#0: Box :: 
  { #_module.Pair.MkPair(Lit(a#15#0#0), Lit(a#15#1#0)) } 
  #_module.Pair.MkPair(Lit(a#15#0#0), Lit(a#15#1#0))
     == Lit(#_module.Pair.MkPair(a#15#0#0, a#15#1#0)));

function _module.Pair._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: Box :: 
  { #_module.Pair.MkPair(a#16#0#0, a#16#1#0) } 
  _module.Pair._0(#_module.Pair.MkPair(a#16#0#0, a#16#1#0)) == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, a#17#1#0: Box :: 
  { #_module.Pair.MkPair(a#17#0#0, a#17#1#0) } 
  BoxRank(a#17#0#0) < DtRank(#_module.Pair.MkPair(a#17#0#0, a#17#1#0)));

function _module.Pair._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: Box :: 
  { #_module.Pair.MkPair(a#18#0#0, a#18#1#0) } 
  _module.Pair._1(#_module.Pair.MkPair(a#18#0#0, a#18#1#0)) == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, a#19#1#0: Box :: 
  { #_module.Pair.MkPair(a#19#0#0, a#19#1#0) } 
  BoxRank(a#19#1#0) < DtRank(#_module.Pair.MkPair(a#19#0#0, a#19#1#0)));

// Depth-one case-split function
function $IsA#_module.Pair(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Pair(d) } 
  $IsA#_module.Pair(d) ==> _module.Pair.MkPair_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Pair$T: Ty, _module.Pair$U: Ty, d: DatatypeType :: 
  { _module.Pair.MkPair_q(d), $Is(d, Tclass._module.Pair(_module.Pair$T, _module.Pair$U)) } 
  $Is(d, Tclass._module.Pair(_module.Pair$T, _module.Pair$U))
     ==> _module.Pair.MkPair_q(d));

// Datatype extensional equality declaration
function _module.Pair#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Pair.MkPair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Pair#Equal(a, b) } 
  _module.Pair#Equal(a, b)
     <==> _module.Pair._0(a) == _module.Pair._0(b)
       && _module.Pair._1(a) == _module.Pair._1(b));

// Datatype extensionality axiom: _module.Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Pair#Equal(a, b) } 
  _module.Pair#Equal(a, b) <==> a == b);

const unique class._module.Pair: ClassName;

const unique class.OneLayer.__default: ClassName;

// Constructor function declaration
function #OneLayer.wrap.Wrap(Box) : DatatypeType;

const unique ##OneLayer.wrap.Wrap: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: Box :: 
  { #OneLayer.wrap.Wrap(a#20#0#0) } 
  DatatypeCtorId(#OneLayer.wrap.Wrap(a#20#0#0)) == ##OneLayer.wrap.Wrap);
}

function OneLayer.wrap.Wrap_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { OneLayer.wrap.Wrap_q(d) } 
  OneLayer.wrap.Wrap_q(d) <==> DatatypeCtorId(d) == ##OneLayer.wrap.Wrap);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { OneLayer.wrap.Wrap_q(d) } 
  OneLayer.wrap.Wrap_q(d)
     ==> (exists a#21#0#0: Box :: d == #OneLayer.wrap.Wrap(a#21#0#0)));

function Tclass.OneLayer.wrap(Ty) : Ty;

const unique Tagclass.OneLayer.wrap: TyTag;

// Tclass.OneLayer.wrap Tag
axiom (forall OneLayer.wrap$V: Ty :: 
  { Tclass.OneLayer.wrap(OneLayer.wrap$V) } 
  Tag(Tclass.OneLayer.wrap(OneLayer.wrap$V)) == Tagclass.OneLayer.wrap
     && TagFamily(Tclass.OneLayer.wrap(OneLayer.wrap$V)) == tytagFamily$wrap);

function Tclass.OneLayer.wrap_0(Ty) : Ty;

// Tclass.OneLayer.wrap injectivity 0
axiom (forall OneLayer.wrap$V: Ty :: 
  { Tclass.OneLayer.wrap(OneLayer.wrap$V) } 
  Tclass.OneLayer.wrap_0(Tclass.OneLayer.wrap(OneLayer.wrap$V)) == OneLayer.wrap$V);

// Box/unbox axiom for Tclass.OneLayer.wrap
axiom (forall OneLayer.wrap$V: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.OneLayer.wrap(OneLayer.wrap$V)) } 
  $IsBox(bx, Tclass.OneLayer.wrap(OneLayer.wrap$V))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.OneLayer.wrap(OneLayer.wrap$V)));

// Constructor $Is
axiom (forall OneLayer.wrap$V: Ty, a#22#0#0: Box :: 
  { $Is(#OneLayer.wrap.Wrap(a#22#0#0), Tclass.OneLayer.wrap(OneLayer.wrap$V)) } 
  $Is(#OneLayer.wrap.Wrap(a#22#0#0), Tclass.OneLayer.wrap(OneLayer.wrap$V))
     <==> $IsBox(a#22#0#0, OneLayer.wrap$V));

// Constructor $IsAlloc
axiom (forall OneLayer.wrap$V: Ty, a#22#0#0: Box, $h: Heap :: 
  { $IsAlloc(#OneLayer.wrap.Wrap(a#22#0#0), Tclass.OneLayer.wrap(OneLayer.wrap$V), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#OneLayer.wrap.Wrap(a#22#0#0), Tclass.OneLayer.wrap(OneLayer.wrap$V), $h)
       <==> $IsAllocBox(a#22#0#0, OneLayer.wrap$V, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, OneLayer.wrap$V: Ty, $h: Heap :: 
  { $IsAllocBox(OneLayer.wrap._h0(d), OneLayer.wrap$V, $h) } 
  $IsGoodHeap($h)
       && 
      OneLayer.wrap.Wrap_q(d)
       && $IsAlloc(d, Tclass.OneLayer.wrap(OneLayer.wrap$V), $h)
     ==> $IsAllocBox(OneLayer.wrap._h0(d), OneLayer.wrap$V, $h));

// Constructor literal
axiom (forall a#23#0#0: Box :: 
  { #OneLayer.wrap.Wrap(Lit(a#23#0#0)) } 
  #OneLayer.wrap.Wrap(Lit(a#23#0#0)) == Lit(#OneLayer.wrap.Wrap(a#23#0#0)));

function OneLayer.wrap._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#24#0#0: Box :: 
  { #OneLayer.wrap.Wrap(a#24#0#0) } 
  OneLayer.wrap._h0(#OneLayer.wrap.Wrap(a#24#0#0)) == a#24#0#0);

// Inductive rank
axiom (forall a#25#0#0: Box :: 
  { #OneLayer.wrap.Wrap(a#25#0#0) } 
  BoxRank(a#25#0#0) < DtRank(#OneLayer.wrap.Wrap(a#25#0#0)));

// Depth-one case-split function
function $IsA#OneLayer.wrap(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#OneLayer.wrap(d) } 
  $IsA#OneLayer.wrap(d) ==> OneLayer.wrap.Wrap_q(d));

// Questionmark data type disjunctivity
axiom (forall OneLayer.wrap$V: Ty, d: DatatypeType :: 
  { OneLayer.wrap.Wrap_q(d), $Is(d, Tclass.OneLayer.wrap(OneLayer.wrap$V)) } 
  $Is(d, Tclass.OneLayer.wrap(OneLayer.wrap$V)) ==> OneLayer.wrap.Wrap_q(d));

// Datatype extensional equality declaration
function OneLayer.wrap#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #OneLayer.wrap.Wrap
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { OneLayer.wrap#Equal(a, b) } 
  OneLayer.wrap#Equal(a, b) <==> OneLayer.wrap._h0(a) == OneLayer.wrap._h0(b));

// Datatype extensionality axiom: OneLayer.wrap
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { OneLayer.wrap#Equal(a, b) } 
  OneLayer.wrap#Equal(a, b) <==> a == b);

const unique class.OneLayer.wrap: ClassName;

const unique class.TwoLayers.__default: ClassName;

// function declaration for TwoLayers._default.F
function TwoLayers.__default.F(TwoLayers._default.F$U: Ty, w#0: DatatypeType) : DatatypeType;

function TwoLayers.__default.F#canCall(TwoLayers._default.F$U: Ty, w#0: DatatypeType) : bool;

function Tclass.TwoLayers.wrap2(Ty) : Ty;

const unique Tagclass.TwoLayers.wrap2: TyTag;

// Tclass.TwoLayers.wrap2 Tag
axiom (forall TwoLayers.wrap2$T: Ty :: 
  { Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T) } 
  Tag(Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T)) == Tagclass.TwoLayers.wrap2
     && TagFamily(Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T)) == tytagFamily$wrap2);

function Tclass.TwoLayers.wrap2_0(Ty) : Ty;

// Tclass.TwoLayers.wrap2 injectivity 0
axiom (forall TwoLayers.wrap2$T: Ty :: 
  { Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T) } 
  Tclass.TwoLayers.wrap2_0(Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T))
     == TwoLayers.wrap2$T);

// Box/unbox axiom for Tclass.TwoLayers.wrap2
axiom (forall TwoLayers.wrap2$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T)) } 
  $IsBox(bx, Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T)));

// consequence axiom for TwoLayers.__default.F
axiom (forall TwoLayers._default.F$U: Ty, w#0: DatatypeType :: 
  { TwoLayers.__default.F(TwoLayers._default.F$U, w#0) } 
  TwoLayers.__default.F#canCall(TwoLayers._default.F$U, w#0)
       || $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.F$U))
     ==> $Is(TwoLayers.__default.F(TwoLayers._default.F$U, w#0), 
      Tclass.OneLayer.wrap(TwoLayers._default.F$U)));

// alloc consequence axiom for TwoLayers.__default.F
axiom (forall $Heap: Heap, TwoLayers._default.F$U: Ty, w#0: DatatypeType :: 
  { $IsAlloc(TwoLayers.__default.F(TwoLayers._default.F$U, w#0), 
      Tclass.OneLayer.wrap(TwoLayers._default.F$U), 
      $Heap) } 
  (TwoLayers.__default.F#canCall(TwoLayers._default.F$U, w#0)
         || ($Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.F$U))
           && $IsAlloc(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.F$U), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(TwoLayers.__default.F(TwoLayers._default.F$U, w#0), 
      Tclass.OneLayer.wrap(TwoLayers._default.F$U), 
      $Heap));

function TwoLayers.__default.F#requires(Ty, DatatypeType) : bool;

// #requires axiom for TwoLayers.__default.F
axiom (forall TwoLayers._default.F$U: Ty, w#0: DatatypeType :: 
  { TwoLayers.__default.F#requires(TwoLayers._default.F$U, w#0) } 
  $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.F$U))
     ==> TwoLayers.__default.F#requires(TwoLayers._default.F$U, w#0) == true);

// definition axiom for TwoLayers.__default.F (revealed)
axiom {:id "id328"} (forall TwoLayers._default.F$U: Ty, w#0: DatatypeType :: 
  { TwoLayers.__default.F(TwoLayers._default.F$U, w#0) } 
  TwoLayers.__default.F#canCall(TwoLayers._default.F$U, w#0)
       || $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.F$U))
     ==> TwoLayers.wrap2.Wrap2_q(w#0)
       && TwoLayers.__default.F(TwoLayers._default.F$U, w#0)
         == (var a#4 := TwoLayers.wrap2.get(w#0); a#4));

// definition axiom for TwoLayers.__default.F for all literals (revealed)
axiom {:id "id329"} (forall TwoLayers._default.F$U: Ty, w#0: DatatypeType :: 
  {:weight 3} { TwoLayers.__default.F(TwoLayers._default.F$U, Lit(w#0)) } 
  TwoLayers.__default.F#canCall(TwoLayers._default.F$U, Lit(w#0))
       || $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.F$U))
     ==> TwoLayers.wrap2.Wrap2_q(Lit(w#0))
       && TwoLayers.__default.F(TwoLayers._default.F$U, Lit(w#0))
         == (var a#6 := Lit(TwoLayers.wrap2.get(Lit(w#0))); a#6));

// function declaration for TwoLayers._default.G
function TwoLayers.__default.G(TwoLayers._default.G$U: Ty, w#0: DatatypeType) : DatatypeType;

function TwoLayers.__default.G#canCall(TwoLayers._default.G$U: Ty, w#0: DatatypeType) : bool;

// consequence axiom for TwoLayers.__default.G
axiom (forall TwoLayers._default.G$U: Ty, w#0: DatatypeType :: 
  { TwoLayers.__default.G(TwoLayers._default.G$U, w#0) } 
  TwoLayers.__default.G#canCall(TwoLayers._default.G$U, w#0)
       || $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.G$U))
     ==> $Is(TwoLayers.__default.G(TwoLayers._default.G$U, w#0), 
      Tclass.OneLayer.wrap(TwoLayers._default.G$U)));

// alloc consequence axiom for TwoLayers.__default.G
axiom (forall $Heap: Heap, TwoLayers._default.G$U: Ty, w#0: DatatypeType :: 
  { $IsAlloc(TwoLayers.__default.G(TwoLayers._default.G$U, w#0), 
      Tclass.OneLayer.wrap(TwoLayers._default.G$U), 
      $Heap) } 
  (TwoLayers.__default.G#canCall(TwoLayers._default.G$U, w#0)
         || ($Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.G$U))
           && $IsAlloc(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.G$U), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(TwoLayers.__default.G(TwoLayers._default.G$U, w#0), 
      Tclass.OneLayer.wrap(TwoLayers._default.G$U), 
      $Heap));

function TwoLayers.__default.G#requires(Ty, DatatypeType) : bool;

// #requires axiom for TwoLayers.__default.G
axiom (forall TwoLayers._default.G$U: Ty, w#0: DatatypeType :: 
  { TwoLayers.__default.G#requires(TwoLayers._default.G$U, w#0) } 
  $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.G$U))
     ==> TwoLayers.__default.G#requires(TwoLayers._default.G$U, w#0) == true);

// definition axiom for TwoLayers.__default.G (revealed)
axiom {:id "id330"} (forall TwoLayers._default.G$U: Ty, w#0: DatatypeType :: 
  { TwoLayers.__default.G(TwoLayers._default.G$U, w#0) } 
  TwoLayers.__default.G#canCall(TwoLayers._default.G$U, w#0)
       || $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.G$U))
     ==> TwoLayers.wrap2.Wrap2_q(w#0)
       && TwoLayers.wrap2.Wrap2_q(w#0)
       && TwoLayers.__default.G(TwoLayers._default.G$U, w#0)
         == (var a#4 := TwoLayers.wrap2.get(w#0); TwoLayers.wrap2.get(w#0)));

// definition axiom for TwoLayers.__default.G for all literals (revealed)
axiom {:id "id331"} (forall TwoLayers._default.G$U: Ty, w#0: DatatypeType :: 
  {:weight 3} { TwoLayers.__default.G(TwoLayers._default.G$U, Lit(w#0)) } 
  TwoLayers.__default.G#canCall(TwoLayers._default.G$U, Lit(w#0))
       || $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.G$U))
     ==> TwoLayers.wrap2.Wrap2_q(Lit(w#0))
       && TwoLayers.wrap2.Wrap2_q(Lit(w#0))
       && TwoLayers.__default.G(TwoLayers._default.G$U, Lit(w#0))
         == (var a#6 := Lit(TwoLayers.wrap2.get(Lit(w#0))); 
          Lit(TwoLayers.wrap2.get(Lit(w#0)))));

// function declaration for TwoLayers._default.H
function TwoLayers.__default.H(TwoLayers._default.H$U: Ty, w#0: DatatypeType) : DatatypeType;

function TwoLayers.__default.H#canCall(TwoLayers._default.H$U: Ty, w#0: DatatypeType) : bool;

// consequence axiom for TwoLayers.__default.H
axiom (forall TwoLayers._default.H$U: Ty, w#0: DatatypeType :: 
  { TwoLayers.__default.H(TwoLayers._default.H$U, w#0) } 
  TwoLayers.__default.H#canCall(TwoLayers._default.H$U, w#0)
       || $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.H$U))
     ==> $Is(TwoLayers.__default.H(TwoLayers._default.H$U, w#0), 
      Tclass.OneLayer.wrap(TwoLayers._default.H$U)));

// alloc consequence axiom for TwoLayers.__default.H
axiom (forall $Heap: Heap, TwoLayers._default.H$U: Ty, w#0: DatatypeType :: 
  { $IsAlloc(TwoLayers.__default.H(TwoLayers._default.H$U, w#0), 
      Tclass.OneLayer.wrap(TwoLayers._default.H$U), 
      $Heap) } 
  (TwoLayers.__default.H#canCall(TwoLayers._default.H$U, w#0)
         || ($Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.H$U))
           && $IsAlloc(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.H$U), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(TwoLayers.__default.H(TwoLayers._default.H$U, w#0), 
      Tclass.OneLayer.wrap(TwoLayers._default.H$U), 
      $Heap));

function TwoLayers.__default.H#requires(Ty, DatatypeType) : bool;

// #requires axiom for TwoLayers.__default.H
axiom (forall TwoLayers._default.H$U: Ty, w#0: DatatypeType :: 
  { TwoLayers.__default.H#requires(TwoLayers._default.H$U, w#0) } 
  $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.H$U))
     ==> TwoLayers.__default.H#requires(TwoLayers._default.H$U, w#0) == true);

// definition axiom for TwoLayers.__default.H (revealed)
axiom {:id "id332"} (forall TwoLayers._default.H$U: Ty, w#0: DatatypeType :: 
  { TwoLayers.__default.H(TwoLayers._default.H$U, w#0) } 
  TwoLayers.__default.H#canCall(TwoLayers._default.H$U, w#0)
       || $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.H$U))
     ==> TwoLayers.wrap2.Wrap2_q(w#0)
       && TwoLayers.__default.H(TwoLayers._default.H$U, w#0) == TwoLayers.wrap2.get(w#0));

// definition axiom for TwoLayers.__default.H for all literals (revealed)
axiom {:id "id333"} (forall TwoLayers._default.H$U: Ty, w#0: DatatypeType :: 
  {:weight 3} { TwoLayers.__default.H(TwoLayers._default.H$U, Lit(w#0)) } 
  TwoLayers.__default.H#canCall(TwoLayers._default.H$U, Lit(w#0))
       || $Is(w#0, Tclass.TwoLayers.wrap2(TwoLayers._default.H$U))
     ==> TwoLayers.wrap2.Wrap2_q(Lit(w#0))
       && TwoLayers.__default.H(TwoLayers._default.H$U, Lit(w#0))
         == Lit(TwoLayers.wrap2.get(Lit(w#0))));

// Constructor function declaration
function #TwoLayers.wrap2.Wrap2(DatatypeType) : DatatypeType;

const unique ##TwoLayers.wrap2.Wrap2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: DatatypeType :: 
  { #TwoLayers.wrap2.Wrap2(a#0#0#0) } 
  DatatypeCtorId(#TwoLayers.wrap2.Wrap2(a#0#0#0)) == ##TwoLayers.wrap2.Wrap2);
}

function TwoLayers.wrap2.Wrap2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TwoLayers.wrap2.Wrap2_q(d) } 
  TwoLayers.wrap2.Wrap2_q(d) <==> DatatypeCtorId(d) == ##TwoLayers.wrap2.Wrap2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TwoLayers.wrap2.Wrap2_q(d) } 
  TwoLayers.wrap2.Wrap2_q(d)
     ==> (exists a#1#0#0: DatatypeType :: d == #TwoLayers.wrap2.Wrap2(a#1#0#0)));

// Constructor $Is
axiom (forall TwoLayers.wrap2$T: Ty, a#2#0#0: DatatypeType :: 
  { $Is(#TwoLayers.wrap2.Wrap2(a#2#0#0), Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T)) } 
  $Is(#TwoLayers.wrap2.Wrap2(a#2#0#0), Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T))
     <==> $Is(a#2#0#0, Tclass.OneLayer.wrap(TwoLayers.wrap2$T)));

// Constructor $IsAlloc
axiom (forall TwoLayers.wrap2$T: Ty, a#2#0#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#TwoLayers.wrap2.Wrap2(a#2#0#0), Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TwoLayers.wrap2.Wrap2(a#2#0#0), Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T), $h)
       <==> $IsAlloc(a#2#0#0, Tclass.OneLayer.wrap(TwoLayers.wrap2$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TwoLayers.wrap2$T: Ty, $h: Heap :: 
  { $IsAlloc(TwoLayers.wrap2.get(d), Tclass.OneLayer.wrap(TwoLayers.wrap2$T), $h) } 
  $IsGoodHeap($h)
       && 
      TwoLayers.wrap2.Wrap2_q(d)
       && $IsAlloc(d, Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T), $h)
     ==> $IsAlloc(TwoLayers.wrap2.get(d), Tclass.OneLayer.wrap(TwoLayers.wrap2$T), $h));

// Constructor literal
axiom (forall a#3#0#0: DatatypeType :: 
  { #TwoLayers.wrap2.Wrap2(Lit(a#3#0#0)) } 
  #TwoLayers.wrap2.Wrap2(Lit(a#3#0#0)) == Lit(#TwoLayers.wrap2.Wrap2(a#3#0#0)));

function TwoLayers.wrap2.get(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#4#0#0: DatatypeType :: 
  { #TwoLayers.wrap2.Wrap2(a#4#0#0) } 
  TwoLayers.wrap2.get(#TwoLayers.wrap2.Wrap2(a#4#0#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: DatatypeType :: 
  { #TwoLayers.wrap2.Wrap2(a#5#0#0) } 
  DtRank(a#5#0#0) < DtRank(#TwoLayers.wrap2.Wrap2(a#5#0#0)));

// Depth-one case-split function
function $IsA#TwoLayers.wrap2(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TwoLayers.wrap2(d) } 
  $IsA#TwoLayers.wrap2(d) ==> TwoLayers.wrap2.Wrap2_q(d));

// Questionmark data type disjunctivity
axiom (forall TwoLayers.wrap2$T: Ty, d: DatatypeType :: 
  { TwoLayers.wrap2.Wrap2_q(d), $Is(d, Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T)) } 
  $Is(d, Tclass.TwoLayers.wrap2(TwoLayers.wrap2$T)) ==> TwoLayers.wrap2.Wrap2_q(d));

// Datatype extensional equality declaration
function TwoLayers.wrap2#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TwoLayers.wrap2.Wrap2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TwoLayers.wrap2#Equal(a, b) } 
  TwoLayers.wrap2#Equal(a, b)
     <==> OneLayer.wrap#Equal(TwoLayers.wrap2.get(a), TwoLayers.wrap2.get(b)));

// Datatype extensionality axiom: TwoLayers.wrap2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TwoLayers.wrap2#Equal(a, b) } 
  TwoLayers.wrap2#Equal(a, b) <==> a == b);

const unique class.TwoLayers.wrap2: ClassName;

const unique class.ArrayTypeMagic.__default: ClassName;

// function declaration for ArrayTypeMagic._default.G
function ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType) : ref;

function ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0: Ty, t#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
  { ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), t#0) } 
  ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), t#0)
     == ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0));

// fuel synonym axiom
axiom (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
  { ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, AsFuelBottom($ly), t#0) } 
  ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0)
     == ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LZ, t#0));

function Tclass.ArrayTypeMagic.ArrayCubeTree(Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.ArrayCubeTree: TyTag;

// Tclass.ArrayTypeMagic.ArrayCubeTree Tag
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty :: 
  { Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T) } 
  Tag(Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
       == Tagclass.ArrayTypeMagic.ArrayCubeTree
     && TagFamily(Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
       == tytagFamily$ArrayCubeTree);

function Tclass.ArrayTypeMagic.ArrayCubeTree_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.ArrayCubeTree injectivity 0
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty :: 
  { Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T) } 
  Tclass.ArrayTypeMagic.ArrayCubeTree_0(Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
     == ArrayTypeMagic.ArrayCubeTree$T);

// Box/unbox axiom for Tclass.ArrayTypeMagic.ArrayCubeTree
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)));

// consequence axiom for ArrayTypeMagic.__default.G
axiom (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
  { ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0) } 
  ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, t#0)
       || $Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0))
     ==> $Is(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0), 
      Tclass._System.array3(ArrayTypeMagic._default.G$_T0)));

// alloc consequence axiom for ArrayTypeMagic.__default.G
axiom (forall $Heap: Heap, 
    ArrayTypeMagic._default.G$_T0: Ty, 
    $ly: LayerType, 
    t#0: DatatypeType :: 
  { $IsAlloc(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0), 
      Tclass._System.array3(ArrayTypeMagic._default.G$_T0), 
      $Heap) } 
  (ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, t#0)
         || ($Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0))
           && $IsAlloc(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, t#0), 
      Tclass._System.array3(ArrayTypeMagic._default.G$_T0), 
      $Heap));

function ArrayTypeMagic.__default.G#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for ArrayTypeMagic.__default.G
axiom (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
  { ArrayTypeMagic.__default.G#requires(ArrayTypeMagic._default.G$_T0, $ly, t#0) } 
  $Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0))
     ==> ArrayTypeMagic.__default.G#requires(ArrayTypeMagic._default.G$_T0, $ly, t#0)
       == true);

// definition axiom for ArrayTypeMagic.__default.G (revealed)
axiom {:id "id334"} (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
  { ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), t#0) } 
  ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, t#0)
       || $Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0))
     ==> (!ArrayTypeMagic.ArrayCubeTree.Leaf_q(t#0)
         ==> (var l#5 := ArrayTypeMagic.ArrayCubeTree._h5(t#0); 
          ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, l#5)))
       && ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), t#0)
         == (if ArrayTypeMagic.ArrayCubeTree.Leaf_q(t#0)
           then (var d#4 := ArrayTypeMagic.ArrayCubeTree._h4(t#0); d#4)
           else (var l#4 := ArrayTypeMagic.ArrayCubeTree._h5(t#0); 
            ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $ly, l#4))));

// definition axiom for ArrayTypeMagic.__default.G for all literals (revealed)
axiom {:id "id335"} (forall ArrayTypeMagic._default.G$_T0: Ty, $ly: LayerType, t#0: DatatypeType :: 
  {:weight 3} { ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), Lit(t#0)) } 
  ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, Lit(t#0))
       || $Is(t#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic._default.G$_T0))
     ==> (!Lit(ArrayTypeMagic.ArrayCubeTree.Leaf_q(Lit(t#0)))
         ==> (var l#7 := Lit(ArrayTypeMagic.ArrayCubeTree._h5(Lit(t#0))); 
          ArrayTypeMagic.__default.G#canCall(ArrayTypeMagic._default.G$_T0, l#7)))
       && ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), Lit(t#0))
         == (if ArrayTypeMagic.ArrayCubeTree.Leaf_q(Lit(t#0))
           then (var d#6 := Lit(ArrayTypeMagic.ArrayCubeTree._h4(Lit(t#0))); d#6)
           else (var l#6 := Lit(ArrayTypeMagic.ArrayCubeTree._h5(Lit(t#0))); 
            Lit(ArrayTypeMagic.__default.G(ArrayTypeMagic._default.G$_T0, $LS($ly), l#6)))));

// Constructor function declaration
function #ArrayTypeMagic.ArrayCubeTree.Leaf(ref) : DatatypeType;

const unique ##ArrayTypeMagic.ArrayCubeTree.Leaf: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: ref :: 
  { #ArrayTypeMagic.ArrayCubeTree.Leaf(a#0#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#0#0#0))
     == ##ArrayTypeMagic.ArrayCubeTree.Leaf);
}

function ArrayTypeMagic.ArrayCubeTree.Leaf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree.Leaf_q(d) } 
  ArrayTypeMagic.ArrayCubeTree.Leaf_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.ArrayCubeTree.Leaf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree.Leaf_q(d) } 
  ArrayTypeMagic.ArrayCubeTree.Leaf_q(d)
     ==> (exists a#1#0#0: ref :: d == #ArrayTypeMagic.ArrayCubeTree.Leaf(a#1#0#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, a#2#0#0: ref :: 
  { $Is(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#2#0#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)) } 
  $Is(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#2#0#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
     <==> $Is(a#2#0#0, Tclass._System.array3(ArrayTypeMagic.ArrayCubeTree$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, a#2#0#0: ref, $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#2#0#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#2#0#0), 
        Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
        $h)
       <==> $IsAlloc(a#2#0#0, Tclass._System.array3(ArrayTypeMagic.ArrayCubeTree$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.ArrayCubeTree$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h4(d), 
      Tclass._System.array3(ArrayTypeMagic.ArrayCubeTree$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.ArrayCubeTree.Leaf_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h4(d), 
      Tclass._System.array3(ArrayTypeMagic.ArrayCubeTree$T), 
      $h));

// Constructor literal
axiom (forall a#3#0#0: ref :: 
  { #ArrayTypeMagic.ArrayCubeTree.Leaf(Lit(a#3#0#0)) } 
  #ArrayTypeMagic.ArrayCubeTree.Leaf(Lit(a#3#0#0))
     == Lit(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#3#0#0)));

function ArrayTypeMagic.ArrayCubeTree._h4(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#4#0#0: ref :: 
  { #ArrayTypeMagic.ArrayCubeTree.Leaf(a#4#0#0) } 
  ArrayTypeMagic.ArrayCubeTree._h4(#ArrayTypeMagic.ArrayCubeTree.Leaf(a#4#0#0))
     == a#4#0#0);

// Constructor function declaration
function #ArrayTypeMagic.ArrayCubeTree.Node(DatatypeType, DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.ArrayCubeTree.Node: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: DatatypeType, a#5#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(a#5#0#0, a#5#1#0) } 
  DatatypeCtorId(#ArrayTypeMagic.ArrayCubeTree.Node(a#5#0#0, a#5#1#0))
     == ##ArrayTypeMagic.ArrayCubeTree.Node);
}

function ArrayTypeMagic.ArrayCubeTree.Node_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree.Node_q(d) } 
  ArrayTypeMagic.ArrayCubeTree.Node_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.ArrayCubeTree.Node);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree.Node_q(d) } 
  ArrayTypeMagic.ArrayCubeTree.Node_q(d)
     ==> (exists a#6#0#0: DatatypeType, a#6#1#0: DatatypeType :: 
      d == #ArrayTypeMagic.ArrayCubeTree.Node(a#6#0#0, a#6#1#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, a#7#0#0: DatatypeType, a#7#1#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.ArrayCubeTree.Node(a#7#0#0, a#7#1#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)) } 
  $Is(#ArrayTypeMagic.ArrayCubeTree.Node(a#7#0#0, a#7#1#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
     <==> $Is(a#7#0#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
       && $Is(a#7#1#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, 
    a#7#0#0: DatatypeType, 
    a#7#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.ArrayCubeTree.Node(a#7#0#0, a#7#1#0), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.ArrayCubeTree.Node(a#7#0#0, a#7#1#0), 
        Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
        $h)
       <==> $IsAlloc(a#7#0#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), $h)
         && $IsAlloc(a#7#1#0, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.ArrayCubeTree$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h5(d), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.ArrayCubeTree.Node_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h5(d), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.ArrayCubeTree$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h6(d), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.ArrayCubeTree.Node_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.ArrayCubeTree._h6(d), 
      Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T), 
      $h));

// Constructor literal
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(Lit(a#8#0#0), Lit(a#8#1#0)) } 
  #ArrayTypeMagic.ArrayCubeTree.Node(Lit(a#8#0#0), Lit(a#8#1#0))
     == Lit(#ArrayTypeMagic.ArrayCubeTree.Node(a#8#0#0, a#8#1#0)));

function ArrayTypeMagic.ArrayCubeTree._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: DatatypeType, a#9#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(a#9#0#0, a#9#1#0) } 
  ArrayTypeMagic.ArrayCubeTree._h5(#ArrayTypeMagic.ArrayCubeTree.Node(a#9#0#0, a#9#1#0))
     == a#9#0#0);

// Inductive rank
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(a#10#0#0, a#10#1#0) } 
  DtRank(a#10#0#0)
     < DtRank(#ArrayTypeMagic.ArrayCubeTree.Node(a#10#0#0, a#10#1#0)));

function ArrayTypeMagic.ArrayCubeTree._h6(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(a#11#0#0, a#11#1#0) } 
  ArrayTypeMagic.ArrayCubeTree._h6(#ArrayTypeMagic.ArrayCubeTree.Node(a#11#0#0, a#11#1#0))
     == a#11#1#0);

// Inductive rank
axiom (forall a#12#0#0: DatatypeType, a#12#1#0: DatatypeType :: 
  { #ArrayTypeMagic.ArrayCubeTree.Node(a#12#0#0, a#12#1#0) } 
  DtRank(a#12#1#0)
     < DtRank(#ArrayTypeMagic.ArrayCubeTree.Node(a#12#0#0, a#12#1#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.ArrayCubeTree(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.ArrayCubeTree(d) } 
  $IsA#ArrayTypeMagic.ArrayCubeTree(d)
     ==> ArrayTypeMagic.ArrayCubeTree.Leaf_q(d) || ArrayTypeMagic.ArrayCubeTree.Node_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.ArrayCubeTree$T: Ty, d: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree.Node_q(d), $Is(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)) } 
    { ArrayTypeMagic.ArrayCubeTree.Leaf_q(d), $Is(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T)) } 
  $Is(d, Tclass.ArrayTypeMagic.ArrayCubeTree(ArrayTypeMagic.ArrayCubeTree$T))
     ==> ArrayTypeMagic.ArrayCubeTree.Leaf_q(d) || ArrayTypeMagic.ArrayCubeTree.Node_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.ArrayCubeTree#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.ArrayCubeTree.Leaf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree#Equal(a, b), ArrayTypeMagic.ArrayCubeTree.Leaf_q(a) } 
    { ArrayTypeMagic.ArrayCubeTree#Equal(a, b), ArrayTypeMagic.ArrayCubeTree.Leaf_q(b) } 
  ArrayTypeMagic.ArrayCubeTree.Leaf_q(a) && ArrayTypeMagic.ArrayCubeTree.Leaf_q(b)
     ==> (ArrayTypeMagic.ArrayCubeTree#Equal(a, b)
       <==> ArrayTypeMagic.ArrayCubeTree._h4(a) == ArrayTypeMagic.ArrayCubeTree._h4(b)));

// Datatype extensional equality definition: #ArrayTypeMagic.ArrayCubeTree.Node
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree#Equal(a, b), ArrayTypeMagic.ArrayCubeTree.Node_q(a) } 
    { ArrayTypeMagic.ArrayCubeTree#Equal(a, b), ArrayTypeMagic.ArrayCubeTree.Node_q(b) } 
  ArrayTypeMagic.ArrayCubeTree.Node_q(a) && ArrayTypeMagic.ArrayCubeTree.Node_q(b)
     ==> (ArrayTypeMagic.ArrayCubeTree#Equal(a, b)
       <==> ArrayTypeMagic.ArrayCubeTree#Equal(ArrayTypeMagic.ArrayCubeTree._h5(a), ArrayTypeMagic.ArrayCubeTree._h5(b))
         && ArrayTypeMagic.ArrayCubeTree#Equal(ArrayTypeMagic.ArrayCubeTree._h6(a), ArrayTypeMagic.ArrayCubeTree._h6(b))));

// Datatype extensionality axiom: ArrayTypeMagic.ArrayCubeTree
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.ArrayCubeTree#Equal(a, b) } 
  ArrayTypeMagic.ArrayCubeTree#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.ArrayCubeTree: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.AnotherACT.Leaf(ref) : DatatypeType;

const unique ##ArrayTypeMagic.AnotherACT.Leaf: DtCtorId
uses {
// Constructor identifier
axiom (forall a#13#0#0: ref :: 
  { #ArrayTypeMagic.AnotherACT.Leaf(a#13#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.AnotherACT.Leaf(a#13#0#0))
     == ##ArrayTypeMagic.AnotherACT.Leaf);
}

function ArrayTypeMagic.AnotherACT.Leaf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT.Leaf_q(d) } 
  ArrayTypeMagic.AnotherACT.Leaf_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.AnotherACT.Leaf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT.Leaf_q(d) } 
  ArrayTypeMagic.AnotherACT.Leaf_q(d)
     ==> (exists a#14#0#0: ref :: d == #ArrayTypeMagic.AnotherACT.Leaf(a#14#0#0)));

function Tclass.ArrayTypeMagic.AnotherACT(Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.AnotherACT: TyTag;

// Tclass.ArrayTypeMagic.AnotherACT Tag
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty :: 
  { Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T) } 
  Tag(Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
       == Tagclass.ArrayTypeMagic.AnotherACT
     && TagFamily(Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
       == tytagFamily$AnotherACT);

function Tclass.ArrayTypeMagic.AnotherACT_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.AnotherACT injectivity 0
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty :: 
  { Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T) } 
  Tclass.ArrayTypeMagic.AnotherACT_0(Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
     == ArrayTypeMagic.AnotherACT$T);

// Box/unbox axiom for Tclass.ArrayTypeMagic.AnotherACT
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)));

// Constructor $Is
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, a#15#0#0: ref :: 
  { $Is(#ArrayTypeMagic.AnotherACT.Leaf(a#15#0#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)) } 
  $Is(#ArrayTypeMagic.AnotherACT.Leaf(a#15#0#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
     <==> $Is(a#15#0#0, Tclass._System.array3(ArrayTypeMagic.AnotherACT$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, a#15#0#0: ref, $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.AnotherACT.Leaf(a#15#0#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.AnotherACT.Leaf(a#15#0#0), 
        Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
        $h)
       <==> $IsAlloc(a#15#0#0, Tclass._System.array3(ArrayTypeMagic.AnotherACT$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.AnotherACT$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.AnotherACT._h7(d), 
      Tclass._System.array3(ArrayTypeMagic.AnotherACT$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.AnotherACT.Leaf_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.AnotherACT._h7(d), 
      Tclass._System.array3(ArrayTypeMagic.AnotherACT$T), 
      $h));

// Constructor literal
axiom (forall a#16#0#0: ref :: 
  { #ArrayTypeMagic.AnotherACT.Leaf(Lit(a#16#0#0)) } 
  #ArrayTypeMagic.AnotherACT.Leaf(Lit(a#16#0#0))
     == Lit(#ArrayTypeMagic.AnotherACT.Leaf(a#16#0#0)));

function ArrayTypeMagic.AnotherACT._h7(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#17#0#0: ref :: 
  { #ArrayTypeMagic.AnotherACT.Leaf(a#17#0#0) } 
  ArrayTypeMagic.AnotherACT._h7(#ArrayTypeMagic.AnotherACT.Leaf(a#17#0#0))
     == a#17#0#0);

// Constructor function declaration
function #ArrayTypeMagic.AnotherACT.Node(DatatypeType, DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.AnotherACT.Node: DtCtorId
uses {
// Constructor identifier
axiom (forall a#18#0#0: DatatypeType, a#18#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(a#18#0#0, a#18#1#0) } 
  DatatypeCtorId(#ArrayTypeMagic.AnotherACT.Node(a#18#0#0, a#18#1#0))
     == ##ArrayTypeMagic.AnotherACT.Node);
}

function ArrayTypeMagic.AnotherACT.Node_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT.Node_q(d) } 
  ArrayTypeMagic.AnotherACT.Node_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.AnotherACT.Node);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT.Node_q(d) } 
  ArrayTypeMagic.AnotherACT.Node_q(d)
     ==> (exists a#19#0#0: DatatypeType, a#19#1#0: DatatypeType :: 
      d == #ArrayTypeMagic.AnotherACT.Node(a#19#0#0, a#19#1#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, a#20#0#0: DatatypeType, a#20#1#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.AnotherACT.Node(a#20#0#0, a#20#1#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)) } 
  $Is(#ArrayTypeMagic.AnotherACT.Node(a#20#0#0, a#20#1#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
     <==> $Is(a#20#0#0, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
       && $Is(a#20#1#0, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, 
    a#20#0#0: DatatypeType, 
    a#20#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.AnotherACT.Node(a#20#0#0, a#20#1#0), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.AnotherACT.Node(a#20#0#0, a#20#1#0), 
        Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
        $h)
       <==> $IsAlloc(a#20#0#0, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), $h)
         && $IsAlloc(a#20#1#0, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.AnotherACT$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.AnotherACT._h8(d), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.AnotherACT.Node_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.AnotherACT._h8(d), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.AnotherACT$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.AnotherACT._h9(d), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.AnotherACT.Node_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.AnotherACT._h9(d), 
      Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T), 
      $h));

// Constructor literal
axiom (forall a#21#0#0: DatatypeType, a#21#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(Lit(a#21#0#0), Lit(a#21#1#0)) } 
  #ArrayTypeMagic.AnotherACT.Node(Lit(a#21#0#0), Lit(a#21#1#0))
     == Lit(#ArrayTypeMagic.AnotherACT.Node(a#21#0#0, a#21#1#0)));

function ArrayTypeMagic.AnotherACT._h8(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#22#0#0: DatatypeType, a#22#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(a#22#0#0, a#22#1#0) } 
  ArrayTypeMagic.AnotherACT._h8(#ArrayTypeMagic.AnotherACT.Node(a#22#0#0, a#22#1#0))
     == a#22#0#0);

// Inductive rank
axiom (forall a#23#0#0: DatatypeType, a#23#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(a#23#0#0, a#23#1#0) } 
  DtRank(a#23#0#0) < DtRank(#ArrayTypeMagic.AnotherACT.Node(a#23#0#0, a#23#1#0)));

function ArrayTypeMagic.AnotherACT._h9(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#24#0#0: DatatypeType, a#24#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(a#24#0#0, a#24#1#0) } 
  ArrayTypeMagic.AnotherACT._h9(#ArrayTypeMagic.AnotherACT.Node(a#24#0#0, a#24#1#0))
     == a#24#1#0);

// Inductive rank
axiom (forall a#25#0#0: DatatypeType, a#25#1#0: DatatypeType :: 
  { #ArrayTypeMagic.AnotherACT.Node(a#25#0#0, a#25#1#0) } 
  DtRank(a#25#1#0) < DtRank(#ArrayTypeMagic.AnotherACT.Node(a#25#0#0, a#25#1#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.AnotherACT(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.AnotherACT(d) } 
  $IsA#ArrayTypeMagic.AnotherACT(d)
     ==> ArrayTypeMagic.AnotherACT.Leaf_q(d) || ArrayTypeMagic.AnotherACT.Node_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.AnotherACT$T: Ty, d: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT.Node_q(d), $Is(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)) } 
    { ArrayTypeMagic.AnotherACT.Leaf_q(d), $Is(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T)) } 
  $Is(d, Tclass.ArrayTypeMagic.AnotherACT(ArrayTypeMagic.AnotherACT$T))
     ==> ArrayTypeMagic.AnotherACT.Leaf_q(d) || ArrayTypeMagic.AnotherACT.Node_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.AnotherACT#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.AnotherACT.Leaf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT#Equal(a, b), ArrayTypeMagic.AnotherACT.Leaf_q(a) } 
    { ArrayTypeMagic.AnotherACT#Equal(a, b), ArrayTypeMagic.AnotherACT.Leaf_q(b) } 
  ArrayTypeMagic.AnotherACT.Leaf_q(a) && ArrayTypeMagic.AnotherACT.Leaf_q(b)
     ==> (ArrayTypeMagic.AnotherACT#Equal(a, b)
       <==> ArrayTypeMagic.AnotherACT._h7(a) == ArrayTypeMagic.AnotherACT._h7(b)));

// Datatype extensional equality definition: #ArrayTypeMagic.AnotherACT.Node
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT#Equal(a, b), ArrayTypeMagic.AnotherACT.Node_q(a) } 
    { ArrayTypeMagic.AnotherACT#Equal(a, b), ArrayTypeMagic.AnotherACT.Node_q(b) } 
  ArrayTypeMagic.AnotherACT.Node_q(a) && ArrayTypeMagic.AnotherACT.Node_q(b)
     ==> (ArrayTypeMagic.AnotherACT#Equal(a, b)
       <==> ArrayTypeMagic.AnotherACT#Equal(ArrayTypeMagic.AnotherACT._h8(a), ArrayTypeMagic.AnotherACT._h8(b))
         && ArrayTypeMagic.AnotherACT#Equal(ArrayTypeMagic.AnotherACT._h9(a), ArrayTypeMagic.AnotherACT._h9(b))));

// Datatype extensionality axiom: ArrayTypeMagic.AnotherACT
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.AnotherACT#Equal(a, b) } 
  ArrayTypeMagic.AnotherACT#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.AnotherACT: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.OneMoreACT.Leaf(ref) : DatatypeType;

const unique ##ArrayTypeMagic.OneMoreACT.Leaf: DtCtorId
uses {
// Constructor identifier
axiom (forall a#26#0#0: ref :: 
  { #ArrayTypeMagic.OneMoreACT.Leaf(a#26#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.OneMoreACT.Leaf(a#26#0#0))
     == ##ArrayTypeMagic.OneMoreACT.Leaf);
}

function ArrayTypeMagic.OneMoreACT.Leaf_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT.Leaf_q(d) } 
  ArrayTypeMagic.OneMoreACT.Leaf_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.OneMoreACT.Leaf);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT.Leaf_q(d) } 
  ArrayTypeMagic.OneMoreACT.Leaf_q(d)
     ==> (exists a#27#0#0: ref :: d == #ArrayTypeMagic.OneMoreACT.Leaf(a#27#0#0)));

function Tclass.ArrayTypeMagic.OneMoreACT(Ty, Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.OneMoreACT: TyTag;

// Tclass.ArrayTypeMagic.OneMoreACT Tag
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, ArrayTypeMagic.OneMoreACT$U: Ty :: 
  { Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U) } 
  Tag(Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
       == Tagclass.ArrayTypeMagic.OneMoreACT
     && TagFamily(Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
       == tytagFamily$OneMoreACT);

function Tclass.ArrayTypeMagic.OneMoreACT_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.OneMoreACT injectivity 0
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, ArrayTypeMagic.OneMoreACT$U: Ty :: 
  { Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U) } 
  Tclass.ArrayTypeMagic.OneMoreACT_0(Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     == ArrayTypeMagic.OneMoreACT$T);

function Tclass.ArrayTypeMagic.OneMoreACT_1(Ty) : Ty;

// Tclass.ArrayTypeMagic.OneMoreACT injectivity 1
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, ArrayTypeMagic.OneMoreACT$U: Ty :: 
  { Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U) } 
  Tclass.ArrayTypeMagic.OneMoreACT_1(Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     == ArrayTypeMagic.OneMoreACT$U);

// Box/unbox axiom for Tclass.ArrayTypeMagic.OneMoreACT
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, ArrayTypeMagic.OneMoreACT$U: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)) } 
  $IsBox(bx, 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)));

// Constructor $Is
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, ArrayTypeMagic.OneMoreACT$U: Ty, a#28#0#0: ref :: 
  { $Is(#ArrayTypeMagic.OneMoreACT.Leaf(a#28#0#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)) } 
  $Is(#ArrayTypeMagic.OneMoreACT.Leaf(a#28#0#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     <==> $Is(a#28#0#0, Tclass._System.array3(ArrayTypeMagic.OneMoreACT$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    a#28#0#0: ref, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.OneMoreACT.Leaf(a#28#0#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.OneMoreACT.Leaf(a#28#0#0), 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
        $h)
       <==> $IsAlloc(a#28#0#0, Tclass._System.array3(ArrayTypeMagic.OneMoreACT$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.OneMoreACT$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.OneMoreACT._h10(d), 
      Tclass._System.array3(ArrayTypeMagic.OneMoreACT$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.OneMoreACT.Leaf_q(d)
       && (exists ArrayTypeMagic.OneMoreACT$U: Ty :: 
        { $IsAlloc(d, 
            Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
          $h))
     ==> $IsAlloc(ArrayTypeMagic.OneMoreACT._h10(d), 
      Tclass._System.array3(ArrayTypeMagic.OneMoreACT$T), 
      $h));

// Constructor literal
axiom (forall a#29#0#0: ref :: 
  { #ArrayTypeMagic.OneMoreACT.Leaf(Lit(a#29#0#0)) } 
  #ArrayTypeMagic.OneMoreACT.Leaf(Lit(a#29#0#0))
     == Lit(#ArrayTypeMagic.OneMoreACT.Leaf(a#29#0#0)));

function ArrayTypeMagic.OneMoreACT._h10(DatatypeType) : ref;

// Constructor injectivity
axiom (forall a#30#0#0: ref :: 
  { #ArrayTypeMagic.OneMoreACT.Leaf(a#30#0#0) } 
  ArrayTypeMagic.OneMoreACT._h10(#ArrayTypeMagic.OneMoreACT.Leaf(a#30#0#0))
     == a#30#0#0);

// Constructor function declaration
function #ArrayTypeMagic.OneMoreACT.Node(DatatypeType, DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.OneMoreACT.Node: DtCtorId
uses {
// Constructor identifier
axiom (forall a#31#0#0: DatatypeType, a#31#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(a#31#0#0, a#31#1#0) } 
  DatatypeCtorId(#ArrayTypeMagic.OneMoreACT.Node(a#31#0#0, a#31#1#0))
     == ##ArrayTypeMagic.OneMoreACT.Node);
}

function ArrayTypeMagic.OneMoreACT.Node_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT.Node_q(d) } 
  ArrayTypeMagic.OneMoreACT.Node_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.OneMoreACT.Node);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT.Node_q(d) } 
  ArrayTypeMagic.OneMoreACT.Node_q(d)
     ==> (exists a#32#0#0: DatatypeType, a#32#1#0: DatatypeType :: 
      d == #ArrayTypeMagic.OneMoreACT.Node(a#32#0#0, a#32#1#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    a#33#0#0: DatatypeType, 
    a#33#1#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.OneMoreACT.Node(a#33#0#0, a#33#1#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)) } 
  $Is(#ArrayTypeMagic.OneMoreACT.Node(a#33#0#0, a#33#1#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     <==> $Is(a#33#0#0, 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
       && $Is(a#33#1#0, 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    a#33#0#0: DatatypeType, 
    a#33#1#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.OneMoreACT.Node(a#33#0#0, a#33#1#0), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.OneMoreACT.Node(a#33#0#0, a#33#1#0), 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
        $h)
       <==> $IsAlloc(a#33#0#0, 
          Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
          $h)
         && $IsAlloc(a#33#1#0, 
          Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.OneMoreACT._h11(d), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.OneMoreACT.Node_q(d)
       && $IsAlloc(d, 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
        $h)
     ==> $IsAlloc(ArrayTypeMagic.OneMoreACT._h11(d), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.OneMoreACT._h12(d), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.OneMoreACT.Node_q(d)
       && $IsAlloc(d, 
        Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
        $h)
     ==> $IsAlloc(ArrayTypeMagic.OneMoreACT._h12(d), 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U), 
      $h));

// Constructor literal
axiom (forall a#34#0#0: DatatypeType, a#34#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(Lit(a#34#0#0), Lit(a#34#1#0)) } 
  #ArrayTypeMagic.OneMoreACT.Node(Lit(a#34#0#0), Lit(a#34#1#0))
     == Lit(#ArrayTypeMagic.OneMoreACT.Node(a#34#0#0, a#34#1#0)));

function ArrayTypeMagic.OneMoreACT._h11(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#35#0#0: DatatypeType, a#35#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(a#35#0#0, a#35#1#0) } 
  ArrayTypeMagic.OneMoreACT._h11(#ArrayTypeMagic.OneMoreACT.Node(a#35#0#0, a#35#1#0))
     == a#35#0#0);

// Inductive rank
axiom (forall a#36#0#0: DatatypeType, a#36#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(a#36#0#0, a#36#1#0) } 
  DtRank(a#36#0#0) < DtRank(#ArrayTypeMagic.OneMoreACT.Node(a#36#0#0, a#36#1#0)));

function ArrayTypeMagic.OneMoreACT._h12(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#37#0#0: DatatypeType, a#37#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(a#37#0#0, a#37#1#0) } 
  ArrayTypeMagic.OneMoreACT._h12(#ArrayTypeMagic.OneMoreACT.Node(a#37#0#0, a#37#1#0))
     == a#37#1#0);

// Inductive rank
axiom (forall a#38#0#0: DatatypeType, a#38#1#0: DatatypeType :: 
  { #ArrayTypeMagic.OneMoreACT.Node(a#38#0#0, a#38#1#0) } 
  DtRank(a#38#1#0) < DtRank(#ArrayTypeMagic.OneMoreACT.Node(a#38#0#0, a#38#1#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.OneMoreACT(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.OneMoreACT(d) } 
  $IsA#ArrayTypeMagic.OneMoreACT(d)
     ==> ArrayTypeMagic.OneMoreACT.Leaf_q(d) || ArrayTypeMagic.OneMoreACT.Node_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.OneMoreACT$T: Ty, 
    ArrayTypeMagic.OneMoreACT$U: Ty, 
    d: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT.Node_q(d), $Is(d, 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)) } 
    { ArrayTypeMagic.OneMoreACT.Leaf_q(d), $Is(d, 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U)) } 
  $Is(d, 
      Tclass.ArrayTypeMagic.OneMoreACT(ArrayTypeMagic.OneMoreACT$T, ArrayTypeMagic.OneMoreACT$U))
     ==> ArrayTypeMagic.OneMoreACT.Leaf_q(d) || ArrayTypeMagic.OneMoreACT.Node_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.OneMoreACT#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.OneMoreACT.Leaf
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT#Equal(a, b), ArrayTypeMagic.OneMoreACT.Leaf_q(a) } 
    { ArrayTypeMagic.OneMoreACT#Equal(a, b), ArrayTypeMagic.OneMoreACT.Leaf_q(b) } 
  ArrayTypeMagic.OneMoreACT.Leaf_q(a) && ArrayTypeMagic.OneMoreACT.Leaf_q(b)
     ==> (ArrayTypeMagic.OneMoreACT#Equal(a, b)
       <==> ArrayTypeMagic.OneMoreACT._h10(a) == ArrayTypeMagic.OneMoreACT._h10(b)));

// Datatype extensional equality definition: #ArrayTypeMagic.OneMoreACT.Node
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT#Equal(a, b), ArrayTypeMagic.OneMoreACT.Node_q(a) } 
    { ArrayTypeMagic.OneMoreACT#Equal(a, b), ArrayTypeMagic.OneMoreACT.Node_q(b) } 
  ArrayTypeMagic.OneMoreACT.Node_q(a) && ArrayTypeMagic.OneMoreACT.Node_q(b)
     ==> (ArrayTypeMagic.OneMoreACT#Equal(a, b)
       <==> ArrayTypeMagic.OneMoreACT#Equal(ArrayTypeMagic.OneMoreACT._h11(a), ArrayTypeMagic.OneMoreACT._h11(b))
         && ArrayTypeMagic.OneMoreACT#Equal(ArrayTypeMagic.OneMoreACT._h12(a), ArrayTypeMagic.OneMoreACT._h12(b))));

// Datatype extensionality axiom: ArrayTypeMagic.OneMoreACT
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.OneMoreACT#Equal(a, b) } 
  ArrayTypeMagic.OneMoreACT#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.OneMoreACT: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.Nat.Zero() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#ArrayTypeMagic.Nat.Zero()) == ##ArrayTypeMagic.Nat.Zero;
// Constructor $Is
axiom $Is(#ArrayTypeMagic.Nat.Zero(), Tclass.ArrayTypeMagic.Nat());
// Constructor literal
axiom #ArrayTypeMagic.Nat.Zero() == Lit(#ArrayTypeMagic.Nat.Zero());
}

const unique ##ArrayTypeMagic.Nat.Zero: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#ArrayTypeMagic.Nat.Zero()) == ##ArrayTypeMagic.Nat.Zero;
}

function ArrayTypeMagic.Nat.Zero_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Nat.Zero_q(d) } 
  ArrayTypeMagic.Nat.Zero_q(d) <==> DatatypeCtorId(d) == ##ArrayTypeMagic.Nat.Zero);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Nat.Zero_q(d) } 
  ArrayTypeMagic.Nat.Zero_q(d) ==> d == #ArrayTypeMagic.Nat.Zero());

function Tclass.ArrayTypeMagic.Nat() : Ty
uses {
// Tclass.ArrayTypeMagic.Nat Tag
axiom Tag(Tclass.ArrayTypeMagic.Nat()) == Tagclass.ArrayTypeMagic.Nat
   && TagFamily(Tclass.ArrayTypeMagic.Nat()) == tytagFamily$Nat;
}

const unique Tagclass.ArrayTypeMagic.Nat: TyTag;

// Box/unbox axiom for Tclass.ArrayTypeMagic.Nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.Nat()) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.Nat())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ArrayTypeMagic.Nat()));

// Constructor function declaration
function #ArrayTypeMagic.Nat.Succ(DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.Nat.Succ: DtCtorId
uses {
// Constructor identifier
axiom (forall a#43#0#0: DatatypeType :: 
  { #ArrayTypeMagic.Nat.Succ(a#43#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.Nat.Succ(a#43#0#0)) == ##ArrayTypeMagic.Nat.Succ);
}

function ArrayTypeMagic.Nat.Succ_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Nat.Succ_q(d) } 
  ArrayTypeMagic.Nat.Succ_q(d) <==> DatatypeCtorId(d) == ##ArrayTypeMagic.Nat.Succ);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Nat.Succ_q(d) } 
  ArrayTypeMagic.Nat.Succ_q(d)
     ==> (exists a#44#0#0: DatatypeType :: d == #ArrayTypeMagic.Nat.Succ(a#44#0#0)));

// Constructor $Is
axiom (forall a#45#0#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.Nat.Succ(a#45#0#0), Tclass.ArrayTypeMagic.Nat()) } 
  $Is(#ArrayTypeMagic.Nat.Succ(a#45#0#0), Tclass.ArrayTypeMagic.Nat())
     <==> $Is(a#45#0#0, Tclass.ArrayTypeMagic.Nat()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.Nat._h14(d), Tclass.ArrayTypeMagic.Nat(), $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.Nat.Succ_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.Nat(), $h)
     ==> $IsAlloc(ArrayTypeMagic.Nat._h14(d), Tclass.ArrayTypeMagic.Nat(), $h));

// Constructor literal
axiom (forall a#46#0#0: DatatypeType :: 
  { #ArrayTypeMagic.Nat.Succ(Lit(a#46#0#0)) } 
  #ArrayTypeMagic.Nat.Succ(Lit(a#46#0#0))
     == Lit(#ArrayTypeMagic.Nat.Succ(a#46#0#0)));

function ArrayTypeMagic.Nat._h14(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#47#0#0: DatatypeType :: 
  { #ArrayTypeMagic.Nat.Succ(a#47#0#0) } 
  ArrayTypeMagic.Nat._h14(#ArrayTypeMagic.Nat.Succ(a#47#0#0)) == a#47#0#0);

// Inductive rank
axiom (forall a#48#0#0: DatatypeType :: 
  { #ArrayTypeMagic.Nat.Succ(a#48#0#0) } 
  DtRank(a#48#0#0) < DtRank(#ArrayTypeMagic.Nat.Succ(a#48#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.ArrayTypeMagic.Nat(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.ArrayTypeMagic.Nat())
     ==> $IsAlloc(d, Tclass.ArrayTypeMagic.Nat(), $h));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.Nat(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.Nat(d) } 
  $IsA#ArrayTypeMagic.Nat(d)
     ==> ArrayTypeMagic.Nat.Zero_q(d) || ArrayTypeMagic.Nat.Succ_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Nat.Succ_q(d), $Is(d, Tclass.ArrayTypeMagic.Nat()) } 
    { ArrayTypeMagic.Nat.Zero_q(d), $Is(d, Tclass.ArrayTypeMagic.Nat()) } 
  $Is(d, Tclass.ArrayTypeMagic.Nat())
     ==> ArrayTypeMagic.Nat.Zero_q(d) || ArrayTypeMagic.Nat.Succ_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.Nat#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.Nat.Zero
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.Nat#Equal(a, b), ArrayTypeMagic.Nat.Zero_q(a) } 
    { ArrayTypeMagic.Nat#Equal(a, b), ArrayTypeMagic.Nat.Zero_q(b) } 
  ArrayTypeMagic.Nat.Zero_q(a) && ArrayTypeMagic.Nat.Zero_q(b)
     ==> ArrayTypeMagic.Nat#Equal(a, b));

// Datatype extensional equality definition: #ArrayTypeMagic.Nat.Succ
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.Nat#Equal(a, b), ArrayTypeMagic.Nat.Succ_q(a) } 
    { ArrayTypeMagic.Nat#Equal(a, b), ArrayTypeMagic.Nat.Succ_q(b) } 
  ArrayTypeMagic.Nat.Succ_q(a) && ArrayTypeMagic.Nat.Succ_q(b)
     ==> (ArrayTypeMagic.Nat#Equal(a, b)
       <==> ArrayTypeMagic.Nat#Equal(ArrayTypeMagic.Nat._h14(a), ArrayTypeMagic.Nat._h14(b))));

// Datatype extensionality axiom: ArrayTypeMagic.Nat
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.Nat#Equal(a, b) } 
  ArrayTypeMagic.Nat#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.Nat: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#ArrayTypeMagic.List.Nil()) == ##ArrayTypeMagic.List.Nil;
// Constructor literal
axiom #ArrayTypeMagic.List.Nil() == Lit(#ArrayTypeMagic.List.Nil());
}

const unique ##ArrayTypeMagic.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#ArrayTypeMagic.List.Nil()) == ##ArrayTypeMagic.List.Nil;
}

function ArrayTypeMagic.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.List.Nil_q(d) } 
  ArrayTypeMagic.List.Nil_q(d) <==> DatatypeCtorId(d) == ##ArrayTypeMagic.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.List.Nil_q(d) } 
  ArrayTypeMagic.List.Nil_q(d) ==> d == #ArrayTypeMagic.List.Nil());

function Tclass.ArrayTypeMagic.List(Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.List: TyTag;

// Tclass.ArrayTypeMagic.List Tag
axiom (forall ArrayTypeMagic.List$T: Ty :: 
  { Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T) } 
  Tag(Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T))
       == Tagclass.ArrayTypeMagic.List
     && TagFamily(Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) == tytagFamily$List);

function Tclass.ArrayTypeMagic.List_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.List injectivity 0
axiom (forall ArrayTypeMagic.List$T: Ty :: 
  { Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T) } 
  Tclass.ArrayTypeMagic.List_0(Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T))
     == ArrayTypeMagic.List$T);

// Box/unbox axiom for Tclass.ArrayTypeMagic.List
axiom (forall ArrayTypeMagic.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)));

// Constructor $Is
axiom (forall ArrayTypeMagic.List$T: Ty :: 
  { $Is(#ArrayTypeMagic.List.Nil(), Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) } 
  $Is(#ArrayTypeMagic.List.Nil(), Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.List.Nil(), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#ArrayTypeMagic.List.Nil(), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
      $h));

// Constructor function declaration
function #ArrayTypeMagic.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#53#0#0: Box, a#53#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(a#53#0#0, a#53#1#0) } 
  DatatypeCtorId(#ArrayTypeMagic.List.Cons(a#53#0#0, a#53#1#0))
     == ##ArrayTypeMagic.List.Cons);
}

function ArrayTypeMagic.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.List.Cons_q(d) } 
  ArrayTypeMagic.List.Cons_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.List.Cons_q(d) } 
  ArrayTypeMagic.List.Cons_q(d)
     ==> (exists a#54#0#0: Box, a#54#1#0: DatatypeType :: 
      d == #ArrayTypeMagic.List.Cons(a#54#0#0, a#54#1#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.List$T: Ty, a#55#0#0: Box, a#55#1#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.List.Cons(a#55#0#0, a#55#1#0), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) } 
  $Is(#ArrayTypeMagic.List.Cons(a#55#0#0, a#55#1#0), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T))
     <==> $IsBox(a#55#0#0, ArrayTypeMagic.List$T)
       && $Is(a#55#1#0, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.List$T: Ty, a#55#0#0: Box, a#55#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.List.Cons(a#55#0#0, a#55#1#0), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.List.Cons(a#55#0#0, a#55#1#0), 
        Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
        $h)
       <==> $IsAllocBox(a#55#0#0, ArrayTypeMagic.List$T, $h)
         && $IsAlloc(a#55#1#0, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(ArrayTypeMagic.List._h15(d), ArrayTypeMagic.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.List.Cons_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), $h)
     ==> $IsAllocBox(ArrayTypeMagic.List._h15(d), ArrayTypeMagic.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.List$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.List._h16(d), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.List.Cons_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), $h)
     ==> $IsAlloc(ArrayTypeMagic.List._h16(d), 
      Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T), 
      $h));

// Constructor literal
axiom (forall a#56#0#0: Box, a#56#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(Lit(a#56#0#0), Lit(a#56#1#0)) } 
  #ArrayTypeMagic.List.Cons(Lit(a#56#0#0), Lit(a#56#1#0))
     == Lit(#ArrayTypeMagic.List.Cons(a#56#0#0, a#56#1#0)));

function ArrayTypeMagic.List._h15(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#57#0#0: Box, a#57#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(a#57#0#0, a#57#1#0) } 
  ArrayTypeMagic.List._h15(#ArrayTypeMagic.List.Cons(a#57#0#0, a#57#1#0))
     == a#57#0#0);

// Inductive rank
axiom (forall a#58#0#0: Box, a#58#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(a#58#0#0, a#58#1#0) } 
  BoxRank(a#58#0#0) < DtRank(#ArrayTypeMagic.List.Cons(a#58#0#0, a#58#1#0)));

function ArrayTypeMagic.List._h16(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#59#0#0: Box, a#59#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(a#59#0#0, a#59#1#0) } 
  ArrayTypeMagic.List._h16(#ArrayTypeMagic.List.Cons(a#59#0#0, a#59#1#0))
     == a#59#1#0);

// Inductive rank
axiom (forall a#60#0#0: Box, a#60#1#0: DatatypeType :: 
  { #ArrayTypeMagic.List.Cons(a#60#0#0, a#60#1#0) } 
  DtRank(a#60#1#0) < DtRank(#ArrayTypeMagic.List.Cons(a#60#0#0, a#60#1#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.List(d) } 
  $IsA#ArrayTypeMagic.List(d)
     ==> ArrayTypeMagic.List.Nil_q(d) || ArrayTypeMagic.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.List$T: Ty, d: DatatypeType :: 
  { ArrayTypeMagic.List.Cons_q(d), $Is(d, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) } 
    { ArrayTypeMagic.List.Nil_q(d), $Is(d, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T)) } 
  $Is(d, Tclass.ArrayTypeMagic.List(ArrayTypeMagic.List$T))
     ==> ArrayTypeMagic.List.Nil_q(d) || ArrayTypeMagic.List.Cons_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.List#Equal(a, b), ArrayTypeMagic.List.Nil_q(a) } 
    { ArrayTypeMagic.List#Equal(a, b), ArrayTypeMagic.List.Nil_q(b) } 
  ArrayTypeMagic.List.Nil_q(a) && ArrayTypeMagic.List.Nil_q(b)
     ==> ArrayTypeMagic.List#Equal(a, b));

// Datatype extensional equality definition: #ArrayTypeMagic.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.List#Equal(a, b), ArrayTypeMagic.List.Cons_q(a) } 
    { ArrayTypeMagic.List#Equal(a, b), ArrayTypeMagic.List.Cons_q(b) } 
  ArrayTypeMagic.List.Cons_q(a) && ArrayTypeMagic.List.Cons_q(b)
     ==> (ArrayTypeMagic.List#Equal(a, b)
       <==> ArrayTypeMagic.List._h15(a) == ArrayTypeMagic.List._h15(b)
         && ArrayTypeMagic.List#Equal(ArrayTypeMagic.List._h16(a), ArrayTypeMagic.List._h16(b))));

// Datatype extensionality axiom: ArrayTypeMagic.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.List#Equal(a, b) } 
  ArrayTypeMagic.List#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.List: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.Cell.Mk(Box) : DatatypeType;

const unique ##ArrayTypeMagic.Cell.Mk: DtCtorId
uses {
// Constructor identifier
axiom (forall a#61#0#0: Box :: 
  { #ArrayTypeMagic.Cell.Mk(a#61#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.Cell.Mk(a#61#0#0)) == ##ArrayTypeMagic.Cell.Mk);
}

function ArrayTypeMagic.Cell.Mk_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Cell.Mk_q(d) } 
  ArrayTypeMagic.Cell.Mk_q(d) <==> DatatypeCtorId(d) == ##ArrayTypeMagic.Cell.Mk);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.Cell.Mk_q(d) } 
  ArrayTypeMagic.Cell.Mk_q(d)
     ==> (exists a#62#0#0: Box :: d == #ArrayTypeMagic.Cell.Mk(a#62#0#0)));

function Tclass.ArrayTypeMagic.Cell(Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.Cell: TyTag;

// Tclass.ArrayTypeMagic.Cell Tag
axiom (forall ArrayTypeMagic.Cell$T: Ty :: 
  { Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T) } 
  Tag(Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T))
       == Tagclass.ArrayTypeMagic.Cell
     && TagFamily(Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T)) == tytagFamily$Cell);

function Tclass.ArrayTypeMagic.Cell_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.Cell injectivity 0
axiom (forall ArrayTypeMagic.Cell$T: Ty :: 
  { Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T) } 
  Tclass.ArrayTypeMagic.Cell_0(Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T))
     == ArrayTypeMagic.Cell$T);

// Box/unbox axiom for Tclass.ArrayTypeMagic.Cell
axiom (forall ArrayTypeMagic.Cell$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T)) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T)));

// Constructor $Is
axiom (forall ArrayTypeMagic.Cell$T: Ty, a#63#0#0: Box :: 
  { $Is(#ArrayTypeMagic.Cell.Mk(a#63#0#0), 
      Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T)) } 
  $Is(#ArrayTypeMagic.Cell.Mk(a#63#0#0), 
      Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T))
     <==> $IsBox(a#63#0#0, ArrayTypeMagic.Cell$T));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.Cell$T: Ty, a#63#0#0: Box, $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.Cell.Mk(a#63#0#0), 
      Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.Cell.Mk(a#63#0#0), 
        Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T), 
        $h)
       <==> $IsAllocBox(a#63#0#0, ArrayTypeMagic.Cell$T, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.Cell$T: Ty, $h: Heap :: 
  { $IsAllocBox(ArrayTypeMagic.Cell._h17(d), ArrayTypeMagic.Cell$T, $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.Cell.Mk_q(d)
       && $IsAlloc(d, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T), $h)
     ==> $IsAllocBox(ArrayTypeMagic.Cell._h17(d), ArrayTypeMagic.Cell$T, $h));

// Constructor literal
axiom (forall a#64#0#0: Box :: 
  { #ArrayTypeMagic.Cell.Mk(Lit(a#64#0#0)) } 
  #ArrayTypeMagic.Cell.Mk(Lit(a#64#0#0)) == Lit(#ArrayTypeMagic.Cell.Mk(a#64#0#0)));

function ArrayTypeMagic.Cell._h17(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#65#0#0: Box :: 
  { #ArrayTypeMagic.Cell.Mk(a#65#0#0) } 
  ArrayTypeMagic.Cell._h17(#ArrayTypeMagic.Cell.Mk(a#65#0#0)) == a#65#0#0);

// Inductive rank
axiom (forall a#66#0#0: Box :: 
  { #ArrayTypeMagic.Cell.Mk(a#66#0#0) } 
  BoxRank(a#66#0#0) < DtRank(#ArrayTypeMagic.Cell.Mk(a#66#0#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.Cell(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.Cell(d) } 
  $IsA#ArrayTypeMagic.Cell(d) ==> ArrayTypeMagic.Cell.Mk_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.Cell$T: Ty, d: DatatypeType :: 
  { ArrayTypeMagic.Cell.Mk_q(d), $Is(d, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T)) } 
  $Is(d, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.Cell$T))
     ==> ArrayTypeMagic.Cell.Mk_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.Cell#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.Cell.Mk
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.Cell#Equal(a, b) } 
  ArrayTypeMagic.Cell#Equal(a, b)
     <==> ArrayTypeMagic.Cell._h17(a) == ArrayTypeMagic.Cell._h17(b));

// Datatype extensionality axiom: ArrayTypeMagic.Cell
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.Cell#Equal(a, b) } 
  ArrayTypeMagic.Cell#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.Cell: ClassName;

// Constructor function declaration
function #ArrayTypeMagic.DList.Nil(DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.DList.Nil: DtCtorId
uses {
// Constructor identifier
axiom (forall a#67#0#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Nil(a#67#0#0) } 
  DatatypeCtorId(#ArrayTypeMagic.DList.Nil(a#67#0#0))
     == ##ArrayTypeMagic.DList.Nil);
}

function ArrayTypeMagic.DList.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.DList.Nil_q(d) } 
  ArrayTypeMagic.DList.Nil_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.DList.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.DList.Nil_q(d) } 
  ArrayTypeMagic.DList.Nil_q(d)
     ==> (exists a#68#0#0: DatatypeType :: d == #ArrayTypeMagic.DList.Nil(a#68#0#0)));

function Tclass.ArrayTypeMagic.DList(Ty, Ty) : Ty;

const unique Tagclass.ArrayTypeMagic.DList: TyTag;

// Tclass.ArrayTypeMagic.DList Tag
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty :: 
  { Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U) } 
  Tag(Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
       == Tagclass.ArrayTypeMagic.DList
     && TagFamily(Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
       == tytagFamily$DList);

function Tclass.ArrayTypeMagic.DList_0(Ty) : Ty;

// Tclass.ArrayTypeMagic.DList injectivity 0
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty :: 
  { Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U) } 
  Tclass.ArrayTypeMagic.DList_0(Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     == ArrayTypeMagic.DList$T);

function Tclass.ArrayTypeMagic.DList_1(Ty) : Ty;

// Tclass.ArrayTypeMagic.DList injectivity 1
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty :: 
  { Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U) } 
  Tclass.ArrayTypeMagic.DList_1(Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     == ArrayTypeMagic.DList$U);

// Box/unbox axiom for Tclass.ArrayTypeMagic.DList
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)) } 
  $IsBox(bx, Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)));

// Constructor $Is
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty, a#69#0#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.DList.Nil(a#69#0#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)) } 
  $Is(#ArrayTypeMagic.DList.Nil(a#69#0#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     <==> $Is(a#69#0#0, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.DList$T)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.DList$T: Ty, 
    ArrayTypeMagic.DList$U: Ty, 
    a#69#0#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.DList.Nil(a#69#0#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.DList.Nil(a#69#0#0), 
        Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
        $h)
       <==> $IsAlloc(a#69#0#0, Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.DList$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.DList$T: Ty, $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.DList._h18(d), 
      Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.DList$T), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.DList.Nil_q(d)
       && (exists ArrayTypeMagic.DList$U: Ty :: 
        { $IsAlloc(d, 
            Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
          $h))
     ==> $IsAlloc(ArrayTypeMagic.DList._h18(d), 
      Tclass.ArrayTypeMagic.Cell(ArrayTypeMagic.DList$T), 
      $h));

// Constructor literal
axiom (forall a#70#0#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Nil(Lit(a#70#0#0)) } 
  #ArrayTypeMagic.DList.Nil(Lit(a#70#0#0))
     == Lit(#ArrayTypeMagic.DList.Nil(a#70#0#0)));

function ArrayTypeMagic.DList._h18(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#71#0#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Nil(a#71#0#0) } 
  ArrayTypeMagic.DList._h18(#ArrayTypeMagic.DList.Nil(a#71#0#0)) == a#71#0#0);

// Inductive rank
axiom (forall a#72#0#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Nil(a#72#0#0) } 
  DtRank(a#72#0#0) < DtRank(#ArrayTypeMagic.DList.Nil(a#72#0#0)));

// Constructor function declaration
function #ArrayTypeMagic.DList.Cons(Box, Box, DatatypeType) : DatatypeType;

const unique ##ArrayTypeMagic.DList.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#73#0#0: Box, a#73#1#0: Box, a#73#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#73#0#0, a#73#1#0, a#73#2#0) } 
  DatatypeCtorId(#ArrayTypeMagic.DList.Cons(a#73#0#0, a#73#1#0, a#73#2#0))
     == ##ArrayTypeMagic.DList.Cons);
}

function ArrayTypeMagic.DList.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.DList.Cons_q(d) } 
  ArrayTypeMagic.DList.Cons_q(d)
     <==> DatatypeCtorId(d) == ##ArrayTypeMagic.DList.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ArrayTypeMagic.DList.Cons_q(d) } 
  ArrayTypeMagic.DList.Cons_q(d)
     ==> (exists a#74#0#0: Box, a#74#1#0: Box, a#74#2#0: DatatypeType :: 
      d == #ArrayTypeMagic.DList.Cons(a#74#0#0, a#74#1#0, a#74#2#0)));

// Constructor $Is
axiom (forall ArrayTypeMagic.DList$T: Ty, 
    ArrayTypeMagic.DList$U: Ty, 
    a#75#0#0: Box, 
    a#75#1#0: Box, 
    a#75#2#0: DatatypeType :: 
  { $Is(#ArrayTypeMagic.DList.Cons(a#75#0#0, a#75#1#0, a#75#2#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)) } 
  $Is(#ArrayTypeMagic.DList.Cons(a#75#0#0, a#75#1#0, a#75#2#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     <==> $IsBox(a#75#0#0, ArrayTypeMagic.DList$T)
       && $IsBox(a#75#1#0, ArrayTypeMagic.DList$U)
       && $Is(a#75#2#0, 
        Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)));

// Constructor $IsAlloc
axiom (forall ArrayTypeMagic.DList$T: Ty, 
    ArrayTypeMagic.DList$U: Ty, 
    a#75#0#0: Box, 
    a#75#1#0: Box, 
    a#75#2#0: DatatypeType, 
    $h: Heap :: 
  { $IsAlloc(#ArrayTypeMagic.DList.Cons(a#75#0#0, a#75#1#0, a#75#2#0), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ArrayTypeMagic.DList.Cons(a#75#0#0, a#75#1#0, a#75#2#0), 
        Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
        $h)
       <==> $IsAllocBox(a#75#0#0, ArrayTypeMagic.DList$T, $h)
         && $IsAllocBox(a#75#1#0, ArrayTypeMagic.DList$U, $h)
         && $IsAlloc(a#75#2#0, 
          Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
          $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.DList$T: Ty, $h: Heap :: 
  { $IsAllocBox(ArrayTypeMagic.DList._h19(d), ArrayTypeMagic.DList$T, $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.DList.Cons_q(d)
       && (exists ArrayTypeMagic.DList$U: Ty :: 
        { $IsAlloc(d, 
            Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
          $h))
     ==> $IsAllocBox(ArrayTypeMagic.DList._h19(d), ArrayTypeMagic.DList$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ArrayTypeMagic.DList$U: Ty, $h: Heap :: 
  { $IsAllocBox(ArrayTypeMagic.DList._h20(d), ArrayTypeMagic.DList$U, $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.DList.Cons_q(d)
       && (exists ArrayTypeMagic.DList$T: Ty :: 
        { $IsAlloc(d, 
            Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
            $h) } 
        $IsAlloc(d, 
          Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
          $h))
     ==> $IsAllocBox(ArrayTypeMagic.DList._h20(d), ArrayTypeMagic.DList$U, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, 
    ArrayTypeMagic.DList$T: Ty, 
    ArrayTypeMagic.DList$U: Ty, 
    $h: Heap :: 
  { $IsAlloc(ArrayTypeMagic.DList._h21(d), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
      $h) } 
  $IsGoodHeap($h)
       && 
      ArrayTypeMagic.DList.Cons_q(d)
       && $IsAlloc(d, 
        Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
        $h)
     ==> $IsAlloc(ArrayTypeMagic.DList._h21(d), 
      Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U), 
      $h));

// Constructor literal
axiom (forall a#76#0#0: Box, a#76#1#0: Box, a#76#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(Lit(a#76#0#0), Lit(a#76#1#0), Lit(a#76#2#0)) } 
  #ArrayTypeMagic.DList.Cons(Lit(a#76#0#0), Lit(a#76#1#0), Lit(a#76#2#0))
     == Lit(#ArrayTypeMagic.DList.Cons(a#76#0#0, a#76#1#0, a#76#2#0)));

function ArrayTypeMagic.DList._h19(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#77#0#0: Box, a#77#1#0: Box, a#77#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#77#0#0, a#77#1#0, a#77#2#0) } 
  ArrayTypeMagic.DList._h19(#ArrayTypeMagic.DList.Cons(a#77#0#0, a#77#1#0, a#77#2#0))
     == a#77#0#0);

// Inductive rank
axiom (forall a#78#0#0: Box, a#78#1#0: Box, a#78#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#78#0#0, a#78#1#0, a#78#2#0) } 
  BoxRank(a#78#0#0)
     < DtRank(#ArrayTypeMagic.DList.Cons(a#78#0#0, a#78#1#0, a#78#2#0)));

function ArrayTypeMagic.DList._h20(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#79#0#0: Box, a#79#1#0: Box, a#79#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#79#0#0, a#79#1#0, a#79#2#0) } 
  ArrayTypeMagic.DList._h20(#ArrayTypeMagic.DList.Cons(a#79#0#0, a#79#1#0, a#79#2#0))
     == a#79#1#0);

// Inductive rank
axiom (forall a#80#0#0: Box, a#80#1#0: Box, a#80#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#80#0#0, a#80#1#0, a#80#2#0) } 
  BoxRank(a#80#1#0)
     < DtRank(#ArrayTypeMagic.DList.Cons(a#80#0#0, a#80#1#0, a#80#2#0)));

function ArrayTypeMagic.DList._h21(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#81#0#0: Box, a#81#1#0: Box, a#81#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#81#0#0, a#81#1#0, a#81#2#0) } 
  ArrayTypeMagic.DList._h21(#ArrayTypeMagic.DList.Cons(a#81#0#0, a#81#1#0, a#81#2#0))
     == a#81#2#0);

// Inductive rank
axiom (forall a#82#0#0: Box, a#82#1#0: Box, a#82#2#0: DatatypeType :: 
  { #ArrayTypeMagic.DList.Cons(a#82#0#0, a#82#1#0, a#82#2#0) } 
  DtRank(a#82#2#0)
     < DtRank(#ArrayTypeMagic.DList.Cons(a#82#0#0, a#82#1#0, a#82#2#0)));

// Depth-one case-split function
function $IsA#ArrayTypeMagic.DList(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ArrayTypeMagic.DList(d) } 
  $IsA#ArrayTypeMagic.DList(d)
     ==> ArrayTypeMagic.DList.Nil_q(d) || ArrayTypeMagic.DList.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall ArrayTypeMagic.DList$T: Ty, ArrayTypeMagic.DList$U: Ty, d: DatatypeType :: 
  { ArrayTypeMagic.DList.Cons_q(d), $Is(d, Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)) } 
    { ArrayTypeMagic.DList.Nil_q(d), $Is(d, Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U)) } 
  $Is(d, Tclass.ArrayTypeMagic.DList(ArrayTypeMagic.DList$T, ArrayTypeMagic.DList$U))
     ==> ArrayTypeMagic.DList.Nil_q(d) || ArrayTypeMagic.DList.Cons_q(d));

// Datatype extensional equality declaration
function ArrayTypeMagic.DList#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ArrayTypeMagic.DList.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.DList#Equal(a, b), ArrayTypeMagic.DList.Nil_q(a) } 
    { ArrayTypeMagic.DList#Equal(a, b), ArrayTypeMagic.DList.Nil_q(b) } 
  ArrayTypeMagic.DList.Nil_q(a) && ArrayTypeMagic.DList.Nil_q(b)
     ==> (ArrayTypeMagic.DList#Equal(a, b)
       <==> ArrayTypeMagic.Cell#Equal(ArrayTypeMagic.DList._h18(a), ArrayTypeMagic.DList._h18(b))));

// Datatype extensional equality definition: #ArrayTypeMagic.DList.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.DList#Equal(a, b), ArrayTypeMagic.DList.Cons_q(a) } 
    { ArrayTypeMagic.DList#Equal(a, b), ArrayTypeMagic.DList.Cons_q(b) } 
  ArrayTypeMagic.DList.Cons_q(a) && ArrayTypeMagic.DList.Cons_q(b)
     ==> (ArrayTypeMagic.DList#Equal(a, b)
       <==> ArrayTypeMagic.DList._h19(a) == ArrayTypeMagic.DList._h19(b)
         && ArrayTypeMagic.DList._h20(a) == ArrayTypeMagic.DList._h20(b)
         && ArrayTypeMagic.DList#Equal(ArrayTypeMagic.DList._h21(a), ArrayTypeMagic.DList._h21(b))));

// Datatype extensionality axiom: ArrayTypeMagic.DList
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ArrayTypeMagic.DList#Equal(a, b) } 
  ArrayTypeMagic.DList#Equal(a, b) <==> a == b);

const unique class.ArrayTypeMagic.DList: ClassName;

const unique class.ParseGenerics.__default: ClassName;

// function declaration for ParseGenerics._default.F
function ParseGenerics.__default.F(ParseGenerics._default.F$X: Ty, x#0: Box) : int;

function ParseGenerics.__default.F#canCall(ParseGenerics._default.F$X: Ty, x#0: Box) : bool;

function ParseGenerics.__default.F#requires(Ty, Box) : bool;

// #requires axiom for ParseGenerics.__default.F
axiom (forall ParseGenerics._default.F$X: Ty, x#0: Box :: 
  { ParseGenerics.__default.F#requires(ParseGenerics._default.F$X, x#0) } 
  $IsBox(x#0, ParseGenerics._default.F$X)
     ==> ParseGenerics.__default.F#requires(ParseGenerics._default.F$X, x#0) == true);

// function declaration for ParseGenerics._default.Many
function ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0: Ty, $ly: LayerType, n#0: DatatypeType) : int;

function ParseGenerics.__default.Many#canCall(ParseGenerics._default.Many$_T0: Ty, n#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall ParseGenerics._default.Many$_T0: Ty, $ly: LayerType, n#0: DatatypeType :: 
  { ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $LS($ly), n#0) } 
  ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $LS($ly), n#0)
     == ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $ly, n#0));

// fuel synonym axiom
axiom (forall ParseGenerics._default.Many$_T0: Ty, $ly: LayerType, n#0: DatatypeType :: 
  { ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, AsFuelBottom($ly), n#0) } 
  ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $ly, n#0)
     == ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $LZ, n#0));

function Tclass.ParseGenerics.List(Ty) : Ty;

const unique Tagclass.ParseGenerics.List: TyTag;

// Tclass.ParseGenerics.List Tag
axiom (forall ParseGenerics.List$Y: Ty :: 
  { Tclass.ParseGenerics.List(ParseGenerics.List$Y) } 
  Tag(Tclass.ParseGenerics.List(ParseGenerics.List$Y))
       == Tagclass.ParseGenerics.List
     && TagFamily(Tclass.ParseGenerics.List(ParseGenerics.List$Y)) == tytagFamily$List);

function Tclass.ParseGenerics.List_0(Ty) : Ty;

// Tclass.ParseGenerics.List injectivity 0
axiom (forall ParseGenerics.List$Y: Ty :: 
  { Tclass.ParseGenerics.List(ParseGenerics.List$Y) } 
  Tclass.ParseGenerics.List_0(Tclass.ParseGenerics.List(ParseGenerics.List$Y))
     == ParseGenerics.List$Y);

// Box/unbox axiom for Tclass.ParseGenerics.List
axiom (forall ParseGenerics.List$Y: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.ParseGenerics.List(ParseGenerics.List$Y)) } 
  $IsBox(bx, Tclass.ParseGenerics.List(ParseGenerics.List$Y))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ParseGenerics.List(ParseGenerics.List$Y)));

function ParseGenerics.__default.Many#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for ParseGenerics.__default.Many
axiom (forall ParseGenerics._default.Many$_T0: Ty, $ly: LayerType, n#0: DatatypeType :: 
  { ParseGenerics.__default.Many#requires(ParseGenerics._default.Many$_T0, $ly, n#0) } 
  $Is(n#0, Tclass.ParseGenerics.List(ParseGenerics._default.Many$_T0))
     ==> ParseGenerics.__default.Many#requires(ParseGenerics._default.Many$_T0, $ly, n#0)
       == true);

// definition axiom for ParseGenerics.__default.Many (revealed)
axiom {:id "id336"} (forall ParseGenerics._default.Many$_T0: Ty, $ly: LayerType, n#0: DatatypeType :: 
  { ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $LS($ly), n#0) } 
  ParseGenerics.__default.Many#canCall(ParseGenerics._default.Many$_T0, n#0)
       || $Is(n#0, Tclass.ParseGenerics.List(ParseGenerics._default.Many$_T0))
     ==> (!ParseGenerics.List.Nil_q(n#0)
         ==> (var tail#5 := ParseGenerics.List._h23(n#0); 
          ParseGenerics.__default.Many#canCall(ParseGenerics._default.Many$_T0, tail#5)))
       && ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $LS($ly), n#0)
         == (if ParseGenerics.List.Nil_q(n#0)
           then 18
           else (var tail#4 := ParseGenerics.List._h23(n#0); 
            ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $ly, tail#4))));

// definition axiom for ParseGenerics.__default.Many for all literals (revealed)
axiom {:id "id337"} (forall ParseGenerics._default.Many$_T0: Ty, $ly: LayerType, n#0: DatatypeType :: 
  {:weight 3} { ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $LS($ly), Lit(n#0)) } 
  ParseGenerics.__default.Many#canCall(ParseGenerics._default.Many$_T0, Lit(n#0))
       || $Is(n#0, Tclass.ParseGenerics.List(ParseGenerics._default.Many$_T0))
     ==> (!Lit(ParseGenerics.List.Nil_q(Lit(n#0)))
         ==> (var tail#7 := Lit(ParseGenerics.List._h23(Lit(n#0))); 
          ParseGenerics.__default.Many#canCall(ParseGenerics._default.Many$_T0, tail#7)))
       && ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $LS($ly), Lit(n#0))
         == (if ParseGenerics.List.Nil_q(Lit(n#0))
           then 18
           else (var tail#6 := Lit(ParseGenerics.List._h23(Lit(n#0))); 
            LitInt(ParseGenerics.__default.Many(ParseGenerics._default.Many$_T0, $LS($ly), tail#6)))));

const unique class.ParseGenerics.MyType: ClassName;

// Constructor function declaration
function #ParseGenerics.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#ParseGenerics.List.Nil()) == ##ParseGenerics.List.Nil;
// Constructor literal
axiom #ParseGenerics.List.Nil() == Lit(#ParseGenerics.List.Nil());
}

const unique ##ParseGenerics.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#ParseGenerics.List.Nil()) == ##ParseGenerics.List.Nil;
}

function ParseGenerics.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ParseGenerics.List.Nil_q(d) } 
  ParseGenerics.List.Nil_q(d) <==> DatatypeCtorId(d) == ##ParseGenerics.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ParseGenerics.List.Nil_q(d) } 
  ParseGenerics.List.Nil_q(d) ==> d == #ParseGenerics.List.Nil());

// Constructor $Is
axiom (forall ParseGenerics.List$Y: Ty :: 
  { $Is(#ParseGenerics.List.Nil(), Tclass.ParseGenerics.List(ParseGenerics.List$Y)) } 
  $Is(#ParseGenerics.List.Nil(), Tclass.ParseGenerics.List(ParseGenerics.List$Y)));

// Constructor $IsAlloc
axiom (forall ParseGenerics.List$Y: Ty, $h: Heap :: 
  { $IsAlloc(#ParseGenerics.List.Nil(), Tclass.ParseGenerics.List(ParseGenerics.List$Y), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#ParseGenerics.List.Nil(), Tclass.ParseGenerics.List(ParseGenerics.List$Y), $h));

// Constructor function declaration
function #ParseGenerics.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##ParseGenerics.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #ParseGenerics.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#ParseGenerics.List.Cons(a#4#0#0, a#4#1#0))
     == ##ParseGenerics.List.Cons);
}

function ParseGenerics.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ParseGenerics.List.Cons_q(d) } 
  ParseGenerics.List.Cons_q(d) <==> DatatypeCtorId(d) == ##ParseGenerics.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ParseGenerics.List.Cons_q(d) } 
  ParseGenerics.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #ParseGenerics.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall ParseGenerics.List$Y: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#ParseGenerics.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.ParseGenerics.List(ParseGenerics.List$Y)) } 
  $Is(#ParseGenerics.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.ParseGenerics.List(ParseGenerics.List$Y))
     <==> $IsBox(a#6#0#0, ParseGenerics.List$Y)
       && $Is(a#6#1#0, Tclass.ParseGenerics.List(ParseGenerics.List$Y)));

// Constructor $IsAlloc
axiom (forall ParseGenerics.List$Y: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#ParseGenerics.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.ParseGenerics.List(ParseGenerics.List$Y), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#ParseGenerics.List.Cons(a#6#0#0, a#6#1#0), 
        Tclass.ParseGenerics.List(ParseGenerics.List$Y), 
        $h)
       <==> $IsAllocBox(a#6#0#0, ParseGenerics.List$Y, $h)
         && $IsAlloc(a#6#1#0, Tclass.ParseGenerics.List(ParseGenerics.List$Y), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ParseGenerics.List$Y: Ty, $h: Heap :: 
  { $IsAllocBox(ParseGenerics.List._h22(d), ParseGenerics.List$Y, $h) } 
  $IsGoodHeap($h)
       && 
      ParseGenerics.List.Cons_q(d)
       && $IsAlloc(d, Tclass.ParseGenerics.List(ParseGenerics.List$Y), $h)
     ==> $IsAllocBox(ParseGenerics.List._h22(d), ParseGenerics.List$Y, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, ParseGenerics.List$Y: Ty, $h: Heap :: 
  { $IsAlloc(ParseGenerics.List._h23(d), Tclass.ParseGenerics.List(ParseGenerics.List$Y), $h) } 
  $IsGoodHeap($h)
       && 
      ParseGenerics.List.Cons_q(d)
       && $IsAlloc(d, Tclass.ParseGenerics.List(ParseGenerics.List$Y), $h)
     ==> $IsAlloc(ParseGenerics.List._h23(d), Tclass.ParseGenerics.List(ParseGenerics.List$Y), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #ParseGenerics.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #ParseGenerics.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#ParseGenerics.List.Cons(a#7#0#0, a#7#1#0)));

function ParseGenerics.List._h22(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #ParseGenerics.List.Cons(a#8#0#0, a#8#1#0) } 
  ParseGenerics.List._h22(#ParseGenerics.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #ParseGenerics.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#ParseGenerics.List.Cons(a#9#0#0, a#9#1#0)));

function ParseGenerics.List._h23(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #ParseGenerics.List.Cons(a#10#0#0, a#10#1#0) } 
  ParseGenerics.List._h23(#ParseGenerics.List.Cons(a#10#0#0, a#10#1#0))
     == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #ParseGenerics.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#ParseGenerics.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#ParseGenerics.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ParseGenerics.List(d) } 
  $IsA#ParseGenerics.List(d)
     ==> ParseGenerics.List.Nil_q(d) || ParseGenerics.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall ParseGenerics.List$Y: Ty, d: DatatypeType :: 
  { ParseGenerics.List.Cons_q(d), $Is(d, Tclass.ParseGenerics.List(ParseGenerics.List$Y)) } 
    { ParseGenerics.List.Nil_q(d), $Is(d, Tclass.ParseGenerics.List(ParseGenerics.List$Y)) } 
  $Is(d, Tclass.ParseGenerics.List(ParseGenerics.List$Y))
     ==> ParseGenerics.List.Nil_q(d) || ParseGenerics.List.Cons_q(d));

// Datatype extensional equality declaration
function ParseGenerics.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ParseGenerics.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ParseGenerics.List#Equal(a, b), ParseGenerics.List.Nil_q(a) } 
    { ParseGenerics.List#Equal(a, b), ParseGenerics.List.Nil_q(b) } 
  ParseGenerics.List.Nil_q(a) && ParseGenerics.List.Nil_q(b)
     ==> ParseGenerics.List#Equal(a, b));

// Datatype extensional equality definition: #ParseGenerics.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ParseGenerics.List#Equal(a, b), ParseGenerics.List.Cons_q(a) } 
    { ParseGenerics.List#Equal(a, b), ParseGenerics.List.Cons_q(b) } 
  ParseGenerics.List.Cons_q(a) && ParseGenerics.List.Cons_q(b)
     ==> (ParseGenerics.List#Equal(a, b)
       <==> ParseGenerics.List._h22(a) == ParseGenerics.List._h22(b)
         && ParseGenerics.List#Equal(ParseGenerics.List._h23(a), ParseGenerics.List._h23(b))));

// Datatype extensionality axiom: ParseGenerics.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ParseGenerics.List#Equal(a, b) } 
  ParseGenerics.List#Equal(a, b) <==> a == b);

const unique class.ParseGenerics.List: ClassName;

const unique class.TypeSubstitutionInModifiesClause.__default: ClassName;

const unique class.TypeSubstitutionInModifiesClause.C?: ClassName;

function Tclass.TypeSubstitutionInModifiesClause.C?(Ty) : Ty;

const unique Tagclass.TypeSubstitutionInModifiesClause.C?: TyTag;

// Tclass.TypeSubstitutionInModifiesClause.C? Tag
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty :: 
  { Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T) } 
  Tag(Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T))
       == Tagclass.TypeSubstitutionInModifiesClause.C?
     && TagFamily(Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T))
       == tytagFamily$C);

function Tclass.TypeSubstitutionInModifiesClause.C?_0(Ty) : Ty;

// Tclass.TypeSubstitutionInModifiesClause.C? injectivity 0
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty :: 
  { Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T) } 
  Tclass.TypeSubstitutionInModifiesClause.C?_0(Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T))
     == TypeSubstitutionInModifiesClause.C$T);

// Box/unbox axiom for Tclass.TypeSubstitutionInModifiesClause.C?
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T)) } 
  $IsBox(bx, 
      Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T)));

// $Is axiom for class C
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty, $o: ref :: 
  { $Is($o, 
      Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T)) } 
  $Is($o, 
      Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T))
     <==> $o == null
       || dtype($o)
         == Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T));

// $IsAlloc axiom for class C
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, 
      Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T), 
      $h) } 
  $IsAlloc($o, 
      Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T), 
      $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function TypeSubstitutionInModifiesClause.C.Repr(TypeSubstitutionInModifiesClause.C$T: Ty, this: ref) : Set;

// C.Repr: Type axiom
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty, $o: ref :: 
  { TypeSubstitutionInModifiesClause.C.Repr(TypeSubstitutionInModifiesClause.C$T, $o) } 
  $o != null
       && dtype($o)
         == Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T)
     ==> $Is(TypeSubstitutionInModifiesClause.C.Repr(TypeSubstitutionInModifiesClause.C$T, $o), 
      TSet(Tclass._System.object())));

// C.Repr: Allocation axiom
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty, $h: Heap, $o: ref :: 
  { TypeSubstitutionInModifiesClause.C.Repr(TypeSubstitutionInModifiesClause.C$T, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o)
         == Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(TypeSubstitutionInModifiesClause.C.Repr(TypeSubstitutionInModifiesClause.C$T, $o), 
      TSet(Tclass._System.object()), 
      $h));

function Tclass.TypeSubstitutionInModifiesClause.C(Ty) : Ty;

const unique Tagclass.TypeSubstitutionInModifiesClause.C: TyTag;

// Tclass.TypeSubstitutionInModifiesClause.C Tag
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty :: 
  { Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T) } 
  Tag(Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T))
       == Tagclass.TypeSubstitutionInModifiesClause.C
     && TagFamily(Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T))
       == tytagFamily$C);

function Tclass.TypeSubstitutionInModifiesClause.C_0(Ty) : Ty;

// Tclass.TypeSubstitutionInModifiesClause.C injectivity 0
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty :: 
  { Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T) } 
  Tclass.TypeSubstitutionInModifiesClause.C_0(Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T))
     == TypeSubstitutionInModifiesClause.C$T);

// Box/unbox axiom for Tclass.TypeSubstitutionInModifiesClause.C
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T)) } 
  $IsBox(bx, 
      Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T)));

// $Is axiom for non-null type TypeSubstitutionInModifiesClause.C
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty, c#0: ref :: 
  { $Is(c#0, 
      Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T)) } 
    { $Is(c#0, 
      Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T)) } 
  $Is(c#0, 
      Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T))
     <==> $Is(c#0, 
        Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T))
       && c#0 != null);

// $IsAlloc axiom for non-null type TypeSubstitutionInModifiesClause.C
axiom (forall TypeSubstitutionInModifiesClause.C$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, 
      Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T), 
      $h) } 
    { $IsAlloc(c#0, 
      Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T), 
      $h) } 
  $IsAlloc(c#0, 
      Tclass.TypeSubstitutionInModifiesClause.C(TypeSubstitutionInModifiesClause.C$T), 
      $h)
     <==> $IsAlloc(c#0, 
      Tclass.TypeSubstitutionInModifiesClause.C?(TypeSubstitutionInModifiesClause.C$T), 
      $h));

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

const unique tytagFamily$array2: TyTagFamily;

const unique tytagFamily$array3: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$TyKn_K: TyTagFamily;

const unique tytagFamily$TyKn_C: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Pair: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$SetTest: TyTagFamily;

const unique tytagFamily$SequenceTest: TyTagFamily;

const unique tytagFamily$CC: TyTagFamily;

const unique tytagFamily$CClient: TyTagFamily;

const unique tytagFamily$wrap: TyTagFamily;

const unique tytagFamily$wrap2: TyTagFamily;

const unique tytagFamily$ArrayCubeTree: TyTagFamily;

const unique tytagFamily$AnotherACT: TyTagFamily;

const unique tytagFamily$OneMoreACT: TyTagFamily;

const unique tytagFamily$Nat: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$DList: TyTagFamily;

const unique field$x: NameFamily;
