// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy

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

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 2 == $FunctionContextHeight;
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
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.MyIter(Ty) : Ty;

const unique Tagclass._module.MyIter: TyTag;

// Tclass._module.MyIter Tag
axiom (forall _module.MyIter$T: Ty :: 
  { Tclass._module.MyIter(_module.MyIter$T) } 
  Tag(Tclass._module.MyIter(_module.MyIter$T)) == Tagclass._module.MyIter
     && TagFamily(Tclass._module.MyIter(_module.MyIter$T)) == tytagFamily$MyIter);

function Tclass._module.MyIter_0(Ty) : Ty;

// Tclass._module.MyIter injectivity 0
axiom (forall _module.MyIter$T: Ty :: 
  { Tclass._module.MyIter(_module.MyIter$T) } 
  Tclass._module.MyIter_0(Tclass._module.MyIter(_module.MyIter$T))
     == _module.MyIter$T);

// Box/unbox axiom for Tclass._module.MyIter
axiom (forall _module.MyIter$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.MyIter(_module.MyIter$T)) } 
  $IsBox(bx, Tclass._module.MyIter(_module.MyIter$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.MyIter(_module.MyIter$T)));

function Tclass._module.MyIntIter() : Ty
uses {
// Tclass._module.MyIntIter Tag
axiom Tag(Tclass._module.MyIntIter()) == Tagclass._module.MyIntIter
   && TagFamily(Tclass._module.MyIntIter()) == tytagFamily$MyIntIter;
}

const unique Tagclass._module.MyIntIter: TyTag;

// Box/unbox axiom for Tclass._module.MyIntIter
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyIntIter()) } 
  $IsBox(bx, Tclass._module.MyIntIter())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyIntIter()));

function Tclass._module.MyIntIter?() : Ty
uses {
// Tclass._module.MyIntIter? Tag
axiom Tag(Tclass._module.MyIntIter?()) == Tagclass._module.MyIntIter?
   && TagFamily(Tclass._module.MyIntIter?()) == tytagFamily$MyIntIter;
}

const unique Tagclass._module.MyIntIter?: TyTag;

// Box/unbox axiom for Tclass._module.MyIntIter?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.MyIntIter?()) } 
  $IsBox(bx, Tclass._module.MyIntIter?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.MyIntIter?()));

function Tclass._module.Naturals() : Ty
uses {
// Tclass._module.Naturals Tag
axiom Tag(Tclass._module.Naturals()) == Tagclass._module.Naturals
   && TagFamily(Tclass._module.Naturals()) == tytagFamily$Naturals;
}

const unique Tagclass._module.Naturals: TyTag;

// Box/unbox axiom for Tclass._module.Naturals
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Naturals()) } 
  $IsBox(bx, Tclass._module.Naturals())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Naturals()));

function Tclass._module.Naturals?() : Ty
uses {
// Tclass._module.Naturals? Tag
axiom Tag(Tclass._module.Naturals?()) == Tagclass._module.Naturals?
   && TagFamily(Tclass._module.Naturals?()) == tytagFamily$Naturals;
}

const unique Tagclass._module.Naturals?: TyTag;

// Box/unbox axiom for Tclass._module.Naturals?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Naturals?()) } 
  $IsBox(bx, Tclass._module.Naturals?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Naturals?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#m#0: bool;
  var m#0: ref
     where defass#m#0
       ==> $Is(m#0, Tclass._module.MyIter(TInt))
         && $IsAlloc(m#0, Tclass._module.MyIter(TInt), $Heap);
  var $nw: ref;
  var q##0: int;
  var a#0: int;
  var mer#0: bool;
  var $rhs##0: bool;
  var $rhs##1_0: bool;
  var $rhs##1_1: bool;
  var defass#n#0: bool;
  var n#0: ref
     where defass#n#0
       ==> $Is(n#0, Tclass._module.MyIntIter())
         && $IsAlloc(n#0, Tclass._module.MyIntIter(), $Heap);
  var patience#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var more#2_0: bool;
  var $rhs##2_0: bool;
  var defass#o#0: bool;
  var o#0: ref
     where defass#o#0
       ==> $Is(o#0, Tclass._module.Naturals())
         && $IsAlloc(o#0, Tclass._module.Naturals(), $Heap);
  var u##0: int;
  var remaining#0: int;
  var $PreLoopHeap$loop#1: Heap;
  var $decr_init$loop#10: int;
  var $w$loop#1: bool;
  var $decr$loop#10: int;
  var more#3_0: bool;
  var $rhs##3_0: bool;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(30,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(30,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    q##0 := LitInt(12);
    call {:id "id458"} $nw := Call$$_module.MyIter.__ctor(TInt, $Box(q##0));
    // TrCallStmt: After ProcessCallStmt
    m#0 := $nw;
    defass#m#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(31,3)
    assert {:id "id460"} defass#m#0;
    assert {:id "id461"} {:subsumption 0} m#0 != null;
    assert {:id "id462"} defass#m#0;
    assert {:id "id463"} {:subsumption 0} m#0 != null;
    if (Seq#Equal($Unbox(read($Heap, m#0, _module.MyIter.ys)): Seq, 
      $Unbox(read($Heap, m#0, _module.MyIter.xs)): Seq))
    {
        assert {:id "id464"} defass#m#0;
        assert {:id "id465"} {:subsumption 0} m#0 != null;
    }

    assume true;
    assert {:id "id466"} {:subsumption 0} Seq#Equal($Unbox(read($Heap, m#0, _module.MyIter.ys)): Seq, 
      $Unbox(read($Heap, m#0, _module.MyIter.xs)): Seq);
    assert {:id "id467"} {:subsumption 0} Seq#Equal($Unbox(read($Heap, m#0, _module.MyIter.xs)): Seq, Seq#Empty(): Seq);
    assume {:id "id468"} Seq#Equal($Unbox(read($Heap, m#0, _module.MyIter.ys)): Seq, 
        $Unbox(read($Heap, m#0, _module.MyIter.xs)): Seq)
       && Seq#Equal($Unbox(read($Heap, m#0, _module.MyIter.xs)): Seq, Seq#Empty(): Seq);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(32,9)
    assume true;
    assert {:id "id469"} defass#m#0;
    assert {:id "id470"} m#0 != null;
    assume true;
    a#0 := $Unbox(read($Heap, m#0, _module.MyIter.x)): int;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(33,3)
    assume true;
    if (a#0 <= LitInt(13))
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(34,5)
        assume true;
        assert {:id "id472"} defass#m#0;
        assert {:id "id473"} {:subsumption 0} m#0 != null;
        assume true;
        assume true;
        pop;
    }
    else
    {
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(37,24)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id474"} defass#m#0;
    assume true;
    assert {:id "id475"} m#0 != null;
    assert {:id "id476"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == m#0
             || Set#IsMember(_module.MyIter.__modifies(m#0), $Box($o))
             || Set#IsMember($Unbox(read($Heap, m#0, _module.MyIter.__new)): Set, $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id477"} $rhs##0 := Call$$_module.MyIter.MoveNext(TInt, m#0);
    // TrCallStmt: After ProcessCallStmt
    mer#0 := $rhs##0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(38,3)
    assume true;
    if (mer#0)
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(39,22)
        assume true;
        // TrCallStmt: Adding lhs with type bool
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id479"} defass#m#0;
        assume true;
        assert {:id "id480"} m#0 != null;
        assert {:id "id481"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && (
                $o == m#0
                 || Set#IsMember(_module.MyIter.__modifies(m#0), $Box($o))
                 || Set#IsMember($Unbox(read($Heap, m#0, _module.MyIter.__new)): Set, $Box($o)))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id482"} $rhs##1_0 := Call$$_module.MyIter.MoveNext(TInt, m#0);
        // TrCallStmt: After ProcessCallStmt
        mer#0 := $rhs##1_0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(40,22)
        assume true;
        // TrCallStmt: Adding lhs with type bool
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id484"} defass#m#0;
        assume true;
        assert {:id "id485"} m#0 != null;
        assert {:id "id486"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && (
                $o == m#0
                 || Set#IsMember(_module.MyIter.__modifies(m#0), $Box($o))
                 || Set#IsMember($Unbox(read($Heap, m#0, _module.MyIter.__new)): Set, $Box($o)))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id487"} $rhs##1_1 := Call$$_module.MyIter.MoveNext(TInt, m#0);
        // TrCallStmt: After ProcessCallStmt
        mer#0 := $rhs##1_1;
        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(43,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(43,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id489"} $nw := Call$$_module.MyIntIter.__ctor();
    // TrCallStmt: After ProcessCallStmt
    n#0 := $nw;
    defass#n#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(44,16)
    assume true;
    assume true;
    patience#0 := LitInt(10);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(45,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if patience#0 <= LitInt(0) then 0 - patience#0 else patience#0 - 0);
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> _module.MyIntIter.Valid#canCall($Heap, n#0);
      invariant {:id "id497"} $w$loop#0 ==> _module.MyIntIter.Valid($Heap, n#0);
      invariant {:id "id498"} $w$loop#0
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, n#0, _module.MyIntIter.__new)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, n#0, _module.MyIntIter.__new)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, n#0, _module.MyIntIter.__new)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
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
      free invariant (if patience#0 <= LitInt(0) then 0 - patience#0 else patience#0 - 0)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id492"} defass#n#0;
            assert {:id "id493"} {:subsumption 0} n#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(n#0), Tclass._module.MyIntIter?(), $Heap);
            assume _module.MyIntIter.Valid#canCall($Heap, n#0);
            if (_module.MyIntIter.Valid($Heap, n#0))
            {
                assert {:id "id494"} defass#n#0;
                assert {:id "id495"} {:subsumption 0} n#0 != null;
            }

            assume _module.MyIntIter.Valid#canCall($Heap, n#0);
            assume {:id "id496"} _module.MyIntIter.Valid($Heap, n#0)
               && 
              (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, n#0, _module.MyIntIter.__new)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, n#0, _module.MyIntIter.__new)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, n#0, _module.MyIntIter.__new)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
            if (patience#0 <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (patience#0 == 0)
        {
            break;
        }

        $decr$loop#00 := (if patience#0 <= LitInt(0) then 0 - patience#0 else patience#0 - 0);
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(48,27)
        assume true;
        // TrCallStmt: Adding lhs with type bool
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id499"} defass#n#0;
        assume true;
        assert {:id "id500"} n#0 != null;
        assert {:id "id501"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && (
                $o == n#0
                 || Set#IsMember(_module.MyIntIter.__modifies(n#0), $Box($o))
                 || Set#IsMember($Unbox(read($Heap, n#0, _module.MyIntIter.__new)): Set, $Box($o)))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id502"} $rhs##2_0 := Call$$_module.MyIntIter.MoveNext(n#0);
        // TrCallStmt: After ProcessCallStmt
        more#2_0 := $rhs##2_0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(49,5)
        assume true;
        if (!more#2_0)
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(49,18)
            pop;
            pop;
            goto after_0;

            pop;
        }
        else
        {
        }

        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(50,5)
        assert {:id "id504"} defass#n#0;
        assert {:id "id505"} {:subsumption 0} n#0 != null;
        assume true;
        assume true;
        assert {:id "id506"} defass#n#0;
        assert {:id "id507"} {:subsumption 0} n#0 != null;
        assume true;
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(51,14)
        assume true;
        assume true;
        patience#0 := patience#0 - 1;
        pop;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(45,3)
        assert {:id "id509"} 0 <= $decr$loop#00
           || (if patience#0 <= LitInt(0) then 0 - patience#0 else patience#0 - 0)
             == $decr$loop#00;
        assert {:id "id510"} (if patience#0 <= LitInt(0) then 0 - patience#0 else patience#0 - 0)
           < $decr$loop#00;
        assume _module.MyIntIter.Valid#canCall($Heap, n#0);
    }

  after_0:
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(54,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(54,12)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := LitInt(18);
    call {:id "id511"} $nw := Call$$_module.Naturals.__ctor(u##0);
    // TrCallStmt: After ProcessCallStmt
    o#0 := $nw;
    defass#o#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(55,17)
    assume true;
    assume true;
    remaining#0 := LitInt(100);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(56,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#1 := $Heap;
    $decr_init$loop#10 := (if remaining#0 <= LitInt(0) then 0 - remaining#0 else remaining#0 - 0);
    havoc $w$loop#1;
    while (true)
      free invariant $w$loop#1 ==> _module.Naturals.Valid#canCall($Heap, o#0);
      invariant {:id "id519"} $w$loop#1 ==> _module.Naturals.Valid($Heap, o#0);
      invariant {:id "id520"} $w$loop#1
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, o#0, _module.Naturals.__new)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, o#0, _module.Naturals.__new)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, o#0, _module.Naturals.__new)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
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
      free invariant (if remaining#0 <= LitInt(0) then 0 - remaining#0 else remaining#0 - 0)
         <= $decr_init$loop#10;
    {
        if (!$w$loop#1)
        {
            assert {:id "id514"} defass#o#0;
            assert {:id "id515"} {:subsumption 0} o#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(o#0), Tclass._module.Naturals?(), $Heap);
            assume _module.Naturals.Valid#canCall($Heap, o#0);
            if (_module.Naturals.Valid($Heap, o#0))
            {
                assert {:id "id516"} defass#o#0;
                assert {:id "id517"} {:subsumption 0} o#0 != null;
            }

            assume _module.Naturals.Valid#canCall($Heap, o#0);
            assume {:id "id518"} _module.Naturals.Valid($Heap, o#0)
               && 
              (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, o#0, _module.Naturals.__new)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, o#0, _module.Naturals.__new)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, o#0, _module.Naturals.__new)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
            if (remaining#0 <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (remaining#0 == 0)
        {
            break;
        }

        $decr$loop#10 := (if remaining#0 <= LitInt(0) then 0 - remaining#0 else remaining#0 - 0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(59,27)
        assume true;
        // TrCallStmt: Adding lhs with type bool
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id521"} defass#o#0;
        assume true;
        assert {:id "id522"} o#0 != null;
        assert {:id "id523"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && (
                $o == o#0
                 || Set#IsMember(_module.Naturals.__modifies(o#0), $Box($o))
                 || Set#IsMember($Unbox(read($Heap, o#0, _module.Naturals.__new)): Set, $Box($o)))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id524"} $rhs##3_0 := Call$$_module.Naturals.MoveNext(o#0);
        // TrCallStmt: After ProcessCallStmt
        more#3_0 := $rhs##3_0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(60,5)
        assume true;
        assert {:id "id526"} more#3_0;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(61,5)
        assert {:id "id527"} defass#o#0;
        assert {:id "id528"} {:subsumption 0} o#0 != null;
        assume true;
        assume true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(62,15)
        assume true;
        assume true;
        remaining#0 := remaining#0 - 1;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(63,5)
        assert {:id "id530"} LitInt(10) != 0;
        assume true;
        if (Mod(remaining#0, LitInt(10)) == LitInt(0))
        {
            // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(63,32)
            assume true;
        }
        else
        {
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(56,3)
        assert {:id "id531"} 0 <= $decr$loop#10
           || (if remaining#0 <= LitInt(0) then 0 - remaining#0 else remaining#0 - 0)
             == $decr$loop#10;
        assert {:id "id532"} (if remaining#0 <= LitInt(0) then 0 - remaining#0 else remaining#0 - 0)
           < $decr$loop#10;
        assume _module.Naturals.Valid#canCall($Heap, o#0);
    }
}



procedure {:verboseName "TestIterA (well-formedness)"} CheckWellFormed$$_module.__default.TestIterA();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestIterA (call)"} Call$$_module.__default.TestIterA();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestIterA (correctness)"} Impl$$_module.__default.TestIterA() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

function Tclass._module.IterA() : Ty
uses {
// Tclass._module.IterA Tag
axiom Tag(Tclass._module.IterA()) == Tagclass._module.IterA
   && TagFamily(Tclass._module.IterA()) == tytagFamily$IterA;
}

const unique Tagclass._module.IterA: TyTag;

// Box/unbox axiom for Tclass._module.IterA
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.IterA()) } 
  $IsBox(bx, Tclass._module.IterA())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.IterA()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestIterA (correctness)"} Impl$$_module.__default.TestIterA() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap);
  var $nw: ref;
  var defass#iter#0: bool;
  var iter#0: ref
     where defass#iter#0
       ==> $Is(iter#0, Tclass._module.IterA())
         && $IsAlloc(iter#0, Tclass._module.IterA(), $Heap);
  var c##0: ref;
  var tmp#0: int;
  var more#0: bool;
  var $rhs##0: bool;

    // AddMethodImpl: TestIterA, Impl$$_module.__default.TestIterA
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(85,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(86,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(86,15)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id534"} defass#c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    call {:id "id535"} $nw := Call$$_module.IterA.__ctor(c##0);
    // TrCallStmt: After ProcessCallStmt
    iter#0 := $nw;
    defass#iter#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(87,11)
    assume true;
    assert {:id "id537"} defass#c#0;
    assert {:id "id538"} c#0 != null;
    assume true;
    tmp#0 := $Unbox(read($Heap, c#0, _module.Cell.data)): int;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(88,28)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id540"} defass#iter#0;
    assume true;
    assert {:id "id541"} iter#0 != null;
    assert {:id "id542"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == iter#0
             || Set#IsMember(_module.IterA.__modifies(iter#0), $Box($o))
             || Set#IsMember($Unbox(read($Heap, iter#0, _module.IterA.__new)): Set, $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id543"} $rhs##0 := Call$$_module.IterA.MoveNext(iter#0);
    // TrCallStmt: After ProcessCallStmt
    more#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(89,3)
    assert {:id "id545"} defass#c#0;
    assert {:id "id546"} {:subsumption 0} c#0 != null;
    assume true;
    assert {:id "id547"} tmp#0 == $Unbox(read($Heap, c#0, _module.Cell.data)): int;
}



procedure {:verboseName "TestIterB (well-formedness)"} CheckWellFormed$$_module.__default.TestIterB();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestIterB (call)"} Call$$_module.__default.TestIterB();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestIterB (correctness)"} Impl$$_module.__default.TestIterB() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.IterB() : Ty
uses {
// Tclass._module.IterB Tag
axiom Tag(Tclass._module.IterB()) == Tagclass._module.IterB
   && TagFamily(Tclass._module.IterB()) == tytagFamily$IterB;
}

const unique Tagclass._module.IterB: TyTag;

// Box/unbox axiom for Tclass._module.IterB
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.IterB()) } 
  $IsBox(bx, Tclass._module.IterB())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.IterB()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestIterB (correctness)"} Impl$$_module.__default.TestIterB() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap);
  var $nw: ref;
  var defass#iter#0: bool;
  var iter#0: ref
     where defass#iter#0
       ==> $Is(iter#0, Tclass._module.IterB())
         && $IsAlloc(iter#0, Tclass._module.IterB(), $Heap);
  var c##0: ref;
  var tmp#0: int;
  var more#0: bool;
  var $rhs##0: bool;

    // AddMethodImpl: TestIterB, Impl$$_module.__default.TestIterB
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(112,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(113,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(113,15)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id549"} defass#c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    call {:id "id550"} $nw := Call$$_module.IterB.__ctor(c##0);
    // TrCallStmt: After ProcessCallStmt
    iter#0 := $nw;
    defass#iter#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(114,11)
    assume true;
    assert {:id "id552"} defass#c#0;
    assert {:id "id553"} c#0 != null;
    assume true;
    tmp#0 := $Unbox(read($Heap, c#0, _module.Cell.data)): int;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(115,28)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id555"} defass#iter#0;
    assume true;
    assert {:id "id556"} iter#0 != null;
    assert {:id "id557"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == iter#0
             || Set#IsMember(_module.IterB.__modifies(iter#0), $Box($o))
             || Set#IsMember($Unbox(read($Heap, iter#0, _module.IterB.__new)): Set, $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id558"} $rhs##0 := Call$$_module.IterB.MoveNext(iter#0);
    // TrCallStmt: After ProcessCallStmt
    more#0 := $rhs##0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(116,3)
    assume true;
    if (more#0)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(117,5)
        assert {:id "id560"} defass#c#0;
        assert {:id "id561"} {:subsumption 0} c#0 != null;
        assume true;
        assert {:id "id562"} tmp#0 == $Unbox(read($Heap, c#0, _module.Cell.data)): int;
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(119,5)
        assert {:id "id563"} defass#c#0;
        assert {:id "id564"} {:subsumption 0} c#0 != null;
        assume true;
        assert {:id "id565"} tmp#0 == $Unbox(read($Heap, c#0, _module.Cell.data)): int;
    }
}



procedure {:verboseName "TestIterC (well-formedness)"} CheckWellFormed$$_module.__default.TestIterC();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestIterC (call)"} Call$$_module.__default.TestIterC();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestIterC (correctness)"} Impl$$_module.__default.TestIterC() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.IterC() : Ty
uses {
// Tclass._module.IterC Tag
axiom Tag(Tclass._module.IterC()) == Tagclass._module.IterC
   && TagFamily(Tclass._module.IterC()) == tytagFamily$IterC;
}

const unique Tagclass._module.IterC: TyTag;

// Box/unbox axiom for Tclass._module.IterC
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.IterC()) } 
  $IsBox(bx, Tclass._module.IterC())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.IterC()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestIterC (correctness)"} Impl$$_module.__default.TestIterC() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap);
  var $nw: ref;
  var defass#iter#0: bool;
  var iter#0: ref
     where defass#iter#0
       ==> $Is(iter#0, Tclass._module.IterC())
         && $IsAlloc(iter#0, Tclass._module.IterC(), $Heap);
  var c##0: ref;
  var tmp#0: int;
  var more#0: bool;
  var $rhs##0: bool;
  var c##1: ref;
  var $rhs#0: int;
  var $rhs##1: bool;

    // AddMethodImpl: TestIterC, Impl$$_module.__default.TestIterC
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(143,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    c#0 := $nw;
    defass#c#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(144,12)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(144,15)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id567"} defass#c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##0 := c#0;
    call {:id "id568"} $nw := Call$$_module.IterC.__ctor(c##0);
    // TrCallStmt: After ProcessCallStmt
    iter#0 := $nw;
    defass#iter#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(145,11)
    assume true;
    assert {:id "id570"} defass#c#0;
    assert {:id "id571"} c#0 != null;
    assume true;
    tmp#0 := $Unbox(read($Heap, c#0, _module.Cell.data)): int;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(146,28)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id573"} defass#iter#0;
    assume true;
    assert {:id "id574"} iter#0 != null;
    assert {:id "id575"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == iter#0
             || Set#IsMember(_module.IterC.__modifies(iter#0), $Box($o))
             || Set#IsMember($Unbox(read($Heap, iter#0, _module.IterC.__new)): Set, $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id576"} $rhs##0 := Call$$_module.IterC.MoveNext(iter#0);
    // TrCallStmt: After ProcessCallStmt
    more#0 := $rhs##0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(147,3)
    assume true;
    if (more#0)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(148,5)
        assert {:id "id578"} defass#c#0;
        assert {:id "id579"} {:subsumption 0} c#0 != null;
        assume true;
        assert {:id "id580"} tmp#0 == $Unbox(read($Heap, c#0, _module.Cell.data)): int;
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(150,5)
        assert {:id "id581"} defass#c#0;
        assert {:id "id582"} {:subsumption 0} c#0 != null;
        assume true;
        assert {:id "id583"} tmp#0 == $Unbox(read($Heap, c#0, _module.Cell.data)): int;
        pop;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(153,8)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(153,11)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id584"} defass#c#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    c##1 := c#0;
    call {:id "id585"} $nw := Call$$_module.IterC.__ctor(c##1);
    // TrCallStmt: After ProcessCallStmt
    iter#0 := $nw;
    defass#iter#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(154,10)
    assert {:id "id587"} defass#c#0;
    assert {:id "id588"} c#0 != null;
    assume true;
    assert {:id "id589"} $_ModifiesFrame[c#0, _module.Cell.data];
    assume true;
    $rhs#0 := LitInt(17);
    $Heap := update($Heap, c#0, _module.Cell.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(155,24)
    assume true;
    // TrCallStmt: Adding lhs with type bool
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id592"} defass#iter#0;
    assume true;
    assert {:id "id593"} iter#0 != null;
    assert {:id "id594"} (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && (
            $o == iter#0
             || Set#IsMember(_module.IterC.__modifies(iter#0), $Box($o))
             || Set#IsMember($Unbox(read($Heap, iter#0, _module.IterC.__new)): Set, $Box($o)))
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id595"} $rhs##1 := Call$$_module.IterC.MoveNext(iter#0);
    // TrCallStmt: After ProcessCallStmt
    more#0 := $rhs##1;
}



procedure {:verboseName "SomeMethod (well-formedness)"} CheckWellFormed$$_module.__default.SomeMethod();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SomeMethod (call)"} Call$$_module.__default.SomeMethod();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SomeMethod (correctness)"} Impl$$_module.__default.SomeMethod() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AnotherMethod (well-formedness)"} CheckWellFormed$$_module.__default.AnotherMethod()
   returns (u#0: ref
       where $Is(u#0, Tclass._module.Cell?()) && $IsAlloc(u#0, Tclass._module.Cell?(), $Heap), 
    v#0: ref
       where $Is(v#0, Tclass._module.Cell?()) && $IsAlloc(v#0, Tclass._module.Cell?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AnotherMethod (call)"} Call$$_module.__default.AnotherMethod()
   returns (u#0: ref
       where $Is(u#0, Tclass._module.Cell?()) && $IsAlloc(u#0, Tclass._module.Cell?(), $Heap), 
    v#0: ref
       where $Is(v#0, Tclass._module.Cell?()) && $IsAlloc(v#0, Tclass._module.Cell?(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id599"} u#0 != null;
  ensures {:id "id600"} u#0 != null && !$Unbox(read(old($Heap), u#0, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AnotherMethod (correctness)"} Impl$$_module.__default.AnotherMethod()
   returns (u#0: ref
       where $Is(u#0, Tclass._module.Cell?()) && $IsAlloc(u#0, Tclass._module.Cell?(), $Heap), 
    v#0: ref
       where $Is(v#0, Tclass._module.Cell?()) && $IsAlloc(v#0, Tclass._module.Cell?(), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id601"} u#0 != null;
  ensures {:id "id602"} u#0 != null && !$Unbox(read(old($Heap), u#0, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AnotherMethod (correctness)"} Impl$$_module.__default.AnotherMethod() returns (u#0: ref, v#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $nw: ref;

    // AddMethodImpl: AnotherMethod, Impl$$_module.__default.AnotherMethod
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(188,5)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    u#0 := $nw;
}



procedure {:verboseName "ClientOfNewReferences (well-formedness)"} CheckWellFormed$$_module.__default.ClientOfNewReferences();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ClientOfNewReferences (call)"} Call$$_module.__default.ClientOfNewReferences();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ClientOfNewReferences (correctness)"} Impl$$_module.__default.ClientOfNewReferences() returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.DoleOutReferences() : Ty
uses {
// Tclass._module.DoleOutReferences Tag
axiom Tag(Tclass._module.DoleOutReferences()) == Tagclass._module.DoleOutReferences
   && TagFamily(Tclass._module.DoleOutReferences()) == tytagFamily$DoleOutReferences;
}

const unique Tagclass._module.DoleOutReferences: TyTag;

// Box/unbox axiom for Tclass._module.DoleOutReferences
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DoleOutReferences()) } 
  $IsBox(bx, Tclass._module.DoleOutReferences())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.DoleOutReferences()));

function Tclass._module.DoleOutReferences?() : Ty
uses {
// Tclass._module.DoleOutReferences? Tag
axiom Tag(Tclass._module.DoleOutReferences?()) == Tagclass._module.DoleOutReferences?
   && TagFamily(Tclass._module.DoleOutReferences?()) == tytagFamily$DoleOutReferences;
}

const unique Tagclass._module.DoleOutReferences?: TyTag;

// Box/unbox axiom for Tclass._module.DoleOutReferences?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DoleOutReferences?()) } 
  $IsBox(bx, Tclass._module.DoleOutReferences?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.DoleOutReferences?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ClientOfNewReferences (correctness)"} Impl$$_module.__default.ClientOfNewReferences() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#m#0: bool;
  var m#0: ref
     where defass#m#0
       ==> $Is(m#0, Tclass._module.DoleOutReferences())
         && $IsAlloc(m#0, Tclass._module.DoleOutReferences(), $Heap);
  var $nw: ref;
  var u##0: ref;
  var newtype$check#0: ref;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var more#0_0: bool;
  var $rhs##0_0: bool;
  var $rhs#0_0_0: int;
  var $rhs#0_1_0: int;

    // AddMethodImpl: ClientOfNewReferences, Impl$$_module.__default.ClientOfNewReferences
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(223,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(223,12)
    // TrCallStmt: Before ProcessCallStmt
    newtype$check#0 := null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := null;
    call {:id "id604"} $nw := Call$$_module.DoleOutReferences.__ctor(u##0);
    // TrCallStmt: After ProcessCallStmt
    m#0 := $nw;
    defass#m#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(224,9)
    assume true;
    assume true;
    i#0 := LitInt(86);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(225,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if i#0 <= LitInt(0) then 0 - i#0 else i#0 - 0);
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> _module.DoleOutReferences.Valid#canCall($Heap, m#0);
      invariant {:id "id612"} $w$loop#0 ==> _module.DoleOutReferences.Valid($Heap, m#0);
      invariant {:id "id613"} $w$loop#0
         ==> (forall $o: ref :: 
            { $o != null } 
            Set#IsMember($Unbox(read($Heap, m#0, _module.DoleOutReferences.__new)): Set, $Box($o))
               ==> $o != null)
           && (forall $o: ref :: 
            { Set#IsMember($Unbox(read($Heap, m#0, _module.DoleOutReferences.__new)): Set, $Box($o)) } 
            Set#IsMember($Unbox(read($Heap, m#0, _module.DoleOutReferences.__new)): Set, $Box($o))
               ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
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
      free invariant (if i#0 <= LitInt(0) then 0 - i#0 else i#0 - 0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assert {:id "id607"} defass#m#0;
            assert {:id "id608"} {:subsumption 0} m#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(m#0), Tclass._module.DoleOutReferences?(), $Heap);
            assume _module.DoleOutReferences.Valid#canCall($Heap, m#0);
            if (_module.DoleOutReferences.Valid($Heap, m#0))
            {
                assert {:id "id609"} defass#m#0;
                assert {:id "id610"} {:subsumption 0} m#0 != null;
            }

            assume _module.DoleOutReferences.Valid#canCall($Heap, m#0);
            assume {:id "id611"} _module.DoleOutReferences.Valid($Heap, m#0)
               && 
              (forall $o: ref :: 
                { $o != null } 
                Set#IsMember($Unbox(read($Heap, m#0, _module.DoleOutReferences.__new)): Set, $Box($o))
                   ==> $o != null)
               && (forall $o: ref :: 
                { Set#IsMember($Unbox(read($Heap, m#0, _module.DoleOutReferences.__new)): Set, $Box($o)) } 
                Set#IsMember($Unbox(read($Heap, m#0, _module.DoleOutReferences.__new)): Set, $Box($o))
                   ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
            if (i#0 <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (i#0 == 0)
        {
            break;
        }

        $decr$loop#00 := (if i#0 <= LitInt(0) then 0 - i#0 else i#0 - 0);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(228,27)
        assume true;
        // TrCallStmt: Adding lhs with type bool
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id614"} defass#m#0;
        assume true;
        assert {:id "id615"} m#0 != null;
        assert {:id "id616"} (forall $o: ref, $f: Field :: 
          $o != null
               && $Unbox(read($Heap, $o, alloc)): bool
               && (
                $o == m#0
                 || Set#IsMember(_module.DoleOutReferences.__modifies(m#0), $Box($o))
                 || Set#IsMember($Unbox(read($Heap, m#0, _module.DoleOutReferences.__new)): Set, $Box($o)))
             ==> $_ModifiesFrame[$o, $f]);
        call {:id "id617"} $rhs##0_0 := Call$$_module.DoleOutReferences.MoveNext(m#0);
        // TrCallStmt: After ProcessCallStmt
        more#0_0 := $rhs##0_0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(229,5)
        assume true;
        assert {:id "id619"} more#0_0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(230,5)
        if (*)
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(231,16)
            assert {:id "id620"} defass#m#0;
            assert {:id "id621"} m#0 != null;
            assert {:id "id622"} $Unbox(read($Heap, m#0, _module.DoleOutReferences.r)): ref != null;
            assume true;
            assert {:id "id623"} $_ModifiesFrame[$Unbox(read($Heap, m#0, _module.DoleOutReferences.r)): ref, _module.Cell.data];
            assume true;
            $rhs#0_0_0 := i#0;
            $Heap := update($Heap, 
              $Unbox(read($Heap, m#0, _module.DoleOutReferences.r)): ref, 
              _module.Cell.data, 
              $Box($rhs#0_0_0));
            assume $IsGoodHeap($Heap);
            pop;
        }
        else
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(233,16)
            assert {:id "id626"} defass#m#0;
            assert {:id "id627"} m#0 != null;
            assert {:id "id628"} $Unbox(read($Heap, m#0, _module.DoleOutReferences.c)): ref != null;
            assume true;
            assert {:id "id629"} $_ModifiesFrame[$Unbox(read($Heap, m#0, _module.DoleOutReferences.c)): ref, _module.Cell.data];
            assume true;
            $rhs#0_1_0 := i#0;
            $Heap := update($Heap, 
              $Unbox(read($Heap, m#0, _module.DoleOutReferences.c)): ref, 
              _module.Cell.data, 
              $Box($rhs#0_1_0));
            assume $IsGoodHeap($Heap);
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(234,7)
            assert {:id "id632"} defass#m#0;
            assert {:id "id633"} {:subsumption 0} m#0 != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(m#0), Tclass._module.DoleOutReferences?(), $Heap);
            assume _module.DoleOutReferences.Valid#canCall($Heap, m#0);
            assume _module.DoleOutReferences.Valid#canCall($Heap, m#0);
            assert {:id "id634"} _module.DoleOutReferences.Valid($Heap, m#0);
            pop;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(236,7)
        assume true;
        assume true;
        i#0 := i#0 - 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(225,3)
        assert {:id "id636"} 0 <= $decr$loop#00
           || (if i#0 <= LitInt(0) then 0 - i#0 else i#0 - 0) == $decr$loop#00;
        assert {:id "id637"} (if i#0 <= LitInt(0) then 0 - i#0 else i#0 - 0) < $decr$loop#00;
        assume _module.DoleOutReferences.Valid#canCall($Heap, m#0);
    }
}



procedure {:verboseName "LoopFrame_OrdinaryMethod (well-formedness)"} CheckWellFormed$$_module.__default.LoopFrame__OrdinaryMethod(c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap))
   returns (y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopFrame_OrdinaryMethod (call)"} Call$$_module.__default.LoopFrame__OrdinaryMethod(c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap))
   returns (y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LoopFrame_OrdinaryMethod (correctness)"} Impl$$_module.__default.LoopFrame__OrdinaryMethod(c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap))
   returns (y#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopFrame_OrdinaryMethod (correctness)"} Impl$$_module.__default.LoopFrame__OrdinaryMethod(c#0: ref) returns (y#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.Cell()) && $IsAlloc(d#0, Tclass._module.Cell(), $Heap);
  var $nw: ref;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var $rhs#0_0: int;
  var $rhs#0_1: int;

    // AddMethodImpl: LoopFrame_OrdinaryMethod, Impl$$_module.__default.LoopFrame__OrdinaryMethod
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(408,5)
    assume true;
    assume true;
    y#0 := LitInt(10);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(409,10)
    assert {:id "id639"} c#0 != null;
    assume true;
    assert {:id "id640"} $_ModifiesFrame[c#0, _module.Cell.data];
    assume true;
    $rhs#0 := LitInt(10);
    $Heap := update($Heap, c#0, _module.Cell.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(410,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    d#0 := $nw;
    defass#d#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(411,10)
    assert {:id "id644"} defass#d#0;
    assert {:id "id645"} d#0 != null;
    assume true;
    assert {:id "id646"} $_ModifiesFrame[d#0, _module.Cell.data];
    assume true;
    $rhs#1 := LitInt(10);
    $Heap := update($Heap, d#0, _module.Cell.data, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(412,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id650"} $w$loop#0 ==> y#0 <= LitInt(11);
      free invariant true;
      invariant {:id "id654"} $w$loop#0 ==> $Unbox(read($Heap, d#0, _module.Cell.data)): int <= LitInt(11);
      free invariant true;
      invariant {:id "id657"} $w$loop#0 ==> $Unbox(read($Heap, c#0, _module.Cell.data)): int <= LitInt(11);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id649"} y#0 <= LitInt(11);
            assert {:id "id651"} defass#d#0;
            assert {:id "id652"} {:subsumption 0} d#0 != null;
            assume true;
            assume {:id "id653"} $Unbox(read($Heap, d#0, _module.Cell.data)): int <= LitInt(11);
            assert {:id "id655"} {:subsumption 0} c#0 != null;
            assume true;
            assume {:id "id656"} $Unbox(read($Heap, c#0, _module.Cell.data)): int <= LitInt(11);
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(418,7)
        assume true;
        assume true;
        y#0 := y#0 + 1;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(419,12)
        assert {:id "id659"} c#0 != null;
        assume true;
        assert {:id "id660"} $_ModifiesFrame[c#0, _module.Cell.data];
        assert {:id "id661"} c#0 != null;
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, c#0, _module.Cell.data)): int + 1;
        $Heap := update($Heap, c#0, _module.Cell.data, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(420,12)
        assert {:id "id664"} defass#d#0;
        assert {:id "id665"} d#0 != null;
        assume true;
        assert {:id "id666"} $_ModifiesFrame[d#0, _module.Cell.data];
        assert {:id "id667"} defass#d#0;
        assert {:id "id668"} d#0 != null;
        assume true;
        $rhs#0_1 := $Unbox(read($Heap, d#0, _module.Cell.data)): int + 1;
        $Heap := update($Heap, d#0, _module.Cell.data, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        assume true;
    }
}



const unique class._module.MyIter?: ClassName;

function Tclass._module.MyIter?(Ty) : Ty;

const unique Tagclass._module.MyIter?: TyTag;

// Tclass._module.MyIter? Tag
axiom (forall _module.MyIter$T: Ty :: 
  { Tclass._module.MyIter?(_module.MyIter$T) } 
  Tag(Tclass._module.MyIter?(_module.MyIter$T)) == Tagclass._module.MyIter?
     && TagFamily(Tclass._module.MyIter?(_module.MyIter$T)) == tytagFamily$MyIter);

function Tclass._module.MyIter?_0(Ty) : Ty;

// Tclass._module.MyIter? injectivity 0
axiom (forall _module.MyIter$T: Ty :: 
  { Tclass._module.MyIter?(_module.MyIter$T) } 
  Tclass._module.MyIter?_0(Tclass._module.MyIter?(_module.MyIter$T))
     == _module.MyIter$T);

// Box/unbox axiom for Tclass._module.MyIter?
axiom (forall _module.MyIter$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.MyIter?(_module.MyIter$T)) } 
  $IsBox(bx, Tclass._module.MyIter?(_module.MyIter$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.MyIter?(_module.MyIter$T)));

// $Is axiom for iterator MyIter
axiom (forall _module.MyIter$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.MyIter?(_module.MyIter$T)) } 
  $Is($o, Tclass._module.MyIter?(_module.MyIter$T))
     <==> $o == null || dtype($o) == Tclass._module.MyIter?(_module.MyIter$T));

// $IsAlloc axiom for iterator MyIter
axiom (forall _module.MyIter$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MyIter?(_module.MyIter$T), $h) } 
  $IsAlloc($o, Tclass._module.MyIter?(_module.MyIter$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.MyIter.q(ref) : Box;

// MyIter.q: Type axiom
axiom (forall _module.MyIter$T: Ty, $o: ref :: 
  { _module.MyIter.q($o), Tclass._module.MyIter?(_module.MyIter$T) } 
  $o != null && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
     ==> $IsBox(_module.MyIter.q($o), _module.MyIter$T));

// MyIter.q: Allocation axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { _module.MyIter.q($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(_module.MyIter.q($o), _module.MyIter$T, $h));

const _module.MyIter.x: Field
uses {
axiom FDim(_module.MyIter.x) == 0
   && FieldOfDecl(class._module.MyIter?, field$x) == _module.MyIter.x
   && !$IsGhostField(_module.MyIter.x);
}

// MyIter.x: Type axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.MyIter.x), Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
     ==> $IsBox(read($h, $o, _module.MyIter.x), _module.MyIter$T));

// MyIter.x: Allocation axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.MyIter.x), Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.MyIter.x), _module.MyIter$T, $h));

const _module.MyIter.y: Field
uses {
axiom FDim(_module.MyIter.y) == 0
   && FieldOfDecl(class._module.MyIter?, field$y) == _module.MyIter.y
   && !$IsGhostField(_module.MyIter.y);
}

// MyIter.y: Type axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.MyIter.y), Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
     ==> $IsBox(read($h, $o, _module.MyIter.y), _module.MyIter$T));

// MyIter.y: Allocation axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.MyIter.y), Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.MyIter.y), _module.MyIter$T, $h));

const _module.MyIter.xs: Field
uses {
axiom FDim(_module.MyIter.xs) == 0
   && FieldOfDecl(class._module.MyIter?, field$xs) == _module.MyIter.xs
   && $IsGhostField(_module.MyIter.xs);
}

// MyIter.xs: Type axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIter.xs)): Seq, Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
     ==> $Is($Unbox(read($h, $o, _module.MyIter.xs)): Seq, TSeq(_module.MyIter$T)));

// MyIter.xs: Allocation axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIter.xs)): Seq, Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyIter.xs)): Seq, TSeq(_module.MyIter$T), $h));

const _module.MyIter.ys: Field
uses {
axiom FDim(_module.MyIter.ys) == 0
   && FieldOfDecl(class._module.MyIter?, field$ys) == _module.MyIter.ys
   && $IsGhostField(_module.MyIter.ys);
}

// MyIter.ys: Type axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIter.ys)): Seq, Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
     ==> $Is($Unbox(read($h, $o, _module.MyIter.ys)): Seq, TSeq(_module.MyIter$T)));

// MyIter.ys: Allocation axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIter.ys)): Seq, Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyIter.ys)): Seq, TSeq(_module.MyIter$T), $h));

function _module.MyIter.__reads(ref) : Set;

// MyIter._reads: Type axiom
axiom (forall _module.MyIter$T: Ty, $o: ref :: 
  { _module.MyIter.__reads($o), Tclass._module.MyIter?(_module.MyIter$T) } 
  $o != null && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
     ==> $Is(_module.MyIter.__reads($o), TSet(Tclass._System.object?())));

// MyIter._reads: Allocation axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { _module.MyIter.__reads($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.MyIter.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.MyIter.__modifies(ref) : Set;

// MyIter._modifies: Type axiom
axiom (forall _module.MyIter$T: Ty, $o: ref :: 
  { _module.MyIter.__modifies($o), Tclass._module.MyIter?(_module.MyIter$T) } 
  $o != null && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
     ==> $Is(_module.MyIter.__modifies($o), TSet(Tclass._System.object?())));

// MyIter._modifies: Allocation axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { _module.MyIter.__modifies($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.MyIter.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.MyIter.__new: Field
uses {
axiom FDim(_module.MyIter.__new) == 0
   && FieldOfDecl(class._module.MyIter?, field$_new) == _module.MyIter.__new
   && $IsGhostField(_module.MyIter.__new);
}

// MyIter._new: Type axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIter.__new)): Set, Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
     ==> $Is($Unbox(read($h, $o, _module.MyIter.__new)): Set, TSet(Tclass._System.object?())));

// MyIter._new: Allocation axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIter.__new)): Set, Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyIter.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function _module.MyIter.__decreases0(ref) : Box;

// MyIter._decreases0: Type axiom
axiom (forall _module.MyIter$T: Ty, $o: ref :: 
  { _module.MyIter.__decreases0($o), Tclass._module.MyIter?(_module.MyIter$T) } 
  $o != null && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
     ==> $IsBox(_module.MyIter.__decreases0($o), _module.MyIter$T));

// MyIter._decreases0: Allocation axiom
axiom (forall _module.MyIter$T: Ty, $h: Heap, $o: ref :: 
  { _module.MyIter.__decreases0($o), $Unbox(read($h, $o, alloc)): bool, Tclass._module.MyIter?(_module.MyIter$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIter?(_module.MyIter$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(_module.MyIter.__decreases0($o), _module.MyIter$T, $h));

procedure {:verboseName "MyIter._ctor (well-formedness)"} CheckWellFormed$$_module.MyIter.__ctor(_module.MyIter$T: Ty, 
    q#0: Box
       where $IsBox(q#0, _module.MyIter$T) && $IsAllocBox(q#0, _module.MyIter$T, $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyIter._ctor (call)"} Call$$_module.MyIter.__ctor(_module.MyIter$T: Ty, 
    q#0: Box
       where $IsBox(q#0, _module.MyIter$T) && $IsAllocBox(q#0, _module.MyIter$T, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyIter(_module.MyIter$T))
         && $IsAlloc(this, Tclass._module.MyIter(_module.MyIter$T), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id679"} _module.MyIter.q(this) == q#0;
  free ensures true;
  ensures {:id "id680"} Seq#Equal($Unbox(read($Heap, this, _module.MyIter.xs)): Seq, Seq#Empty(): Seq);
  free ensures true;
  ensures {:id "id681"} Seq#Equal($Unbox(read($Heap, this, _module.MyIter.ys)): Seq, Seq#Empty(): Seq);
  free ensures _module.MyIter.Valid#canCall(_module.MyIter$T, $Heap, this);
  ensures {:id "id682"} _module.MyIter.Valid(_module.MyIter$T, $Heap, this);
  free ensures true;
  ensures {:id "id683"} Set#Equal(_module.MyIter.__reads(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id684"} Set#Equal(_module.MyIter.__modifies(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id685"} Set#Equal($Unbox(read($Heap, this, _module.MyIter.__new)): Set, Set#Empty(): Set);
  free ensures true;
  ensures {:id "id686"} _module.MyIter.__decreases0(this) == q#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.MyIter.Valid
function _module.MyIter.Valid(_module.MyIter$T: Ty, $heap: Heap, this: ref) : bool;

function _module.MyIter.Valid#canCall(_module.MyIter$T: Ty, $heap: Heap, this: ref) : bool;

// frame axiom for _module.MyIter.Valid
axiom (forall _module.MyIter$T: Ty, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.MyIter.Valid(_module.MyIter$T, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.MyIter(_module.MyIter$T))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.MyIter.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.MyIter.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.MyIter.Valid(_module.MyIter$T, $h0, this)
       == _module.MyIter.Valid(_module.MyIter$T, $h1, this));

function _module.MyIter.Valid#requires(Ty, Heap, ref) : bool;

// #requires axiom for _module.MyIter.Valid
axiom (forall _module.MyIter$T: Ty, $Heap: Heap, this: ref :: 
  { _module.MyIter.Valid#requires(_module.MyIter$T, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.MyIter(_module.MyIter$T))
       && $IsAlloc(this, Tclass._module.MyIter(_module.MyIter$T), $Heap)
     ==> _module.MyIter.Valid#requires(_module.MyIter$T, $Heap, this) == true);

procedure {:verboseName "MyIter.Valid (well-formedness)"} CheckWellformed$$_module.MyIter.Valid(_module.MyIter$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyIter(_module.MyIter$T))
         && $IsAlloc(this, Tclass._module.MyIter(_module.MyIter$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyIter.Valid (well-formedness)"} CheckWellformed$$_module.MyIter.Valid(_module.MyIter$T: Ty, this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.MyIter.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.MyIter.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.MyIter.__new];
    assert {:id "id687"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "MyIter.MoveNext (call)"} Call$$_module.MyIter.MoveNext(_module.MyIter$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyIter(_module.MyIter$T))
         && $IsAlloc(this, Tclass._module.MyIter(_module.MyIter$T), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id688"} _module.MyIter.Valid(_module.MyIter$T, $Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id689"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.MyIter.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.MyIter.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.MyIter.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.MyIter.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id690"} !Set#IsMember($Unbox(read($Heap, this, _module.MyIter.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.MyIter.Valid#canCall(_module.MyIter$T, $Heap, this);
  ensures {:id "id691"} more#0 ==> _module.MyIter.Valid(_module.MyIter$T, $Heap, this);
  free ensures true;
  ensures {:id "id692"} Seq#Equal($Unbox(read($Heap, this, _module.MyIter.xs)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.MyIter.xs)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.MyIter.x)))
       else $Unbox(read(old($Heap), this, _module.MyIter.xs)): Seq));
  free ensures true;
  ensures {:id "id693"} Seq#Equal($Unbox(read($Heap, this, _module.MyIter.ys)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.MyIter.ys)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.MyIter.y)))
       else $Unbox(read(old($Heap), this, _module.MyIter.ys)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.MyIter.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.MyIter.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.MyIter
axiom (forall _module.MyIter$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.MyIter(_module.MyIter$T)) } 
    { $Is(c#0, Tclass._module.MyIter?(_module.MyIter$T)) } 
  $Is(c#0, Tclass._module.MyIter(_module.MyIter$T))
     <==> $Is(c#0, Tclass._module.MyIter?(_module.MyIter$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MyIter
axiom (forall _module.MyIter$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MyIter(_module.MyIter$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.MyIter?(_module.MyIter$T), $h) } 
  $IsAlloc(c#0, Tclass._module.MyIter(_module.MyIter$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyIter?(_module.MyIter$T), $h));

procedure {:verboseName "MyIter (well-formedness)"} CheckWellFormed$$_module.MyIter(_module.MyIter$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyIter(_module.MyIter$T))
         && $IsAlloc(this, Tclass._module.MyIter(_module.MyIter$T), $Heap), 
    q#0: Box
       where $IsBox(q#0, _module.MyIter$T) && $IsAllocBox(q#0, _module.MyIter$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyIter (correctness)"} Impl$$_module.MyIter(_module.MyIter$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyIter(_module.MyIter$T))
         && $IsAlloc(this, Tclass._module.MyIter(_module.MyIter$T), $Heap), 
    q#0: Box
       where $IsBox(q#0, _module.MyIter$T) && $IsAllocBox(q#0, _module.MyIter$T, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class._module.MyIntIter?: ClassName;

// $Is axiom for iterator MyIntIter
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.MyIntIter?()) } 
  $Is($o, Tclass._module.MyIntIter?())
     <==> $o == null || dtype($o) == Tclass._module.MyIntIter?());

// $IsAlloc axiom for iterator MyIntIter
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MyIntIter?(), $h) } 
  $IsAlloc($o, Tclass._module.MyIntIter?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.MyIntIter.x: Field
uses {
axiom FDim(_module.MyIntIter.x) == 0
   && FieldOfDecl(class._module.MyIntIter?, field$x) == _module.MyIntIter.x
   && !$IsGhostField(_module.MyIntIter.x);
}

// MyIntIter.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIntIter.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyIntIter?()
     ==> $Is($Unbox(read($h, $o, _module.MyIntIter.x)): int, TInt));

// MyIntIter.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIntIter.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIntIter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyIntIter.x)): int, TInt, $h));

const _module.MyIntIter.y: Field
uses {
axiom FDim(_module.MyIntIter.y) == 0
   && FieldOfDecl(class._module.MyIntIter?, field$y) == _module.MyIntIter.y
   && !$IsGhostField(_module.MyIntIter.y);
}

// MyIntIter.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIntIter.y)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyIntIter?()
     ==> $Is($Unbox(read($h, $o, _module.MyIntIter.y)): int, TInt));

// MyIntIter.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIntIter.y)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIntIter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyIntIter.y)): int, TInt, $h));

const _module.MyIntIter.xs: Field
uses {
axiom FDim(_module.MyIntIter.xs) == 0
   && FieldOfDecl(class._module.MyIntIter?, field$xs) == _module.MyIntIter.xs
   && $IsGhostField(_module.MyIntIter.xs);
}

// MyIntIter.xs: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIntIter.xs)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyIntIter?()
     ==> $Is($Unbox(read($h, $o, _module.MyIntIter.xs)): Seq, TSeq(TInt)));

// MyIntIter.xs: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIntIter.xs)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIntIter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyIntIter.xs)): Seq, TSeq(TInt), $h));

const _module.MyIntIter.ys: Field
uses {
axiom FDim(_module.MyIntIter.ys) == 0
   && FieldOfDecl(class._module.MyIntIter?, field$ys) == _module.MyIntIter.ys
   && $IsGhostField(_module.MyIntIter.ys);
}

// MyIntIter.ys: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIntIter.ys)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyIntIter?()
     ==> $Is($Unbox(read($h, $o, _module.MyIntIter.ys)): Seq, TSeq(TInt)));

// MyIntIter.ys: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIntIter.ys)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIntIter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyIntIter.ys)): Seq, TSeq(TInt), $h));

function _module.MyIntIter.__reads(ref) : Set;

// MyIntIter._reads: Type axiom
axiom (forall $o: ref :: 
  { _module.MyIntIter.__reads($o) } 
  $o != null && dtype($o) == Tclass._module.MyIntIter?()
     ==> $Is(_module.MyIntIter.__reads($o), TSet(Tclass._System.object?())));

// MyIntIter._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.MyIntIter.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIntIter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.MyIntIter.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.MyIntIter.__modifies(ref) : Set;

// MyIntIter._modifies: Type axiom
axiom (forall $o: ref :: 
  { _module.MyIntIter.__modifies($o) } 
  $o != null && dtype($o) == Tclass._module.MyIntIter?()
     ==> $Is(_module.MyIntIter.__modifies($o), TSet(Tclass._System.object?())));

// MyIntIter._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.MyIntIter.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIntIter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.MyIntIter.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.MyIntIter.__new: Field
uses {
axiom FDim(_module.MyIntIter.__new) == 0
   && FieldOfDecl(class._module.MyIntIter?, field$_new) == _module.MyIntIter.__new
   && $IsGhostField(_module.MyIntIter.__new);
}

// MyIntIter._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIntIter.__new)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.MyIntIter?()
     ==> $Is($Unbox(read($h, $o, _module.MyIntIter.__new)): Set, 
      TSet(Tclass._System.object?())));

// MyIntIter._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.MyIntIter.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyIntIter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.MyIntIter.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

procedure {:verboseName "MyIntIter._ctor (well-formedness)"} CheckWellFormed$$_module.MyIntIter.__ctor() returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyIntIter._ctor (call)"} Call$$_module.MyIntIter.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyIntIter())
         && $IsAlloc(this, Tclass._module.MyIntIter(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id717"} Seq#Equal($Unbox(read($Heap, this, _module.MyIntIter.xs)): Seq, Seq#Empty(): Seq);
  free ensures true;
  ensures {:id "id718"} Seq#Equal($Unbox(read($Heap, this, _module.MyIntIter.ys)): Seq, Seq#Empty(): Seq);
  free ensures _module.MyIntIter.Valid#canCall($Heap, this);
  ensures {:id "id719"} _module.MyIntIter.Valid($Heap, this);
  free ensures true;
  ensures {:id "id720"} Set#Equal(_module.MyIntIter.__reads(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id721"} Set#Equal(_module.MyIntIter.__modifies(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id722"} Set#Equal($Unbox(read($Heap, this, _module.MyIntIter.__new)): Set, Set#Empty(): Set);
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.MyIntIter.Valid
function _module.MyIntIter.Valid($heap: Heap, this: ref) : bool;

function _module.MyIntIter.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.MyIntIter.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.MyIntIter.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.MyIntIter())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.MyIntIter.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.MyIntIter.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.MyIntIter.Valid($h0, this) == _module.MyIntIter.Valid($h1, this));

function _module.MyIntIter.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.MyIntIter.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.MyIntIter.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.MyIntIter())
       && $IsAlloc(this, Tclass._module.MyIntIter(), $Heap)
     ==> _module.MyIntIter.Valid#requires($Heap, this) == true);

procedure {:verboseName "MyIntIter.Valid (well-formedness)"} CheckWellformed$$_module.MyIntIter.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyIntIter())
         && $IsAlloc(this, Tclass._module.MyIntIter(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyIntIter.Valid (well-formedness)"} CheckWellformed$$_module.MyIntIter.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.MyIntIter.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.MyIntIter.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.MyIntIter.__new];
    assert {:id "id723"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "MyIntIter.MoveNext (call)"} Call$$_module.MyIntIter.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyIntIter())
         && $IsAlloc(this, Tclass._module.MyIntIter(), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id724"} _module.MyIntIter.Valid($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id725"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.MyIntIter.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.MyIntIter.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.MyIntIter.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.MyIntIter.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id726"} !Set#IsMember($Unbox(read($Heap, this, _module.MyIntIter.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.MyIntIter.Valid#canCall($Heap, this);
  ensures {:id "id727"} more#0 ==> _module.MyIntIter.Valid($Heap, this);
  free ensures true;
  ensures {:id "id728"} Seq#Equal($Unbox(read($Heap, this, _module.MyIntIter.xs)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.MyIntIter.xs)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.MyIntIter.x)))
       else $Unbox(read(old($Heap), this, _module.MyIntIter.xs)): Seq));
  free ensures true;
  ensures {:id "id729"} Seq#Equal($Unbox(read($Heap, this, _module.MyIntIter.ys)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.MyIntIter.ys)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.MyIntIter.y)))
       else $Unbox(read(old($Heap), this, _module.MyIntIter.ys)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.MyIntIter.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.MyIntIter.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.MyIntIter
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.MyIntIter()) } 
    { $Is(c#0, Tclass._module.MyIntIter?()) } 
  $Is(c#0, Tclass._module.MyIntIter())
     <==> $Is(c#0, Tclass._module.MyIntIter?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MyIntIter
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MyIntIter(), $h) } 
    { $IsAlloc(c#0, Tclass._module.MyIntIter?(), $h) } 
  $IsAlloc(c#0, Tclass._module.MyIntIter(), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyIntIter?(), $h));

procedure {:verboseName "MyIntIter (well-formedness)"} CheckWellFormed$$_module.MyIntIter(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyIntIter())
         && $IsAlloc(this, Tclass._module.MyIntIter(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyIntIter (correctness)"} Impl$$_module.MyIntIter(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyIntIter())
         && $IsAlloc(this, Tclass._module.MyIntIter(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyIntIter (correctness)"} Impl$$_module.MyIntIter(this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int
     where _yieldCount#0
         == Seq#Length($Unbox(read($Heap, this, _module.MyIntIter.xs)): Seq)
       && _yieldCount#0
         == Seq#Length($Unbox(read($Heap, this, _module.MyIntIter.ys)): Seq);
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $rhs#3: int;
  var $rhs#4: int;
  var $rhs#5: int;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assume {:id "id737"} Seq#Equal($Unbox(read($Heap, this, _module.MyIntIter.xs)): Seq, Seq#Empty(): Seq);
    assume {:id "id738"} Seq#Equal($Unbox(read($Heap, this, _module.MyIntIter.ys)): Seq, Seq#Empty(): Seq);
    assume {:id "id739"} _module.MyIntIter.Valid($Heap, this);
    assume {:id "id740"} Set#Equal(_module.MyIntIter.__reads(this), Set#Empty(): Set);
    assume {:id "id741"} Set#Equal(_module.MyIntIter.__modifies(this), Set#Empty(): Set);
    assume {:id "id742"} Set#Equal($Unbox(read($Heap, this, _module.MyIntIter.__new)): Set, Set#Empty(): Set);
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.MyIntIter.__reads(this), $Unbox(read($Heap, this, _module.MyIntIter.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(10,8)
    assume true;
    $obj0 := this;
    assert {:id "id743"} $_ModifiesFrame[$obj0, _module.MyIntIter.x];
    assume true;
    $obj1 := this;
    assert {:id "id744"} $_ModifiesFrame[$obj1, _module.MyIntIter.y];
    assume true;
    $rhs#0 := LitInt(0);
    assume true;
    $rhs#1 := LitInt(0);
    $Heap := update($Heap, $obj0, _module.MyIntIter.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.MyIntIter.y, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(11,3)
    $Heap := update($Heap, 
      this, 
      _module.MyIntIter.xs, 
      $Box(Seq#Append($Unbox(read($Heap, this, _module.MyIntIter.xs)): Seq, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.MyIntIter.x)))));
    $Heap := update($Heap, 
      this, 
      _module.MyIntIter.ys, 
      $Box(Seq#Append($Unbox(read($Heap, this, _module.MyIntIter.ys)): Seq, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.MyIntIter.y)))));
    _yieldCount#0 := _yieldCount#0 + 1;
    assume _yieldCount#0
         == Seq#Length($Unbox(read($Heap, this, _module.MyIntIter.xs)): Seq)
       && _yieldCount#0
         == Seq#Length($Unbox(read($Heap, this, _module.MyIntIter.ys)): Seq);
    assume $IsGoodHeap($Heap);
    call $YieldHavoc(this, _module.MyIntIter.__reads(this), $Unbox(read($Heap, this, _module.MyIntIter.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(12,3)
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(12,3)
    assume true;
    $obj0 := this;
    assert {:id "id749"} $_ModifiesFrame[$obj0, _module.MyIntIter.x];
    assume true;
    $obj1 := this;
    assert {:id "id750"} $_ModifiesFrame[$obj1, _module.MyIntIter.y];
    assume true;
    $rhs#2 := LitInt(2);
    assume true;
    $rhs#3 := LitInt(3);
    $Heap := update($Heap, $obj0, _module.MyIntIter.x, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.MyIntIter.y, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, 
      this, 
      _module.MyIntIter.xs, 
      $Box(Seq#Append($Unbox(read($Heap, this, _module.MyIntIter.xs)): Seq, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.MyIntIter.x)))));
    $Heap := update($Heap, 
      this, 
      _module.MyIntIter.ys, 
      $Box(Seq#Append($Unbox(read($Heap, this, _module.MyIntIter.ys)): Seq, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.MyIntIter.y)))));
    _yieldCount#0 := _yieldCount#0 + 1;
    assume _yieldCount#0
         == Seq#Length($Unbox(read($Heap, this, _module.MyIntIter.xs)): Seq)
       && _yieldCount#0
         == Seq#Length($Unbox(read($Heap, this, _module.MyIntIter.ys)): Seq);
    assume $IsGoodHeap($Heap);
    call $YieldHavoc(this, _module.MyIntIter.__reads(this), $Unbox(read($Heap, this, _module.MyIntIter.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(13,8)
    assume true;
    $obj0 := this;
    assert {:id "id755"} $_ModifiesFrame[$obj0, _module.MyIntIter.x];
    assume true;
    $obj1 := this;
    assert {:id "id756"} $_ModifiesFrame[$obj1, _module.MyIntIter.y];
    assume true;
    $rhs#4 := $Unbox(read($Heap, this, _module.MyIntIter.y)): int;
    assume true;
    $rhs#5 := $Unbox(read($Heap, this, _module.MyIntIter.x)): int;
    $Heap := update($Heap, $obj0, _module.MyIntIter.x, $Box($rhs#4));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.MyIntIter.y, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(14,3)
    $Heap := update($Heap, 
      this, 
      _module.MyIntIter.xs, 
      $Box(Seq#Append($Unbox(read($Heap, this, _module.MyIntIter.xs)): Seq, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.MyIntIter.x)))));
    $Heap := update($Heap, 
      this, 
      _module.MyIntIter.ys, 
      $Box(Seq#Append($Unbox(read($Heap, this, _module.MyIntIter.ys)): Seq, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.MyIntIter.y)))));
    _yieldCount#0 := _yieldCount#0 + 1;
    assume _yieldCount#0
         == Seq#Length($Unbox(read($Heap, this, _module.MyIntIter.xs)): Seq)
       && _yieldCount#0
         == Seq#Length($Unbox(read($Heap, this, _module.MyIntIter.ys)): Seq);
    assume $IsGoodHeap($Heap);
    call $YieldHavoc(this, _module.MyIntIter.__reads(this), $Unbox(read($Heap, this, _module.MyIntIter.__new)): Set);
    $_OldIterHeap := $Heap;
}



const unique class._module.Naturals?: ClassName;

// $Is axiom for iterator Naturals
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Naturals?()) } 
  $Is($o, Tclass._module.Naturals?())
     <==> $o == null || dtype($o) == Tclass._module.Naturals?());

// $IsAlloc axiom for iterator Naturals
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Naturals?(), $h) } 
  $IsAlloc($o, Tclass._module.Naturals?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.Naturals.u(ref) : int;

// Naturals.u: Type axiom
axiom (forall $o: ref :: 
  { _module.Naturals.u($o) } 
  $o != null && dtype($o) == Tclass._module.Naturals?()
     ==> $Is(_module.Naturals.u($o), TInt));

// Naturals.u: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.Naturals.u($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Naturals?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.Naturals.u($o), TInt, $h));

const _module.Naturals.n: Field
uses {
axiom FDim(_module.Naturals.n) == 0
   && FieldOfDecl(class._module.Naturals?, field$n) == _module.Naturals.n
   && !$IsGhostField(_module.Naturals.n);
}

// Naturals.n: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Naturals.n)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Naturals?()
     ==> $Is($Unbox(read($h, $o, _module.Naturals.n)): int, Tclass._System.nat()));

// Naturals.n: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Naturals.n)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Naturals?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Naturals.n)): int, Tclass._System.nat(), $h));

const _module.Naturals.ns: Field
uses {
axiom FDim(_module.Naturals.ns) == 0
   && FieldOfDecl(class._module.Naturals?, field$ns) == _module.Naturals.ns
   && $IsGhostField(_module.Naturals.ns);
}

// Naturals.ns: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Naturals.ns)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Naturals?()
     ==> $Is($Unbox(read($h, $o, _module.Naturals.ns)): Seq, TSeq(Tclass._System.nat())));

// Naturals.ns: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Naturals.ns)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Naturals?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Naturals.ns)): Seq, TSeq(Tclass._System.nat()), $h));

function _module.Naturals.__reads(ref) : Set;

// Naturals._reads: Type axiom
axiom (forall $o: ref :: 
  { _module.Naturals.__reads($o) } 
  $o != null && dtype($o) == Tclass._module.Naturals?()
     ==> $Is(_module.Naturals.__reads($o), TSet(Tclass._System.object?())));

// Naturals._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.Naturals.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Naturals?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.Naturals.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.Naturals.__modifies(ref) : Set;

// Naturals._modifies: Type axiom
axiom (forall $o: ref :: 
  { _module.Naturals.__modifies($o) } 
  $o != null && dtype($o) == Tclass._module.Naturals?()
     ==> $Is(_module.Naturals.__modifies($o), TSet(Tclass._System.object?())));

// Naturals._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.Naturals.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Naturals?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.Naturals.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.Naturals.__new: Field
uses {
axiom FDim(_module.Naturals.__new) == 0
   && FieldOfDecl(class._module.Naturals?, field$_new) == _module.Naturals.__new
   && $IsGhostField(_module.Naturals.__new);
}

// Naturals._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Naturals.__new)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Naturals?()
     ==> $Is($Unbox(read($h, $o, _module.Naturals.__new)): Set, 
      TSet(Tclass._System.object?())));

// Naturals._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Naturals.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Naturals?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Naturals.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function _module.Naturals.__decreases0(ref) : int;

// Naturals._decreases0: Type axiom
axiom (forall $o: ref :: 
  { _module.Naturals.__decreases0($o) } 
  $o != null && dtype($o) == Tclass._module.Naturals?()
     ==> $Is(_module.Naturals.__decreases0($o), TInt));

// Naturals._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.Naturals.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Naturals?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.Naturals.__decreases0($o), TInt, $h));

procedure {:verboseName "Naturals._ctor (well-formedness)"} CheckWellFormed$$_module.Naturals.__ctor(u#0: int) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Naturals._ctor (call)"} Call$$_module.Naturals.__ctor(u#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Naturals())
         && $IsAlloc(this, Tclass._module.Naturals(), $Heap));
  // user-defined preconditions
  requires {:id "id769"} u#0 < 25;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id770"} _module.Naturals.u(this) == u#0;
  free ensures true;
  ensures {:id "id771"} Seq#Equal($Unbox(read($Heap, this, _module.Naturals.ns)): Seq, Seq#Empty(): Seq);
  free ensures _module.Naturals.Valid#canCall($Heap, this);
  ensures {:id "id772"} _module.Naturals.Valid($Heap, this);
  free ensures true;
  ensures {:id "id773"} Set#Equal(_module.Naturals.__reads(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id774"} Set#Equal(_module.Naturals.__modifies(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id775"} Set#Equal($Unbox(read($Heap, this, _module.Naturals.__new)): Set, Set#Empty(): Set);
  free ensures true;
  ensures {:id "id776"} _module.Naturals.__decreases0(this) == u#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.Naturals.Valid
function _module.Naturals.Valid($heap: Heap, this: ref) : bool;

function _module.Naturals.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.Naturals.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Naturals.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Naturals())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.Naturals.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.Naturals.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Naturals.Valid($h0, this) == _module.Naturals.Valid($h1, this));

function _module.Naturals.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.Naturals.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.Naturals.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Naturals())
       && $IsAlloc(this, Tclass._module.Naturals(), $Heap)
     ==> _module.Naturals.Valid#requires($Heap, this) == true);

procedure {:verboseName "Naturals.Valid (well-formedness)"} CheckWellformed$$_module.Naturals.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Naturals())
         && $IsAlloc(this, Tclass._module.Naturals(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Naturals.Valid (well-formedness)"} CheckWellformed$$_module.Naturals.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.Naturals.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.Naturals.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Naturals.__new];
    assert {:id "id777"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "Naturals.MoveNext (call)"} Call$$_module.Naturals.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Naturals())
         && $IsAlloc(this, Tclass._module.Naturals(), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id778"} _module.Naturals.Valid($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id779"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.Naturals.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Naturals.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.Naturals.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.Naturals.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id780"} !Set#IsMember($Unbox(read($Heap, this, _module.Naturals.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.Naturals.Valid#canCall($Heap, this);
  ensures {:id "id781"} more#0 ==> _module.Naturals.Valid($Heap, this);
  free ensures true;
  ensures {:id "id782"} Seq#Equal($Unbox(read($Heap, this, _module.Naturals.ns)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.Naturals.ns)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Naturals.n)))
       else $Unbox(read(old($Heap), this, _module.Naturals.ns)): Seq));
  free ensures true;
  ensures {:id "id783"} !more#0 ==> Lit(false);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.Naturals.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.Naturals.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.Naturals
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Naturals()) } 
    { $Is(c#0, Tclass._module.Naturals?()) } 
  $Is(c#0, Tclass._module.Naturals())
     <==> $Is(c#0, Tclass._module.Naturals?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Naturals
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Naturals(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Naturals?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Naturals(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Naturals?(), $h));

procedure {:verboseName "Naturals (well-formedness)"} CheckWellFormed$$_module.Naturals(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Naturals())
         && $IsAlloc(this, Tclass._module.Naturals(), $Heap), 
    u#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Naturals (correctness)"} Impl$$_module.Naturals(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Naturals())
         && $IsAlloc(this, Tclass._module.Naturals(), $Heap), 
    u#0: int);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires u#0 < 25;
  modifies $Heap;
  // user-defined postconditions
  ensures Lit(false);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Naturals (correctness)"} Impl$$_module.Naturals(this: ref, u#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int
     where _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Naturals.ns)): Seq);
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var $rhs#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#0_0: int;
  var $rhs#0_1: int;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assume {:id "id794"} u#0 < 25;
    assume {:id "id795"} _module.Naturals.u(this) == u#0;
    assume {:id "id796"} Seq#Equal($Unbox(read($Heap, this, _module.Naturals.ns)): Seq, Seq#Empty(): Seq);
    assume {:id "id797"} _module.Naturals.Valid($Heap, this);
    assume {:id "id798"} Set#Equal(_module.Naturals.__reads(this), Set#Empty(): Set);
    assume {:id "id799"} Set#Equal(_module.Naturals.__modifies(this), Set#Empty(): Set);
    assume {:id "id800"} Set#Equal($Unbox(read($Heap, this, _module.Naturals.__new)): Set, Set#Empty(): Set);
    assume {:id "id801"} _module.Naturals.__decreases0(this) == u#0;
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.Naturals.__reads(this), $Unbox(read($Heap, this, _module.Naturals.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(21,5)
    assume true;
    assert {:id "id802"} $_ModifiesFrame[this, _module.Naturals.n];
    assert {:id "id803"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    $rhs#0 := LitInt(0);
    $Heap := update($Heap, this, _module.Naturals.n, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(22,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _yieldCount#0;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      invariant (forall $o: ref :: 
          { $o != null } 
          Set#IsMember($Unbox(read($Heap, this, _module.Naturals.__new)): Set, $Box($o))
             ==> $o != null)
         && (forall $o: ref :: 
          { Set#IsMember($Unbox(read($Heap, this, _module.Naturals.__new)): Set, $Box($o)) } 
          Set#IsMember($Unbox(read($Heap, this, _module.Naturals.__new)): Set, $Box($o))
             ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant _yieldCount#0 >= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := _yieldCount#0;
        // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(24,5)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(24,11)
        assume true;
        assert {:id "id806"} $_ModifiesFrame[this, _module.Naturals.n];
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, this, _module.Naturals.n)): int;
        $Heap := update($Heap, this, _module.Naturals.n, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, 
          this, 
          _module.Naturals.ns, 
          $Box(Seq#Append($Unbox(read($Heap, this, _module.Naturals.ns)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.Naturals.n)))));
        _yieldCount#0 := _yieldCount#0 + 1;
        assume _yieldCount#0 == Seq#Length($Unbox(read($Heap, this, _module.Naturals.ns)): Seq);
        assume $IsGoodHeap($Heap);
        call $YieldHavoc(this, _module.Naturals.__reads(this), $Unbox(read($Heap, this, _module.Naturals.__new)): Set);
        $_OldIterHeap := $Heap;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(25,7)
        assume true;
        assert {:id "id809"} $_ModifiesFrame[this, _module.Naturals.n];
        assert {:id "id810"} $Is($Unbox(read($Heap, this, _module.Naturals.n)): int + 1, Tclass._System.nat());
        assume true;
        $rhs#0_1 := $Unbox(read($Heap, this, _module.Naturals.n)): int + 1;
        $Heap := update($Heap, this, _module.Naturals.n, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(22,3)
        assert {:id "id813"} _yieldCount#0 > $decr$loop#00;
    }
}



const unique class._module.Cell?: ClassName;

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

const _module.Cell.data: Field
uses {
axiom FDim(_module.Cell.data) == 0
   && FieldOfDecl(class._module.Cell?, field$data) == _module.Cell.data
   && !$IsGhostField(_module.Cell.data);
}

// Cell.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Cell?()
     ==> $Is($Unbox(read($h, $o, _module.Cell.data)): int, TInt));

// Cell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Cell.data)): int, TInt, $h));

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

const unique class._module.IterA?: ClassName;

function Tclass._module.IterA?() : Ty
uses {
// Tclass._module.IterA? Tag
axiom Tag(Tclass._module.IterA?()) == Tagclass._module.IterA?
   && TagFamily(Tclass._module.IterA?()) == tytagFamily$IterA;
}

const unique Tagclass._module.IterA?: TyTag;

// Box/unbox axiom for Tclass._module.IterA?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.IterA?()) } 
  $IsBox(bx, Tclass._module.IterA?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.IterA?()));

// $Is axiom for iterator IterA
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.IterA?()) } 
  $Is($o, Tclass._module.IterA?())
     <==> $o == null || dtype($o) == Tclass._module.IterA?());

// $IsAlloc axiom for iterator IterA
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.IterA?(), $h) } 
  $IsAlloc($o, Tclass._module.IterA?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.IterA.c(ref) : ref;

// IterA.c: Type axiom
axiom (forall $o: ref :: 
  { _module.IterA.c($o) } 
  $o != null && dtype($o) == Tclass._module.IterA?()
     ==> $Is(_module.IterA.c($o), Tclass._module.Cell?()));

// IterA.c: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterA.c($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterA?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterA.c($o), Tclass._module.Cell?(), $h));

function _module.IterA.__reads(ref) : Set;

// IterA._reads: Type axiom
axiom (forall $o: ref :: 
  { _module.IterA.__reads($o) } 
  $o != null && dtype($o) == Tclass._module.IterA?()
     ==> $Is(_module.IterA.__reads($o), TSet(Tclass._System.object?())));

// IterA._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterA.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterA?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterA.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.IterA.__modifies(ref) : Set;

// IterA._modifies: Type axiom
axiom (forall $o: ref :: 
  { _module.IterA.__modifies($o) } 
  $o != null && dtype($o) == Tclass._module.IterA?()
     ==> $Is(_module.IterA.__modifies($o), TSet(Tclass._System.object?())));

// IterA._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterA.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterA?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterA.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.IterA.__new: Field
uses {
axiom FDim(_module.IterA.__new) == 0
   && FieldOfDecl(class._module.IterA?, field$_new) == _module.IterA.__new
   && $IsGhostField(_module.IterA.__new);
}

// IterA._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IterA.__new)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.IterA?()
     ==> $Is($Unbox(read($h, $o, _module.IterA.__new)): Set, TSet(Tclass._System.object?())));

// IterA._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IterA.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterA?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.IterA.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function _module.IterA.__decreases0(ref) : ref;

// IterA._decreases0: Type axiom
axiom (forall $o: ref :: 
  { _module.IterA.__decreases0($o) } 
  $o != null && dtype($o) == Tclass._module.IterA?()
     ==> $Is(_module.IterA.__decreases0($o), Tclass._module.Cell?()));

// IterA._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterA.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterA?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterA.__decreases0($o), Tclass._module.Cell?(), $h));

procedure {:verboseName "IterA._ctor (well-formedness)"} CheckWellFormed$$_module.IterA.__ctor(c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IterA._ctor (call)"} Call$$_module.IterA.__ctor(c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterA())
         && $IsAlloc(this, Tclass._module.IterA(), $Heap));
  // user-defined preconditions
  requires {:id "id821"} c#0 != null;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id822"} _module.IterA.c(this) == c#0;
  free ensures _module.IterA.Valid#canCall($Heap, this);
  ensures {:id "id823"} _module.IterA.Valid($Heap, this);
  free ensures true;
  ensures {:id "id824"} Set#Equal(_module.IterA.__reads(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id825"} Set#Equal(_module.IterA.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
  free ensures true;
  ensures {:id "id826"} Set#Equal($Unbox(read($Heap, this, _module.IterA.__new)): Set, Set#Empty(): Set);
  free ensures true;
  ensures {:id "id827"} _module.IterA.__decreases0(this) == c#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.IterA.Valid
function _module.IterA.Valid($heap: Heap, this: ref) : bool;

function _module.IterA.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.IterA.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.IterA.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.IterA())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.IterA.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.IterA.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.IterA.Valid($h0, this) == _module.IterA.Valid($h1, this));

function _module.IterA.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.IterA.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.IterA.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.IterA())
       && $IsAlloc(this, Tclass._module.IterA(), $Heap)
     ==> _module.IterA.Valid#requires($Heap, this) == true);

procedure {:verboseName "IterA.Valid (well-formedness)"} CheckWellformed$$_module.IterA.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterA())
         && $IsAlloc(this, Tclass._module.IterA(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IterA.Valid (well-formedness)"} CheckWellformed$$_module.IterA.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.IterA.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.IterA.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.IterA.__new];
    assert {:id "id828"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "IterA.MoveNext (call)"} Call$$_module.IterA.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterA())
         && $IsAlloc(this, Tclass._module.IterA(), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id829"} _module.IterA.Valid($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id830"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.IterA.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IterA.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.IterA.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IterA.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id831"} !Set#IsMember($Unbox(read($Heap, this, _module.IterA.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.IterA.Valid#canCall($Heap, this);
  ensures {:id "id832"} more#0 ==> _module.IterA.Valid($Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.IterA.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.IterA.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.IterA
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.IterA()) } { $Is(c#0, Tclass._module.IterA?()) } 
  $Is(c#0, Tclass._module.IterA())
     <==> $Is(c#0, Tclass._module.IterA?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.IterA
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.IterA(), $h) } 
    { $IsAlloc(c#0, Tclass._module.IterA?(), $h) } 
  $IsAlloc(c#0, Tclass._module.IterA(), $h)
     <==> $IsAlloc(c#0, Tclass._module.IterA?(), $h));

procedure {:verboseName "IterA (well-formedness)"} CheckWellFormed$$_module.IterA(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterA())
         && $IsAlloc(this, Tclass._module.IterA(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "IterA (correctness)"} Impl$$_module.IterA(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterA())
         && $IsAlloc(this, Tclass._module.IterA(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires c#0 != null;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IterA (correctness)"} Impl$$_module.IterA(this: ref, c#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int where true;
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#0_0: int;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == c#0);
    assume {:id "id841"} c#0 != null;
    assume {:id "id842"} _module.IterA.c(this) == c#0;
    assume {:id "id843"} _module.IterA.Valid($Heap, this);
    assume {:id "id844"} Set#Equal(_module.IterA.__reads(this), Set#Empty(): Set);
    assume {:id "id845"} Set#Equal(_module.IterA.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id846"} Set#Equal($Unbox(read($Heap, this, _module.IterA.__new)): Set, Set#Empty(): Set);
    assume {:id "id847"} _module.IterA.__decreases0(this) == c#0;
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.IterA.__reads(this), $Unbox(read($Heap, this, _module.IterA.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(77,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _yieldCount#0;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      invariant (forall $o: ref :: 
          { $o != null } 
          Set#IsMember($Unbox(read($Heap, this, _module.IterA.__new)): Set, $Box($o))
             ==> $o != null)
         && (forall $o: ref :: 
          { Set#IsMember($Unbox(read($Heap, this, _module.IterA.__new)): Set, $Box($o)) } 
          Set#IsMember($Unbox(read($Heap, this, _module.IterA.__new)): Set, $Box($o))
             ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant _yieldCount#0 >= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := _yieldCount#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(78,12)
        assert {:id "id848"} _module.IterA.c(this) != null;
        assume true;
        assert {:id "id849"} $_ModifiesFrame[_module.IterA.c(this), _module.Cell.data];
        havoc $rhs#0_0;
        $Heap := update($Heap, _module.IterA.c(this), _module.Cell.data, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(79,5)
        _yieldCount#0 := _yieldCount#0 + 1;
        assume true;
        assume $IsGoodHeap($Heap);
        call $YieldHavoc(this, _module.IterA.__reads(this), $Unbox(read($Heap, this, _module.IterA.__new)): Set);
        $_OldIterHeap := $Heap;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(77,3)
        assert {:id "id851"} _yieldCount#0 > $decr$loop#00;
    }
}



const unique class._module.IterB?: ClassName;

function Tclass._module.IterB?() : Ty
uses {
// Tclass._module.IterB? Tag
axiom Tag(Tclass._module.IterB?()) == Tagclass._module.IterB?
   && TagFamily(Tclass._module.IterB?()) == tytagFamily$IterB;
}

const unique Tagclass._module.IterB?: TyTag;

// Box/unbox axiom for Tclass._module.IterB?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.IterB?()) } 
  $IsBox(bx, Tclass._module.IterB?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.IterB?()));

// $Is axiom for iterator IterB
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.IterB?()) } 
  $Is($o, Tclass._module.IterB?())
     <==> $o == null || dtype($o) == Tclass._module.IterB?());

// $IsAlloc axiom for iterator IterB
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.IterB?(), $h) } 
  $IsAlloc($o, Tclass._module.IterB?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.IterB.c(ref) : ref;

// IterB.c: Type axiom
axiom (forall $o: ref :: 
  { _module.IterB.c($o) } 
  $o != null && dtype($o) == Tclass._module.IterB?()
     ==> $Is(_module.IterB.c($o), Tclass._module.Cell?()));

// IterB.c: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterB.c($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterB?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterB.c($o), Tclass._module.Cell?(), $h));

function _module.IterB.__reads(ref) : Set;

// IterB._reads: Type axiom
axiom (forall $o: ref :: 
  { _module.IterB.__reads($o) } 
  $o != null && dtype($o) == Tclass._module.IterB?()
     ==> $Is(_module.IterB.__reads($o), TSet(Tclass._System.object?())));

// IterB._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterB.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterB?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterB.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.IterB.__modifies(ref) : Set;

// IterB._modifies: Type axiom
axiom (forall $o: ref :: 
  { _module.IterB.__modifies($o) } 
  $o != null && dtype($o) == Tclass._module.IterB?()
     ==> $Is(_module.IterB.__modifies($o), TSet(Tclass._System.object?())));

// IterB._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterB.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterB?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterB.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.IterB.__new: Field
uses {
axiom FDim(_module.IterB.__new) == 0
   && FieldOfDecl(class._module.IterB?, field$_new) == _module.IterB.__new
   && $IsGhostField(_module.IterB.__new);
}

// IterB._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IterB.__new)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.IterB?()
     ==> $Is($Unbox(read($h, $o, _module.IterB.__new)): Set, TSet(Tclass._System.object?())));

// IterB._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IterB.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterB?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.IterB.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function _module.IterB.__decreases0(ref) : ref;

// IterB._decreases0: Type axiom
axiom (forall $o: ref :: 
  { _module.IterB.__decreases0($o) } 
  $o != null && dtype($o) == Tclass._module.IterB?()
     ==> $Is(_module.IterB.__decreases0($o), Tclass._module.Cell?()));

// IterB._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterB.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterB?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterB.__decreases0($o), Tclass._module.Cell?(), $h));

function _module.IterB.__decreases1(ref) : bool;

// IterB._decreases1: Type axiom
axiom (forall $o: ref :: 
  { _module.IterB.__decreases1($o) } 
  $o != null && dtype($o) == Tclass._module.IterB?()
     ==> $Is(_module.IterB.__decreases1($o), TBool));

// IterB._decreases1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterB.__decreases1($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterB?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterB.__decreases1($o), TBool, $h));

function _module.IterB.__decreases2(ref) : int;

// IterB._decreases2: Type axiom
axiom (forall $o: ref :: 
  { _module.IterB.__decreases2($o) } 
  $o != null && dtype($o) == Tclass._module.IterB?()
     ==> $Is(_module.IterB.__decreases2($o), TInt));

// IterB._decreases2: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterB.__decreases2($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterB?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterB.__decreases2($o), TInt, $h));

procedure {:verboseName "IterB._ctor (well-formedness)"} CheckWellFormed$$_module.IterB.__ctor(c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IterB._ctor (well-formedness)"} CheckWellFormed$$_module.IterB.__ctor(c#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;


    // AddMethodImpl: _ctor, CheckWellFormed$$_module.IterB.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := null;
    assume {:id "id852"} c#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.IterB())
       && $IsAlloc(this, Tclass._module.IterB(), $Heap);
    assume {:id "id853"} _module.IterB.c(this) == c#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.IterB?(), $Heap);
    assume _module.IterB.Valid#canCall($Heap, this);
    assume {:id "id854"} _module.IterB.Valid($Heap, this);
    assume {:id "id855"} Set#Equal(_module.IterB.__reads(this), Set#Empty(): Set);
    assume {:id "id856"} Set#Equal(_module.IterB.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id857"} Set#Equal($Unbox(read($Heap, this, _module.IterB.__new)): Set, Set#Empty(): Set);
    assume {:id "id858"} _module.IterB.__decreases0(this) == c#0;
    newtype$check#1 := null;
    assume {:id "id859"} _module.IterB.__decreases1(this) == (c#0 != null);
    assert {:id "id860"} c#0 != null;
    assert {:id "id861"} $IsAlloc(c#0, Tclass._module.Cell?(), old($Heap));
    assume {:id "id862"} _module.IterB.__decreases2(this)
       == $Unbox(read(old($Heap), c#0, _module.Cell.data)): int;
}



procedure {:verboseName "IterB._ctor (call)"} Call$$_module.IterB.__ctor(c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterB())
         && $IsAlloc(this, Tclass._module.IterB(), $Heap));
  // user-defined preconditions
  requires {:id "id863"} c#0 != null;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id864"} _module.IterB.c(this) == c#0;
  free ensures _module.IterB.Valid#canCall($Heap, this);
  ensures {:id "id865"} _module.IterB.Valid($Heap, this);
  free ensures true;
  ensures {:id "id866"} Set#Equal(_module.IterB.__reads(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id867"} Set#Equal(_module.IterB.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
  free ensures true;
  ensures {:id "id868"} Set#Equal($Unbox(read($Heap, this, _module.IterB.__new)): Set, Set#Empty(): Set);
  free ensures true;
  ensures {:id "id869"} _module.IterB.__decreases0(this) == c#0;
  free ensures true;
  ensures {:id "id870"} _module.IterB.__decreases1(this) == (c#0 != null);
  free ensures true;
  ensures {:id "id871"} _module.IterB.__decreases2(this)
     == $Unbox(read(old($Heap), c#0, _module.Cell.data)): int;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.IterB.Valid
function _module.IterB.Valid($heap: Heap, this: ref) : bool;

function _module.IterB.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.IterB.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.IterB.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.IterB())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.IterB.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.IterB.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.IterB.Valid($h0, this) == _module.IterB.Valid($h1, this));

function _module.IterB.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.IterB.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.IterB.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.IterB())
       && $IsAlloc(this, Tclass._module.IterB(), $Heap)
     ==> _module.IterB.Valid#requires($Heap, this) == true);

procedure {:verboseName "IterB.Valid (well-formedness)"} CheckWellformed$$_module.IterB.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterB())
         && $IsAlloc(this, Tclass._module.IterB(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IterB.Valid (well-formedness)"} CheckWellformed$$_module.IterB.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.IterB.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.IterB.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.IterB.__new];
    assert {:id "id872"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "IterB.MoveNext (call)"} Call$$_module.IterB.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterB())
         && $IsAlloc(this, Tclass._module.IterB(), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id873"} _module.IterB.Valid($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id874"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.IterB.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IterB.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.IterB.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IterB.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id875"} !Set#IsMember($Unbox(read($Heap, this, _module.IterB.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.IterB.Valid#canCall($Heap, this);
  ensures {:id "id876"} more#0 ==> _module.IterB.Valid($Heap, this);
  free ensures true;
  ensures {:id "id877"} more#0
     ==> $Unbox(read($Heap, _module.IterB.c(this), _module.Cell.data)): int
       == $Unbox(read(old($Heap), _module.IterB.c(this), _module.Cell.data)): int;
  free ensures true;
  ensures {:id "id878"} !more#0 ==> Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.IterB.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.IterB.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.IterB
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.IterB()) } { $Is(c#0, Tclass._module.IterB?()) } 
  $Is(c#0, Tclass._module.IterB())
     <==> $Is(c#0, Tclass._module.IterB?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.IterB
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.IterB(), $h) } 
    { $IsAlloc(c#0, Tclass._module.IterB?(), $h) } 
  $IsAlloc(c#0, Tclass._module.IterB(), $h)
     <==> $IsAlloc(c#0, Tclass._module.IterB?(), $h));

procedure {:verboseName "IterB (well-formedness)"} CheckWellFormed$$_module.IterB(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterB())
         && $IsAlloc(this, Tclass._module.IterB(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IterB (well-formedness)"} CheckWellFormed$$_module.IterB(this: ref, c#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var $_OldIterHeap: Heap;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == c#0);
    newtype$check#0 := null;
    assume {:id "id879"} c#0 != null;
    newtype$check#1 := null;
    assert {:id "id880"} c#0 != null;
    assume {:id "id881"} _module.IterB.c(this) == c#0;
    assume {:id "id882"} _module.IterB.Valid($Heap, this);
    assume {:id "id883"} Set#Equal(_module.IterB.__reads(this), Set#Empty(): Set);
    assume {:id "id884"} Set#Equal(_module.IterB.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id885"} Set#Equal($Unbox(read($Heap, this, _module.IterB.__new)): Set, Set#Empty(): Set);
    assume {:id "id886"} _module.IterB.__decreases0(this) == c#0;
    assume {:id "id887"} _module.IterB.__decreases1(this) == (c#0 != null);
    assume {:id "id888"} _module.IterB.__decreases2(this)
       == $Unbox(read(old($Heap), c#0, _module.Cell.data)): int;
    call $IterHavoc0(this, _module.IterB.__reads(this), _module.IterB.__modifies(this));
    assume _module.IterB.Valid($Heap, this);
    $_OldIterHeap := $Heap;
    call $IterHavoc1(this, _module.IterB.__modifies(this), $Unbox(read($Heap, this, _module.IterB.__new)): Set);
    assume (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.IterB.__new)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($_OldIterHeap, this, _module.IterB.__new)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read($_OldIterHeap, $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.IterB.__new)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($_OldIterHeap, this, _module.IterB.__new)): Set, $Box($o))
           ==> !$Unbox(read($_OldIterHeap, $o, alloc)): bool);
    if (*)
    {
        assume {:id "id889"} _module.IterB.Valid($Heap, this);
        assert {:id "id890"} _module.IterB.c(this) != null;
        assert {:id "id891"} _module.IterB.c(this) != null;
        assume {:id "id892"} $Unbox(read($Heap, _module.IterB.c(this), _module.Cell.data)): int
           == $Unbox(read($_OldIterHeap, _module.IterB.c(this), _module.Cell.data)): int;
    }
    else
    {
        assume {:id "id893"} true;
    }
}



procedure {:verboseName "IterB (correctness)"} Impl$$_module.IterB(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterB())
         && $IsAlloc(this, Tclass._module.IterB(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires c#0 != null;
  modifies $Heap;
  // user-defined postconditions
  ensures Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IterB (correctness)"} Impl$$_module.IterB(this: ref, c#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int where true;
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var newtype$check#2: ref;
  var tmp#0: int;
  var $rhs#0: int;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == c#0);
    assume {:id "id894"} c#0 != null;
    assume {:id "id895"} _module.IterB.c(this) == c#0;
    assume {:id "id896"} _module.IterB.Valid($Heap, this);
    assume {:id "id897"} Set#Equal(_module.IterB.__reads(this), Set#Empty(): Set);
    assume {:id "id898"} Set#Equal(_module.IterB.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id899"} Set#Equal($Unbox(read($Heap, this, _module.IterB.__new)): Set, Set#Empty(): Set);
    assume {:id "id900"} _module.IterB.__decreases0(this) == c#0;
    assume {:id "id901"} _module.IterB.__decreases1(this) == (c#0 != null);
    assume {:id "id902"} _module.IterB.__decreases2(this)
       == $Unbox(read(old($Heap), c#0, _module.Cell.data)): int;
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.IterB.__reads(this), $Unbox(read($Heap, this, _module.IterB.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(101,3)
    assume true;
    assert {:id "id903"} _module.IterB.__decreases0(this) == _module.IterB.c(this);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(102,3)
    newtype$check#2 := null;
    assume true;
    assert {:id "id904"} _module.IterB.__decreases1(this) == (_module.IterB.c(this) != null);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(103,3)
    assert {:id "id905"} {:subsumption 0} _module.IterB.c(this) != null;
    assume true;
    assert {:id "id906"} _module.IterB.__decreases2(this)
       == $Unbox(read($Heap, _module.IterB.c(this), _module.Cell.data)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(104,11)
    assume true;
    assert {:id "id907"} _module.IterB.c(this) != null;
    assume true;
    tmp#0 := $Unbox(read($Heap, _module.IterB.c(this), _module.Cell.data)): int;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(105,3)
    if (*)
    {
        push;
        // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(105,12)
        _yieldCount#0 := _yieldCount#0 + 1;
        assume true;
        assume $IsGoodHeap($Heap);
        assert {:id "id909"} {:subsumption 0} $Unbox(read($Heap, _module.IterB.c(this), _module.Cell.data)): int
           == $Unbox(read($_OldIterHeap, _module.IterB.c(this), _module.Cell.data)): int;
        assume {:id "id910"} $Unbox(read($Heap, _module.IterB.c(this), _module.Cell.data)): int
           == $Unbox(read($_OldIterHeap, _module.IterB.c(this), _module.Cell.data)): int;
        call $YieldHavoc(this, _module.IterB.__reads(this), $Unbox(read($Heap, this, _module.IterB.__new)): Set);
        $_OldIterHeap := $Heap;
        pop;
    }
    else
    {
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(106,3)
    assert {:id "id911"} {:subsumption 0} _module.IterB.c(this) != null;
    assume true;
    assert {:id "id912"} tmp#0 == $Unbox(read($Heap, _module.IterB.c(this), _module.Cell.data)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(107,10)
    assert {:id "id913"} _module.IterB.c(this) != null;
    assume true;
    assert {:id "id914"} $_ModifiesFrame[_module.IterB.c(this), _module.Cell.data];
    havoc $rhs#0;
    $Heap := update($Heap, _module.IterB.c(this), _module.Cell.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



const unique class._module.IterC?: ClassName;

function Tclass._module.IterC?() : Ty
uses {
// Tclass._module.IterC? Tag
axiom Tag(Tclass._module.IterC?()) == Tagclass._module.IterC?
   && TagFamily(Tclass._module.IterC?()) == tytagFamily$IterC;
}

const unique Tagclass._module.IterC?: TyTag;

// Box/unbox axiom for Tclass._module.IterC?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.IterC?()) } 
  $IsBox(bx, Tclass._module.IterC?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.IterC?()));

// $Is axiom for iterator IterC
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.IterC?()) } 
  $Is($o, Tclass._module.IterC?())
     <==> $o == null || dtype($o) == Tclass._module.IterC?());

// $IsAlloc axiom for iterator IterC
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.IterC?(), $h) } 
  $IsAlloc($o, Tclass._module.IterC?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.IterC.c(ref) : ref;

// IterC.c: Type axiom
axiom (forall $o: ref :: 
  { _module.IterC.c($o) } 
  $o != null && dtype($o) == Tclass._module.IterC?()
     ==> $Is(_module.IterC.c($o), Tclass._module.Cell?()));

// IterC.c: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterC.c($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterC?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterC.c($o), Tclass._module.Cell?(), $h));

function _module.IterC.__reads(ref) : Set;

// IterC._reads: Type axiom
axiom (forall $o: ref :: 
  { _module.IterC.__reads($o) } 
  $o != null && dtype($o) == Tclass._module.IterC?()
     ==> $Is(_module.IterC.__reads($o), TSet(Tclass._System.object?())));

// IterC._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterC.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterC?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterC.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.IterC.__modifies(ref) : Set;

// IterC._modifies: Type axiom
axiom (forall $o: ref :: 
  { _module.IterC.__modifies($o) } 
  $o != null && dtype($o) == Tclass._module.IterC?()
     ==> $Is(_module.IterC.__modifies($o), TSet(Tclass._System.object?())));

// IterC._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterC.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterC?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterC.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.IterC.__new: Field
uses {
axiom FDim(_module.IterC.__new) == 0
   && FieldOfDecl(class._module.IterC?, field$_new) == _module.IterC.__new
   && $IsGhostField(_module.IterC.__new);
}

// IterC._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IterC.__new)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.IterC?()
     ==> $Is($Unbox(read($h, $o, _module.IterC.__new)): Set, TSet(Tclass._System.object?())));

// IterC._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.IterC.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterC?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.IterC.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function _module.IterC.__decreases0(ref) : ref;

// IterC._decreases0: Type axiom
axiom (forall $o: ref :: 
  { _module.IterC.__decreases0($o) } 
  $o != null && dtype($o) == Tclass._module.IterC?()
     ==> $Is(_module.IterC.__decreases0($o), Tclass._module.Cell?()));

// IterC._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterC.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterC?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterC.__decreases0($o), Tclass._module.Cell?(), $h));

function _module.IterC.__decreases1(ref) : ref;

// IterC._decreases1: Type axiom
axiom (forall $o: ref :: 
  { _module.IterC.__decreases1($o) } 
  $o != null && dtype($o) == Tclass._module.IterC?()
     ==> $Is(_module.IterC.__decreases1($o), Tclass._module.Cell?()));

// IterC._decreases1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterC.__decreases1($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterC?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterC.__decreases1($o), Tclass._module.Cell?(), $h));

function _module.IterC.__decreases2(ref) : int;

// IterC._decreases2: Type axiom
axiom (forall $o: ref :: 
  { _module.IterC.__decreases2($o) } 
  $o != null && dtype($o) == Tclass._module.IterC?()
     ==> $Is(_module.IterC.__decreases2($o), TInt));

// IterC._decreases2: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.IterC.__decreases2($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.IterC?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.IterC.__decreases2($o), TInt, $h));

procedure {:verboseName "IterC._ctor (well-formedness)"} CheckWellFormed$$_module.IterC.__ctor(c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IterC._ctor (well-formedness)"} CheckWellFormed$$_module.IterC.__ctor(c#0: ref) returns (this: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;


    // AddMethodImpl: _ctor, CheckWellFormed$$_module.IterC.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    newtype$check#0 := null;
    assume {:id "id916"} c#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc this;
    assume this != null
       && 
      $Is(this, Tclass._module.IterC())
       && $IsAlloc(this, Tclass._module.IterC(), $Heap);
    assume {:id "id917"} _module.IterC.c(this) == c#0;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.IterC?(), $Heap);
    assume _module.IterC.Valid#canCall($Heap, this);
    assume {:id "id918"} _module.IterC.Valid($Heap, this);
    assume {:id "id919"} Set#Equal(_module.IterC.__reads(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id920"} Set#Equal(_module.IterC.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id921"} Set#Equal($Unbox(read($Heap, this, _module.IterC.__new)): Set, Set#Empty(): Set);
    assume {:id "id922"} _module.IterC.__decreases0(this) == c#0;
    assume {:id "id923"} _module.IterC.__decreases1(this) == c#0;
    assert {:id "id924"} c#0 != null;
    assert {:id "id925"} $IsAlloc(c#0, Tclass._module.Cell?(), old($Heap));
    assume {:id "id926"} _module.IterC.__decreases2(this)
       == $Unbox(read(old($Heap), c#0, _module.Cell.data)): int;
}



procedure {:verboseName "IterC._ctor (call)"} Call$$_module.IterC.__ctor(c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterC())
         && $IsAlloc(this, Tclass._module.IterC(), $Heap));
  // user-defined preconditions
  requires {:id "id927"} c#0 != null;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id928"} _module.IterC.c(this) == c#0;
  free ensures _module.IterC.Valid#canCall($Heap, this);
  ensures {:id "id929"} _module.IterC.Valid($Heap, this);
  free ensures true;
  ensures {:id "id930"} Set#Equal(_module.IterC.__reads(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
  free ensures true;
  ensures {:id "id931"} Set#Equal(_module.IterC.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
  free ensures true;
  ensures {:id "id932"} Set#Equal($Unbox(read($Heap, this, _module.IterC.__new)): Set, Set#Empty(): Set);
  free ensures true;
  ensures {:id "id933"} _module.IterC.__decreases0(this) == c#0;
  free ensures true;
  ensures {:id "id934"} _module.IterC.__decreases1(this) == c#0;
  free ensures true;
  ensures {:id "id935"} _module.IterC.__decreases2(this)
     == $Unbox(read(old($Heap), c#0, _module.Cell.data)): int;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.IterC.Valid
function _module.IterC.Valid($heap: Heap, this: ref) : bool;

function _module.IterC.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.IterC.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.IterC.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.IterC())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.IterC.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.IterC.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.IterC.Valid($h0, this) == _module.IterC.Valid($h1, this));

function _module.IterC.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.IterC.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.IterC.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.IterC())
       && $IsAlloc(this, Tclass._module.IterC(), $Heap)
     ==> _module.IterC.Valid#requires($Heap, this) == true);

procedure {:verboseName "IterC.Valid (well-formedness)"} CheckWellformed$$_module.IterC.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterC())
         && $IsAlloc(this, Tclass._module.IterC(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IterC.Valid (well-formedness)"} CheckWellformed$$_module.IterC.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.IterC.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.IterC.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.IterC.__new];
    assert {:id "id936"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "IterC.MoveNext (call)"} Call$$_module.IterC.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterC())
         && $IsAlloc(this, Tclass._module.IterC(), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id937"} _module.IterC.Valid($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id938"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.IterC.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IterC.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.IterC.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.IterC.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id939"} !Set#IsMember($Unbox(read($Heap, this, _module.IterC.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.IterC.Valid#canCall($Heap, this);
  ensures {:id "id940"} more#0 ==> _module.IterC.Valid($Heap, this);
  free ensures true;
  ensures {:id "id941"} more#0
     ==> $Unbox(read($Heap, _module.IterC.c(this), _module.Cell.data)): int
       == $Unbox(read(old($Heap), _module.IterC.c(this), _module.Cell.data)): int;
  free ensures true;
  ensures {:id "id942"} !more#0 ==> Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.IterC.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.IterC.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.IterC
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.IterC()) } { $Is(c#0, Tclass._module.IterC?()) } 
  $Is(c#0, Tclass._module.IterC())
     <==> $Is(c#0, Tclass._module.IterC?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.IterC
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.IterC(), $h) } 
    { $IsAlloc(c#0, Tclass._module.IterC?(), $h) } 
  $IsAlloc(c#0, Tclass._module.IterC(), $h)
     <==> $IsAlloc(c#0, Tclass._module.IterC?(), $h));

procedure {:verboseName "IterC (well-formedness)"} CheckWellFormed$$_module.IterC(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterC())
         && $IsAlloc(this, Tclass._module.IterC(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IterC (well-formedness)"} CheckWellFormed$$_module.IterC(this: ref, c#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var $_OldIterHeap: Heap;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == c#0);
    newtype$check#0 := null;
    assume {:id "id943"} c#0 != null;
    assert {:id "id944"} c#0 != null;
    assume {:id "id945"} _module.IterC.c(this) == c#0;
    assume {:id "id946"} _module.IterC.Valid($Heap, this);
    assume {:id "id947"} Set#Equal(_module.IterC.__reads(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id948"} Set#Equal(_module.IterC.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id949"} Set#Equal($Unbox(read($Heap, this, _module.IterC.__new)): Set, Set#Empty(): Set);
    assume {:id "id950"} _module.IterC.__decreases0(this) == c#0;
    assume {:id "id951"} _module.IterC.__decreases1(this) == c#0;
    assume {:id "id952"} _module.IterC.__decreases2(this)
       == $Unbox(read(old($Heap), c#0, _module.Cell.data)): int;
    call $IterHavoc0(this, _module.IterC.__reads(this), _module.IterC.__modifies(this));
    assume _module.IterC.Valid($Heap, this);
    $_OldIterHeap := $Heap;
    call $IterHavoc1(this, _module.IterC.__modifies(this), $Unbox(read($Heap, this, _module.IterC.__new)): Set);
    assume (forall $o: ref :: 
        { $o != null } 
        Set#IsMember($Unbox(read($Heap, this, _module.IterC.__new)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($_OldIterHeap, this, _module.IterC.__new)): Set, $Box($o))
           ==> $o != null)
       && (forall $o: ref :: 
        { $Unbox(read($_OldIterHeap, $o, alloc)): bool } 
        Set#IsMember($Unbox(read($Heap, this, _module.IterC.__new)): Set, $Box($o))
             && !Set#IsMember($Unbox(read($_OldIterHeap, this, _module.IterC.__new)): Set, $Box($o))
           ==> !$Unbox(read($_OldIterHeap, $o, alloc)): bool);
    if (*)
    {
        assume {:id "id953"} _module.IterC.Valid($Heap, this);
        assert {:id "id954"} _module.IterC.c(this) != null;
        assert {:id "id955"} _module.IterC.c(this) != null;
        assume {:id "id956"} $Unbox(read($Heap, _module.IterC.c(this), _module.Cell.data)): int
           == $Unbox(read($_OldIterHeap, _module.IterC.c(this), _module.Cell.data)): int;
    }
    else
    {
        assume {:id "id957"} true;
    }
}



procedure {:verboseName "IterC (correctness)"} Impl$$_module.IterC(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.IterC())
         && $IsAlloc(this, Tclass._module.IterC(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell?()) && $IsAlloc(c#0, Tclass._module.Cell?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires c#0 != null;
  modifies $Heap;
  // user-defined postconditions
  ensures Lit(true);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IterC (correctness)"} Impl$$_module.IterC(this: ref, c#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int where true;
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var tmp#0: int;
  var $rhs#0: int;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == c#0);
    assume {:id "id958"} c#0 != null;
    assume {:id "id959"} _module.IterC.c(this) == c#0;
    assume {:id "id960"} _module.IterC.Valid($Heap, this);
    assume {:id "id961"} Set#Equal(_module.IterC.__reads(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id962"} Set#Equal(_module.IterC.__modifies(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id963"} Set#Equal($Unbox(read($Heap, this, _module.IterC.__new)): Set, Set#Empty(): Set);
    assume {:id "id964"} _module.IterC.__decreases0(this) == c#0;
    assume {:id "id965"} _module.IterC.__decreases1(this) == c#0;
    assume {:id "id966"} _module.IterC.__decreases2(this)
       == $Unbox(read(old($Heap), c#0, _module.Cell.data)): int;
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.IterC.__reads(this), $Unbox(read($Heap, this, _module.IterC.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(133,3)
    assert {:id "id967"} {:subsumption 0} _module.IterC.c(this) != null;
    assume true;
    assert {:id "id968"} _module.IterC.__decreases2(this)
       == $Unbox(read($Heap, _module.IterC.c(this), _module.Cell.data)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(134,11)
    assume true;
    assert {:id "id969"} _module.IterC.c(this) != null;
    assume true;
    tmp#0 := $Unbox(read($Heap, _module.IterC.c(this), _module.Cell.data)): int;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(135,3)
    if (*)
    {
        push;
        // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(135,12)
        _yieldCount#0 := _yieldCount#0 + 1;
        assume true;
        assume $IsGoodHeap($Heap);
        assert {:id "id971"} {:subsumption 0} $Unbox(read($Heap, _module.IterC.c(this), _module.Cell.data)): int
           == $Unbox(read($_OldIterHeap, _module.IterC.c(this), _module.Cell.data)): int;
        assume {:id "id972"} $Unbox(read($Heap, _module.IterC.c(this), _module.Cell.data)): int
           == $Unbox(read($_OldIterHeap, _module.IterC.c(this), _module.Cell.data)): int;
        call $YieldHavoc(this, _module.IterC.__reads(this), $Unbox(read($Heap, this, _module.IterC.__new)): Set);
        $_OldIterHeap := $Heap;
        pop;
    }
    else
    {
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(136,3)
    if (*)
    {
        push;
        // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(136,12)
        _yieldCount#0 := _yieldCount#0 + 1;
        assume true;
        assume $IsGoodHeap($Heap);
        assert {:id "id973"} {:subsumption 0} $Unbox(read($Heap, _module.IterC.c(this), _module.Cell.data)): int
           == $Unbox(read($_OldIterHeap, _module.IterC.c(this), _module.Cell.data)): int;
        assume {:id "id974"} $Unbox(read($Heap, _module.IterC.c(this), _module.Cell.data)): int
           == $Unbox(read($_OldIterHeap, _module.IterC.c(this), _module.Cell.data)): int;
        call $YieldHavoc(this, _module.IterC.__reads(this), $Unbox(read($Heap, this, _module.IterC.__new)): Set);
        $_OldIterHeap := $Heap;
        pop;
    }
    else
    {
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(137,3)
    assert {:id "id975"} {:subsumption 0} _module.IterC.c(this) != null;
    assume true;
    assert {:id "id976"} tmp#0 == $Unbox(read($Heap, _module.IterC.c(this), _module.Cell.data)): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(138,10)
    assert {:id "id977"} _module.IterC.c(this) != null;
    assume true;
    assert {:id "id978"} $_ModifiesFrame[_module.IterC.c(this), _module.Cell.data];
    havoc $rhs#0;
    $Heap := update($Heap, _module.IterC.c(this), _module.Cell.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



const unique class._module.AllocationIterator?: ClassName;

function Tclass._module.AllocationIterator?() : Ty
uses {
// Tclass._module.AllocationIterator? Tag
axiom Tag(Tclass._module.AllocationIterator?())
     == Tagclass._module.AllocationIterator?
   && TagFamily(Tclass._module.AllocationIterator?())
     == tytagFamily$AllocationIterator;
}

const unique Tagclass._module.AllocationIterator?: TyTag;

// Box/unbox axiom for Tclass._module.AllocationIterator?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AllocationIterator?()) } 
  $IsBox(bx, Tclass._module.AllocationIterator?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AllocationIterator?()));

// $Is axiom for iterator AllocationIterator
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.AllocationIterator?()) } 
  $Is($o, Tclass._module.AllocationIterator?())
     <==> $o == null || dtype($o) == Tclass._module.AllocationIterator?());

// $IsAlloc axiom for iterator AllocationIterator
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.AllocationIterator?(), $h) } 
  $IsAlloc($o, Tclass._module.AllocationIterator?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.AllocationIterator.x(ref) : ref;

// AllocationIterator.x: Type axiom
axiom (forall $o: ref :: 
  { _module.AllocationIterator.x($o) } 
  $o != null && dtype($o) == Tclass._module.AllocationIterator?()
     ==> $Is(_module.AllocationIterator.x($o), Tclass._module.Cell?()));

// AllocationIterator.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.AllocationIterator.x($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AllocationIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.AllocationIterator.x($o), Tclass._module.Cell?(), $h));

function _module.AllocationIterator.__reads(ref) : Set;

// AllocationIterator._reads: Type axiom
axiom (forall $o: ref :: 
  { _module.AllocationIterator.__reads($o) } 
  $o != null && dtype($o) == Tclass._module.AllocationIterator?()
     ==> $Is(_module.AllocationIterator.__reads($o), TSet(Tclass._System.object?())));

// AllocationIterator._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.AllocationIterator.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AllocationIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.AllocationIterator.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.AllocationIterator.__modifies(ref) : Set;

// AllocationIterator._modifies: Type axiom
axiom (forall $o: ref :: 
  { _module.AllocationIterator.__modifies($o) } 
  $o != null && dtype($o) == Tclass._module.AllocationIterator?()
     ==> $Is(_module.AllocationIterator.__modifies($o), TSet(Tclass._System.object?())));

// AllocationIterator._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.AllocationIterator.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AllocationIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.AllocationIterator.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.AllocationIterator.__new: Field
uses {
axiom FDim(_module.AllocationIterator.__new) == 0
   && FieldOfDecl(class._module.AllocationIterator?, field$_new)
     == _module.AllocationIterator.__new
   && $IsGhostField(_module.AllocationIterator.__new);
}

// AllocationIterator._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AllocationIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AllocationIterator?()
     ==> $Is($Unbox(read($h, $o, _module.AllocationIterator.__new)): Set, 
      TSet(Tclass._System.object?())));

// AllocationIterator._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.AllocationIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AllocationIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.AllocationIterator.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function _module.AllocationIterator.__decreases0(ref) : ref;

// AllocationIterator._decreases0: Type axiom
axiom (forall $o: ref :: 
  { _module.AllocationIterator.__decreases0($o) } 
  $o != null && dtype($o) == Tclass._module.AllocationIterator?()
     ==> $Is(_module.AllocationIterator.__decreases0($o), Tclass._module.Cell?()));

// AllocationIterator._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.AllocationIterator.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.AllocationIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.AllocationIterator.__decreases0($o), Tclass._module.Cell?(), $h));

procedure {:verboseName "AllocationIterator._ctor (well-formedness)"} CheckWellFormed$$_module.AllocationIterator.__ctor(x#0: ref
       where $Is(x#0, Tclass._module.Cell?()) && $IsAlloc(x#0, Tclass._module.Cell?(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.AllocationIterator() : Ty
uses {
// Tclass._module.AllocationIterator Tag
axiom Tag(Tclass._module.AllocationIterator()) == Tagclass._module.AllocationIterator
   && TagFamily(Tclass._module.AllocationIterator()) == tytagFamily$AllocationIterator;
}

const unique Tagclass._module.AllocationIterator: TyTag;

// Box/unbox axiom for Tclass._module.AllocationIterator
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.AllocationIterator()) } 
  $IsBox(bx, Tclass._module.AllocationIterator())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.AllocationIterator()));

procedure {:verboseName "AllocationIterator._ctor (call)"} Call$$_module.AllocationIterator.__ctor(x#0: ref
       where $Is(x#0, Tclass._module.Cell?()) && $IsAlloc(x#0, Tclass._module.Cell?(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocationIterator())
         && $IsAlloc(this, Tclass._module.AllocationIterator(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id986"} _module.AllocationIterator.x(this) == x#0;
  free ensures _module.AllocationIterator.Valid#canCall($Heap, this);
  ensures {:id "id987"} _module.AllocationIterator.Valid($Heap, this);
  free ensures true;
  ensures {:id "id988"} Set#Equal(_module.AllocationIterator.__reads(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id989"} Set#Equal(_module.AllocationIterator.__modifies(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id990"} Set#Equal($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, 
    Set#Empty(): Set);
  free ensures true;
  ensures {:id "id991"} _module.AllocationIterator.__decreases0(this) == x#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.AllocationIterator.Valid
function _module.AllocationIterator.Valid($heap: Heap, this: ref) : bool;

function _module.AllocationIterator.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.AllocationIterator.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.AllocationIterator.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.AllocationIterator())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.AllocationIterator.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.AllocationIterator.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.AllocationIterator.Valid($h0, this)
       == _module.AllocationIterator.Valid($h1, this));

function _module.AllocationIterator.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.AllocationIterator.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.AllocationIterator.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.AllocationIterator())
       && $IsAlloc(this, Tclass._module.AllocationIterator(), $Heap)
     ==> _module.AllocationIterator.Valid#requires($Heap, this) == true);

procedure {:verboseName "AllocationIterator.Valid (well-formedness)"} CheckWellformed$$_module.AllocationIterator.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocationIterator())
         && $IsAlloc(this, Tclass._module.AllocationIterator(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocationIterator.Valid (well-formedness)"} CheckWellformed$$_module.AllocationIterator.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.AllocationIterator.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.AllocationIterator.__new];
    assert {:id "id992"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "AllocationIterator.MoveNext (call)"} Call$$_module.AllocationIterator.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocationIterator())
         && $IsAlloc(this, Tclass._module.AllocationIterator(), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id993"} _module.AllocationIterator.Valid($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id994"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.AllocationIterator.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.AllocationIterator.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id995"} !Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.AllocationIterator.Valid#canCall($Heap, this);
  ensures {:id "id996"} more#0 ==> _module.AllocationIterator.Valid($Heap, this);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.AllocationIterator.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.AllocationIterator.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.AllocationIterator
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.AllocationIterator()) } 
    { $Is(c#0, Tclass._module.AllocationIterator?()) } 
  $Is(c#0, Tclass._module.AllocationIterator())
     <==> $Is(c#0, Tclass._module.AllocationIterator?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.AllocationIterator
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.AllocationIterator(), $h) } 
    { $IsAlloc(c#0, Tclass._module.AllocationIterator?(), $h) } 
  $IsAlloc(c#0, Tclass._module.AllocationIterator(), $h)
     <==> $IsAlloc(c#0, Tclass._module.AllocationIterator?(), $h));

procedure {:verboseName "AllocationIterator (well-formedness)"} CheckWellFormed$$_module.AllocationIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocationIterator())
         && $IsAlloc(this, Tclass._module.AllocationIterator(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Cell?()) && $IsAlloc(x#0, Tclass._module.Cell?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AllocationIterator (correctness)"} Impl$$_module.AllocationIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.AllocationIterator())
         && $IsAlloc(this, Tclass._module.AllocationIterator(), $Heap), 
    x#0: ref
       where $Is(x#0, Tclass._module.Cell?()) && $IsAlloc(x#0, Tclass._module.Cell?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllocationIterator (correctness)"} Impl$$_module.AllocationIterator(this: ref, x#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int where true;
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var defass#h#0: bool;
  var h#0: ref
     where defass#h#0
       ==> $Is(h#0, Tclass._module.Cell()) && $IsAlloc(h#0, Tclass._module.Cell(), $Heap);
  var $nw: ref;
  var $initHeapCallStmt#0: Heap;
  var $iter_newUpdate0: Set;
  var newtype$check#0: ref;
  var saveNew#0: Set
     where $Is(saveNew#0, TSet(Tclass._System.object?()))
       && $IsAlloc(saveNew#0, TSet(Tclass._System.object?()), $Heap);
  var u#0: ref
     where $Is(u#0, Tclass._module.Cell?()) && $IsAlloc(u#0, Tclass._module.Cell?(), $Heap);
  var v#0: ref
     where $Is(v#0, Tclass._module.Cell?()) && $IsAlloc(v#0, Tclass._module.Cell?(), $Heap);
  var $rhs##0: ref;
  var $rhs##1: ref;
  var $initHeapCallStmt#1: Heap;
  var $iter_newUpdate1: Set;
  var newtype$check#2_0: ref;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assume {:id "id1004"} _module.AllocationIterator.x(this) == x#0;
    assume {:id "id1005"} _module.AllocationIterator.Valid($Heap, this);
    assume {:id "id1006"} Set#Equal(_module.AllocationIterator.__reads(this), Set#Empty(): Set);
    assume {:id "id1007"} Set#Equal(_module.AllocationIterator.__modifies(this), Set#Empty(): Set);
    assume {:id "id1008"} Set#Equal($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, 
      Set#Empty(): Set);
    assume {:id "id1009"} _module.AllocationIterator.__decreases0(this) == x#0;
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.AllocationIterator.__reads(this), $Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(162,3)
    assume true;
    assert {:id "id1010"} Set#Equal($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, 
      Set#Empty(): Set);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(163,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    $Heap := update($Heap, 
      this, 
      _module.AllocationIterator.__new, 
      $Box(Set#UnionOne($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box($nw))));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    h#0 := $nw;
    defass#h#0 := true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(164,3)
    assert {:id "id1012"} defass#h#0;
    assume true;
    assert {:id "id1013"} Set#Equal($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, 
      Set#UnionOne(Set#Empty(): Set, $Box(h#0)));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(166,13)
    $initHeapCallStmt#0 := $Heap;
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1014"} Call$$_module.__default.SomeMethod();
    // TrCallStmt: After ProcessCallStmt
    call $iter_newUpdate0 := $IterCollectNewObjects($initHeapCallStmt#0, $Heap, this, _module.AllocationIterator.__new);
    $Heap := update($Heap, this, _module.AllocationIterator.__new, $Box($iter_newUpdate0));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(167,3)
    assume true;
    assert {:id "id1015"} !Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, 
      $Box(_module.AllocationIterator.x(this)));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(168,3)
    newtype$check#0 := null;
    assume true;
    assert {:id "id1016"} !Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box(null));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(169,3)
    assert {:id "id1017"} defass#h#0;
    assume true;
    assert {:id "id1018"} Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box(h#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(171,21)
    assume true;
    assume true;
    saveNew#0 := $Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(172,28)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Cell?
    // TrCallStmt: Adding lhs with type Cell?
    $initHeapCallStmt#1 := $Heap;
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id1020"} $rhs##0, $rhs##1 := Call$$_module.__default.AnotherMethod();
    // TrCallStmt: After ProcessCallStmt
    u#0 := $rhs##0;
    v#0 := $rhs##1;
    call $iter_newUpdate1 := $IterCollectNewObjects($initHeapCallStmt#1, $Heap, this, _module.AllocationIterator.__new);
    $Heap := update($Heap, this, _module.AllocationIterator.__new, $Box($iter_newUpdate1));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(173,3)
    assume true;
    assert {:id "id1023"} Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box(u#0));
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(174,3)
    if (*)
    {
        assume true;
        assume {:id "id1030"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(175,19)
        if (Set#IsMember(Set#Difference($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, saveNew#0), 
          $Box(v#0)))
        {
            newtype$check#2_0 := null;
            if (v#0 != null)
            {
            }
        }

        assume true;
        assert {:id "id1031"} {:subsumption 0} Set#IsMember(Set#Difference($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, saveNew#0), 
            $Box(v#0))
           ==> v#0 != null;
        assert {:id "id1032"} {:subsumption 0} Set#IsMember(Set#Difference($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, saveNew#0), 
            $Box(v#0))
           ==> v#0 != null && !$Unbox(read(old($Heap), v#0, alloc)): bool;
        assume {:id "id1033"} Set#IsMember(Set#Difference($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, saveNew#0), 
            $Box(v#0))
           ==> v#0 != null && v#0 != null && !$Unbox(read(old($Heap), v#0, alloc)): bool;
    }
    else if (*)
    {
        assume true;
        assume {:id "id1027"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(176,19)
        if (!(v#0 != null && !$Unbox(read(old($Heap), v#0, alloc)): bool))
        {
        }

        assume true;
        assert {:id "id1028"} {:subsumption 0} !(v#0 != null && !$Unbox(read(old($Heap), v#0, alloc)): bool)
           ==> !Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box(v#0));
        assume {:id "id1029"} !(v#0 != null && !$Unbox(read(old($Heap), v#0, alloc)): bool)
           ==> !Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box(v#0));
    }
    else if (*)
    {
        assume true;
        assume {:id "id1025"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(177,19)
        assume true;
        assert {:id "id1026"} Set#IsMember($Unbox(read($Heap, this, _module.AllocationIterator.__new)): Set, $Box(v#0));
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id1024"} false;
    }
}



const unique class._module.DoleOutReferences?: ClassName;

// $Is axiom for iterator DoleOutReferences
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.DoleOutReferences?()) } 
  $Is($o, Tclass._module.DoleOutReferences?())
     <==> $o == null || dtype($o) == Tclass._module.DoleOutReferences?());

// $IsAlloc axiom for iterator DoleOutReferences
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.DoleOutReferences?(), $h) } 
  $IsAlloc($o, Tclass._module.DoleOutReferences?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.DoleOutReferences.u(ref) : ref;

// DoleOutReferences.u: Type axiom
axiom (forall $o: ref :: 
  { _module.DoleOutReferences.u($o) } 
  $o != null && dtype($o) == Tclass._module.DoleOutReferences?()
     ==> $Is(_module.DoleOutReferences.u($o), Tclass._module.Cell?()));

// DoleOutReferences.u: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.DoleOutReferences.u($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.DoleOutReferences.u($o), Tclass._module.Cell?(), $h));

const _module.DoleOutReferences.r: Field
uses {
axiom FDim(_module.DoleOutReferences.r) == 0
   && FieldOfDecl(class._module.DoleOutReferences?, field$r)
     == _module.DoleOutReferences.r
   && !$IsGhostField(_module.DoleOutReferences.r);
}

// DoleOutReferences.r: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoleOutReferences.r)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
     ==> $Is($Unbox(read($h, $o, _module.DoleOutReferences.r)): ref, Tclass._module.Cell?()));

// DoleOutReferences.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoleOutReferences.r)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DoleOutReferences.r)): ref, 
      Tclass._module.Cell?(), 
      $h));

const _module.DoleOutReferences.c: Field
uses {
axiom FDim(_module.DoleOutReferences.c) == 0
   && FieldOfDecl(class._module.DoleOutReferences?, field$c)
     == _module.DoleOutReferences.c
   && !$IsGhostField(_module.DoleOutReferences.c);
}

// DoleOutReferences.c: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoleOutReferences.c)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
     ==> $Is($Unbox(read($h, $o, _module.DoleOutReferences.c)): ref, Tclass._module.Cell?()));

// DoleOutReferences.c: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoleOutReferences.c)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DoleOutReferences.c)): ref, 
      Tclass._module.Cell?(), 
      $h));

const _module.DoleOutReferences.rs: Field
uses {
axiom FDim(_module.DoleOutReferences.rs) == 0
   && FieldOfDecl(class._module.DoleOutReferences?, field$rs)
     == _module.DoleOutReferences.rs
   && $IsGhostField(_module.DoleOutReferences.rs);
}

// DoleOutReferences.rs: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoleOutReferences.rs)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
     ==> $Is($Unbox(read($h, $o, _module.DoleOutReferences.rs)): Seq, 
      TSeq(Tclass._module.Cell?())));

// DoleOutReferences.rs: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoleOutReferences.rs)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DoleOutReferences.rs)): Seq, 
      TSeq(Tclass._module.Cell?()), 
      $h));

const _module.DoleOutReferences.cs: Field
uses {
axiom FDim(_module.DoleOutReferences.cs) == 0
   && FieldOfDecl(class._module.DoleOutReferences?, field$cs)
     == _module.DoleOutReferences.cs
   && $IsGhostField(_module.DoleOutReferences.cs);
}

// DoleOutReferences.cs: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoleOutReferences.cs)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
     ==> $Is($Unbox(read($h, $o, _module.DoleOutReferences.cs)): Seq, 
      TSeq(Tclass._module.Cell?())));

// DoleOutReferences.cs: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoleOutReferences.cs)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DoleOutReferences.cs)): Seq, 
      TSeq(Tclass._module.Cell?()), 
      $h));

function _module.DoleOutReferences.__reads(ref) : Set;

// DoleOutReferences._reads: Type axiom
axiom (forall $o: ref :: 
  { _module.DoleOutReferences.__reads($o) } 
  $o != null && dtype($o) == Tclass._module.DoleOutReferences?()
     ==> $Is(_module.DoleOutReferences.__reads($o), TSet(Tclass._System.object?())));

// DoleOutReferences._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.DoleOutReferences.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.DoleOutReferences.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.DoleOutReferences.__modifies(ref) : Set;

// DoleOutReferences._modifies: Type axiom
axiom (forall $o: ref :: 
  { _module.DoleOutReferences.__modifies($o) } 
  $o != null && dtype($o) == Tclass._module.DoleOutReferences?()
     ==> $Is(_module.DoleOutReferences.__modifies($o), TSet(Tclass._System.object?())));

// DoleOutReferences._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.DoleOutReferences.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.DoleOutReferences.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.DoleOutReferences.__new: Field
uses {
axiom FDim(_module.DoleOutReferences.__new) == 0
   && FieldOfDecl(class._module.DoleOutReferences?, field$_new)
     == _module.DoleOutReferences.__new
   && $IsGhostField(_module.DoleOutReferences.__new);
}

// DoleOutReferences._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoleOutReferences.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
     ==> $Is($Unbox(read($h, $o, _module.DoleOutReferences.__new)): Set, 
      TSet(Tclass._System.object?())));

// DoleOutReferences._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DoleOutReferences.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DoleOutReferences.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function _module.DoleOutReferences.__decreases0(ref) : ref;

// DoleOutReferences._decreases0: Type axiom
axiom (forall $o: ref :: 
  { _module.DoleOutReferences.__decreases0($o) } 
  $o != null && dtype($o) == Tclass._module.DoleOutReferences?()
     ==> $Is(_module.DoleOutReferences.__decreases0($o), Tclass._module.Cell?()));

// DoleOutReferences._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.DoleOutReferences.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DoleOutReferences?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.DoleOutReferences.__decreases0($o), Tclass._module.Cell?(), $h));

procedure {:verboseName "DoleOutReferences._ctor (well-formedness)"} CheckWellFormed$$_module.DoleOutReferences.__ctor(u#0: ref
       where $Is(u#0, Tclass._module.Cell?()) && $IsAlloc(u#0, Tclass._module.Cell?(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DoleOutReferences._ctor (call)"} Call$$_module.DoleOutReferences.__ctor(u#0: ref
       where $Is(u#0, Tclass._module.Cell?()) && $IsAlloc(u#0, Tclass._module.Cell?(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoleOutReferences())
         && $IsAlloc(this, Tclass._module.DoleOutReferences(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1042"} _module.DoleOutReferences.u(this) == u#0;
  free ensures true;
  ensures {:id "id1043"} Seq#Equal($Unbox(read($Heap, this, _module.DoleOutReferences.rs)): Seq, Seq#Empty(): Seq);
  free ensures true;
  ensures {:id "id1044"} Seq#Equal($Unbox(read($Heap, this, _module.DoleOutReferences.cs)): Seq, Seq#Empty(): Seq);
  free ensures _module.DoleOutReferences.Valid#canCall($Heap, this);
  ensures {:id "id1045"} _module.DoleOutReferences.Valid($Heap, this);
  free ensures true;
  ensures {:id "id1046"} Set#Equal(_module.DoleOutReferences.__reads(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id1047"} Set#Equal(_module.DoleOutReferences.__modifies(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id1048"} Set#Equal($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, 
    Set#Empty(): Set);
  free ensures true;
  ensures {:id "id1049"} _module.DoleOutReferences.__decreases0(this) == u#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.DoleOutReferences.Valid
function _module.DoleOutReferences.Valid($heap: Heap, this: ref) : bool;

function _module.DoleOutReferences.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.DoleOutReferences.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.DoleOutReferences.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.DoleOutReferences())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.DoleOutReferences.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.DoleOutReferences.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.DoleOutReferences.Valid($h0, this)
       == _module.DoleOutReferences.Valid($h1, this));

function _module.DoleOutReferences.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.DoleOutReferences.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.DoleOutReferences.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.DoleOutReferences())
       && $IsAlloc(this, Tclass._module.DoleOutReferences(), $Heap)
     ==> _module.DoleOutReferences.Valid#requires($Heap, this) == true);

procedure {:verboseName "DoleOutReferences.Valid (well-formedness)"} CheckWellformed$$_module.DoleOutReferences.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoleOutReferences())
         && $IsAlloc(this, Tclass._module.DoleOutReferences(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoleOutReferences.Valid (well-formedness)"} CheckWellformed$$_module.DoleOutReferences.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.DoleOutReferences.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.DoleOutReferences.__new];
    assert {:id "id1050"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "DoleOutReferences.MoveNext (call)"} Call$$_module.DoleOutReferences.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoleOutReferences())
         && $IsAlloc(this, Tclass._module.DoleOutReferences(), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id1051"} _module.DoleOutReferences.Valid($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1052"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.DoleOutReferences.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.DoleOutReferences.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1053"} !Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.DoleOutReferences.Valid#canCall($Heap, this);
  ensures {:id "id1054"} more#0 ==> _module.DoleOutReferences.Valid($Heap, this);
  free ensures true;
  ensures {:id "id1055"} Seq#Equal($Unbox(read($Heap, this, _module.DoleOutReferences.rs)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.DoleOutReferences.rs)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.DoleOutReferences.r)))
       else $Unbox(read(old($Heap), this, _module.DoleOutReferences.rs)): Seq));
  free ensures true;
  ensures {:id "id1056"} Seq#Equal($Unbox(read($Heap, this, _module.DoleOutReferences.cs)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.DoleOutReferences.cs)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.DoleOutReferences.c)))
       else $Unbox(read(old($Heap), this, _module.DoleOutReferences.cs)): Seq));
  free ensures true;
  ensures {:id "id1057"} more#0 ==> $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref != null;
  ensures {:id "id1058"} more#0
     ==> $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref, alloc)): bool;
  ensures {:id "id1059"} more#0
     ==> !Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, 
      read($Heap, this, _module.DoleOutReferences.r));
  free ensures true;
  ensures {:id "id1060"} more#0 ==> $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref != null;
  ensures {:id "id1061"} more#0
     ==> $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref != null
       && !$Unbox(read(old($Heap), $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref, alloc)): bool;
  free ensures true;
  ensures {:id "id1062"} !more#0 ==> Lit(false);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.DoleOutReferences.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.DoleOutReferences.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.DoleOutReferences
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.DoleOutReferences()) } 
    { $Is(c#0, Tclass._module.DoleOutReferences?()) } 
  $Is(c#0, Tclass._module.DoleOutReferences())
     <==> $Is(c#0, Tclass._module.DoleOutReferences?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.DoleOutReferences
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.DoleOutReferences(), $h) } 
    { $IsAlloc(c#0, Tclass._module.DoleOutReferences?(), $h) } 
  $IsAlloc(c#0, Tclass._module.DoleOutReferences(), $h)
     <==> $IsAlloc(c#0, Tclass._module.DoleOutReferences?(), $h));

procedure {:verboseName "DoleOutReferences (well-formedness)"} CheckWellFormed$$_module.DoleOutReferences(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoleOutReferences())
         && $IsAlloc(this, Tclass._module.DoleOutReferences(), $Heap), 
    u#0: ref
       where $Is(u#0, Tclass._module.Cell?()) && $IsAlloc(u#0, Tclass._module.Cell?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DoleOutReferences (correctness)"} Impl$$_module.DoleOutReferences(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DoleOutReferences())
         && $IsAlloc(this, Tclass._module.DoleOutReferences(), $Heap), 
    u#0: ref
       where $Is(u#0, Tclass._module.Cell?()) && $IsAlloc(u#0, Tclass._module.Cell?(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  ensures Lit(false);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DoleOutReferences (correctness)"} Impl$$_module.DoleOutReferences(this: ref, u#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int
     where _yieldCount#0
         == Seq#Length($Unbox(read($Heap, this, _module.DoleOutReferences.rs)): Seq)
       && _yieldCount#0
         == Seq#Length($Unbox(read($Heap, this, _module.DoleOutReferences.cs)): Seq);
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var myCells#0: Seq
     where $Is(myCells#0, TSeq(Tclass._module.Cell?()))
       && $IsAlloc(myCells#0, TSeq(Tclass._module.Cell?()), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var z#0: ref;
  var $decr$loop#00: int;
  var $rhs#0_0: ref;
  var $nw: ref;
  var $rhs#0_1: ref;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0_2: int;
  var $rhs#0_3: int;
  var $rhs#0_4: Set;
  var $rhs#0_0_0: Set;
  var $rhs#0_0_1: Set;
  var z#2: ref;
  var z#3: ref;
  var $prevHeap: Heap;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assume {:id "id1078"} _module.DoleOutReferences.u(this) == u#0;
    assume {:id "id1079"} Seq#Equal($Unbox(read($Heap, this, _module.DoleOutReferences.rs)): Seq, Seq#Empty(): Seq);
    assume {:id "id1080"} Seq#Equal($Unbox(read($Heap, this, _module.DoleOutReferences.cs)): Seq, Seq#Empty(): Seq);
    assume {:id "id1081"} _module.DoleOutReferences.Valid($Heap, this);
    assume {:id "id1082"} Set#Equal(_module.DoleOutReferences.__reads(this), Set#Empty(): Set);
    assume {:id "id1083"} Set#Equal(_module.DoleOutReferences.__modifies(this), Set#Empty(): Set);
    assume {:id "id1084"} Set#Equal($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, 
      Set#Empty(): Set);
    assume {:id "id1085"} _module.DoleOutReferences.__decreases0(this) == u#0;
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.DoleOutReferences.__reads(this), $Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(196,27)
    assume true;
    assume true;
    myCells#0 := Lit(Seq#Empty(): Seq);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(197,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _yieldCount#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id1088"} $w$loop#0
         ==> (forall z#1: ref :: 
          $Is(z#1, Tclass._module.Cell?())
             ==> 
            Seq#Contains(myCells#0, $Box(z#1))
             ==> Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box(z#1)));
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      invariant (forall $o: ref :: 
          { $o != null } 
          Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box($o))
             ==> $o != null)
         && (forall $o: ref :: 
          { Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box($o)) } 
          Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box($o))
             ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant _yieldCount#0 >= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            // Begin Comprehension WF check
            havoc z#0;
            if ($Is(z#0, Tclass._module.Cell?()) && $IsAlloc(z#0, Tclass._module.Cell?(), $Heap))
            {
                if (Seq#Contains(myCells#0, $Box(z#0)))
                {
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id1087"} (forall z#1: ref :: 
              $Is(z#1, Tclass._module.Cell?())
                 ==> 
                Seq#Contains(myCells#0, $Box(z#1))
                 ==> Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box(z#1)));
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := _yieldCount#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(200,7)
        assume true;
        assert {:id "id1089"} $_ModifiesFrame[this, _module.DoleOutReferences.c];
        havoc $nw;
        assume $nw != null && $Is($nw, Tclass._module.Cell?());
        assume !$Unbox(read($Heap, $nw, alloc)): bool;
        $Heap := update($Heap, $nw, alloc, $Box(true));
        $Heap := update($Heap, 
          this, 
          _module.DoleOutReferences.__new, 
          $Box(Set#UnionOne($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box($nw))));
        assume $IsGoodHeap($Heap);
        assume $IsHeapAnchor($Heap);
        $rhs#0_0 := $nw;
        $Heap := update($Heap, this, _module.DoleOutReferences.c, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(201,7)
        assume true;
        assert {:id "id1092"} $_ModifiesFrame[this, _module.DoleOutReferences.r];
        havoc $nw;
        assume $nw != null && $Is($nw, Tclass._module.Cell?());
        assume !$Unbox(read($Heap, $nw, alloc)): bool;
        $Heap := update($Heap, $nw, alloc, $Box(true));
        $Heap := update($Heap, 
          this, 
          _module.DoleOutReferences.__new, 
          $Box(Set#UnionOne($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, $Box($nw))));
        assume $IsGoodHeap($Heap);
        assume $IsHeapAnchor($Heap);
        $rhs#0_1 := $nw;
        $Heap := update($Heap, this, _module.DoleOutReferences.r, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(202,20)
        assert {:id "id1095"} $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref != null;
        assume true;
        $obj0 := $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref;
        assert {:id "id1096"} $_ModifiesFrame[$obj0, _module.Cell.data];
        assert {:id "id1097"} $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref != null;
        assume true;
        $obj1 := $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref;
        assert {:id "id1098"} $_ModifiesFrame[$obj1, _module.Cell.data];
        assume true;
        $rhs#0_2 := LitInt(12);
        assume true;
        $rhs#0_3 := LitInt(12);
        assert {:id "id1101"} $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref
             != $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref
           || $rhs#0_3 == $rhs#0_2;
        $Heap := update($Heap, $obj0, _module.Cell.data, $Box($rhs#0_2));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, _module.Cell.data, $Box($rhs#0_3));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(203,13)
        assume true;
        assume true;
        myCells#0 := Seq#Append(myCells#0, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.DoleOutReferences.c)));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(204,10)
        assume true;
        assert {:id "id1105"} $_ModifiesFrame[this, _module.DoleOutReferences.__new];
        assume true;
        $rhs#0_4 := Set#Difference($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, 
          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DoleOutReferences.r)));
        assert {:id "id1107"} Set#Subset($rhs#0_4, $Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set);
        $Heap := update($Heap, this, _module.DoleOutReferences.__new, $Box($rhs#0_4));
        assume $IsGoodHeap($Heap);
        // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(205,5)
        $Heap := update($Heap, 
          this, 
          _module.DoleOutReferences.rs, 
          $Box(Seq#Append($Unbox(read($Heap, this, _module.DoleOutReferences.rs)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.DoleOutReferences.r)))));
        $Heap := update($Heap, 
          this, 
          _module.DoleOutReferences.cs, 
          $Box(Seq#Append($Unbox(read($Heap, this, _module.DoleOutReferences.cs)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.DoleOutReferences.c)))));
        _yieldCount#0 := _yieldCount#0 + 1;
        assume _yieldCount#0
             == Seq#Length($Unbox(read($Heap, this, _module.DoleOutReferences.rs)): Seq)
           && _yieldCount#0
             == Seq#Length($Unbox(read($Heap, this, _module.DoleOutReferences.cs)): Seq);
        assume $IsGoodHeap($Heap);
        assert {:id "id1109"} {:subsumption 0} $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref != null;
        assert {:id "id1110"} {:subsumption 0} $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref != null
           && !$Unbox(read($_OldIterHeap, 
              $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref, 
              alloc)): bool;
        assert {:id "id1111"} {:subsumption 0} !Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, 
          read($Heap, this, _module.DoleOutReferences.r));
        assume {:id "id1112"} $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref != null
           && 
          $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref != null
           && !$Unbox(read($_OldIterHeap, 
              $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref, 
              alloc)): bool
           && !Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, 
            read($Heap, this, _module.DoleOutReferences.r));
        assert {:id "id1113"} {:subsumption 0} $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref != null;
        assert {:id "id1114"} {:subsumption 0} $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref != null
           && !$Unbox(read($_OldIterHeap, 
              $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref, 
              alloc)): bool;
        assume {:id "id1115"} $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref != null
           && 
          $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref != null
           && !$Unbox(read($_OldIterHeap, 
              $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref, 
              alloc)): bool;
        call $YieldHavoc(this, _module.DoleOutReferences.__reads(this), $Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set);
        $_OldIterHeap := $Heap;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(206,5)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(207,12)
            assume true;
            assert {:id "id1116"} $_ModifiesFrame[this, _module.DoleOutReferences.__new];
            assume true;
            $rhs#0_0_0 := Set#Union($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, 
              Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DoleOutReferences.c)));
            assert {:id "id1118"} Set#Subset($rhs#0_0_0, $Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set);
            $Heap := update($Heap, this, _module.DoleOutReferences.__new, $Box($rhs#0_0_0));
            assume $IsGoodHeap($Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(208,12)
            assume true;
            assert {:id "id1120"} $_ModifiesFrame[this, _module.DoleOutReferences.__new];
            assume true;
            $rhs#0_0_1 := Set#Union($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, 
              Set#UnionOne(Set#Empty(): Set, $Box(_module.DoleOutReferences.u(this))));
            assert {:id "id1122"} Set#Subset($rhs#0_0_1, $Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set);
            $Heap := update($Heap, this, _module.DoleOutReferences.__new, $Box($rhs#0_0_1));
            assume $IsGoodHeap($Heap);
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(209,12)
            if (*)
            {
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(210,7)
                assert {:id "id1124"} {:subsumption 0} $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref != null;
                assume true;
                assert {:id "id1125"} $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DoleOutReferences.c)): ref, 
                      _module.Cell.data)): int
                   == LitInt(12);
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(211,7)
                assume true;
                assert {:id "id1126"} Set#IsMember($Unbox(read($Heap, this, _module.DoleOutReferences.__new)): Set, 
                  read($Heap, this, _module.DoleOutReferences.c));
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(212,7)
                assert {:id "id1127"} {:subsumption 0} $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref != null;
                assume true;
                assert {:id "id1128"} $Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DoleOutReferences.r)): ref, 
                      _module.Cell.data)): int
                   == LitInt(12);
            }
            else
            {
                // ----- forall statement (assign) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(214,7)
                if (*)
                {
                    // Assume Fuel Constant
                    havoc z#2;
                    assume $Is(z#2, Tclass._module.Cell?()) && $IsAlloc(z#2, Tclass._module.Cell?(), $Heap);
                    assume true;
                    assume Seq#Contains(myCells#0, $Box(z#2));
                    assert {:id "id1129"} {:subsumption 0} z#2 != null;
                    assume true;
                    assert {:id "id1130"} $_ModifiesFrame[z#2, _module.Cell.data];
                    assert {:id "id1131"} {:subsumption 0} z#2 != null;
                    assume true;
                    havoc z#3;
                    assume $Is(z#3, Tclass._module.Cell?()) && $IsAlloc(z#3, Tclass._module.Cell?(), $Heap);
                    assume Seq#Contains(myCells#0, $Box(z#3));
                    assume z#2 != z#3;
                    assert {:id "id1132"} z#2 != z#3
                       || _module.Cell.data != _module.Cell.data
                       || $Unbox(read($Heap, z#2, _module.Cell.data)): int + 1
                         == $Unbox(read($Heap, z#3, _module.Cell.data)): int + 1;
                    assume false;
                }
                else
                {
                    $prevHeap := $Heap;
                    havoc $Heap;
                    assume $HeapSucc($prevHeap, $Heap);
                    assume (forall $o: ref, $f: Field :: 
                      { read($Heap, $o, $f) } 
                      read($Heap, $o, $f) == read($prevHeap, $o, $f)
                         || (exists z#4: ref :: 
                          $Is(z#4, Tclass._module.Cell?())
                             && Seq#Contains(myCells#0, $Box(z#4))
                             && $o == z#4
                             && $f == _module.Cell.data));
                }
            }
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(197,3)
        assert {:id "id1133"} _yieldCount#0 > $decr$loop#00;
        assume true;
    }
}



const unique class._module.Cls?: ClassName;

function Tclass._module.Cls?() : Ty
uses {
// Tclass._module.Cls? Tag
axiom Tag(Tclass._module.Cls?()) == Tagclass._module.Cls?
   && TagFamily(Tclass._module.Cls?()) == tytagFamily$Cls;
}

const unique Tagclass._module.Cls?: TyTag;

// Box/unbox axiom for Tclass._module.Cls?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Cls?()) } 
  $IsBox(bx, Tclass._module.Cls?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Cls?()));

// $Is axiom for class Cls
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Cls?()) } 
  $Is($o, Tclass._module.Cls?())
     <==> $o == null || dtype($o) == Tclass._module.Cls?());

// $IsAlloc axiom for class Cls
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Cls?(), $h) } 
  $IsAlloc($o, Tclass._module.Cls?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Cls.y: Field
uses {
axiom FDim(_module.Cls.y) == 0
   && FieldOfDecl(class._module.Cls?, field$y) == _module.Cls.y
   && !$IsGhostField(_module.Cls.y);
}

// Cls.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cls.y)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Cls?()
     ==> $Is($Unbox(read($h, $o, _module.Cls.y)): int, TInt));

// Cls.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cls.y)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cls?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Cls.y)): int, TInt, $h));

procedure {:verboseName "Cls.LoopFrame_Constructor (well-formedness)"} CheckWellFormed$$_module.Cls.LoopFrame__Constructor(c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.Cls() : Ty
uses {
// Tclass._module.Cls Tag
axiom Tag(Tclass._module.Cls()) == Tagclass._module.Cls
   && TagFamily(Tclass._module.Cls()) == tytagFamily$Cls;
}

const unique Tagclass._module.Cls: TyTag;

// Box/unbox axiom for Tclass._module.Cls
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Cls()) } 
  $IsBox(bx, Tclass._module.Cls())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Cls()));

procedure {:verboseName "Cls.LoopFrame_Constructor (call)"} Call$$_module.Cls.LoopFrame__Constructor(c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cls())
         && $IsAlloc(this, Tclass._module.Cls(), $Heap));
  modifies $Heap;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cls.LoopFrame_Constructor (correctness)"} Impl$$_module.Cls.LoopFrame__Constructor(c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap))
   returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cls.LoopFrame_Constructor (correctness)"} Impl$$_module.Cls.LoopFrame__Constructor(c#0: ref) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.y: int;
  var $rhs#0: int;
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.Cell()) && $IsAlloc(d#0, Tclass._module.Cell(), $Heap);
  var $nw: ref;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var $rhs#0_0: int;
  var $rhs#0_1: int;
  var $rhs#0_2: int;

    // AddMethodImpl: LoopFrame_Constructor, Impl$$_module.Cls.LoopFrame__Constructor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(429,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(430,7)
    assume true;
    assume true;
    this.y := LitInt(10);
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(429,3)
    assume this != null && $Is(this, Tclass._module.Cls?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Cls.y)): int == this.y;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(429,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(432,12)
    assert {:id "id1135"} c#0 != null;
    assume true;
    assert {:id "id1136"} $_ModifiesFrame[c#0, _module.Cell.data];
    assume true;
    $rhs#0 := LitInt(10);
    $Heap := update($Heap, c#0, _module.Cell.data, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(433,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    d#0 := $nw;
    defass#d#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(434,12)
    assert {:id "id1140"} defass#d#0;
    assert {:id "id1141"} d#0 != null;
    assume true;
    assert {:id "id1142"} $_ModifiesFrame[d#0, _module.Cell.data];
    assume true;
    $rhs#1 := LitInt(10);
    $Heap := update($Heap, d#0, _module.Cell.data, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(435,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id1146"} $w$loop#0 ==> $Unbox(read($Heap, this, _module.Cls.y)): int <= LitInt(11);
      free invariant true;
      invariant {:id "id1150"} $w$loop#0 ==> $Unbox(read($Heap, d#0, _module.Cell.data)): int <= LitInt(11);
      free invariant true;
      invariant {:id "id1153"} $w$loop#0 ==> $Unbox(read($Heap, c#0, _module.Cell.data)): int <= LitInt(11);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id1145"} $Unbox(read($Heap, this, _module.Cls.y)): int <= LitInt(11);
            assert {:id "id1147"} defass#d#0;
            assert {:id "id1148"} {:subsumption 0} d#0 != null;
            assume true;
            assume {:id "id1149"} $Unbox(read($Heap, d#0, _module.Cell.data)): int <= LitInt(11);
            assert {:id "id1151"} {:subsumption 0} c#0 != null;
            assume true;
            assume {:id "id1152"} $Unbox(read($Heap, c#0, _module.Cell.data)): int <= LitInt(11);
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(441,9)
        assume true;
        assert {:id "id1154"} $_ModifiesFrame[this, _module.Cls.y];
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, this, _module.Cls.y)): int + 1;
        $Heap := update($Heap, this, _module.Cls.y, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(442,14)
        assert {:id "id1157"} c#0 != null;
        assume true;
        assert {:id "id1158"} $_ModifiesFrame[c#0, _module.Cell.data];
        assert {:id "id1159"} c#0 != null;
        assume true;
        $rhs#0_1 := $Unbox(read($Heap, c#0, _module.Cell.data)): int + 1;
        $Heap := update($Heap, c#0, _module.Cell.data, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(443,14)
        assert {:id "id1162"} defass#d#0;
        assert {:id "id1163"} d#0 != null;
        assume true;
        assert {:id "id1164"} $_ModifiesFrame[d#0, _module.Cell.data];
        assert {:id "id1165"} defass#d#0;
        assert {:id "id1166"} d#0 != null;
        assume true;
        $rhs#0_2 := $Unbox(read($Heap, d#0, _module.Cell.data)): int + 1;
        $Heap := update($Heap, d#0, _module.Cell.data, $Box($rhs#0_2));
        assume $IsGoodHeap($Heap);
        assume true;
    }
}



// $Is axiom for non-null type _module.Cls
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Cls()) } { $Is(c#0, Tclass._module.Cls?()) } 
  $Is(c#0, Tclass._module.Cls())
     <==> $Is(c#0, Tclass._module.Cls?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Cls
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Cls(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Cls?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Cls(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Cls?(), $h));

const unique class._module.LoopFrame__Iter?: ClassName;

function Tclass._module.LoopFrame__Iter?() : Ty
uses {
// Tclass._module.LoopFrame__Iter? Tag
axiom Tag(Tclass._module.LoopFrame__Iter?()) == Tagclass._module.LoopFrame__Iter?
   && TagFamily(Tclass._module.LoopFrame__Iter?()) == tytagFamily$LoopFrame_Iter;
}

const unique Tagclass._module.LoopFrame__Iter?: TyTag;

// Box/unbox axiom for Tclass._module.LoopFrame__Iter?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.LoopFrame__Iter?()) } 
  $IsBox(bx, Tclass._module.LoopFrame__Iter?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.LoopFrame__Iter?()));

// $Is axiom for iterator LoopFrame_Iter
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.LoopFrame__Iter?()) } 
  $Is($o, Tclass._module.LoopFrame__Iter?())
     <==> $o == null || dtype($o) == Tclass._module.LoopFrame__Iter?());

// $IsAlloc axiom for iterator LoopFrame_Iter
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.LoopFrame__Iter?(), $h) } 
  $IsAlloc($o, Tclass._module.LoopFrame__Iter?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.LoopFrame__Iter.c(ref) : ref;

// LoopFrame_Iter.c: Type axiom
axiom (forall $o: ref :: 
  { _module.LoopFrame__Iter.c($o) } 
  $o != null && dtype($o) == Tclass._module.LoopFrame__Iter?()
     ==> $Is(_module.LoopFrame__Iter.c($o), Tclass._module.Cell()));

// LoopFrame_Iter.c: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.LoopFrame__Iter.c($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LoopFrame__Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.LoopFrame__Iter.c($o), Tclass._module.Cell(), $h));

const _module.LoopFrame__Iter.y: Field
uses {
axiom FDim(_module.LoopFrame__Iter.y) == 0
   && FieldOfDecl(class._module.LoopFrame__Iter?, field$y)
     == _module.LoopFrame__Iter.y
   && !$IsGhostField(_module.LoopFrame__Iter.y);
}

// LoopFrame_Iter.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LoopFrame__Iter.y)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.LoopFrame__Iter?()
     ==> $Is($Unbox(read($h, $o, _module.LoopFrame__Iter.y)): int, TInt));

// LoopFrame_Iter.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LoopFrame__Iter.y)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LoopFrame__Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.LoopFrame__Iter.y)): int, TInt, $h));

const _module.LoopFrame__Iter.ys: Field
uses {
axiom FDim(_module.LoopFrame__Iter.ys) == 0
   && FieldOfDecl(class._module.LoopFrame__Iter?, field$ys)
     == _module.LoopFrame__Iter.ys
   && $IsGhostField(_module.LoopFrame__Iter.ys);
}

// LoopFrame_Iter.ys: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LoopFrame__Iter.ys)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.LoopFrame__Iter?()
     ==> $Is($Unbox(read($h, $o, _module.LoopFrame__Iter.ys)): Seq, TSeq(TInt)));

// LoopFrame_Iter.ys: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LoopFrame__Iter.ys)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LoopFrame__Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.LoopFrame__Iter.ys)): Seq, TSeq(TInt), $h));

function _module.LoopFrame__Iter.__reads(ref) : Set;

// LoopFrame_Iter._reads: Type axiom
axiom (forall $o: ref :: 
  { _module.LoopFrame__Iter.__reads($o) } 
  $o != null && dtype($o) == Tclass._module.LoopFrame__Iter?()
     ==> $Is(_module.LoopFrame__Iter.__reads($o), TSet(Tclass._System.object?())));

// LoopFrame_Iter._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.LoopFrame__Iter.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LoopFrame__Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.LoopFrame__Iter.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.LoopFrame__Iter.__modifies(ref) : Set;

// LoopFrame_Iter._modifies: Type axiom
axiom (forall $o: ref :: 
  { _module.LoopFrame__Iter.__modifies($o) } 
  $o != null && dtype($o) == Tclass._module.LoopFrame__Iter?()
     ==> $Is(_module.LoopFrame__Iter.__modifies($o), TSet(Tclass._System.object?())));

// LoopFrame_Iter._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.LoopFrame__Iter.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LoopFrame__Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.LoopFrame__Iter.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.LoopFrame__Iter.__new: Field
uses {
axiom FDim(_module.LoopFrame__Iter.__new) == 0
   && FieldOfDecl(class._module.LoopFrame__Iter?, field$_new)
     == _module.LoopFrame__Iter.__new
   && $IsGhostField(_module.LoopFrame__Iter.__new);
}

// LoopFrame_Iter._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LoopFrame__Iter.__new)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.LoopFrame__Iter?()
     ==> $Is($Unbox(read($h, $o, _module.LoopFrame__Iter.__new)): Set, 
      TSet(Tclass._System.object?())));

// LoopFrame_Iter._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.LoopFrame__Iter.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LoopFrame__Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.LoopFrame__Iter.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function _module.LoopFrame__Iter.__decreases0(ref) : ref;

// LoopFrame_Iter._decreases0: Type axiom
axiom (forall $o: ref :: 
  { _module.LoopFrame__Iter.__decreases0($o) } 
  $o != null && dtype($o) == Tclass._module.LoopFrame__Iter?()
     ==> $Is(_module.LoopFrame__Iter.__decreases0($o), Tclass._module.Cell?()));

// LoopFrame_Iter._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.LoopFrame__Iter.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.LoopFrame__Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.LoopFrame__Iter.__decreases0($o), Tclass._module.Cell?(), $h));

procedure {:verboseName "LoopFrame_Iter._ctor (well-formedness)"} CheckWellFormed$$_module.LoopFrame__Iter.__ctor(c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.LoopFrame__Iter() : Ty
uses {
// Tclass._module.LoopFrame__Iter Tag
axiom Tag(Tclass._module.LoopFrame__Iter()) == Tagclass._module.LoopFrame__Iter
   && TagFamily(Tclass._module.LoopFrame__Iter()) == tytagFamily$LoopFrame_Iter;
}

const unique Tagclass._module.LoopFrame__Iter: TyTag;

// Box/unbox axiom for Tclass._module.LoopFrame__Iter
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.LoopFrame__Iter()) } 
  $IsBox(bx, Tclass._module.LoopFrame__Iter())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.LoopFrame__Iter()));

procedure {:verboseName "LoopFrame_Iter._ctor (call)"} Call$$_module.LoopFrame__Iter.__ctor(c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LoopFrame__Iter())
         && $IsAlloc(this, Tclass._module.LoopFrame__Iter(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1176"} _module.LoopFrame__Iter.c(this) == c#0;
  free ensures true;
  ensures {:id "id1177"} Seq#Equal($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq, Seq#Empty(): Seq);
  free ensures _module.LoopFrame__Iter.Valid#canCall($Heap, this);
  ensures {:id "id1178"} _module.LoopFrame__Iter.Valid($Heap, this);
  free ensures true;
  ensures {:id "id1179"} Set#Equal(_module.LoopFrame__Iter.__reads(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
  free ensures true;
  ensures {:id "id1180"} Set#Equal(_module.LoopFrame__Iter.__modifies(this), 
    Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
  free ensures true;
  ensures {:id "id1181"} Set#Equal($Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set, Set#Empty(): Set);
  free ensures true;
  ensures {:id "id1182"} _module.LoopFrame__Iter.__decreases0(this) == c#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.LoopFrame_Iter.Valid
function _module.LoopFrame__Iter.Valid($heap: Heap, this: ref) : bool;

function _module.LoopFrame__Iter.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.LoopFrame__Iter.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.LoopFrame__Iter.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.LoopFrame__Iter())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.LoopFrame__Iter.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.LoopFrame__Iter.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.LoopFrame__Iter.Valid($h0, this)
       == _module.LoopFrame__Iter.Valid($h1, this));

function _module.LoopFrame__Iter.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.LoopFrame__Iter.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.LoopFrame__Iter.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.LoopFrame__Iter())
       && $IsAlloc(this, Tclass._module.LoopFrame__Iter(), $Heap)
     ==> _module.LoopFrame__Iter.Valid#requires($Heap, this) == true);

procedure {:verboseName "LoopFrame_Iter.Valid (well-formedness)"} CheckWellformed$$_module.LoopFrame__Iter.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LoopFrame__Iter())
         && $IsAlloc(this, Tclass._module.LoopFrame__Iter(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopFrame_Iter.Valid (well-formedness)"} CheckWellformed$$_module.LoopFrame__Iter.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.LoopFrame__Iter.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.LoopFrame__Iter.__new];
    assert {:id "id1183"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "LoopFrame_Iter.MoveNext (call)"} Call$$_module.LoopFrame__Iter.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LoopFrame__Iter())
         && $IsAlloc(this, Tclass._module.LoopFrame__Iter(), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id1184"} _module.LoopFrame__Iter.Valid($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1185"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.LoopFrame__Iter.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.LoopFrame__Iter.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1186"} !Set#IsMember($Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.LoopFrame__Iter.Valid#canCall($Heap, this);
  ensures {:id "id1187"} more#0 ==> _module.LoopFrame__Iter.Valid($Heap, this);
  free ensures true;
  ensures {:id "id1188"} Seq#Equal($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.LoopFrame__Iter.ys)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LoopFrame__Iter.y)))
       else $Unbox(read(old($Heap), this, _module.LoopFrame__Iter.ys)): Seq));
  free ensures true;
  ensures {:id "id1189"} more#0
     ==> Seq#Length($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq)
       <= LitInt(2);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.LoopFrame__Iter.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.LoopFrame__Iter.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.LoopFrame_Iter
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.LoopFrame__Iter()) } 
    { $Is(c#0, Tclass._module.LoopFrame__Iter?()) } 
  $Is(c#0, Tclass._module.LoopFrame__Iter())
     <==> $Is(c#0, Tclass._module.LoopFrame__Iter?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.LoopFrame_Iter
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.LoopFrame__Iter(), $h) } 
    { $IsAlloc(c#0, Tclass._module.LoopFrame__Iter?(), $h) } 
  $IsAlloc(c#0, Tclass._module.LoopFrame__Iter(), $h)
     <==> $IsAlloc(c#0, Tclass._module.LoopFrame__Iter?(), $h));

procedure {:verboseName "LoopFrame_Iter (well-formedness)"} CheckWellFormed$$_module.LoopFrame__Iter(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LoopFrame__Iter())
         && $IsAlloc(this, Tclass._module.LoopFrame__Iter(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopFrame_Iter (correctness)"} Impl$$_module.LoopFrame__Iter(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.LoopFrame__Iter())
         && $IsAlloc(this, Tclass._module.LoopFrame__Iter(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopFrame_Iter (correctness)"} Impl$$_module.LoopFrame__Iter(this: ref, c#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int
     where _yieldCount#0
       == Seq#Length($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq);
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var $rhs#0: int;
  var $rhs#1: int;
  var defass#d#0: bool;
  var d#0: ref
     where defass#d#0
       ==> $Is(d#0, Tclass._module.Cell()) && $IsAlloc(d#0, Tclass._module.Cell(), $Heap);
  var $nw: ref;
  var $rhs#2: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#0_0_0: int;
  var $rhs#0_1_0: int;
  var $rhs#0_0: int;
  var $rhs#0_1: int;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this || $o == c#0);
    assume {:id "id1199"} _module.LoopFrame__Iter.c(this) == c#0;
    assume {:id "id1200"} Seq#Equal($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq, Seq#Empty(): Seq);
    assume {:id "id1201"} _module.LoopFrame__Iter.Valid($Heap, this);
    assume {:id "id1202"} Set#Equal(_module.LoopFrame__Iter.__reads(this), Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id1203"} Set#Equal(_module.LoopFrame__Iter.__modifies(this), 
      Set#UnionOne(Set#Empty(): Set, $Box(c#0)));
    assume {:id "id1204"} Set#Equal($Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set, Set#Empty(): Set);
    assume {:id "id1205"} _module.LoopFrame__Iter.__decreases0(this) == c#0;
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.LoopFrame__Iter.__reads(this), $Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(453,3)
    $Heap := update($Heap, 
      this, 
      _module.LoopFrame__Iter.ys, 
      $Box(Seq#Append($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq, 
          Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LoopFrame__Iter.y)))));
    _yieldCount#0 := _yieldCount#0 + 1;
    assume _yieldCount#0
       == Seq#Length($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq);
    assume $IsGoodHeap($Heap);
    assert {:id "id1206"} {:subsumption 0} Seq#Length($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq)
       <= LitInt(2);
    assume {:id "id1207"} Seq#Length($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq)
       <= LitInt(2);
    call $YieldHavoc(this, _module.LoopFrame__Iter.__reads(this), $Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(454,5)
    assume true;
    assert {:id "id1208"} $_ModifiesFrame[this, _module.LoopFrame__Iter.y];
    assume true;
    $rhs#0 := LitInt(10);
    $Heap := update($Heap, this, _module.LoopFrame__Iter.y, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(455,10)
    assert {:id "id1211"} _module.LoopFrame__Iter.c(this) != null;
    assume true;
    assert {:id "id1212"} $_ModifiesFrame[_module.LoopFrame__Iter.c(this), _module.Cell.data];
    assume true;
    $rhs#1 := LitInt(10);
    $Heap := update($Heap, _module.LoopFrame__Iter.c(this), _module.Cell.data, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(456,9)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    $Heap := update($Heap, 
      this, 
      _module.LoopFrame__Iter.__new, 
      $Box(Set#UnionOne($Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set, $Box($nw))));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    d#0 := $nw;
    defass#d#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(457,10)
    assert {:id "id1216"} defass#d#0;
    assert {:id "id1217"} d#0 != null;
    assume true;
    assert {:id "id1218"} $_ModifiesFrame[d#0, _module.Cell.data];
    assume true;
    $rhs#2 := LitInt(10);
    $Heap := update($Heap, d#0, _module.Cell.data, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(458,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _yieldCount#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id1222"} $w$loop#0
         ==> $Unbox(read($Heap, this, _module.LoopFrame__Iter.y)): int <= LitInt(11);
      free invariant true;
      invariant {:id "id1226"} $w$loop#0 ==> $Unbox(read($Heap, d#0, _module.Cell.data)): int <= LitInt(11);
      free invariant true;
      invariant {:id "id1229"} $w$loop#0
         ==> $Unbox(read($Heap, _module.LoopFrame__Iter.c(this), _module.Cell.data)): int
           <= LitInt(11);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this || $o == c#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      invariant (forall $o: ref :: 
          { $o != null } 
          Set#IsMember($Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set, $Box($o))
             ==> $o != null)
         && (forall $o: ref :: 
          { Set#IsMember($Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set, $Box($o)) } 
          Set#IsMember($Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set, $Box($o))
             ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant _yieldCount#0 >= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id1221"} $Unbox(read($Heap, this, _module.LoopFrame__Iter.y)): int <= LitInt(11);
            assert {:id "id1223"} defass#d#0;
            assert {:id "id1224"} {:subsumption 0} d#0 != null;
            assume true;
            assume {:id "id1225"} $Unbox(read($Heap, d#0, _module.Cell.data)): int <= LitInt(11);
            assert {:id "id1227"} {:subsumption 0} _module.LoopFrame__Iter.c(this) != null;
            assume true;
            assume {:id "id1228"} $Unbox(read($Heap, _module.LoopFrame__Iter.c(this), _module.Cell.data)): int
               <= LitInt(11);
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := _yieldCount#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(463,5)
        if (*)
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(464,14)
            assume true;
            assert {:id "id1230"} $_ModifiesFrame[this, _module.LoopFrame__Iter.y];
            assume true;
            $rhs#0_0_0 := $Unbox(read($Heap, this, _module.LoopFrame__Iter.y)): int + 1;
            $Heap := update($Heap, this, _module.LoopFrame__Iter.y, $Box($rhs#0_0_0));
            assume $IsGoodHeap($Heap);
            pop;
        }
        else
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(466,9)
            assume true;
            assert {:id "id1233"} $_ModifiesFrame[this, _module.LoopFrame__Iter.y];
            assume true;
            $rhs#0_1_0 := $Unbox(read($Heap, this, _module.LoopFrame__Iter.y)): int + 1;
            $Heap := update($Heap, this, _module.LoopFrame__Iter.y, $Box($rhs#0_1_0));
            assume $IsGoodHeap($Heap);
            pop;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(468,12)
        assert {:id "id1236"} _module.LoopFrame__Iter.c(this) != null;
        assume true;
        assert {:id "id1237"} $_ModifiesFrame[_module.LoopFrame__Iter.c(this), _module.Cell.data];
        assert {:id "id1238"} _module.LoopFrame__Iter.c(this) != null;
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, _module.LoopFrame__Iter.c(this), _module.Cell.data)): int + 1;
        $Heap := update($Heap, _module.LoopFrame__Iter.c(this), _module.Cell.data, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(469,12)
        assert {:id "id1241"} defass#d#0;
        assert {:id "id1242"} d#0 != null;
        assume true;
        assert {:id "id1243"} $_ModifiesFrame[d#0, _module.Cell.data];
        assert {:id "id1244"} defass#d#0;
        assert {:id "id1245"} d#0 != null;
        assume true;
        $rhs#0_1 := $Unbox(read($Heap, d#0, _module.Cell.data)): int + 1;
        $Heap := update($Heap, d#0, _module.Cell.data, $Box($rhs#0_1));
        assume $IsGoodHeap($Heap);
        // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(470,5)
        $Heap := update($Heap, 
          this, 
          _module.LoopFrame__Iter.ys, 
          $Box(Seq#Append($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.LoopFrame__Iter.y)))));
        _yieldCount#0 := _yieldCount#0 + 1;
        assume _yieldCount#0
           == Seq#Length($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq);
        assume $IsGoodHeap($Heap);
        assert {:id "id1248"} {:subsumption 0} Seq#Length($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq)
           <= LitInt(2);
        assume {:id "id1249"} Seq#Length($Unbox(read($Heap, this, _module.LoopFrame__Iter.ys)): Seq)
           <= LitInt(2);
        call $YieldHavoc(this, _module.LoopFrame__Iter.__reads(this), $Unbox(read($Heap, this, _module.LoopFrame__Iter.__new)): Set);
        $_OldIterHeap := $Heap;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(458,3)
        assert {:id "id1250"} _yieldCount#0 > $decr$loop#00;
        assume true;
    }
}



const unique class._module.NewRemainsFresh?: ClassName;

function Tclass._module.NewRemainsFresh?() : Ty
uses {
// Tclass._module.NewRemainsFresh? Tag
axiom Tag(Tclass._module.NewRemainsFresh?()) == Tagclass._module.NewRemainsFresh?
   && TagFamily(Tclass._module.NewRemainsFresh?()) == tytagFamily$NewRemainsFresh;
}

const unique Tagclass._module.NewRemainsFresh?: TyTag;

// Box/unbox axiom for Tclass._module.NewRemainsFresh?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NewRemainsFresh?()) } 
  $IsBox(bx, Tclass._module.NewRemainsFresh?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NewRemainsFresh?()));

// $Is axiom for iterator NewRemainsFresh
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.NewRemainsFresh?()) } 
  $Is($o, Tclass._module.NewRemainsFresh?())
     <==> $o == null || dtype($o) == Tclass._module.NewRemainsFresh?());

// $IsAlloc axiom for iterator NewRemainsFresh
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.NewRemainsFresh?(), $h) } 
  $IsAlloc($o, Tclass._module.NewRemainsFresh?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function _module.NewRemainsFresh.x(ref) : int;

// NewRemainsFresh.x: Type axiom
axiom (forall $o: ref :: 
  { _module.NewRemainsFresh.x($o) } 
  $o != null && dtype($o) == Tclass._module.NewRemainsFresh?()
     ==> $Is(_module.NewRemainsFresh.x($o), Tclass._System.nat()));

// NewRemainsFresh.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.NewRemainsFresh.x($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NewRemainsFresh?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.NewRemainsFresh.x($o), Tclass._System.nat(), $h));

const _module.NewRemainsFresh.y: Field
uses {
axiom FDim(_module.NewRemainsFresh.y) == 0
   && FieldOfDecl(class._module.NewRemainsFresh?, field$y)
     == _module.NewRemainsFresh.y
   && !$IsGhostField(_module.NewRemainsFresh.y);
}

// NewRemainsFresh.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NewRemainsFresh.y)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.NewRemainsFresh?()
     ==> $Is($Unbox(read($h, $o, _module.NewRemainsFresh.y)): int, Tclass._System.nat()));

// NewRemainsFresh.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NewRemainsFresh.y)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NewRemainsFresh?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.NewRemainsFresh.y)): int, Tclass._System.nat(), $h));

const _module.NewRemainsFresh.ys: Field
uses {
axiom FDim(_module.NewRemainsFresh.ys) == 0
   && FieldOfDecl(class._module.NewRemainsFresh?, field$ys)
     == _module.NewRemainsFresh.ys
   && $IsGhostField(_module.NewRemainsFresh.ys);
}

// NewRemainsFresh.ys: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NewRemainsFresh.ys)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.NewRemainsFresh?()
     ==> $Is($Unbox(read($h, $o, _module.NewRemainsFresh.ys)): Seq, 
      TSeq(Tclass._System.nat())));

// NewRemainsFresh.ys: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NewRemainsFresh.ys)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NewRemainsFresh?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.NewRemainsFresh.ys)): Seq, 
      TSeq(Tclass._System.nat()), 
      $h));

function _module.NewRemainsFresh.__reads(ref) : Set;

// NewRemainsFresh._reads: Type axiom
axiom (forall $o: ref :: 
  { _module.NewRemainsFresh.__reads($o) } 
  $o != null && dtype($o) == Tclass._module.NewRemainsFresh?()
     ==> $Is(_module.NewRemainsFresh.__reads($o), TSet(Tclass._System.object?())));

// NewRemainsFresh._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.NewRemainsFresh.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NewRemainsFresh?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.NewRemainsFresh.__reads($o), TSet(Tclass._System.object?()), $h));

function _module.NewRemainsFresh.__modifies(ref) : Set;

// NewRemainsFresh._modifies: Type axiom
axiom (forall $o: ref :: 
  { _module.NewRemainsFresh.__modifies($o) } 
  $o != null && dtype($o) == Tclass._module.NewRemainsFresh?()
     ==> $Is(_module.NewRemainsFresh.__modifies($o), TSet(Tclass._System.object?())));

// NewRemainsFresh._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.NewRemainsFresh.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NewRemainsFresh?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.NewRemainsFresh.__modifies($o), TSet(Tclass._System.object?()), $h));

const _module.NewRemainsFresh.__new: Field
uses {
axiom FDim(_module.NewRemainsFresh.__new) == 0
   && FieldOfDecl(class._module.NewRemainsFresh?, field$_new)
     == _module.NewRemainsFresh.__new
   && $IsGhostField(_module.NewRemainsFresh.__new);
}

// NewRemainsFresh._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NewRemainsFresh.__new)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.NewRemainsFresh?()
     ==> $Is($Unbox(read($h, $o, _module.NewRemainsFresh.__new)): Set, 
      TSet(Tclass._System.object?())));

// NewRemainsFresh._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.NewRemainsFresh.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NewRemainsFresh?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.NewRemainsFresh.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function _module.NewRemainsFresh.__decreases0(ref) : int;

// NewRemainsFresh._decreases0: Type axiom
axiom (forall $o: ref :: 
  { _module.NewRemainsFresh.__decreases0($o) } 
  $o != null && dtype($o) == Tclass._module.NewRemainsFresh?()
     ==> $Is(_module.NewRemainsFresh.__decreases0($o), TInt));

// NewRemainsFresh._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { _module.NewRemainsFresh.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.NewRemainsFresh?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(_module.NewRemainsFresh.__decreases0($o), TInt, $h));

procedure {:verboseName "NewRemainsFresh._ctor (well-formedness)"} CheckWellFormed$$_module.NewRemainsFresh.__ctor(x#0: int where LitInt(0) <= x#0) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.NewRemainsFresh() : Ty
uses {
// Tclass._module.NewRemainsFresh Tag
axiom Tag(Tclass._module.NewRemainsFresh()) == Tagclass._module.NewRemainsFresh
   && TagFamily(Tclass._module.NewRemainsFresh()) == tytagFamily$NewRemainsFresh;
}

const unique Tagclass._module.NewRemainsFresh: TyTag;

// Box/unbox axiom for Tclass._module.NewRemainsFresh
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NewRemainsFresh()) } 
  $IsBox(bx, Tclass._module.NewRemainsFresh())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.NewRemainsFresh()));

procedure {:verboseName "NewRemainsFresh._ctor (call)"} Call$$_module.NewRemainsFresh.__ctor(x#0: int where LitInt(0) <= x#0)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NewRemainsFresh())
         && $IsAlloc(this, Tclass._module.NewRemainsFresh(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1258"} _module.NewRemainsFresh.x(this) == x#0;
  free ensures true;
  ensures {:id "id1259"} Seq#Equal($Unbox(read($Heap, this, _module.NewRemainsFresh.ys)): Seq, Seq#Empty(): Seq);
  free ensures _module.NewRemainsFresh.Valid#canCall($Heap, this);
  ensures {:id "id1260"} _module.NewRemainsFresh.Valid($Heap, this);
  free ensures true;
  ensures {:id "id1261"} Set#Equal(_module.NewRemainsFresh.__reads(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id1262"} Set#Equal(_module.NewRemainsFresh.__modifies(this), Set#Empty(): Set);
  free ensures true;
  ensures {:id "id1263"} Set#Equal($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, Set#Empty(): Set);
  free ensures true;
  ensures {:id "id1264"} _module.NewRemainsFresh.__decreases0(this) == x#0;
  // constructor allocates the object
  ensures !$Unbox(read(old($Heap), this, alloc)): bool;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module.NewRemainsFresh.Valid
function _module.NewRemainsFresh.Valid($heap: Heap, this: ref) : bool;

function _module.NewRemainsFresh.Valid#canCall($heap: Heap, this: ref) : bool;

// frame axiom for _module.NewRemainsFresh.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.NewRemainsFresh.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.NewRemainsFresh())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(_module.NewRemainsFresh.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, _module.NewRemainsFresh.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.NewRemainsFresh.Valid($h0, this)
       == _module.NewRemainsFresh.Valid($h1, this));

function _module.NewRemainsFresh.Valid#requires(Heap, ref) : bool;

// #requires axiom for _module.NewRemainsFresh.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { _module.NewRemainsFresh.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.NewRemainsFresh())
       && $IsAlloc(this, Tclass._module.NewRemainsFresh(), $Heap)
     ==> _module.NewRemainsFresh.Valid#requires($Heap, this) == true);

procedure {:verboseName "NewRemainsFresh.Valid (well-formedness)"} CheckWellformed$$_module.NewRemainsFresh.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NewRemainsFresh())
         && $IsAlloc(this, Tclass._module.NewRemainsFresh(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewRemainsFresh.Valid (well-formedness)"} CheckWellformed$$_module.NewRemainsFresh.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;

    b$reqreads#0 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember(_module.NewRemainsFresh.__reads(this), $Box($o))
           || Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.NewRemainsFresh.__new];
    assert {:id "id1265"} b$reqreads#0;
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
        assume false;
    }
}



procedure {:verboseName "NewRemainsFresh.MoveNext (call)"} Call$$_module.NewRemainsFresh.MoveNext(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NewRemainsFresh())
         && $IsAlloc(this, Tclass._module.NewRemainsFresh(), $Heap))
   returns (more#0: bool);
  // user-defined preconditions
  requires {:id "id1266"} _module.NewRemainsFresh.Valid($Heap, this);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id1267"} (forall $o: ref :: 
      { $o != null } 
      Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.NewRemainsFresh.__new)): Set, $Box($o))
         ==> $o != null)
     && (forall $o: ref :: 
      { $Unbox(read(old($Heap), $o, alloc)): bool } 
      Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box($o))
           && !Set#IsMember($Unbox(read(old($Heap), this, _module.NewRemainsFresh.__new)): Set, $Box($o))
         ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
  free ensures true;
  ensures {:id "id1268"} !Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box(null));
  free ensures more#0 ==> _module.NewRemainsFresh.Valid#canCall($Heap, this);
  ensures {:id "id1269"} more#0 ==> _module.NewRemainsFresh.Valid($Heap, this);
  free ensures true;
  ensures {:id "id1270"} Seq#Equal($Unbox(read($Heap, this, _module.NewRemainsFresh.ys)): Seq, 
    (if more#0
       then Seq#Append($Unbox(read(old($Heap), this, _module.NewRemainsFresh.ys)): Seq, 
        Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.NewRemainsFresh.y)))
       else $Unbox(read(old($Heap), this, _module.NewRemainsFresh.ys)): Seq));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == this
         || Set#IsMember(_module.NewRemainsFresh.__modifies(this), $Box($o))
         || Set#IsMember($Unbox(read(old($Heap), this, _module.NewRemainsFresh.__new)): Set, $Box($o)));
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.NewRemainsFresh
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.NewRemainsFresh()) } 
    { $Is(c#0, Tclass._module.NewRemainsFresh?()) } 
  $Is(c#0, Tclass._module.NewRemainsFresh())
     <==> $Is(c#0, Tclass._module.NewRemainsFresh?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.NewRemainsFresh
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.NewRemainsFresh(), $h) } 
    { $IsAlloc(c#0, Tclass._module.NewRemainsFresh?(), $h) } 
  $IsAlloc(c#0, Tclass._module.NewRemainsFresh(), $h)
     <==> $IsAlloc(c#0, Tclass._module.NewRemainsFresh?(), $h));

procedure {:verboseName "NewRemainsFresh (well-formedness)"} CheckWellFormed$$_module.NewRemainsFresh(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NewRemainsFresh())
         && $IsAlloc(this, Tclass._module.NewRemainsFresh(), $Heap), 
    x#0: int where LitInt(0) <= x#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NewRemainsFresh (correctness)"} Impl$$_module.NewRemainsFresh(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.NewRemainsFresh())
         && $IsAlloc(this, Tclass._module.NewRemainsFresh(), $Heap), 
    x#0: int where LitInt(0) <= x#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NewRemainsFresh (correctness)"} Impl$$_module.NewRemainsFresh(this: ref, x#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _yieldCount#0: int
     where _yieldCount#0
       == Seq#Length($Unbox(read($Heap, this, _module.NewRemainsFresh.ys)): Seq);
  var $_OldIterHeap: Heap
     where $IsGoodHeap($_OldIterHeap) && $HeapSucc($_OldIterHeap, $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var z#0: ref;
  var defass#c#0: bool;
  var c#0: ref
     where defass#c#0
       ==> $Is(c#0, Tclass._module.Cell()) && $IsAlloc(c#0, Tclass._module.Cell(), $Heap);
  var $nw: ref;
  var z#2: ref;
  var z#4: ref;

    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assume {:id "id1279"} _module.NewRemainsFresh.x(this) == x#0;
    assume {:id "id1280"} Seq#Equal($Unbox(read($Heap, this, _module.NewRemainsFresh.ys)): Seq, Seq#Empty(): Seq);
    assume {:id "id1281"} _module.NewRemainsFresh.Valid($Heap, this);
    assume {:id "id1282"} Set#Equal(_module.NewRemainsFresh.__reads(this), Set#Empty(): Set);
    assume {:id "id1283"} Set#Equal(_module.NewRemainsFresh.__modifies(this), Set#Empty(): Set);
    assume {:id "id1284"} Set#Equal($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, Set#Empty(): Set);
    assume {:id "id1285"} _module.NewRemainsFresh.__decreases0(this) == x#0;
    assume _yieldCount#0 == 0;
    call $YieldHavoc(this, _module.NewRemainsFresh.__reads(this), $Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set);
    $_OldIterHeap := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(476,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _yieldCount#0;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == this);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      invariant (forall $o: ref :: 
          { $o != null } 
          Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box($o))
             ==> $o != null)
         && (forall $o: ref :: 
          { Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box($o)) } 
          Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box($o))
             ==> !$Unbox(read(old($Heap), $o, alloc)): bool);
      free invariant _yieldCount#0 >= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        if (*)
        {
            break;
        }

        $decr$loop#00 := _yieldCount#0;
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(478,5)
        assume true;
        assert {:id "id1286"} LitInt(0)
           <= _module.NewRemainsFresh.x(this)
             + $Unbox(read($Heap, this, _module.NewRemainsFresh.y)): int;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(479,5)
        if (*)
        {
            push;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(480,7)
            // Begin Comprehension WF check
            havoc z#0;
            if ($Is(z#0, Tclass._System.object?())
               && $IsAlloc(z#0, Tclass._System.object?(), $Heap))
            {
                if (Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box(z#0)))
                {
                }
            }

            // End Comprehension WF check
            assume true;
            assert {:id "id1287"} (forall z#1: ref :: 
              $Is(z#1, Tclass._System.object?())
                 ==> 
                Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box(z#1))
                 ==> z#1 != null && !$Unbox(read(old($Heap), z#1, alloc)): bool);
            pop;
        }
        else
        {
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(482,11)
        assume true;
        havoc $nw;
        assume $nw != null && $Is($nw, Tclass._module.Cell?());
        assume !$Unbox(read($Heap, $nw, alloc)): bool;
        $Heap := update($Heap, $nw, alloc, $Box(true));
        $Heap := update($Heap, 
          this, 
          _module.NewRemainsFresh.__new, 
          $Box(Set#UnionOne($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box($nw))));
        assume $IsGoodHeap($Heap);
        assume $IsHeapAnchor($Heap);
        c#0 := $nw;
        defass#c#0 := true;
        // ----- yield statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(483,5)
        $Heap := update($Heap, 
          this, 
          _module.NewRemainsFresh.ys, 
          $Box(Seq#Append($Unbox(read($Heap, this, _module.NewRemainsFresh.ys)): Seq, 
              Seq#Build(Seq#Empty(): Seq, read($Heap, this, _module.NewRemainsFresh.y)))));
        _yieldCount#0 := _yieldCount#0 + 1;
        assume _yieldCount#0
           == Seq#Length($Unbox(read($Heap, this, _module.NewRemainsFresh.ys)): Seq);
        assume $IsGoodHeap($Heap);
        call $YieldHavoc(this, _module.NewRemainsFresh.__reads(this), $Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set);
        $_OldIterHeap := $Heap;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(484,5)
        // Begin Comprehension WF check
        havoc z#2;
        if ($Is(z#2, Tclass._System.object?())
           && $IsAlloc(z#2, Tclass._System.object?(), $Heap))
        {
            if (Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box(z#2)))
            {
            }
        }

        // End Comprehension WF check
        assume true;
        assert {:id "id1289"} (forall z#3: ref :: 
          $Is(z#3, Tclass._System.object?())
             ==> 
            Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box(z#3))
             ==> z#3 != null && !$Unbox(read(old($Heap), z#3, alloc)): bool);
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(476,3)
        assert {:id "id1290"} _yieldCount#0 > $decr$loop#00;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Iterators.dfy(486,3)
    // Begin Comprehension WF check
    havoc z#4;
    if ($Is(z#4, Tclass._System.object?())
       && $IsAlloc(z#4, Tclass._System.object?(), $Heap))
    {
        if (Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box(z#4)))
        {
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id1291"} (forall z#5: ref :: 
      $Is(z#5, Tclass._System.object?())
         ==> 
        Set#IsMember($Unbox(read($Heap, this, _module.NewRemainsFresh.__new)): Set, $Box(z#5))
         ==> z#5 != null && !$Unbox(read(old($Heap), z#5, alloc)): bool);
}



const unique class.ITER__A.__default: ClassName;

const unique class.ITER__A.RecursiveIterator?: ClassName;

function Tclass.ITER__A.RecursiveIterator?() : Ty
uses {
// Tclass.ITER__A.RecursiveIterator? Tag
axiom Tag(Tclass.ITER__A.RecursiveIterator?()) == Tagclass.ITER__A.RecursiveIterator?
   && TagFamily(Tclass.ITER__A.RecursiveIterator?()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__A.RecursiveIterator?: TyTag;

// Box/unbox axiom for Tclass.ITER__A.RecursiveIterator?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__A.RecursiveIterator?()) } 
  $IsBox(bx, Tclass.ITER__A.RecursiveIterator?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__A.RecursiveIterator?()));

// $Is axiom for iterator RecursiveIterator
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__A.RecursiveIterator?()) } 
  $Is($o, Tclass.ITER__A.RecursiveIterator?())
     <==> $o == null || dtype($o) == Tclass.ITER__A.RecursiveIterator?());

// $IsAlloc axiom for iterator RecursiveIterator
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__A.RecursiveIterator?(), $h) } 
  $IsAlloc($o, Tclass.ITER__A.RecursiveIterator?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function ITER__A.RecursiveIterator.n(ref) : int;

// RecursiveIterator.n: Type axiom
axiom (forall $o: ref :: 
  { ITER__A.RecursiveIterator.n($o) } 
  $o != null && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
     ==> $Is(ITER__A.RecursiveIterator.n($o), Tclass._System.nat()));

// RecursiveIterator.n: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__A.RecursiveIterator.n($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__A.RecursiveIterator.n($o), Tclass._System.nat(), $h));

function ITER__A.RecursiveIterator.r(ref) : ref;

function Tclass.ITER__A.RecIterCaller?() : Ty
uses {
// Tclass.ITER__A.RecIterCaller? Tag
axiom Tag(Tclass.ITER__A.RecIterCaller?()) == Tagclass.ITER__A.RecIterCaller?
   && TagFamily(Tclass.ITER__A.RecIterCaller?()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__A.RecIterCaller?: TyTag;

// Box/unbox axiom for Tclass.ITER__A.RecIterCaller?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__A.RecIterCaller?()) } 
  $IsBox(bx, Tclass.ITER__A.RecIterCaller?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__A.RecIterCaller?()));

// RecursiveIterator.r: Type axiom
axiom (forall $o: ref :: 
  { ITER__A.RecursiveIterator.r($o) } 
  $o != null && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
     ==> $Is(ITER__A.RecursiveIterator.r($o), Tclass.ITER__A.RecIterCaller?()));

// RecursiveIterator.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__A.RecursiveIterator.r($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__A.RecursiveIterator.r($o), Tclass.ITER__A.RecIterCaller?(), $h));

function ITER__A.RecursiveIterator.good(ref) : bool;

// RecursiveIterator.good: Type axiom
axiom (forall $o: ref :: 
  { ITER__A.RecursiveIterator.good($o) } 
  $o != null && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
     ==> $Is(ITER__A.RecursiveIterator.good($o), TBool));

// RecursiveIterator.good: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__A.RecursiveIterator.good($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__A.RecursiveIterator.good($o), TBool, $h));

function ITER__A.RecursiveIterator.__reads(ref) : Set;

// RecursiveIterator._reads: Type axiom
axiom (forall $o: ref :: 
  { ITER__A.RecursiveIterator.__reads($o) } 
  $o != null && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
     ==> $Is(ITER__A.RecursiveIterator.__reads($o), TSet(Tclass._System.object?())));

// RecursiveIterator._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__A.RecursiveIterator.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__A.RecursiveIterator.__reads($o), TSet(Tclass._System.object?()), $h));

function ITER__A.RecursiveIterator.__modifies(ref) : Set;

// RecursiveIterator._modifies: Type axiom
axiom (forall $o: ref :: 
  { ITER__A.RecursiveIterator.__modifies($o) } 
  $o != null && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
     ==> $Is(ITER__A.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?())));

// RecursiveIterator._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__A.RecursiveIterator.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__A.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?()), $h));

const ITER__A.RecursiveIterator.__new: Field
uses {
axiom FDim(ITER__A.RecursiveIterator.__new) == 0
   && FieldOfDecl(class.ITER__A.RecursiveIterator?, field$_new)
     == ITER__A.RecursiveIterator.__new
   && $IsGhostField(ITER__A.RecursiveIterator.__new);
}

// RecursiveIterator._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__A.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
     ==> $Is($Unbox(read($h, $o, ITER__A.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?())));

// RecursiveIterator._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__A.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ITER__A.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function ITER__A.RecursiveIterator.__decreases0(ref) : int;

// RecursiveIterator._decreases0: Type axiom
axiom (forall $o: ref :: 
  { ITER__A.RecursiveIterator.__decreases0($o) } 
  $o != null && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
     ==> $Is(ITER__A.RecursiveIterator.__decreases0($o), TInt));

// RecursiveIterator._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__A.RecursiveIterator.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__A.RecursiveIterator.__decreases0($o), TInt, $h));

function ITER__A.RecursiveIterator.__decreases1(ref) : int;

// RecursiveIterator._decreases1: Type axiom
axiom (forall $o: ref :: 
  { ITER__A.RecursiveIterator.__decreases1($o) } 
  $o != null && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
     ==> $Is(ITER__A.RecursiveIterator.__decreases1($o), TInt));

// RecursiveIterator._decreases1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__A.RecursiveIterator.__decreases1($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__A.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__A.RecursiveIterator.__decreases1($o), TInt, $h));

// function declaration for ITER_A.RecursiveIterator.Valid
function ITER__A.RecursiveIterator.Valid($heap: Heap, this: ref) : bool;

function ITER__A.RecursiveIterator.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.ITER__A.RecursiveIterator() : Ty
uses {
// Tclass.ITER__A.RecursiveIterator Tag
axiom Tag(Tclass.ITER__A.RecursiveIterator()) == Tagclass.ITER__A.RecursiveIterator
   && TagFamily(Tclass.ITER__A.RecursiveIterator()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__A.RecursiveIterator: TyTag;

// Box/unbox axiom for Tclass.ITER__A.RecursiveIterator
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__A.RecursiveIterator()) } 
  $IsBox(bx, Tclass.ITER__A.RecursiveIterator())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__A.RecursiveIterator()));

// frame axiom for ITER__A.RecursiveIterator.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), ITER__A.RecursiveIterator.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.ITER__A.RecursiveIterator())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(ITER__A.RecursiveIterator.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, ITER__A.RecursiveIterator.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> ITER__A.RecursiveIterator.Valid($h0, this)
       == ITER__A.RecursiveIterator.Valid($h1, this));

function ITER__A.RecursiveIterator.Valid#requires(Heap, ref) : bool;

// #requires axiom for ITER__A.RecursiveIterator.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { ITER__A.RecursiveIterator.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.ITER__A.RecursiveIterator())
       && $IsAlloc(this, Tclass.ITER__A.RecursiveIterator(), $Heap)
     ==> ITER__A.RecursiveIterator.Valid#requires($Heap, this) == true);

// $Is axiom for non-null type ITER_A.RecursiveIterator
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__A.RecursiveIterator()) } 
    { $Is(c#0, Tclass.ITER__A.RecursiveIterator?()) } 
  $Is(c#0, Tclass.ITER__A.RecursiveIterator())
     <==> $Is(c#0, Tclass.ITER__A.RecursiveIterator?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_A.RecursiveIterator
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__A.RecursiveIterator(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__A.RecursiveIterator?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__A.RecursiveIterator(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__A.RecursiveIterator?(), $h));

procedure {:verboseName "ITER_A.RecursiveIterator (well-formedness)"} CheckWellFormed$$ITER__A.RecursiveIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass.ITER__A.RecursiveIterator())
         && $IsAlloc(this, Tclass.ITER__A.RecursiveIterator(), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    r#0: ref
       where $Is(r#0, Tclass.ITER__A.RecIterCaller?())
         && $IsAlloc(r#0, Tclass.ITER__A.RecIterCaller?(), $Heap), 
    good#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class.ITER__A.RecIterCaller?: ClassName;

// $Is axiom for class RecIterCaller
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__A.RecIterCaller?()) } 
  $Is($o, Tclass.ITER__A.RecIterCaller?())
     <==> $o == null || dtype($o) == Tclass.ITER__A.RecIterCaller?());

// $IsAlloc axiom for class RecIterCaller
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__A.RecIterCaller?(), $h) } 
  $IsAlloc($o, Tclass.ITER__A.RecIterCaller?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.ITER__A.RecIterCaller() : Ty
uses {
// Tclass.ITER__A.RecIterCaller Tag
axiom Tag(Tclass.ITER__A.RecIterCaller()) == Tagclass.ITER__A.RecIterCaller
   && TagFamily(Tclass.ITER__A.RecIterCaller()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__A.RecIterCaller: TyTag;

// Box/unbox axiom for Tclass.ITER__A.RecIterCaller
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__A.RecIterCaller()) } 
  $IsBox(bx, Tclass.ITER__A.RecIterCaller())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__A.RecIterCaller()));

// $Is axiom for non-null type ITER_A.RecIterCaller
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__A.RecIterCaller()) } 
    { $Is(c#0, Tclass.ITER__A.RecIterCaller?()) } 
  $Is(c#0, Tclass.ITER__A.RecIterCaller())
     <==> $Is(c#0, Tclass.ITER__A.RecIterCaller?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_A.RecIterCaller
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__A.RecIterCaller(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__A.RecIterCaller?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__A.RecIterCaller(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__A.RecIterCaller?(), $h));

const unique class.ITER__B.__default: ClassName;

const unique class.ITER__B.RecursiveIterator?: ClassName;

function Tclass.ITER__B.RecursiveIterator?() : Ty
uses {
// Tclass.ITER__B.RecursiveIterator? Tag
axiom Tag(Tclass.ITER__B.RecursiveIterator?()) == Tagclass.ITER__B.RecursiveIterator?
   && TagFamily(Tclass.ITER__B.RecursiveIterator?()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__B.RecursiveIterator?: TyTag;

// Box/unbox axiom for Tclass.ITER__B.RecursiveIterator?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__B.RecursiveIterator?()) } 
  $IsBox(bx, Tclass.ITER__B.RecursiveIterator?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__B.RecursiveIterator?()));

// $Is axiom for iterator RecursiveIterator
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__B.RecursiveIterator?()) } 
  $Is($o, Tclass.ITER__B.RecursiveIterator?())
     <==> $o == null || dtype($o) == Tclass.ITER__B.RecursiveIterator?());

// $IsAlloc axiom for iterator RecursiveIterator
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__B.RecursiveIterator?(), $h) } 
  $IsAlloc($o, Tclass.ITER__B.RecursiveIterator?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function ITER__B.RecursiveIterator.n(ref) : int;

// RecursiveIterator.n: Type axiom
axiom (forall $o: ref :: 
  { ITER__B.RecursiveIterator.n($o) } 
  $o != null && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
     ==> $Is(ITER__B.RecursiveIterator.n($o), Tclass._System.nat()));

// RecursiveIterator.n: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__B.RecursiveIterator.n($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__B.RecursiveIterator.n($o), Tclass._System.nat(), $h));

function ITER__B.RecursiveIterator.r(ref) : ref;

function Tclass.ITER__B.RecIterCaller?() : Ty
uses {
// Tclass.ITER__B.RecIterCaller? Tag
axiom Tag(Tclass.ITER__B.RecIterCaller?()) == Tagclass.ITER__B.RecIterCaller?
   && TagFamily(Tclass.ITER__B.RecIterCaller?()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__B.RecIterCaller?: TyTag;

// Box/unbox axiom for Tclass.ITER__B.RecIterCaller?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__B.RecIterCaller?()) } 
  $IsBox(bx, Tclass.ITER__B.RecIterCaller?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__B.RecIterCaller?()));

// RecursiveIterator.r: Type axiom
axiom (forall $o: ref :: 
  { ITER__B.RecursiveIterator.r($o) } 
  $o != null && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
     ==> $Is(ITER__B.RecursiveIterator.r($o), Tclass.ITER__B.RecIterCaller?()));

// RecursiveIterator.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__B.RecursiveIterator.r($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__B.RecursiveIterator.r($o), Tclass.ITER__B.RecIterCaller?(), $h));

function ITER__B.RecursiveIterator.good(ref) : bool;

// RecursiveIterator.good: Type axiom
axiom (forall $o: ref :: 
  { ITER__B.RecursiveIterator.good($o) } 
  $o != null && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
     ==> $Is(ITER__B.RecursiveIterator.good($o), TBool));

// RecursiveIterator.good: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__B.RecursiveIterator.good($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__B.RecursiveIterator.good($o), TBool, $h));

function ITER__B.RecursiveIterator.__reads(ref) : Set;

// RecursiveIterator._reads: Type axiom
axiom (forall $o: ref :: 
  { ITER__B.RecursiveIterator.__reads($o) } 
  $o != null && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
     ==> $Is(ITER__B.RecursiveIterator.__reads($o), TSet(Tclass._System.object?())));

// RecursiveIterator._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__B.RecursiveIterator.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__B.RecursiveIterator.__reads($o), TSet(Tclass._System.object?()), $h));

function ITER__B.RecursiveIterator.__modifies(ref) : Set;

// RecursiveIterator._modifies: Type axiom
axiom (forall $o: ref :: 
  { ITER__B.RecursiveIterator.__modifies($o) } 
  $o != null && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
     ==> $Is(ITER__B.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?())));

// RecursiveIterator._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__B.RecursiveIterator.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__B.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?()), $h));

const ITER__B.RecursiveIterator.__new: Field
uses {
axiom FDim(ITER__B.RecursiveIterator.__new) == 0
   && FieldOfDecl(class.ITER__B.RecursiveIterator?, field$_new)
     == ITER__B.RecursiveIterator.__new
   && $IsGhostField(ITER__B.RecursiveIterator.__new);
}

// RecursiveIterator._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__B.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
     ==> $Is($Unbox(read($h, $o, ITER__B.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?())));

// RecursiveIterator._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__B.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ITER__B.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function ITER__B.RecursiveIterator.__decreases0(ref) : int;

// RecursiveIterator._decreases0: Type axiom
axiom (forall $o: ref :: 
  { ITER__B.RecursiveIterator.__decreases0($o) } 
  $o != null && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
     ==> $Is(ITER__B.RecursiveIterator.__decreases0($o), TInt));

// RecursiveIterator._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__B.RecursiveIterator.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__B.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__B.RecursiveIterator.__decreases0($o), TInt, $h));

// function declaration for ITER_B.RecursiveIterator.Valid
function ITER__B.RecursiveIterator.Valid($heap: Heap, this: ref) : bool;

function ITER__B.RecursiveIterator.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.ITER__B.RecursiveIterator() : Ty
uses {
// Tclass.ITER__B.RecursiveIterator Tag
axiom Tag(Tclass.ITER__B.RecursiveIterator()) == Tagclass.ITER__B.RecursiveIterator
   && TagFamily(Tclass.ITER__B.RecursiveIterator()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__B.RecursiveIterator: TyTag;

// Box/unbox axiom for Tclass.ITER__B.RecursiveIterator
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__B.RecursiveIterator()) } 
  $IsBox(bx, Tclass.ITER__B.RecursiveIterator())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__B.RecursiveIterator()));

// frame axiom for ITER__B.RecursiveIterator.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), ITER__B.RecursiveIterator.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.ITER__B.RecursiveIterator())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(ITER__B.RecursiveIterator.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, ITER__B.RecursiveIterator.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> ITER__B.RecursiveIterator.Valid($h0, this)
       == ITER__B.RecursiveIterator.Valid($h1, this));

function ITER__B.RecursiveIterator.Valid#requires(Heap, ref) : bool;

// #requires axiom for ITER__B.RecursiveIterator.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { ITER__B.RecursiveIterator.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.ITER__B.RecursiveIterator())
       && $IsAlloc(this, Tclass.ITER__B.RecursiveIterator(), $Heap)
     ==> ITER__B.RecursiveIterator.Valid#requires($Heap, this) == true);

// $Is axiom for non-null type ITER_B.RecursiveIterator
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__B.RecursiveIterator()) } 
    { $Is(c#0, Tclass.ITER__B.RecursiveIterator?()) } 
  $Is(c#0, Tclass.ITER__B.RecursiveIterator())
     <==> $Is(c#0, Tclass.ITER__B.RecursiveIterator?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_B.RecursiveIterator
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__B.RecursiveIterator(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__B.RecursiveIterator?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__B.RecursiveIterator(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__B.RecursiveIterator?(), $h));

procedure {:verboseName "ITER_B.RecursiveIterator (well-formedness)"} CheckWellFormed$$ITER__B.RecursiveIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass.ITER__B.RecursiveIterator())
         && $IsAlloc(this, Tclass.ITER__B.RecursiveIterator(), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    r#0: ref
       where $Is(r#0, Tclass.ITER__B.RecIterCaller?())
         && $IsAlloc(r#0, Tclass.ITER__B.RecIterCaller?(), $Heap), 
    good#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class.ITER__B.RecIterCaller?: ClassName;

// $Is axiom for class RecIterCaller
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__B.RecIterCaller?()) } 
  $Is($o, Tclass.ITER__B.RecIterCaller?())
     <==> $o == null || dtype($o) == Tclass.ITER__B.RecIterCaller?());

// $IsAlloc axiom for class RecIterCaller
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__B.RecIterCaller?(), $h) } 
  $IsAlloc($o, Tclass.ITER__B.RecIterCaller?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.ITER__B.RecIterCaller() : Ty
uses {
// Tclass.ITER__B.RecIterCaller Tag
axiom Tag(Tclass.ITER__B.RecIterCaller()) == Tagclass.ITER__B.RecIterCaller
   && TagFamily(Tclass.ITER__B.RecIterCaller()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__B.RecIterCaller: TyTag;

// Box/unbox axiom for Tclass.ITER__B.RecIterCaller
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__B.RecIterCaller()) } 
  $IsBox(bx, Tclass.ITER__B.RecIterCaller())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__B.RecIterCaller()));

// $Is axiom for non-null type ITER_B.RecIterCaller
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__B.RecIterCaller()) } 
    { $Is(c#0, Tclass.ITER__B.RecIterCaller?()) } 
  $Is(c#0, Tclass.ITER__B.RecIterCaller())
     <==> $Is(c#0, Tclass.ITER__B.RecIterCaller?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_B.RecIterCaller
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__B.RecIterCaller(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__B.RecIterCaller?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__B.RecIterCaller(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__B.RecIterCaller?(), $h));

const unique class.ITER__C.__default: ClassName;

const unique class.ITER__C.RecursiveIterator?: ClassName;

function Tclass.ITER__C.RecursiveIterator?() : Ty
uses {
// Tclass.ITER__C.RecursiveIterator? Tag
axiom Tag(Tclass.ITER__C.RecursiveIterator?()) == Tagclass.ITER__C.RecursiveIterator?
   && TagFamily(Tclass.ITER__C.RecursiveIterator?()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__C.RecursiveIterator?: TyTag;

// Box/unbox axiom for Tclass.ITER__C.RecursiveIterator?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__C.RecursiveIterator?()) } 
  $IsBox(bx, Tclass.ITER__C.RecursiveIterator?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__C.RecursiveIterator?()));

// $Is axiom for iterator RecursiveIterator
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__C.RecursiveIterator?()) } 
  $Is($o, Tclass.ITER__C.RecursiveIterator?())
     <==> $o == null || dtype($o) == Tclass.ITER__C.RecursiveIterator?());

// $IsAlloc axiom for iterator RecursiveIterator
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__C.RecursiveIterator?(), $h) } 
  $IsAlloc($o, Tclass.ITER__C.RecursiveIterator?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function ITER__C.RecursiveIterator.n(ref) : int;

// RecursiveIterator.n: Type axiom
axiom (forall $o: ref :: 
  { ITER__C.RecursiveIterator.n($o) } 
  $o != null && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
     ==> $Is(ITER__C.RecursiveIterator.n($o), Tclass._System.nat()));

// RecursiveIterator.n: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__C.RecursiveIterator.n($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__C.RecursiveIterator.n($o), Tclass._System.nat(), $h));

function ITER__C.RecursiveIterator.r(ref) : ref;

function Tclass.ITER__C.RecIterCaller?() : Ty
uses {
// Tclass.ITER__C.RecIterCaller? Tag
axiom Tag(Tclass.ITER__C.RecIterCaller?()) == Tagclass.ITER__C.RecIterCaller?
   && TagFamily(Tclass.ITER__C.RecIterCaller?()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__C.RecIterCaller?: TyTag;

// Box/unbox axiom for Tclass.ITER__C.RecIterCaller?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__C.RecIterCaller?()) } 
  $IsBox(bx, Tclass.ITER__C.RecIterCaller?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__C.RecIterCaller?()));

// RecursiveIterator.r: Type axiom
axiom (forall $o: ref :: 
  { ITER__C.RecursiveIterator.r($o) } 
  $o != null && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
     ==> $Is(ITER__C.RecursiveIterator.r($o), Tclass.ITER__C.RecIterCaller?()));

// RecursiveIterator.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__C.RecursiveIterator.r($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__C.RecursiveIterator.r($o), Tclass.ITER__C.RecIterCaller?(), $h));

function ITER__C.RecursiveIterator.good(ref) : bool;

// RecursiveIterator.good: Type axiom
axiom (forall $o: ref :: 
  { ITER__C.RecursiveIterator.good($o) } 
  $o != null && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
     ==> $Is(ITER__C.RecursiveIterator.good($o), TBool));

// RecursiveIterator.good: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__C.RecursiveIterator.good($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__C.RecursiveIterator.good($o), TBool, $h));

function ITER__C.RecursiveIterator.__reads(ref) : Set;

// RecursiveIterator._reads: Type axiom
axiom (forall $o: ref :: 
  { ITER__C.RecursiveIterator.__reads($o) } 
  $o != null && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
     ==> $Is(ITER__C.RecursiveIterator.__reads($o), TSet(Tclass._System.object?())));

// RecursiveIterator._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__C.RecursiveIterator.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__C.RecursiveIterator.__reads($o), TSet(Tclass._System.object?()), $h));

function ITER__C.RecursiveIterator.__modifies(ref) : Set;

// RecursiveIterator._modifies: Type axiom
axiom (forall $o: ref :: 
  { ITER__C.RecursiveIterator.__modifies($o) } 
  $o != null && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
     ==> $Is(ITER__C.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?())));

// RecursiveIterator._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__C.RecursiveIterator.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__C.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?()), $h));

const ITER__C.RecursiveIterator.__new: Field
uses {
axiom FDim(ITER__C.RecursiveIterator.__new) == 0
   && FieldOfDecl(class.ITER__C.RecursiveIterator?, field$_new)
     == ITER__C.RecursiveIterator.__new
   && $IsGhostField(ITER__C.RecursiveIterator.__new);
}

// RecursiveIterator._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__C.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
     ==> $Is($Unbox(read($h, $o, ITER__C.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?())));

// RecursiveIterator._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__C.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ITER__C.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function ITER__C.RecursiveIterator.__decreases0(ref) : int;

// RecursiveIterator._decreases0: Type axiom
axiom (forall $o: ref :: 
  { ITER__C.RecursiveIterator.__decreases0($o) } 
  $o != null && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
     ==> $Is(ITER__C.RecursiveIterator.__decreases0($o), TInt));

// RecursiveIterator._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__C.RecursiveIterator.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__C.RecursiveIterator.__decreases0($o), TInt, $h));

function ITER__C.RecursiveIterator.__decreases1(ref) : ref;

// RecursiveIterator._decreases1: Type axiom
axiom (forall $o: ref :: 
  { ITER__C.RecursiveIterator.__decreases1($o) } 
  $o != null && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
     ==> $Is(ITER__C.RecursiveIterator.__decreases1($o), Tclass.ITER__C.RecIterCaller?()));

// RecursiveIterator._decreases1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__C.RecursiveIterator.__decreases1($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__C.RecursiveIterator.__decreases1($o), Tclass.ITER__C.RecIterCaller?(), $h));

function ITER__C.RecursiveIterator.__decreases2(ref) : bool;

// RecursiveIterator._decreases2: Type axiom
axiom (forall $o: ref :: 
  { ITER__C.RecursiveIterator.__decreases2($o) } 
  $o != null && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
     ==> $Is(ITER__C.RecursiveIterator.__decreases2($o), TBool));

// RecursiveIterator._decreases2: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__C.RecursiveIterator.__decreases2($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__C.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__C.RecursiveIterator.__decreases2($o), TBool, $h));

// function declaration for ITER_C.RecursiveIterator.Valid
function ITER__C.RecursiveIterator.Valid($heap: Heap, this: ref) : bool;

function ITER__C.RecursiveIterator.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.ITER__C.RecursiveIterator() : Ty
uses {
// Tclass.ITER__C.RecursiveIterator Tag
axiom Tag(Tclass.ITER__C.RecursiveIterator()) == Tagclass.ITER__C.RecursiveIterator
   && TagFamily(Tclass.ITER__C.RecursiveIterator()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__C.RecursiveIterator: TyTag;

// Box/unbox axiom for Tclass.ITER__C.RecursiveIterator
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__C.RecursiveIterator()) } 
  $IsBox(bx, Tclass.ITER__C.RecursiveIterator())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__C.RecursiveIterator()));

// frame axiom for ITER__C.RecursiveIterator.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), ITER__C.RecursiveIterator.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.ITER__C.RecursiveIterator())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(ITER__C.RecursiveIterator.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, ITER__C.RecursiveIterator.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> ITER__C.RecursiveIterator.Valid($h0, this)
       == ITER__C.RecursiveIterator.Valid($h1, this));

function ITER__C.RecursiveIterator.Valid#requires(Heap, ref) : bool;

// #requires axiom for ITER__C.RecursiveIterator.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { ITER__C.RecursiveIterator.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.ITER__C.RecursiveIterator())
       && $IsAlloc(this, Tclass.ITER__C.RecursiveIterator(), $Heap)
     ==> ITER__C.RecursiveIterator.Valid#requires($Heap, this) == true);

// $Is axiom for non-null type ITER_C.RecursiveIterator
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__C.RecursiveIterator()) } 
    { $Is(c#0, Tclass.ITER__C.RecursiveIterator?()) } 
  $Is(c#0, Tclass.ITER__C.RecursiveIterator())
     <==> $Is(c#0, Tclass.ITER__C.RecursiveIterator?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_C.RecursiveIterator
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__C.RecursiveIterator(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__C.RecursiveIterator?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__C.RecursiveIterator(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__C.RecursiveIterator?(), $h));

procedure {:verboseName "ITER_C.RecursiveIterator (well-formedness)"} CheckWellFormed$$ITER__C.RecursiveIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass.ITER__C.RecursiveIterator())
         && $IsAlloc(this, Tclass.ITER__C.RecursiveIterator(), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    r#0: ref
       where $Is(r#0, Tclass.ITER__C.RecIterCaller?())
         && $IsAlloc(r#0, Tclass.ITER__C.RecIterCaller?(), $Heap), 
    good#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class.ITER__C.RecIterCaller?: ClassName;

// $Is axiom for class RecIterCaller
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__C.RecIterCaller?()) } 
  $Is($o, Tclass.ITER__C.RecIterCaller?())
     <==> $o == null || dtype($o) == Tclass.ITER__C.RecIterCaller?());

// $IsAlloc axiom for class RecIterCaller
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__C.RecIterCaller?(), $h) } 
  $IsAlloc($o, Tclass.ITER__C.RecIterCaller?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.ITER__C.RecIterCaller() : Ty
uses {
// Tclass.ITER__C.RecIterCaller Tag
axiom Tag(Tclass.ITER__C.RecIterCaller()) == Tagclass.ITER__C.RecIterCaller
   && TagFamily(Tclass.ITER__C.RecIterCaller()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__C.RecIterCaller: TyTag;

// Box/unbox axiom for Tclass.ITER__C.RecIterCaller
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__C.RecIterCaller()) } 
  $IsBox(bx, Tclass.ITER__C.RecIterCaller())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__C.RecIterCaller()));

// $Is axiom for non-null type ITER_C.RecIterCaller
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__C.RecIterCaller()) } 
    { $Is(c#0, Tclass.ITER__C.RecIterCaller?()) } 
  $Is(c#0, Tclass.ITER__C.RecIterCaller())
     <==> $Is(c#0, Tclass.ITER__C.RecIterCaller?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_C.RecIterCaller
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__C.RecIterCaller(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__C.RecIterCaller?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__C.RecIterCaller(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__C.RecIterCaller?(), $h));

const unique class.ITER__D.__default: ClassName;

const unique class.ITER__D.RecursiveIterator?: ClassName;

function Tclass.ITER__D.RecursiveIterator?() : Ty
uses {
// Tclass.ITER__D.RecursiveIterator? Tag
axiom Tag(Tclass.ITER__D.RecursiveIterator?()) == Tagclass.ITER__D.RecursiveIterator?
   && TagFamily(Tclass.ITER__D.RecursiveIterator?()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__D.RecursiveIterator?: TyTag;

// Box/unbox axiom for Tclass.ITER__D.RecursiveIterator?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__D.RecursiveIterator?()) } 
  $IsBox(bx, Tclass.ITER__D.RecursiveIterator?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__D.RecursiveIterator?()));

// $Is axiom for iterator RecursiveIterator
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__D.RecursiveIterator?()) } 
  $Is($o, Tclass.ITER__D.RecursiveIterator?())
     <==> $o == null || dtype($o) == Tclass.ITER__D.RecursiveIterator?());

// $IsAlloc axiom for iterator RecursiveIterator
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__D.RecursiveIterator?(), $h) } 
  $IsAlloc($o, Tclass.ITER__D.RecursiveIterator?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function ITER__D.RecursiveIterator.n(ref) : int;

// RecursiveIterator.n: Type axiom
axiom (forall $o: ref :: 
  { ITER__D.RecursiveIterator.n($o) } 
  $o != null && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
     ==> $Is(ITER__D.RecursiveIterator.n($o), Tclass._System.nat()));

// RecursiveIterator.n: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__D.RecursiveIterator.n($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__D.RecursiveIterator.n($o), Tclass._System.nat(), $h));

function ITER__D.RecursiveIterator.r(ref) : ref;

function Tclass.ITER__D.RecIterCaller?() : Ty
uses {
// Tclass.ITER__D.RecIterCaller? Tag
axiom Tag(Tclass.ITER__D.RecIterCaller?()) == Tagclass.ITER__D.RecIterCaller?
   && TagFamily(Tclass.ITER__D.RecIterCaller?()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__D.RecIterCaller?: TyTag;

// Box/unbox axiom for Tclass.ITER__D.RecIterCaller?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__D.RecIterCaller?()) } 
  $IsBox(bx, Tclass.ITER__D.RecIterCaller?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__D.RecIterCaller?()));

// RecursiveIterator.r: Type axiom
axiom (forall $o: ref :: 
  { ITER__D.RecursiveIterator.r($o) } 
  $o != null && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
     ==> $Is(ITER__D.RecursiveIterator.r($o), Tclass.ITER__D.RecIterCaller?()));

// RecursiveIterator.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__D.RecursiveIterator.r($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__D.RecursiveIterator.r($o), Tclass.ITER__D.RecIterCaller?(), $h));

function ITER__D.RecursiveIterator.good(ref) : bool;

// RecursiveIterator.good: Type axiom
axiom (forall $o: ref :: 
  { ITER__D.RecursiveIterator.good($o) } 
  $o != null && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
     ==> $Is(ITER__D.RecursiveIterator.good($o), TBool));

// RecursiveIterator.good: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__D.RecursiveIterator.good($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__D.RecursiveIterator.good($o), TBool, $h));

function ITER__D.RecursiveIterator.__reads(ref) : Set;

// RecursiveIterator._reads: Type axiom
axiom (forall $o: ref :: 
  { ITER__D.RecursiveIterator.__reads($o) } 
  $o != null && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
     ==> $Is(ITER__D.RecursiveIterator.__reads($o), TSet(Tclass._System.object?())));

// RecursiveIterator._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__D.RecursiveIterator.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__D.RecursiveIterator.__reads($o), TSet(Tclass._System.object?()), $h));

function ITER__D.RecursiveIterator.__modifies(ref) : Set;

// RecursiveIterator._modifies: Type axiom
axiom (forall $o: ref :: 
  { ITER__D.RecursiveIterator.__modifies($o) } 
  $o != null && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
     ==> $Is(ITER__D.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?())));

// RecursiveIterator._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__D.RecursiveIterator.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__D.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?()), $h));

const ITER__D.RecursiveIterator.__new: Field
uses {
axiom FDim(ITER__D.RecursiveIterator.__new) == 0
   && FieldOfDecl(class.ITER__D.RecursiveIterator?, field$_new)
     == ITER__D.RecursiveIterator.__new
   && $IsGhostField(ITER__D.RecursiveIterator.__new);
}

// RecursiveIterator._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__D.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
     ==> $Is($Unbox(read($h, $o, ITER__D.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?())));

// RecursiveIterator._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__D.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ITER__D.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function ITER__D.RecursiveIterator.__decreases0(ref) : int;

// RecursiveIterator._decreases0: Type axiom
axiom (forall $o: ref :: 
  { ITER__D.RecursiveIterator.__decreases0($o) } 
  $o != null && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
     ==> $Is(ITER__D.RecursiveIterator.__decreases0($o), TInt));

// RecursiveIterator._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__D.RecursiveIterator.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__D.RecursiveIterator.__decreases0($o), TInt, $h));

function ITER__D.RecursiveIterator.__decreases1(ref) : ref;

// RecursiveIterator._decreases1: Type axiom
axiom (forall $o: ref :: 
  { ITER__D.RecursiveIterator.__decreases1($o) } 
  $o != null && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
     ==> $Is(ITER__D.RecursiveIterator.__decreases1($o), Tclass.ITER__D.RecIterCaller?()));

// RecursiveIterator._decreases1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__D.RecursiveIterator.__decreases1($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__D.RecursiveIterator.__decreases1($o), Tclass.ITER__D.RecIterCaller?(), $h));

function ITER__D.RecursiveIterator.__decreases2(ref) : bool;

// RecursiveIterator._decreases2: Type axiom
axiom (forall $o: ref :: 
  { ITER__D.RecursiveIterator.__decreases2($o) } 
  $o != null && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
     ==> $Is(ITER__D.RecursiveIterator.__decreases2($o), TBool));

// RecursiveIterator._decreases2: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__D.RecursiveIterator.__decreases2($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__D.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__D.RecursiveIterator.__decreases2($o), TBool, $h));

// function declaration for ITER_D.RecursiveIterator.Valid
function ITER__D.RecursiveIterator.Valid($heap: Heap, this: ref) : bool;

function ITER__D.RecursiveIterator.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.ITER__D.RecursiveIterator() : Ty
uses {
// Tclass.ITER__D.RecursiveIterator Tag
axiom Tag(Tclass.ITER__D.RecursiveIterator()) == Tagclass.ITER__D.RecursiveIterator
   && TagFamily(Tclass.ITER__D.RecursiveIterator()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__D.RecursiveIterator: TyTag;

// Box/unbox axiom for Tclass.ITER__D.RecursiveIterator
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__D.RecursiveIterator()) } 
  $IsBox(bx, Tclass.ITER__D.RecursiveIterator())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__D.RecursiveIterator()));

// frame axiom for ITER__D.RecursiveIterator.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), ITER__D.RecursiveIterator.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.ITER__D.RecursiveIterator())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(ITER__D.RecursiveIterator.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, ITER__D.RecursiveIterator.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> ITER__D.RecursiveIterator.Valid($h0, this)
       == ITER__D.RecursiveIterator.Valid($h1, this));

function ITER__D.RecursiveIterator.Valid#requires(Heap, ref) : bool;

// #requires axiom for ITER__D.RecursiveIterator.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { ITER__D.RecursiveIterator.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.ITER__D.RecursiveIterator())
       && $IsAlloc(this, Tclass.ITER__D.RecursiveIterator(), $Heap)
     ==> ITER__D.RecursiveIterator.Valid#requires($Heap, this) == true);

// $Is axiom for non-null type ITER_D.RecursiveIterator
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__D.RecursiveIterator()) } 
    { $Is(c#0, Tclass.ITER__D.RecursiveIterator?()) } 
  $Is(c#0, Tclass.ITER__D.RecursiveIterator())
     <==> $Is(c#0, Tclass.ITER__D.RecursiveIterator?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_D.RecursiveIterator
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__D.RecursiveIterator(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__D.RecursiveIterator?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__D.RecursiveIterator(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__D.RecursiveIterator?(), $h));

procedure {:verboseName "ITER_D.RecursiveIterator (well-formedness)"} CheckWellFormed$$ITER__D.RecursiveIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass.ITER__D.RecursiveIterator())
         && $IsAlloc(this, Tclass.ITER__D.RecursiveIterator(), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    r#0: ref
       where $Is(r#0, Tclass.ITER__D.RecIterCaller?())
         && $IsAlloc(r#0, Tclass.ITER__D.RecIterCaller?(), $Heap), 
    good#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class.ITER__D.RecIterCaller?: ClassName;

// $Is axiom for class RecIterCaller
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__D.RecIterCaller?()) } 
  $Is($o, Tclass.ITER__D.RecIterCaller?())
     <==> $o == null || dtype($o) == Tclass.ITER__D.RecIterCaller?());

// $IsAlloc axiom for class RecIterCaller
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__D.RecIterCaller?(), $h) } 
  $IsAlloc($o, Tclass.ITER__D.RecIterCaller?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.ITER__D.RecIterCaller() : Ty
uses {
// Tclass.ITER__D.RecIterCaller Tag
axiom Tag(Tclass.ITER__D.RecIterCaller()) == Tagclass.ITER__D.RecIterCaller
   && TagFamily(Tclass.ITER__D.RecIterCaller()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__D.RecIterCaller: TyTag;

// Box/unbox axiom for Tclass.ITER__D.RecIterCaller
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__D.RecIterCaller()) } 
  $IsBox(bx, Tclass.ITER__D.RecIterCaller())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__D.RecIterCaller()));

// $Is axiom for non-null type ITER_D.RecIterCaller
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__D.RecIterCaller()) } 
    { $Is(c#0, Tclass.ITER__D.RecIterCaller?()) } 
  $Is(c#0, Tclass.ITER__D.RecIterCaller())
     <==> $Is(c#0, Tclass.ITER__D.RecIterCaller?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_D.RecIterCaller
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__D.RecIterCaller(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__D.RecIterCaller?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__D.RecIterCaller(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__D.RecIterCaller?(), $h));

const unique class.ITER__E.__default: ClassName;

const unique class.ITER__E.Cell?: ClassName;

function Tclass.ITER__E.Cell?() : Ty
uses {
// Tclass.ITER__E.Cell? Tag
axiom Tag(Tclass.ITER__E.Cell?()) == Tagclass.ITER__E.Cell?
   && TagFamily(Tclass.ITER__E.Cell?()) == tytagFamily$Cell;
}

const unique Tagclass.ITER__E.Cell?: TyTag;

// Box/unbox axiom for Tclass.ITER__E.Cell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__E.Cell?()) } 
  $IsBox(bx, Tclass.ITER__E.Cell?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ITER__E.Cell?()));

// $Is axiom for class Cell
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__E.Cell?()) } 
  $Is($o, Tclass.ITER__E.Cell?())
     <==> $o == null || dtype($o) == Tclass.ITER__E.Cell?());

// $IsAlloc axiom for class Cell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__E.Cell?(), $h) } 
  $IsAlloc($o, Tclass.ITER__E.Cell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const ITER__E.Cell.data: Field
uses {
axiom FDim(ITER__E.Cell.data) == 0
   && FieldOfDecl(class.ITER__E.Cell?, field$data) == ITER__E.Cell.data
   && !$IsGhostField(ITER__E.Cell.data);
}

// Cell.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__E.Cell.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.ITER__E.Cell?()
     ==> $Is($Unbox(read($h, $o, ITER__E.Cell.data)): int, Tclass._System.nat()));

// Cell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__E.Cell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__E.Cell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ITER__E.Cell.data)): int, Tclass._System.nat(), $h));

function Tclass.ITER__E.Cell() : Ty
uses {
// Tclass.ITER__E.Cell Tag
axiom Tag(Tclass.ITER__E.Cell()) == Tagclass.ITER__E.Cell
   && TagFamily(Tclass.ITER__E.Cell()) == tytagFamily$Cell;
}

const unique Tagclass.ITER__E.Cell: TyTag;

// Box/unbox axiom for Tclass.ITER__E.Cell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__E.Cell()) } 
  $IsBox(bx, Tclass.ITER__E.Cell())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ITER__E.Cell()));

// $Is axiom for non-null type ITER_E.Cell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__E.Cell()) } { $Is(c#0, Tclass.ITER__E.Cell?()) } 
  $Is(c#0, Tclass.ITER__E.Cell())
     <==> $Is(c#0, Tclass.ITER__E.Cell?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_E.Cell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__E.Cell(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__E.Cell?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__E.Cell(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__E.Cell?(), $h));

const unique class.ITER__E.RecursiveIterator?: ClassName;

function Tclass.ITER__E.RecursiveIterator?() : Ty
uses {
// Tclass.ITER__E.RecursiveIterator? Tag
axiom Tag(Tclass.ITER__E.RecursiveIterator?()) == Tagclass.ITER__E.RecursiveIterator?
   && TagFamily(Tclass.ITER__E.RecursiveIterator?()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__E.RecursiveIterator?: TyTag;

// Box/unbox axiom for Tclass.ITER__E.RecursiveIterator?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__E.RecursiveIterator?()) } 
  $IsBox(bx, Tclass.ITER__E.RecursiveIterator?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__E.RecursiveIterator?()));

// $Is axiom for iterator RecursiveIterator
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__E.RecursiveIterator?()) } 
  $Is($o, Tclass.ITER__E.RecursiveIterator?())
     <==> $o == null || dtype($o) == Tclass.ITER__E.RecursiveIterator?());

// $IsAlloc axiom for iterator RecursiveIterator
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__E.RecursiveIterator?(), $h) } 
  $IsAlloc($o, Tclass.ITER__E.RecursiveIterator?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function ITER__E.RecursiveIterator.cell(ref) : ref;

// RecursiveIterator.cell: Type axiom
axiom (forall $o: ref :: 
  { ITER__E.RecursiveIterator.cell($o) } 
  $o != null && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
     ==> $Is(ITER__E.RecursiveIterator.cell($o), Tclass.ITER__E.Cell?()));

// RecursiveIterator.cell: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__E.RecursiveIterator.cell($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__E.RecursiveIterator.cell($o), Tclass.ITER__E.Cell?(), $h));

function ITER__E.RecursiveIterator.n(ref) : int;

// RecursiveIterator.n: Type axiom
axiom (forall $o: ref :: 
  { ITER__E.RecursiveIterator.n($o) } 
  $o != null && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
     ==> $Is(ITER__E.RecursiveIterator.n($o), Tclass._System.nat()));

// RecursiveIterator.n: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__E.RecursiveIterator.n($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__E.RecursiveIterator.n($o), Tclass._System.nat(), $h));

function ITER__E.RecursiveIterator.r(ref) : ref;

function Tclass.ITER__E.RecIterCaller?() : Ty
uses {
// Tclass.ITER__E.RecIterCaller? Tag
axiom Tag(Tclass.ITER__E.RecIterCaller?()) == Tagclass.ITER__E.RecIterCaller?
   && TagFamily(Tclass.ITER__E.RecIterCaller?()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__E.RecIterCaller?: TyTag;

// Box/unbox axiom for Tclass.ITER__E.RecIterCaller?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__E.RecIterCaller?()) } 
  $IsBox(bx, Tclass.ITER__E.RecIterCaller?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__E.RecIterCaller?()));

// RecursiveIterator.r: Type axiom
axiom (forall $o: ref :: 
  { ITER__E.RecursiveIterator.r($o) } 
  $o != null && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
     ==> $Is(ITER__E.RecursiveIterator.r($o), Tclass.ITER__E.RecIterCaller?()));

// RecursiveIterator.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__E.RecursiveIterator.r($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__E.RecursiveIterator.r($o), Tclass.ITER__E.RecIterCaller?(), $h));

function ITER__E.RecursiveIterator.good(ref) : bool;

// RecursiveIterator.good: Type axiom
axiom (forall $o: ref :: 
  { ITER__E.RecursiveIterator.good($o) } 
  $o != null && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
     ==> $Is(ITER__E.RecursiveIterator.good($o), TBool));

// RecursiveIterator.good: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__E.RecursiveIterator.good($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__E.RecursiveIterator.good($o), TBool, $h));

function ITER__E.RecursiveIterator.__reads(ref) : Set;

// RecursiveIterator._reads: Type axiom
axiom (forall $o: ref :: 
  { ITER__E.RecursiveIterator.__reads($o) } 
  $o != null && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
     ==> $Is(ITER__E.RecursiveIterator.__reads($o), TSet(Tclass._System.object?())));

// RecursiveIterator._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__E.RecursiveIterator.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__E.RecursiveIterator.__reads($o), TSet(Tclass._System.object?()), $h));

function ITER__E.RecursiveIterator.__modifies(ref) : Set;

// RecursiveIterator._modifies: Type axiom
axiom (forall $o: ref :: 
  { ITER__E.RecursiveIterator.__modifies($o) } 
  $o != null && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
     ==> $Is(ITER__E.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?())));

// RecursiveIterator._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__E.RecursiveIterator.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__E.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?()), $h));

const ITER__E.RecursiveIterator.__new: Field
uses {
axiom FDim(ITER__E.RecursiveIterator.__new) == 0
   && FieldOfDecl(class.ITER__E.RecursiveIterator?, field$_new)
     == ITER__E.RecursiveIterator.__new
   && $IsGhostField(ITER__E.RecursiveIterator.__new);
}

// RecursiveIterator._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__E.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
     ==> $Is($Unbox(read($h, $o, ITER__E.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?())));

// RecursiveIterator._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__E.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ITER__E.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function ITER__E.RecursiveIterator.__decreases0(ref) : int;

// RecursiveIterator._decreases0: Type axiom
axiom (forall $o: ref :: 
  { ITER__E.RecursiveIterator.__decreases0($o) } 
  $o != null && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
     ==> $Is(ITER__E.RecursiveIterator.__decreases0($o), TInt));

// RecursiveIterator._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__E.RecursiveIterator.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__E.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__E.RecursiveIterator.__decreases0($o), TInt, $h));

// function declaration for ITER_E.RecursiveIterator.Valid
function ITER__E.RecursiveIterator.Valid($heap: Heap, this: ref) : bool;

function ITER__E.RecursiveIterator.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.ITER__E.RecursiveIterator() : Ty
uses {
// Tclass.ITER__E.RecursiveIterator Tag
axiom Tag(Tclass.ITER__E.RecursiveIterator()) == Tagclass.ITER__E.RecursiveIterator
   && TagFamily(Tclass.ITER__E.RecursiveIterator()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__E.RecursiveIterator: TyTag;

// Box/unbox axiom for Tclass.ITER__E.RecursiveIterator
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__E.RecursiveIterator()) } 
  $IsBox(bx, Tclass.ITER__E.RecursiveIterator())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__E.RecursiveIterator()));

// frame axiom for ITER__E.RecursiveIterator.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), ITER__E.RecursiveIterator.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.ITER__E.RecursiveIterator())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(ITER__E.RecursiveIterator.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, ITER__E.RecursiveIterator.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> ITER__E.RecursiveIterator.Valid($h0, this)
       == ITER__E.RecursiveIterator.Valid($h1, this));

function ITER__E.RecursiveIterator.Valid#requires(Heap, ref) : bool;

// #requires axiom for ITER__E.RecursiveIterator.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { ITER__E.RecursiveIterator.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.ITER__E.RecursiveIterator())
       && $IsAlloc(this, Tclass.ITER__E.RecursiveIterator(), $Heap)
     ==> ITER__E.RecursiveIterator.Valid#requires($Heap, this) == true);

// $Is axiom for non-null type ITER_E.RecursiveIterator
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__E.RecursiveIterator()) } 
    { $Is(c#0, Tclass.ITER__E.RecursiveIterator?()) } 
  $Is(c#0, Tclass.ITER__E.RecursiveIterator())
     <==> $Is(c#0, Tclass.ITER__E.RecursiveIterator?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_E.RecursiveIterator
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__E.RecursiveIterator(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__E.RecursiveIterator?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__E.RecursiveIterator(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__E.RecursiveIterator?(), $h));

procedure {:verboseName "ITER_E.RecursiveIterator (well-formedness)"} CheckWellFormed$$ITER__E.RecursiveIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass.ITER__E.RecursiveIterator())
         && $IsAlloc(this, Tclass.ITER__E.RecursiveIterator(), $Heap), 
    cell#0: ref
       where $Is(cell#0, Tclass.ITER__E.Cell?())
         && $IsAlloc(cell#0, Tclass.ITER__E.Cell?(), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    r#0: ref
       where $Is(r#0, Tclass.ITER__E.RecIterCaller?())
         && $IsAlloc(r#0, Tclass.ITER__E.RecIterCaller?(), $Heap), 
    good#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class.ITER__E.RecIterCaller?: ClassName;

// $Is axiom for class RecIterCaller
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__E.RecIterCaller?()) } 
  $Is($o, Tclass.ITER__E.RecIterCaller?())
     <==> $o == null || dtype($o) == Tclass.ITER__E.RecIterCaller?());

// $IsAlloc axiom for class RecIterCaller
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__E.RecIterCaller?(), $h) } 
  $IsAlloc($o, Tclass.ITER__E.RecIterCaller?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.ITER__E.RecIterCaller() : Ty
uses {
// Tclass.ITER__E.RecIterCaller Tag
axiom Tag(Tclass.ITER__E.RecIterCaller()) == Tagclass.ITER__E.RecIterCaller
   && TagFamily(Tclass.ITER__E.RecIterCaller()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__E.RecIterCaller: TyTag;

// Box/unbox axiom for Tclass.ITER__E.RecIterCaller
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__E.RecIterCaller()) } 
  $IsBox(bx, Tclass.ITER__E.RecIterCaller())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__E.RecIterCaller()));

// $Is axiom for non-null type ITER_E.RecIterCaller
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__E.RecIterCaller()) } 
    { $Is(c#0, Tclass.ITER__E.RecIterCaller?()) } 
  $Is(c#0, Tclass.ITER__E.RecIterCaller())
     <==> $Is(c#0, Tclass.ITER__E.RecIterCaller?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_E.RecIterCaller
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__E.RecIterCaller(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__E.RecIterCaller?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__E.RecIterCaller(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__E.RecIterCaller?(), $h));

const unique class.ITER__F.__default: ClassName;

const unique class.ITER__F.Cell?: ClassName;

function Tclass.ITER__F.Cell?() : Ty
uses {
// Tclass.ITER__F.Cell? Tag
axiom Tag(Tclass.ITER__F.Cell?()) == Tagclass.ITER__F.Cell?
   && TagFamily(Tclass.ITER__F.Cell?()) == tytagFamily$Cell;
}

const unique Tagclass.ITER__F.Cell?: TyTag;

// Box/unbox axiom for Tclass.ITER__F.Cell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__F.Cell?()) } 
  $IsBox(bx, Tclass.ITER__F.Cell?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ITER__F.Cell?()));

// $Is axiom for class Cell
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__F.Cell?()) } 
  $Is($o, Tclass.ITER__F.Cell?())
     <==> $o == null || dtype($o) == Tclass.ITER__F.Cell?());

// $IsAlloc axiom for class Cell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__F.Cell?(), $h) } 
  $IsAlloc($o, Tclass.ITER__F.Cell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const ITER__F.Cell.data: Field
uses {
axiom FDim(ITER__F.Cell.data) == 0
   && FieldOfDecl(class.ITER__F.Cell?, field$data) == ITER__F.Cell.data
   && !$IsGhostField(ITER__F.Cell.data);
}

// Cell.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__F.Cell.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.ITER__F.Cell?()
     ==> $Is($Unbox(read($h, $o, ITER__F.Cell.data)): int, Tclass._System.nat()));

// Cell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__F.Cell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.Cell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ITER__F.Cell.data)): int, Tclass._System.nat(), $h));

function Tclass.ITER__F.Cell() : Ty
uses {
// Tclass.ITER__F.Cell Tag
axiom Tag(Tclass.ITER__F.Cell()) == Tagclass.ITER__F.Cell
   && TagFamily(Tclass.ITER__F.Cell()) == tytagFamily$Cell;
}

const unique Tagclass.ITER__F.Cell: TyTag;

// Box/unbox axiom for Tclass.ITER__F.Cell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__F.Cell()) } 
  $IsBox(bx, Tclass.ITER__F.Cell())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.ITER__F.Cell()));

// $Is axiom for non-null type ITER_F.Cell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__F.Cell()) } { $Is(c#0, Tclass.ITER__F.Cell?()) } 
  $Is(c#0, Tclass.ITER__F.Cell())
     <==> $Is(c#0, Tclass.ITER__F.Cell?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_F.Cell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__F.Cell(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__F.Cell?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__F.Cell(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__F.Cell?(), $h));

const unique class.ITER__F.RecursiveIterator?: ClassName;

function Tclass.ITER__F.RecursiveIterator?() : Ty
uses {
// Tclass.ITER__F.RecursiveIterator? Tag
axiom Tag(Tclass.ITER__F.RecursiveIterator?()) == Tagclass.ITER__F.RecursiveIterator?
   && TagFamily(Tclass.ITER__F.RecursiveIterator?()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__F.RecursiveIterator?: TyTag;

// Box/unbox axiom for Tclass.ITER__F.RecursiveIterator?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__F.RecursiveIterator?()) } 
  $IsBox(bx, Tclass.ITER__F.RecursiveIterator?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__F.RecursiveIterator?()));

// $Is axiom for iterator RecursiveIterator
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__F.RecursiveIterator?()) } 
  $Is($o, Tclass.ITER__F.RecursiveIterator?())
     <==> $o == null || dtype($o) == Tclass.ITER__F.RecursiveIterator?());

// $IsAlloc axiom for iterator RecursiveIterator
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__F.RecursiveIterator?(), $h) } 
  $IsAlloc($o, Tclass.ITER__F.RecursiveIterator?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function ITER__F.RecursiveIterator.cell(ref) : ref;

// RecursiveIterator.cell: Type axiom
axiom (forall $o: ref :: 
  { ITER__F.RecursiveIterator.cell($o) } 
  $o != null && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
     ==> $Is(ITER__F.RecursiveIterator.cell($o), Tclass.ITER__F.Cell?()));

// RecursiveIterator.cell: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__F.RecursiveIterator.cell($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__F.RecursiveIterator.cell($o), Tclass.ITER__F.Cell?(), $h));

function ITER__F.RecursiveIterator.n(ref) : int;

// RecursiveIterator.n: Type axiom
axiom (forall $o: ref :: 
  { ITER__F.RecursiveIterator.n($o) } 
  $o != null && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
     ==> $Is(ITER__F.RecursiveIterator.n($o), Tclass._System.nat()));

// RecursiveIterator.n: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__F.RecursiveIterator.n($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__F.RecursiveIterator.n($o), Tclass._System.nat(), $h));

function ITER__F.RecursiveIterator.r(ref) : ref;

function Tclass.ITER__F.RecIterCaller?() : Ty
uses {
// Tclass.ITER__F.RecIterCaller? Tag
axiom Tag(Tclass.ITER__F.RecIterCaller?()) == Tagclass.ITER__F.RecIterCaller?
   && TagFamily(Tclass.ITER__F.RecIterCaller?()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__F.RecIterCaller?: TyTag;

// Box/unbox axiom for Tclass.ITER__F.RecIterCaller?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__F.RecIterCaller?()) } 
  $IsBox(bx, Tclass.ITER__F.RecIterCaller?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__F.RecIterCaller?()));

// RecursiveIterator.r: Type axiom
axiom (forall $o: ref :: 
  { ITER__F.RecursiveIterator.r($o) } 
  $o != null && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
     ==> $Is(ITER__F.RecursiveIterator.r($o), Tclass.ITER__F.RecIterCaller?()));

// RecursiveIterator.r: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__F.RecursiveIterator.r($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__F.RecursiveIterator.r($o), Tclass.ITER__F.RecIterCaller?(), $h));

function ITER__F.RecursiveIterator.good(ref) : bool;

// RecursiveIterator.good: Type axiom
axiom (forall $o: ref :: 
  { ITER__F.RecursiveIterator.good($o) } 
  $o != null && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
     ==> $Is(ITER__F.RecursiveIterator.good($o), TBool));

// RecursiveIterator.good: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__F.RecursiveIterator.good($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__F.RecursiveIterator.good($o), TBool, $h));

function ITER__F.RecursiveIterator.__reads(ref) : Set;

// RecursiveIterator._reads: Type axiom
axiom (forall $o: ref :: 
  { ITER__F.RecursiveIterator.__reads($o) } 
  $o != null && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
     ==> $Is(ITER__F.RecursiveIterator.__reads($o), TSet(Tclass._System.object?())));

// RecursiveIterator._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__F.RecursiveIterator.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__F.RecursiveIterator.__reads($o), TSet(Tclass._System.object?()), $h));

function ITER__F.RecursiveIterator.__modifies(ref) : Set;

// RecursiveIterator._modifies: Type axiom
axiom (forall $o: ref :: 
  { ITER__F.RecursiveIterator.__modifies($o) } 
  $o != null && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
     ==> $Is(ITER__F.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?())));

// RecursiveIterator._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__F.RecursiveIterator.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__F.RecursiveIterator.__modifies($o), TSet(Tclass._System.object?()), $h));

const ITER__F.RecursiveIterator.__new: Field
uses {
axiom FDim(ITER__F.RecursiveIterator.__new) == 0
   && FieldOfDecl(class.ITER__F.RecursiveIterator?, field$_new)
     == ITER__F.RecursiveIterator.__new
   && $IsGhostField(ITER__F.RecursiveIterator.__new);
}

// RecursiveIterator._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__F.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
     ==> $Is($Unbox(read($h, $o, ITER__F.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?())));

// RecursiveIterator._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ITER__F.RecursiveIterator.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ITER__F.RecursiveIterator.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function ITER__F.RecursiveIterator.__decreases0(ref) : int;

// RecursiveIterator._decreases0: Type axiom
axiom (forall $o: ref :: 
  { ITER__F.RecursiveIterator.__decreases0($o) } 
  $o != null && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
     ==> $Is(ITER__F.RecursiveIterator.__decreases0($o), TInt));

// RecursiveIterator._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__F.RecursiveIterator.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__F.RecursiveIterator.__decreases0($o), TInt, $h));

function ITER__F.RecursiveIterator.__decreases1(ref) : int;

// RecursiveIterator._decreases1: Type axiom
axiom (forall $o: ref :: 
  { ITER__F.RecursiveIterator.__decreases1($o) } 
  $o != null && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
     ==> $Is(ITER__F.RecursiveIterator.__decreases1($o), TInt));

// RecursiveIterator._decreases1: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ITER__F.RecursiveIterator.__decreases1($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ITER__F.RecursiveIterator?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ITER__F.RecursiveIterator.__decreases1($o), TInt, $h));

// function declaration for ITER_F.RecursiveIterator.Valid
function ITER__F.RecursiveIterator.Valid($heap: Heap, this: ref) : bool;

function ITER__F.RecursiveIterator.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.ITER__F.RecursiveIterator() : Ty
uses {
// Tclass.ITER__F.RecursiveIterator Tag
axiom Tag(Tclass.ITER__F.RecursiveIterator()) == Tagclass.ITER__F.RecursiveIterator
   && TagFamily(Tclass.ITER__F.RecursiveIterator()) == tytagFamily$RecursiveIterator;
}

const unique Tagclass.ITER__F.RecursiveIterator: TyTag;

// Box/unbox axiom for Tclass.ITER__F.RecursiveIterator
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__F.RecursiveIterator()) } 
  $IsBox(bx, Tclass.ITER__F.RecursiveIterator())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__F.RecursiveIterator()));

// frame axiom for ITER__F.RecursiveIterator.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), ITER__F.RecursiveIterator.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.ITER__F.RecursiveIterator())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(ITER__F.RecursiveIterator.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, ITER__F.RecursiveIterator.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> ITER__F.RecursiveIterator.Valid($h0, this)
       == ITER__F.RecursiveIterator.Valid($h1, this));

function ITER__F.RecursiveIterator.Valid#requires(Heap, ref) : bool;

// #requires axiom for ITER__F.RecursiveIterator.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { ITER__F.RecursiveIterator.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.ITER__F.RecursiveIterator())
       && $IsAlloc(this, Tclass.ITER__F.RecursiveIterator(), $Heap)
     ==> ITER__F.RecursiveIterator.Valid#requires($Heap, this) == true);

// $Is axiom for non-null type ITER_F.RecursiveIterator
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__F.RecursiveIterator()) } 
    { $Is(c#0, Tclass.ITER__F.RecursiveIterator?()) } 
  $Is(c#0, Tclass.ITER__F.RecursiveIterator())
     <==> $Is(c#0, Tclass.ITER__F.RecursiveIterator?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_F.RecursiveIterator
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__F.RecursiveIterator(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__F.RecursiveIterator?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__F.RecursiveIterator(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__F.RecursiveIterator?(), $h));

procedure {:verboseName "ITER_F.RecursiveIterator (well-formedness)"} CheckWellFormed$$ITER__F.RecursiveIterator(this: ref
       where this != null
         && 
        $Is(this, Tclass.ITER__F.RecursiveIterator())
         && $IsAlloc(this, Tclass.ITER__F.RecursiveIterator(), $Heap), 
    cell#0: ref
       where $Is(cell#0, Tclass.ITER__F.Cell?())
         && $IsAlloc(cell#0, Tclass.ITER__F.Cell?(), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    r#0: ref
       where $Is(r#0, Tclass.ITER__F.RecIterCaller?())
         && $IsAlloc(r#0, Tclass.ITER__F.RecIterCaller?(), $Heap), 
    good#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class.ITER__F.RecIterCaller?: ClassName;

// $Is axiom for class RecIterCaller
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ITER__F.RecIterCaller?()) } 
  $Is($o, Tclass.ITER__F.RecIterCaller?())
     <==> $o == null || dtype($o) == Tclass.ITER__F.RecIterCaller?());

// $IsAlloc axiom for class RecIterCaller
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ITER__F.RecIterCaller?(), $h) } 
  $IsAlloc($o, Tclass.ITER__F.RecIterCaller?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.ITER__F.RecIterCaller() : Ty
uses {
// Tclass.ITER__F.RecIterCaller Tag
axiom Tag(Tclass.ITER__F.RecIterCaller()) == Tagclass.ITER__F.RecIterCaller
   && TagFamily(Tclass.ITER__F.RecIterCaller()) == tytagFamily$RecIterCaller;
}

const unique Tagclass.ITER__F.RecIterCaller: TyTag;

// Box/unbox axiom for Tclass.ITER__F.RecIterCaller
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ITER__F.RecIterCaller()) } 
  $IsBox(bx, Tclass.ITER__F.RecIterCaller())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ITER__F.RecIterCaller()));

// $Is axiom for non-null type ITER_F.RecIterCaller
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ITER__F.RecIterCaller()) } 
    { $Is(c#0, Tclass.ITER__F.RecIterCaller?()) } 
  $Is(c#0, Tclass.ITER__F.RecIterCaller())
     <==> $Is(c#0, Tclass.ITER__F.RecIterCaller?()) && c#0 != null);

// $IsAlloc axiom for non-null type ITER_F.RecIterCaller
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ITER__F.RecIterCaller(), $h) } 
    { $IsAlloc(c#0, Tclass.ITER__F.RecIterCaller?(), $h) } 
  $IsAlloc(c#0, Tclass.ITER__F.RecIterCaller(), $h)
     <==> $IsAlloc(c#0, Tclass.ITER__F.RecIterCaller?(), $h));

const unique class.ModuleWithIterator.Iter?: ClassName;

function Tclass.ModuleWithIterator.Iter?() : Ty
uses {
// Tclass.ModuleWithIterator.Iter? Tag
axiom Tag(Tclass.ModuleWithIterator.Iter?()) == Tagclass.ModuleWithIterator.Iter?
   && TagFamily(Tclass.ModuleWithIterator.Iter?()) == tytagFamily$Iter;
}

const unique Tagclass.ModuleWithIterator.Iter?: TyTag;

// Box/unbox axiom for Tclass.ModuleWithIterator.Iter?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ModuleWithIterator.Iter?()) } 
  $IsBox(bx, Tclass.ModuleWithIterator.Iter?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ModuleWithIterator.Iter?()));

// $Is axiom for iterator Iter
axiom (forall $o: ref :: 
  { $Is($o, Tclass.ModuleWithIterator.Iter?()) } 
  $Is($o, Tclass.ModuleWithIterator.Iter?())
     <==> $o == null || dtype($o) == Tclass.ModuleWithIterator.Iter?());

// $IsAlloc axiom for iterator Iter
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.ModuleWithIterator.Iter?(), $h) } 
  $IsAlloc($o, Tclass.ModuleWithIterator.Iter?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function ModuleWithIterator.Iter.x(ref) : int;

// Iter.x: Type axiom
axiom (forall $o: ref :: 
  { ModuleWithIterator.Iter.x($o) } 
  $o != null && dtype($o) == Tclass.ModuleWithIterator.Iter?()
     ==> $Is(ModuleWithIterator.Iter.x($o), TInt));

// Iter.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ModuleWithIterator.Iter.x($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ModuleWithIterator.Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ModuleWithIterator.Iter.x($o), TInt, $h));

const ModuleWithIterator.Iter.y: Field
uses {
axiom FDim(ModuleWithIterator.Iter.y) == 0
   && FieldOfDecl(class.ModuleWithIterator.Iter?, field$y)
     == ModuleWithIterator.Iter.y
   && !$IsGhostField(ModuleWithIterator.Iter.y);
}

// Iter.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ModuleWithIterator.Iter.y)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.ModuleWithIterator.Iter?()
     ==> $Is($Unbox(read($h, $o, ModuleWithIterator.Iter.y)): int, TInt));

// Iter.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ModuleWithIterator.Iter.y)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ModuleWithIterator.Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ModuleWithIterator.Iter.y)): int, TInt, $h));

const ModuleWithIterator.Iter.ys: Field
uses {
axiom FDim(ModuleWithIterator.Iter.ys) == 0
   && FieldOfDecl(class.ModuleWithIterator.Iter?, field$ys)
     == ModuleWithIterator.Iter.ys
   && $IsGhostField(ModuleWithIterator.Iter.ys);
}

// Iter.ys: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ModuleWithIterator.Iter.ys)): Seq } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.ModuleWithIterator.Iter?()
     ==> $Is($Unbox(read($h, $o, ModuleWithIterator.Iter.ys)): Seq, TSeq(TInt)));

// Iter.ys: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ModuleWithIterator.Iter.ys)): Seq } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ModuleWithIterator.Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ModuleWithIterator.Iter.ys)): Seq, TSeq(TInt), $h));

function ModuleWithIterator.Iter.__reads(ref) : Set;

// Iter._reads: Type axiom
axiom (forall $o: ref :: 
  { ModuleWithIterator.Iter.__reads($o) } 
  $o != null && dtype($o) == Tclass.ModuleWithIterator.Iter?()
     ==> $Is(ModuleWithIterator.Iter.__reads($o), TSet(Tclass._System.object?())));

// Iter._reads: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ModuleWithIterator.Iter.__reads($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ModuleWithIterator.Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ModuleWithIterator.Iter.__reads($o), TSet(Tclass._System.object?()), $h));

function ModuleWithIterator.Iter.__modifies(ref) : Set;

// Iter._modifies: Type axiom
axiom (forall $o: ref :: 
  { ModuleWithIterator.Iter.__modifies($o) } 
  $o != null && dtype($o) == Tclass.ModuleWithIterator.Iter?()
     ==> $Is(ModuleWithIterator.Iter.__modifies($o), TSet(Tclass._System.object?())));

// Iter._modifies: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ModuleWithIterator.Iter.__modifies($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ModuleWithIterator.Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ModuleWithIterator.Iter.__modifies($o), TSet(Tclass._System.object?()), $h));

const ModuleWithIterator.Iter.__new: Field
uses {
axiom FDim(ModuleWithIterator.Iter.__new) == 0
   && FieldOfDecl(class.ModuleWithIterator.Iter?, field$_new)
     == ModuleWithIterator.Iter.__new
   && $IsGhostField(ModuleWithIterator.Iter.__new);
}

// Iter._new: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ModuleWithIterator.Iter.__new)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.ModuleWithIterator.Iter?()
     ==> $Is($Unbox(read($h, $o, ModuleWithIterator.Iter.__new)): Set, 
      TSet(Tclass._System.object?())));

// Iter._new: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, ModuleWithIterator.Iter.__new)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ModuleWithIterator.Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, ModuleWithIterator.Iter.__new)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

function ModuleWithIterator.Iter.__decreases0(ref) : int;

// Iter._decreases0: Type axiom
axiom (forall $o: ref :: 
  { ModuleWithIterator.Iter.__decreases0($o) } 
  $o != null && dtype($o) == Tclass.ModuleWithIterator.Iter?()
     ==> $Is(ModuleWithIterator.Iter.__decreases0($o), TInt));

// Iter._decreases0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { ModuleWithIterator.Iter.__decreases0($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.ModuleWithIterator.Iter?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(ModuleWithIterator.Iter.__decreases0($o), TInt, $h));

// function declaration for ModuleWithIterator.Iter.Valid
function ModuleWithIterator.Iter.Valid($heap: Heap, this: ref) : bool;

function ModuleWithIterator.Iter.Valid#canCall($heap: Heap, this: ref) : bool;

function Tclass.ModuleWithIterator.Iter() : Ty
uses {
// Tclass.ModuleWithIterator.Iter Tag
axiom Tag(Tclass.ModuleWithIterator.Iter()) == Tagclass.ModuleWithIterator.Iter
   && TagFamily(Tclass.ModuleWithIterator.Iter()) == tytagFamily$Iter;
}

const unique Tagclass.ModuleWithIterator.Iter: TyTag;

// Box/unbox axiom for Tclass.ModuleWithIterator.Iter
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ModuleWithIterator.Iter()) } 
  $IsBox(bx, Tclass.ModuleWithIterator.Iter())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.ModuleWithIterator.Iter()));

// frame axiom for ModuleWithIterator.Iter.Valid
axiom (forall $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), ModuleWithIterator.Iter.Valid($h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass.ModuleWithIterator.Iter())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && (
            $o == this
             || Set#IsMember(ModuleWithIterator.Iter.__reads(this), $Box($o))
             || Set#IsMember($Unbox(read($h0, this, ModuleWithIterator.Iter.__new)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> ModuleWithIterator.Iter.Valid($h0, this)
       == ModuleWithIterator.Iter.Valid($h1, this));

function ModuleWithIterator.Iter.Valid#requires(Heap, ref) : bool;

// #requires axiom for ModuleWithIterator.Iter.Valid
axiom (forall $Heap: Heap, this: ref :: 
  { ModuleWithIterator.Iter.Valid#requires($Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.ModuleWithIterator.Iter())
       && $IsAlloc(this, Tclass.ModuleWithIterator.Iter(), $Heap)
     ==> ModuleWithIterator.Iter.Valid#requires($Heap, this) == true);

// $Is axiom for non-null type ModuleWithIterator.Iter
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.ModuleWithIterator.Iter()) } 
    { $Is(c#0, Tclass.ModuleWithIterator.Iter?()) } 
  $Is(c#0, Tclass.ModuleWithIterator.Iter())
     <==> $Is(c#0, Tclass.ModuleWithIterator.Iter?()) && c#0 != null);

// $IsAlloc axiom for non-null type ModuleWithIterator.Iter
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.ModuleWithIterator.Iter(), $h) } 
    { $IsAlloc(c#0, Tclass.ModuleWithIterator.Iter?(), $h) } 
  $IsAlloc(c#0, Tclass.ModuleWithIterator.Iter(), $h)
     <==> $IsAlloc(c#0, Tclass.ModuleWithIterator.Iter?(), $h));

procedure {:verboseName "ModuleWithIterator.Iter (well-formedness)"} CheckWellFormed$$ModuleWithIterator.Iter(this: ref
       where this != null
         && 
        $Is(this, Tclass.ModuleWithIterator.Iter())
         && $IsAlloc(this, Tclass.ModuleWithIterator.Iter(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



const unique class.IteratorClient__Reveals.__default: ClassName;

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

const unique tytagFamily$MyIter: TyTagFamily;

const unique tytagFamily$MyIntIter: TyTagFamily;

const unique tytagFamily$Naturals: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$IterA: TyTagFamily;

const unique tytagFamily$IterB: TyTagFamily;

const unique tytagFamily$IterC: TyTagFamily;

const unique tytagFamily$DoleOutReferences: TyTagFamily;

const unique tytagFamily$AllocationIterator: TyTagFamily;

const unique tytagFamily$Cls: TyTagFamily;

const unique tytagFamily$LoopFrame_Iter: TyTagFamily;

const unique tytagFamily$NewRemainsFresh: TyTagFamily;

const unique tytagFamily$RecursiveIterator: TyTagFamily;

const unique tytagFamily$RecIterCaller: TyTagFamily;

const unique tytagFamily$Iter: TyTagFamily;

const unique field$ys: NameFamily;

const unique field$xs: NameFamily;

const unique field$x: NameFamily;

const unique field$_new: NameFamily;

const unique field$data: NameFamily;

const unique field$r: NameFamily;

const unique field$c: NameFamily;

const unique field$y: NameFamily;

const unique field$n: NameFamily;

const unique field$ns: NameFamily;

const unique field$rs: NameFamily;

const unique field$cs: NameFamily;
