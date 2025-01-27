// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy

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

const unique class.List.__default: ClassName;

// function declaration for List._default.Return
function List.__default.Return(List._default.Return$A: Ty, x#0: Box) : DatatypeType
uses {
// consequence axiom for List.__default.Return
axiom 1 <= $FunctionContextHeight
   ==> (forall List._default.Return$A: Ty, x#0: Box :: 
    { List.__default.Return(List._default.Return$A, x#0) } 
    List.__default.Return#canCall(List._default.Return$A, x#0)
         || (1 < $FunctionContextHeight && $IsBox(x#0, List._default.Return$A))
       ==> $Is(List.__default.Return(List._default.Return$A, x#0), 
        Tclass.List.M(List._default.Return$A)));
// alloc consequence axiom for List.__default.Return
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, List._default.Return$A: Ty, x#0: Box :: 
    { $IsAlloc(List.__default.Return(List._default.Return$A, x#0), 
        Tclass.List.M(List._default.Return$A), 
        $Heap) } 
    (List.__default.Return#canCall(List._default.Return$A, x#0)
           || (1 < $FunctionContextHeight
             && 
            $IsBox(x#0, List._default.Return$A)
             && $IsAllocBox(x#0, List._default.Return$A, $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(List.__default.Return(List._default.Return$A, x#0), 
        Tclass.List.M(List._default.Return$A), 
        $Heap));
// definition axiom for List.__default.Return (revealed)
axiom {:id "id57"} 1 <= $FunctionContextHeight
   ==> (forall List._default.Return$A: Ty, x#0: Box :: 
    { List.__default.Return(List._default.Return$A, x#0) } 
    List.__default.Return#canCall(List._default.Return$A, x#0)
         || (1 < $FunctionContextHeight && $IsBox(x#0, List._default.Return$A))
       ==> List.__default.Return(List._default.Return$A, x#0)
         == #List.M.Cons(x#0, Lit(#List.M.Nil())));
// definition axiom for List.__default.Return for all literals (revealed)
axiom {:id "id58"} 1 <= $FunctionContextHeight
   ==> (forall List._default.Return$A: Ty, x#0: Box :: 
    {:weight 3} { List.__default.Return(List._default.Return$A, Lit(x#0)) } 
    List.__default.Return#canCall(List._default.Return$A, Lit(x#0))
         || (1 < $FunctionContextHeight && $IsBox(x#0, List._default.Return$A))
       ==> List.__default.Return(List._default.Return$A, Lit(x#0))
         == Lit(#List.M.Cons(Lit(x#0), Lit(#List.M.Nil()))));
}

function List.__default.Return#canCall(List._default.Return$A: Ty, x#0: Box) : bool;

function Tclass.List.M(Ty) : Ty;

const unique Tagclass.List.M: TyTag;

// Tclass.List.M Tag
axiom (forall List.M$A: Ty :: 
  { Tclass.List.M(List.M$A) } 
  Tag(Tclass.List.M(List.M$A)) == Tagclass.List.M
     && TagFamily(Tclass.List.M(List.M$A)) == tytagFamily$M);

function Tclass.List.M_0(Ty) : Ty;

// Tclass.List.M injectivity 0
axiom (forall List.M$A: Ty :: 
  { Tclass.List.M(List.M$A) } 
  Tclass.List.M_0(Tclass.List.M(List.M$A)) == List.M$A);

// Box/unbox axiom for Tclass.List.M
axiom (forall List.M$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.List.M(List.M$A)) } 
  $IsBox(bx, Tclass.List.M(List.M$A))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.List.M(List.M$A)));

function List.__default.Return#requires(Ty, Box) : bool;

// #requires axiom for List.__default.Return
axiom (forall List._default.Return$A: Ty, x#0: Box :: 
  { List.__default.Return#requires(List._default.Return$A, x#0) } 
  $IsBox(x#0, List._default.Return$A)
     ==> List.__default.Return#requires(List._default.Return$A, x#0) == true);

procedure {:verboseName "List.Return (well-formedness)"} CheckWellformed$$List.__default.Return(List._default.Return$A: Ty, x#0: Box where $IsBox(x#0, List._default.Return$A));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for List._default.Concat
function List.__default.Concat(List._default.Concat$A: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for List.__default.Concat
axiom 1 <= $FunctionContextHeight
   ==> (forall List._default.Concat$A: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    { List.__default.Concat(List._default.Concat$A, $ly, xs#0, ys#0) } 
    List.__default.Concat#canCall(List._default.Concat$A, xs#0, ys#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass.List.M(List._default.Concat$A))
           && $Is(ys#0, Tclass.List.M(List._default.Concat$A)))
       ==> $Is(List.__default.Concat(List._default.Concat$A, $ly, xs#0, ys#0), 
        Tclass.List.M(List._default.Concat$A)));
// alloc consequence axiom for List.__default.Concat
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      List._default.Concat$A: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    { $IsAlloc(List.__default.Concat(List._default.Concat$A, $ly, xs#0, ys#0), 
        Tclass.List.M(List._default.Concat$A), 
        $Heap) } 
    (List.__default.Concat#canCall(List._default.Concat$A, xs#0, ys#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(xs#0, Tclass.List.M(List._default.Concat$A))
             && $IsAlloc(xs#0, Tclass.List.M(List._default.Concat$A), $Heap)
             && 
            $Is(ys#0, Tclass.List.M(List._default.Concat$A))
             && $IsAlloc(ys#0, Tclass.List.M(List._default.Concat$A), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(List.__default.Concat(List._default.Concat$A, $ly, xs#0, ys#0), 
        Tclass.List.M(List._default.Concat$A), 
        $Heap));
// definition axiom for List.__default.Concat (revealed)
axiom {:id "id60"} 1 <= $FunctionContextHeight
   ==> (forall List._default.Concat$A: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    { List.__default.Concat(List._default.Concat$A, $LS($ly), xs#0, ys#0) } 
    List.__default.Concat#canCall(List._default.Concat$A, xs#0, ys#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass.List.M(List._default.Concat$A))
           && $Is(ys#0, Tclass.List.M(List._default.Concat$A)))
       ==> (List.M.Cons_q(xs#0)
           ==> (var xs#2 := List.M.tl(xs#0); 
            List.__default.Concat#canCall(List._default.Concat$A, xs#2, ys#0)))
         && List.__default.Concat(List._default.Concat$A, $LS($ly), xs#0, ys#0)
           == (if List.M.Cons_q(xs#0)
             then (var xs#1 := List.M.tl(xs#0); 
              (var x#0 := List.M.hd(xs#0); 
                #List.M.Cons(x#0, List.__default.Concat(List._default.Concat$A, $ly, xs#1, ys#0))))
             else ys#0));
// definition axiom for List.__default.Concat for all literals (revealed)
axiom {:id "id61"} 1 <= $FunctionContextHeight
   ==> (forall List._default.Concat$A: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      ys#0: DatatypeType :: 
    {:weight 3} { List.__default.Concat(List._default.Concat$A, $LS($ly), Lit(xs#0), Lit(ys#0)) } 
    List.__default.Concat#canCall(List._default.Concat$A, Lit(xs#0), Lit(ys#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass.List.M(List._default.Concat$A))
           && $Is(ys#0, Tclass.List.M(List._default.Concat$A)))
       ==> (Lit(List.M.Cons_q(Lit(xs#0)))
           ==> (var xs#4 := Lit(List.M.tl(Lit(xs#0))); 
            List.__default.Concat#canCall(List._default.Concat$A, xs#4, Lit(ys#0))))
         && List.__default.Concat(List._default.Concat$A, $LS($ly), Lit(xs#0), Lit(ys#0))
           == (if List.M.Cons_q(Lit(xs#0))
             then (var xs#3 := Lit(List.M.tl(Lit(xs#0))); 
              (var x#2 := Lit(List.M.hd(Lit(xs#0))); 
                Lit(#List.M.Cons(x#2, 
                    Lit(List.__default.Concat(List._default.Concat$A, $LS($ly), xs#3, Lit(ys#0)))))))
             else ys#0));
}

function List.__default.Concat#canCall(List._default.Concat$A: Ty, xs#0: DatatypeType, ys#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall List._default.Concat$A: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType :: 
  { List.__default.Concat(List._default.Concat$A, $LS($ly), xs#0, ys#0) } 
  List.__default.Concat(List._default.Concat$A, $LS($ly), xs#0, ys#0)
     == List.__default.Concat(List._default.Concat$A, $ly, xs#0, ys#0));

// fuel synonym axiom
axiom (forall List._default.Concat$A: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType :: 
  { List.__default.Concat(List._default.Concat$A, AsFuelBottom($ly), xs#0, ys#0) } 
  List.__default.Concat(List._default.Concat$A, $ly, xs#0, ys#0)
     == List.__default.Concat(List._default.Concat$A, $LZ, xs#0, ys#0));

function List.__default.Concat#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for List.__default.Concat
axiom (forall List._default.Concat$A: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType :: 
  { List.__default.Concat#requires(List._default.Concat$A, $ly, xs#0, ys#0) } 
  $Is(xs#0, Tclass.List.M(List._default.Concat$A))
       && $Is(ys#0, Tclass.List.M(List._default.Concat$A))
     ==> List.__default.Concat#requires(List._default.Concat$A, $ly, xs#0, ys#0) == true);

procedure {:verboseName "List.Concat (well-formedness)"} CheckWellformed$$List.__default.Concat(List._default.Concat$A: Ty, 
    xs#0: DatatypeType where $Is(xs#0, Tclass.List.M(List._default.Concat$A)), 
    ys#0: DatatypeType where $Is(ys#0, Tclass.List.M(List._default.Concat$A)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Concat (well-formedness)"} CheckWellformed$$List.__default.Concat(List._default.Concat$A: Ty, xs#0: DatatypeType, ys#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var xs#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: Box;
  var let#1#0#0: Box;
  var ##xs#0: DatatypeType;
  var ##ys#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(List.__default.Concat(List._default.Concat$A, $LS($LZ), xs#0, ys#0), 
          Tclass.List.M(List._default.Concat$A));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #List.M.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, List._default.Concat$A);
            assume $Is(_mcc#1#0, Tclass.List.M(List._default.Concat$A));
            havoc xs#Z#0;
            assume {:id "id63"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.List.M(List._default.Concat$A));
            assume {:id "id64"} xs#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id65"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, List._default.Concat$A);
            assume {:id "id66"} x#Z#0 == let#1#0#0;
            ##xs#0 := xs#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass.List.M(List._default.Concat$A), $Heap);
            ##ys#0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0, Tclass.List.M(List._default.Concat$A), $Heap);
            assert {:id "id67"} DtRank(##xs#0) < DtRank(xs#0)
               || (DtRank(##xs#0) == DtRank(xs#0) && DtRank(##ys#0) < DtRank(ys#0));
            assume List.__default.Concat#canCall(List._default.Concat$A, xs#Z#0, ys#0);
            assume {:id "id68"} List.__default.Concat(List._default.Concat$A, $LS($LZ), xs#0, ys#0)
               == #List.M.Cons(x#Z#0, List.__default.Concat(List._default.Concat$A, $LS($LZ), xs#Z#0, ys#0));
            assume List.__default.Concat#canCall(List._default.Concat$A, xs#Z#0, ys#0);
            // CheckWellformedWithResult: any expression
            assume $Is(List.__default.Concat(List._default.Concat$A, $LS($LZ), xs#0, ys#0), 
              Tclass.List.M(List._default.Concat$A));
            return;
        }
        else if (xs#0 == #List.M.Nil())
        {
            assume {:id "id62"} List.__default.Concat(List._default.Concat$A, $LS($LZ), xs#0, ys#0) == ys#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(List.__default.Concat(List._default.Concat$A, $LS($LZ), xs#0, ys#0), 
              Tclass.List.M(List._default.Concat$A));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for List._default.Join
function List.__default.Join(List._default.Join$A: Ty, $ly: LayerType, xss#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for List.__default.Join
axiom 2 <= $FunctionContextHeight
   ==> (forall List._default.Join$A: Ty, $ly: LayerType, xss#0: DatatypeType :: 
    { List.__default.Join(List._default.Join$A, $ly, xss#0) } 
    List.__default.Join#canCall(List._default.Join$A, xss#0)
         || (2 < $FunctionContextHeight
           && $Is(xss#0, Tclass.List.M(Tclass.List.M(List._default.Join$A))))
       ==> $Is(List.__default.Join(List._default.Join$A, $ly, xss#0), 
        Tclass.List.M(List._default.Join$A)));
// alloc consequence axiom for List.__default.Join
axiom 2 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, List._default.Join$A: Ty, $ly: LayerType, xss#0: DatatypeType :: 
    { $IsAlloc(List.__default.Join(List._default.Join$A, $ly, xss#0), 
        Tclass.List.M(List._default.Join$A), 
        $Heap) } 
    (List.__default.Join#canCall(List._default.Join$A, xss#0)
           || (2 < $FunctionContextHeight
             && 
            $Is(xss#0, Tclass.List.M(Tclass.List.M(List._default.Join$A)))
             && $IsAlloc(xss#0, Tclass.List.M(Tclass.List.M(List._default.Join$A)), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(List.__default.Join(List._default.Join$A, $ly, xss#0), 
        Tclass.List.M(List._default.Join$A), 
        $Heap));
// definition axiom for List.__default.Join (revealed)
axiom {:id "id69"} 2 <= $FunctionContextHeight
   ==> (forall List._default.Join$A: Ty, $ly: LayerType, xss#0: DatatypeType :: 
    { List.__default.Join(List._default.Join$A, $LS($ly), xss#0) } 
    List.__default.Join#canCall(List._default.Join$A, xss#0)
         || (2 < $FunctionContextHeight
           && $Is(xss#0, Tclass.List.M(Tclass.List.M(List._default.Join$A))))
       ==> (List.M.Cons_q(xss#0)
           ==> (var xss#2 := List.M.tl(xss#0); 
            (var xs#1 := $Unbox(List.M.hd(xss#0)): DatatypeType; 
              List.__default.Join#canCall(List._default.Join$A, xss#2)
                 && List.__default.Concat#canCall(List._default.Join$A, 
                  xs#1, 
                  List.__default.Join(List._default.Join$A, $ly, xss#2)))))
         && List.__default.Join(List._default.Join$A, $LS($ly), xss#0)
           == (if List.M.Cons_q(xss#0)
             then (var xss#1 := List.M.tl(xss#0); 
              (var xs#0 := $Unbox(List.M.hd(xss#0)): DatatypeType; 
                List.__default.Concat(List._default.Join$A, 
                  $LS($LZ), 
                  xs#0, 
                  List.__default.Join(List._default.Join$A, $ly, xss#1))))
             else #List.M.Nil()));
// definition axiom for List.__default.Join for all literals (revealed)
axiom {:id "id70"} 2 <= $FunctionContextHeight
   ==> (forall List._default.Join$A: Ty, $ly: LayerType, xss#0: DatatypeType :: 
    {:weight 3} { List.__default.Join(List._default.Join$A, $LS($ly), Lit(xss#0)) } 
    List.__default.Join#canCall(List._default.Join$A, Lit(xss#0))
         || (2 < $FunctionContextHeight
           && $Is(xss#0, Tclass.List.M(Tclass.List.M(List._default.Join$A))))
       ==> (Lit(List.M.Cons_q(Lit(xss#0)))
           ==> (var xss#4 := Lit(List.M.tl(Lit(xss#0))); 
            (var xs#3 := Lit($Unbox(List.M.hd(Lit(xss#0))): DatatypeType); 
              List.__default.Join#canCall(List._default.Join$A, xss#4)
                 && List.__default.Concat#canCall(List._default.Join$A, 
                  xs#3, 
                  List.__default.Join(List._default.Join$A, $LS($ly), xss#4)))))
         && List.__default.Join(List._default.Join$A, $LS($ly), Lit(xss#0))
           == (if List.M.Cons_q(Lit(xss#0))
             then (var xss#3 := Lit(List.M.tl(Lit(xss#0))); 
              (var xs#2 := Lit($Unbox(List.M.hd(Lit(xss#0))): DatatypeType); 
                Lit(List.__default.Concat(List._default.Join$A, 
                    $LS($LZ), 
                    xs#2, 
                    Lit(List.__default.Join(List._default.Join$A, $LS($ly), xss#3))))))
             else #List.M.Nil()));
}

function List.__default.Join#canCall(List._default.Join$A: Ty, xss#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall List._default.Join$A: Ty, $ly: LayerType, xss#0: DatatypeType :: 
  { List.__default.Join(List._default.Join$A, $LS($ly), xss#0) } 
  List.__default.Join(List._default.Join$A, $LS($ly), xss#0)
     == List.__default.Join(List._default.Join$A, $ly, xss#0));

// fuel synonym axiom
axiom (forall List._default.Join$A: Ty, $ly: LayerType, xss#0: DatatypeType :: 
  { List.__default.Join(List._default.Join$A, AsFuelBottom($ly), xss#0) } 
  List.__default.Join(List._default.Join$A, $ly, xss#0)
     == List.__default.Join(List._default.Join$A, $LZ, xss#0));

function List.__default.Join#requires(Ty, LayerType, DatatypeType) : bool;

// #requires axiom for List.__default.Join
axiom (forall List._default.Join$A: Ty, $ly: LayerType, xss#0: DatatypeType :: 
  { List.__default.Join#requires(List._default.Join$A, $ly, xss#0) } 
  $Is(xss#0, Tclass.List.M(Tclass.List.M(List._default.Join$A)))
     ==> List.__default.Join#requires(List._default.Join$A, $ly, xss#0) == true);

procedure {:verboseName "List.Join (well-formedness)"} CheckWellformed$$List.__default.Join(List._default.Join$A: Ty, 
    xss#0: DatatypeType
       where $Is(xss#0, Tclass.List.M(Tclass.List.M(List._default.Join$A))));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Join (well-formedness)"} CheckWellformed$$List.__default.Join(List._default.Join$A: Ty, xss#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var xss#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var xs#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##xs#0: DatatypeType;
  var ##ys#0: DatatypeType;
  var ##xss#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(List.__default.Join(List._default.Join$A, $LS($LZ), xss#0), 
          Tclass.List.M(List._default.Join$A));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xss#0 == #List.M.Cons($Box(_mcc#0#0), _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass.List.M(List._default.Join$A));
            assume $Is(_mcc#1#0, Tclass.List.M(Tclass.List.M(List._default.Join$A)));
            havoc xss#Z#0;
            assume {:id "id72"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.List.M(Tclass.List.M(List._default.Join$A)));
            assume {:id "id73"} xss#Z#0 == let#0#0#0;
            havoc xs#Z#0;
            assume {:id "id74"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass.List.M(List._default.Join$A));
            assume {:id "id75"} xs#Z#0 == let#1#0#0;
            ##xs#0 := xs#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass.List.M(List._default.Join$A), $Heap);
            ##xss#0 := xss#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#0, Tclass.List.M(Tclass.List.M(List._default.Join$A)), $Heap);
            assert {:id "id76"} DtRank(##xss#0) < DtRank(xss#0);
            assume List.__default.Join#canCall(List._default.Join$A, xss#Z#0);
            ##ys#0 := List.__default.Join(List._default.Join$A, $LS($LZ), xss#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0, Tclass.List.M(List._default.Join$A), $Heap);
            assume List.__default.Concat#canCall(List._default.Join$A, 
              xs#Z#0, 
              List.__default.Join(List._default.Join$A, $LS($LZ), xss#Z#0));
            assume {:id "id77"} List.__default.Join(List._default.Join$A, $LS($LZ), xss#0)
               == List.__default.Concat(List._default.Join$A, 
                $LS($LZ), 
                xs#Z#0, 
                List.__default.Join(List._default.Join$A, $LS($LZ), xss#Z#0));
            assume List.__default.Join#canCall(List._default.Join$A, xss#Z#0)
               && List.__default.Concat#canCall(List._default.Join$A, 
                xs#Z#0, 
                List.__default.Join(List._default.Join$A, $LS($LZ), xss#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(List.__default.Join(List._default.Join$A, $LS($LZ), xss#0), 
              Tclass.List.M(List._default.Join$A));
            return;
        }
        else if (xss#0 == #List.M.Nil())
        {
            assume {:id "id71"} List.__default.Join(List._default.Join$A, $LS($LZ), xss#0) == Lit(#List.M.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(List.__default.Join(List._default.Join$A, $LS($LZ), xss#0), 
              Tclass.List.M(List._default.Join$A));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for List._default.Map
function List.__default.Map(List._default.Map$A: Ty, 
    List._default.Map$B: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    f#0: HandleType)
   : DatatypeType
uses {
// consequence axiom for List.__default.Map
axiom 1 <= $FunctionContextHeight
   ==> (forall List._default.Map$A: Ty, 
      List._default.Map$B: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      f#0: HandleType :: 
    { List.__default.Map(List._default.Map$A, List._default.Map$B, $ly, xs#0, f#0) } 
    List.__default.Map#canCall(List._default.Map$A, List._default.Map$B, xs#0, f#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(xs#0, Tclass.List.M(List._default.Map$A))
           && $Is(f#0, Tclass._System.___hTotalFunc1(List._default.Map$A, List._default.Map$B)))
       ==> $Is(List.__default.Map(List._default.Map$A, List._default.Map$B, $ly, xs#0, f#0), 
        Tclass.List.M(List._default.Map$B)));
// alloc consequence axiom for List.__default.Map
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      List._default.Map$A: Ty, 
      List._default.Map$B: Ty, 
      $ly: LayerType, 
      xs#0: DatatypeType, 
      f#0: HandleType :: 
    { $IsAlloc(List.__default.Map(List._default.Map$A, List._default.Map$B, $ly, xs#0, f#0), 
        Tclass.List.M(List._default.Map$B), 
        $Heap) } 
    (List.__default.Map#canCall(List._default.Map$A, List._default.Map$B, xs#0, f#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(xs#0, Tclass.List.M(List._default.Map$A))
             && $IsAlloc(xs#0, Tclass.List.M(List._default.Map$A), $Heap)
             && 
            $Is(f#0, Tclass._System.___hTotalFunc1(List._default.Map$A, List._default.Map$B))
             && $IsAlloc(f#0, 
              Tclass._System.___hTotalFunc1(List._default.Map$A, List._default.Map$B), 
              $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(List.__default.Map(List._default.Map$A, List._default.Map$B, $ly, xs#0, f#0), 
        Tclass.List.M(List._default.Map$B), 
        $Heap));
// definition axiom for List.__default.Map (revealed)
axiom {:id "id78"} 1 <= $FunctionContextHeight
   ==> (forall List._default.Map$A: Ty, 
      List._default.Map$B: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      xs#0: DatatypeType, 
      f#0: HandleType :: 
    { List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($ly), xs#0, f#0), $IsGoodHeap($Heap) } 
    List.__default.Map#canCall(List._default.Map$A, List._default.Map$B, xs#0, f#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(xs#0, Tclass.List.M(List._default.Map$A))
           && $Is(f#0, Tclass._System.___hTotalFunc1(List._default.Map$A, List._default.Map$B)))
       ==> (List.M.Cons_q(xs#0)
           ==> (var xs#2 := List.M.tl(xs#0); 
            List.__default.Map#canCall(List._default.Map$A, List._default.Map$B, xs#2, f#0)))
         && List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($ly), xs#0, f#0)
           == (if List.M.Cons_q(xs#0)
             then (var xs#1 := List.M.tl(xs#0); 
              (var x#0 := List.M.hd(xs#0); 
                #List.M.Cons(Apply1(List._default.Map$A, List._default.Map$B, $Heap, f#0, x#0), 
                  List.__default.Map(List._default.Map$A, List._default.Map$B, $ly, xs#1, f#0))))
             else #List.M.Nil()));
// definition axiom for List.__default.Map for decreasing-related literals (revealed)
axiom {:id "id79"} 1 <= $FunctionContextHeight
   ==> (forall List._default.Map$A: Ty, 
      List._default.Map$B: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      xs#0: DatatypeType, 
      f#0: HandleType :: 
    {:weight 3} { List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($ly), Lit(xs#0), f#0), $IsGoodHeap($Heap) } 
    List.__default.Map#canCall(List._default.Map$A, List._default.Map$B, Lit(xs#0), f#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(xs#0, Tclass.List.M(List._default.Map$A))
           && $Is(f#0, Tclass._System.___hTotalFunc1(List._default.Map$A, List._default.Map$B)))
       ==> (Lit(List.M.Cons_q(Lit(xs#0)))
           ==> (var xs#4 := Lit(List.M.tl(Lit(xs#0))); 
            List.__default.Map#canCall(List._default.Map$A, List._default.Map$B, xs#4, f#0)))
         && List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($ly), Lit(xs#0), f#0)
           == (if List.M.Cons_q(Lit(xs#0))
             then (var xs#3 := Lit(List.M.tl(Lit(xs#0))); 
              (var x#2 := Lit(List.M.hd(Lit(xs#0))); 
                #List.M.Cons(Apply1(List._default.Map$A, List._default.Map$B, $Heap, f#0, x#2), 
                  List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($ly), xs#3, f#0))))
             else #List.M.Nil()));
// definition axiom for List.__default.Map for all literals (revealed)
axiom {:id "id80"} 1 <= $FunctionContextHeight
   ==> (forall List._default.Map$A: Ty, 
      List._default.Map$B: Ty, 
      $ly: LayerType, 
      $Heap: Heap, 
      xs#0: DatatypeType, 
      f#0: HandleType :: 
    {:weight 3} { List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($ly), Lit(xs#0), Lit(f#0)), $IsGoodHeap($Heap) } 
    List.__default.Map#canCall(List._default.Map$A, List._default.Map$B, Lit(xs#0), Lit(f#0))
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && $Is(xs#0, Tclass.List.M(List._default.Map$A))
           && $Is(f#0, Tclass._System.___hTotalFunc1(List._default.Map$A, List._default.Map$B)))
       ==> (Lit(List.M.Cons_q(Lit(xs#0)))
           ==> (var xs#6 := Lit(List.M.tl(Lit(xs#0))); 
            List.__default.Map#canCall(List._default.Map$A, List._default.Map$B, xs#6, Lit(f#0))))
         && List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($ly), Lit(xs#0), Lit(f#0))
           == (if List.M.Cons_q(Lit(xs#0))
             then (var xs#5 := Lit(List.M.tl(Lit(xs#0))); 
              (var x#4 := Lit(List.M.hd(Lit(xs#0))); 
                #List.M.Cons(Apply1(List._default.Map$A, List._default.Map$B, $Heap, Lit(f#0), x#4), 
                  Lit(List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($ly), xs#5, Lit(f#0))))))
             else #List.M.Nil()));
}

function List.__default.Map#canCall(List._default.Map$A: Ty, 
    List._default.Map$B: Ty, 
    xs#0: DatatypeType, 
    f#0: HandleType)
   : bool;

// layer synonym axiom
axiom (forall List._default.Map$A: Ty, 
    List._default.Map$B: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    f#0: HandleType :: 
  { List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($ly), xs#0, f#0) } 
  List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($ly), xs#0, f#0)
     == List.__default.Map(List._default.Map$A, List._default.Map$B, $ly, xs#0, f#0));

// fuel synonym axiom
axiom (forall List._default.Map$A: Ty, 
    List._default.Map$B: Ty, 
    $ly: LayerType, 
    xs#0: DatatypeType, 
    f#0: HandleType :: 
  { List.__default.Map(List._default.Map$A, List._default.Map$B, AsFuelBottom($ly), xs#0, f#0) } 
  List.__default.Map(List._default.Map$A, List._default.Map$B, $ly, xs#0, f#0)
     == List.__default.Map(List._default.Map$A, List._default.Map$B, $LZ, xs#0, f#0));

function List.__default.Map#requires(Ty, Ty, LayerType, DatatypeType, HandleType) : bool;

// #requires axiom for List.__default.Map
axiom (forall List._default.Map$A: Ty, 
    List._default.Map$B: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    xs#0: DatatypeType, 
    f#0: HandleType :: 
  { List.__default.Map#requires(List._default.Map$A, List._default.Map$B, $ly, xs#0, f#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && $Is(xs#0, Tclass.List.M(List._default.Map$A))
       && $Is(f#0, Tclass._System.___hTotalFunc1(List._default.Map$A, List._default.Map$B))
     ==> List.__default.Map#requires(List._default.Map$A, List._default.Map$B, $ly, xs#0, f#0)
       == true);

procedure {:verboseName "List.Map (well-formedness)"} CheckWellformed$$List.__default.Map(List._default.Map$A: Ty, 
    List._default.Map$B: Ty, 
    xs#0: DatatypeType where $Is(xs#0, Tclass.List.M(List._default.Map$A)), 
    f#0: HandleType
       where $Is(f#0, Tclass._System.___hTotalFunc1(List._default.Map$A, List._default.Map$B)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Map (well-formedness)"} CheckWellformed$$List.__default.Map(List._default.Map$A: Ty, 
    List._default.Map$B: Ty, 
    xs#0: DatatypeType, 
    f#0: HandleType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var xs#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: Box;
  var let#1#0#0: Box;
  var ##xs#0: DatatypeType;
  var ##f#0: HandleType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($LZ), xs#0, f#0), 
          Tclass.List.M(List._default.Map$B));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (xs#0 == #List.M.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, List._default.Map$A);
            assume $Is(_mcc#1#0, Tclass.List.M(List._default.Map$A));
            havoc xs#Z#0;
            assume {:id "id82"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.List.M(List._default.Map$A));
            assume {:id "id83"} xs#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id84"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, List._default.Map$A);
            assume {:id "id85"} x#Z#0 == let#1#0#0;
            ##xs#0 := xs#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass.List.M(List._default.Map$A), $Heap);
            ##f#0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0, 
              Tclass._System.___hTotalFunc1(List._default.Map$A, List._default.Map$B), 
              $Heap);
            assert {:id "id86"} DtRank(##xs#0) < DtRank(xs#0);
            assume List.__default.Map#canCall(List._default.Map$A, List._default.Map$B, xs#Z#0, f#0);
            assume {:id "id87"} List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($LZ), xs#0, f#0)
               == #List.M.Cons(Apply1(List._default.Map$A, List._default.Map$B, $Heap, f#0, x#Z#0), 
                List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($LZ), xs#Z#0, f#0));
            assume List.__default.Map#canCall(List._default.Map$A, List._default.Map$B, xs#Z#0, f#0);
            // CheckWellformedWithResult: any expression
            assume $Is(List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($LZ), xs#0, f#0), 
              Tclass.List.M(List._default.Map$B));
            return;
        }
        else if (xs#0 == #List.M.Nil())
        {
            assume {:id "id81"} List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($LZ), xs#0, f#0)
               == Lit(#List.M.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(List.__default.Map(List._default.Map$A, List._default.Map$B, $LS($LZ), xs#0, f#0), 
              Tclass.List.M(List._default.Map$B));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for List._default.Bind
function List.__default.Bind(List._default.Bind$A: Ty, 
    List._default.Bind$B: Ty, 
    m#0: DatatypeType, 
    f#0: HandleType)
   : DatatypeType
uses {
// consequence axiom for List.__default.Bind
axiom 3 <= $FunctionContextHeight
   ==> (forall List._default.Bind$A: Ty, 
      List._default.Bind$B: Ty, 
      m#0: DatatypeType, 
      f#0: HandleType :: 
    { List.__default.Bind(List._default.Bind$A, List._default.Bind$B, m#0, f#0) } 
    List.__default.Bind#canCall(List._default.Bind$A, List._default.Bind$B, m#0, f#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(m#0, Tclass.List.M(List._default.Bind$A))
           && $Is(f#0, 
            Tclass._System.___hTotalFunc1(List._default.Bind$A, Tclass.List.M(List._default.Bind$B))))
       ==> $Is(List.__default.Bind(List._default.Bind$A, List._default.Bind$B, m#0, f#0), 
        Tclass.List.M(List._default.Bind$B)));
// alloc consequence axiom for List.__default.Bind
axiom 3 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      List._default.Bind$A: Ty, 
      List._default.Bind$B: Ty, 
      m#0: DatatypeType, 
      f#0: HandleType :: 
    { $IsAlloc(List.__default.Bind(List._default.Bind$A, List._default.Bind$B, m#0, f#0), 
        Tclass.List.M(List._default.Bind$B), 
        $Heap) } 
    (List.__default.Bind#canCall(List._default.Bind$A, List._default.Bind$B, m#0, f#0)
           || (3 < $FunctionContextHeight
             && 
            $Is(m#0, Tclass.List.M(List._default.Bind$A))
             && $IsAlloc(m#0, Tclass.List.M(List._default.Bind$A), $Heap)
             && 
            $Is(f#0, 
              Tclass._System.___hTotalFunc1(List._default.Bind$A, Tclass.List.M(List._default.Bind$B)))
             && $IsAlloc(f#0, 
              Tclass._System.___hTotalFunc1(List._default.Bind$A, Tclass.List.M(List._default.Bind$B)), 
              $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(List.__default.Bind(List._default.Bind$A, List._default.Bind$B, m#0, f#0), 
        Tclass.List.M(List._default.Bind$B), 
        $Heap));
// definition axiom for List.__default.Bind (revealed)
axiom {:id "id88"} 3 <= $FunctionContextHeight
   ==> (forall List._default.Bind$A: Ty, 
      List._default.Bind$B: Ty, 
      m#0: DatatypeType, 
      f#0: HandleType :: 
    { List.__default.Bind(List._default.Bind$A, List._default.Bind$B, m#0, f#0) } 
    List.__default.Bind#canCall(List._default.Bind$A, List._default.Bind$B, m#0, f#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(m#0, Tclass.List.M(List._default.Bind$A))
           && $Is(f#0, 
            Tclass._System.___hTotalFunc1(List._default.Bind$A, Tclass.List.M(List._default.Bind$B))))
       ==> List.__default.Map#canCall(List._default.Bind$A, Tclass.List.M(List._default.Bind$B), m#0, f#0)
         && List.__default.Join#canCall(List._default.Bind$B, 
          List.__default.Map(List._default.Bind$A, Tclass.List.M(List._default.Bind$B), $LS($LZ), m#0, f#0))
         && List.__default.Bind(List._default.Bind$A, List._default.Bind$B, m#0, f#0)
           == List.__default.Join(List._default.Bind$B, 
            $LS($LZ), 
            List.__default.Map(List._default.Bind$A, Tclass.List.M(List._default.Bind$B), $LS($LZ), m#0, f#0)));
// definition axiom for List.__default.Bind for decreasing-related literals (revealed)
axiom {:id "id89"} 3 <= $FunctionContextHeight
   ==> (forall List._default.Bind$A: Ty, 
      List._default.Bind$B: Ty, 
      m#0: DatatypeType, 
      f#0: HandleType :: 
    {:weight 3} { List.__default.Bind(List._default.Bind$A, List._default.Bind$B, Lit(m#0), f#0) } 
    List.__default.Bind#canCall(List._default.Bind$A, List._default.Bind$B, Lit(m#0), f#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(m#0, Tclass.List.M(List._default.Bind$A))
           && $Is(f#0, 
            Tclass._System.___hTotalFunc1(List._default.Bind$A, Tclass.List.M(List._default.Bind$B))))
       ==> List.__default.Map#canCall(List._default.Bind$A, Tclass.List.M(List._default.Bind$B), Lit(m#0), f#0)
         && List.__default.Join#canCall(List._default.Bind$B, 
          List.__default.Map(List._default.Bind$A, 
            Tclass.List.M(List._default.Bind$B), 
            $LS($LZ), 
            Lit(m#0), 
            f#0))
         && List.__default.Bind(List._default.Bind$A, List._default.Bind$B, Lit(m#0), f#0)
           == List.__default.Join(List._default.Bind$B, 
            $LS($LZ), 
            List.__default.Map(List._default.Bind$A, 
              Tclass.List.M(List._default.Bind$B), 
              $LS($LZ), 
              Lit(m#0), 
              f#0)));
// definition axiom for List.__default.Bind for all literals (revealed)
axiom {:id "id90"} 3 <= $FunctionContextHeight
   ==> (forall List._default.Bind$A: Ty, 
      List._default.Bind$B: Ty, 
      m#0: DatatypeType, 
      f#0: HandleType :: 
    {:weight 3} { List.__default.Bind(List._default.Bind$A, List._default.Bind$B, Lit(m#0), Lit(f#0)) } 
    List.__default.Bind#canCall(List._default.Bind$A, List._default.Bind$B, Lit(m#0), Lit(f#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(m#0, Tclass.List.M(List._default.Bind$A))
           && $Is(f#0, 
            Tclass._System.___hTotalFunc1(List._default.Bind$A, Tclass.List.M(List._default.Bind$B))))
       ==> List.__default.Map#canCall(List._default.Bind$A, Tclass.List.M(List._default.Bind$B), Lit(m#0), Lit(f#0))
         && List.__default.Join#canCall(List._default.Bind$B, 
          Lit(List.__default.Map(List._default.Bind$A, 
              Tclass.List.M(List._default.Bind$B), 
              $LS($LZ), 
              Lit(m#0), 
              Lit(f#0))))
         && List.__default.Bind(List._default.Bind$A, List._default.Bind$B, Lit(m#0), Lit(f#0))
           == Lit(List.__default.Join(List._default.Bind$B, 
              $LS($LZ), 
              Lit(List.__default.Map(List._default.Bind$A, 
                  Tclass.List.M(List._default.Bind$B), 
                  $LS($LZ), 
                  Lit(m#0), 
                  Lit(f#0))))));
}

function List.__default.Bind#canCall(List._default.Bind$A: Ty, 
    List._default.Bind$B: Ty, 
    m#0: DatatypeType, 
    f#0: HandleType)
   : bool;

function List.__default.Bind#requires(Ty, Ty, DatatypeType, HandleType) : bool;

// #requires axiom for List.__default.Bind
axiom (forall List._default.Bind$A: Ty, 
    List._default.Bind$B: Ty, 
    m#0: DatatypeType, 
    f#0: HandleType :: 
  { List.__default.Bind#requires(List._default.Bind$A, List._default.Bind$B, m#0, f#0) } 
  $Is(m#0, Tclass.List.M(List._default.Bind$A))
       && $Is(f#0, 
        Tclass._System.___hTotalFunc1(List._default.Bind$A, Tclass.List.M(List._default.Bind$B)))
     ==> List.__default.Bind#requires(List._default.Bind$A, List._default.Bind$B, m#0, f#0)
       == true);

procedure {:verboseName "List.Bind (well-formedness)"} CheckWellformed$$List.__default.Bind(List._default.Bind$A: Ty, 
    List._default.Bind$B: Ty, 
    m#0: DatatypeType where $Is(m#0, Tclass.List.M(List._default.Bind$A)), 
    f#0: HandleType
       where $Is(f#0, 
        Tclass._System.___hTotalFunc1(List._default.Bind$A, Tclass.List.M(List._default.Bind$B))));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "List.LeftIdentity (well-formedness)"} CheckWellFormed$$List.__default.LeftIdentity(List._default.LeftIdentity$A: Ty, 
    List._default.LeftIdentity$B: Ty, 
    x#0: Box
       where $IsBox(x#0, List._default.LeftIdentity$A)
         && $IsAllocBox(x#0, List._default.LeftIdentity$A, $Heap), 
    f#0: HandleType
       where $Is(f#0, 
          Tclass._System.___hTotalFunc1(List._default.LeftIdentity$A, Tclass.List.M(List._default.LeftIdentity$B)))
         && $IsAlloc(f#0, 
          Tclass._System.___hTotalFunc1(List._default.LeftIdentity$A, Tclass.List.M(List._default.LeftIdentity$B)), 
          $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "List.LeftIdentity (call)"} Call$$List.__default.LeftIdentity(List._default.LeftIdentity$A: Ty, 
    List._default.LeftIdentity$B: Ty, 
    x#0: Box
       where $IsBox(x#0, List._default.LeftIdentity$A)
         && $IsAllocBox(x#0, List._default.LeftIdentity$A, $Heap), 
    f#0: HandleType
       where $Is(f#0, 
          Tclass._System.___hTotalFunc1(List._default.LeftIdentity$A, Tclass.List.M(List._default.LeftIdentity$B)))
         && $IsAlloc(f#0, 
          Tclass._System.___hTotalFunc1(List._default.LeftIdentity$A, Tclass.List.M(List._default.LeftIdentity$B)), 
          $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#List.M(List.__default.Bind(List._default.LeftIdentity$A, 
        List._default.LeftIdentity$B, 
        List.__default.Return(List._default.LeftIdentity$A, x#0), 
        f#0))
     && $IsA#List.M($Unbox(Apply1(List._default.LeftIdentity$A, 
          Tclass.List.M(List._default.LeftIdentity$B), 
          $Heap, 
          f#0, 
          x#0)): DatatypeType)
     && 
    List.__default.Return#canCall(List._default.LeftIdentity$A, x#0)
     && List.__default.Bind#canCall(List._default.LeftIdentity$A, 
      List._default.LeftIdentity$B, 
      List.__default.Return(List._default.LeftIdentity$A, x#0), 
      f#0);
  ensures {:id "id93"} List.M#Equal(List.__default.Bind(List._default.LeftIdentity$A, 
      List._default.LeftIdentity$B, 
      List.__default.Return(List._default.LeftIdentity$A, x#0), 
      f#0), 
    $Unbox(Apply1(List._default.LeftIdentity$A, 
        Tclass.List.M(List._default.LeftIdentity$B), 
        $Heap, 
        f#0, 
        x#0)): DatatypeType);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "List.LeftIdentity (correctness)"} Impl$$List.__default.LeftIdentity(List._default.LeftIdentity$A: Ty, 
    List._default.LeftIdentity$B: Ty, 
    x#0: Box
       where $IsBox(x#0, List._default.LeftIdentity$A)
         && $IsAllocBox(x#0, List._default.LeftIdentity$A, $Heap), 
    f#0: HandleType
       where $Is(f#0, 
          Tclass._System.___hTotalFunc1(List._default.LeftIdentity$A, Tclass.List.M(List._default.LeftIdentity$B)))
         && $IsAlloc(f#0, 
          Tclass._System.___hTotalFunc1(List._default.LeftIdentity$A, Tclass.List.M(List._default.LeftIdentity$B)), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#List.M(List.__default.Bind(List._default.LeftIdentity$A, 
        List._default.LeftIdentity$B, 
        List.__default.Return(List._default.LeftIdentity$A, x#0), 
        f#0))
     && $IsA#List.M($Unbox(Apply1(List._default.LeftIdentity$A, 
          Tclass.List.M(List._default.LeftIdentity$B), 
          $Heap, 
          f#0, 
          x#0)): DatatypeType)
     && 
    List.__default.Return#canCall(List._default.LeftIdentity$A, x#0)
     && List.__default.Bind#canCall(List._default.LeftIdentity$A, 
      List._default.LeftIdentity$B, 
      List.__default.Return(List._default.LeftIdentity$A, x#0), 
      f#0);
  ensures {:id "id94"} List.M#Equal(List.__default.Bind(List._default.LeftIdentity$A, 
      List._default.LeftIdentity$B, 
      List.__default.Return(List._default.LeftIdentity$A, x#0), 
      f#0), 
    $Unbox(Apply1(List._default.LeftIdentity$A, 
        Tclass.List.M(List._default.LeftIdentity$B), 
        $Heap, 
        f#0, 
        x#0)): DatatypeType);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.LeftIdentity (correctness)"} Impl$$List.__default.LeftIdentity(List._default.LeftIdentity$A: Ty, 
    List._default.LeftIdentity$B: Ty, 
    x#0: Box, 
    f#0: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##xs#0_0_0: DatatypeType;
  var ##ys#0_0_0: DatatypeType;
  var xs#0_0_0: DatatypeType;
  var ##xs#0_0_1: DatatypeType;
  var ##ys#0_0_1: DatatypeType;
  var ##xss#0_1_0: DatatypeType;
  var ##xs#0_1_0: DatatypeType;
  var ##ys#0_1_0: DatatypeType;
  var ##xss#0_2_0: DatatypeType;
  var ##xs#0_2_0: DatatypeType;
  var ##f#0_2_0: HandleType;
  var ##xss#0_2_1: DatatypeType;
  var ##m#0_3_0: DatatypeType;
  var ##x#0_3_0: Box;
  var ##f#0_3_0: HandleType;
  var ##xss#0_3_0: DatatypeType;
  var ##xs#0_3_0: DatatypeType;
  var ##f#0_3_1: HandleType;
  var ##m#0_0: DatatypeType;
  var ##x#0_0: Box;
  var ##f#0_0: HandleType;

    // AddMethodImpl: LeftIdentity, Impl$$List.__default.LeftIdentity
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
    // Assume Fuel Constant
    if (*)
    {
        // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        ##x#0_0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0_0, List._default.LeftIdentity$A, $Heap);
        assume List.__default.Return#canCall(List._default.LeftIdentity$A, x#0);
        ##m#0_0 := List.__default.Return(List._default.LeftIdentity$A, x#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_0, Tclass.List.M(List._default.LeftIdentity$A), $Heap);
        ##f#0_0 := f#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##f#0_0, 
          Tclass._System.___hTotalFunc1(List._default.LeftIdentity$A, Tclass.List.M(List._default.LeftIdentity$B)), 
          $Heap);
        assume List.__default.Bind#canCall(List._default.LeftIdentity$A, 
          List._default.LeftIdentity$B, 
          List.__default.Return(List._default.LeftIdentity$A, x#0), 
          f#0);
        assume List.__default.Return#canCall(List._default.LeftIdentity$A, x#0)
           && List.__default.Bind#canCall(List._default.LeftIdentity$A, 
            List._default.LeftIdentity$B, 
            List.__default.Return(List._default.LeftIdentity$A, x#0), 
            f#0);
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        ##x#0_3_0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAllocBox(##x#0_3_0, List._default.LeftIdentity$A, $Heap);
        assume List.__default.Return#canCall(List._default.LeftIdentity$A, x#0);
        ##m#0_3_0 := List.__default.Return(List._default.LeftIdentity$A, x#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##m#0_3_0, Tclass.List.M(List._default.LeftIdentity$A), $Heap);
        ##f#0_3_0 := f#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##f#0_3_0, 
          Tclass._System.___hTotalFunc1(List._default.LeftIdentity$A, Tclass.List.M(List._default.LeftIdentity$B)), 
          $Heap);
        assume List.__default.Bind#canCall(List._default.LeftIdentity$A, 
          List._default.LeftIdentity$B, 
          List.__default.Return(List._default.LeftIdentity$A, x#0), 
          f#0);
        assume List.__default.Return#canCall(List._default.LeftIdentity$A, x#0)
           && List.__default.Bind#canCall(List._default.LeftIdentity$A, 
            List._default.LeftIdentity$B, 
            List.__default.Return(List._default.LeftIdentity$A, x#0), 
            f#0);
        // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        ##xs#0_3_0 := #List.M.Cons(x#0, Lit(#List.M.Nil()));
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_3_0, Tclass.List.M(List._default.LeftIdentity$A), $Heap);
        ##f#0_3_1 := f#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##f#0_3_1, 
          Tclass._System.___hTotalFunc1(List._default.LeftIdentity$A, Tclass.List.M(List._default.LeftIdentity$B)), 
          $Heap);
        assume List.__default.Map#canCall(List._default.LeftIdentity$A, 
          Tclass.List.M(List._default.LeftIdentity$B), 
          #List.M.Cons(x#0, Lit(#List.M.Nil())), 
          f#0);
        ##xss#0_3_0 := List.__default.Map(List._default.LeftIdentity$A, 
          Tclass.List.M(List._default.LeftIdentity$B), 
          $LS($LZ), 
          #List.M.Cons(x#0, Lit(#List.M.Nil())), 
          f#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##xss#0_3_0, Tclass.List.M(Tclass.List.M(List._default.LeftIdentity$B)), $Heap);
        assume List.__default.Join#canCall(List._default.LeftIdentity$B, 
          List.__default.Map(List._default.LeftIdentity$A, 
            Tclass.List.M(List._default.LeftIdentity$B), 
            $LS($LZ), 
            #List.M.Cons(x#0, Lit(#List.M.Nil())), 
            f#0));
        assume List.__default.Map#canCall(List._default.LeftIdentity$A, 
            Tclass.List.M(List._default.LeftIdentity$B), 
            #List.M.Cons(x#0, Lit(#List.M.Nil())), 
            f#0)
           && List.__default.Join#canCall(List._default.LeftIdentity$B, 
            List.__default.Map(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $LS($LZ), 
              #List.M.Cons(x#0, Lit(#List.M.Nil())), 
              f#0));
        // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        assert {:id "id101"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.LeftIdentity$A, 
            List._default.LeftIdentity$B, 
            List.__default.Return(List._default.LeftIdentity$A, x#0), 
            f#0), 
          List.__default.Join(List._default.LeftIdentity$B, 
            $LS($LS($LZ)), 
            List.__default.Map(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $LS($LS($LZ)), 
              #List.M.Cons(x#0, Lit(#List.M.Nil())), 
              f#0)));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        ##xs#0_2_0 := #List.M.Cons(x#0, Lit(#List.M.Nil()));
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_2_0, Tclass.List.M(List._default.LeftIdentity$A), $Heap);
        ##f#0_2_0 := f#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##f#0_2_0, 
          Tclass._System.___hTotalFunc1(List._default.LeftIdentity$A, Tclass.List.M(List._default.LeftIdentity$B)), 
          $Heap);
        assume List.__default.Map#canCall(List._default.LeftIdentity$A, 
          Tclass.List.M(List._default.LeftIdentity$B), 
          #List.M.Cons(x#0, Lit(#List.M.Nil())), 
          f#0);
        ##xss#0_2_0 := List.__default.Map(List._default.LeftIdentity$A, 
          Tclass.List.M(List._default.LeftIdentity$B), 
          $LS($LZ), 
          #List.M.Cons(x#0, Lit(#List.M.Nil())), 
          f#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##xss#0_2_0, Tclass.List.M(Tclass.List.M(List._default.LeftIdentity$B)), $Heap);
        assume List.__default.Join#canCall(List._default.LeftIdentity$B, 
          List.__default.Map(List._default.LeftIdentity$A, 
            Tclass.List.M(List._default.LeftIdentity$B), 
            $LS($LZ), 
            #List.M.Cons(x#0, Lit(#List.M.Nil())), 
            f#0));
        assume List.__default.Map#canCall(List._default.LeftIdentity$A, 
            Tclass.List.M(List._default.LeftIdentity$B), 
            #List.M.Cons(x#0, Lit(#List.M.Nil())), 
            f#0)
           && List.__default.Join#canCall(List._default.LeftIdentity$B, 
            List.__default.Map(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $LS($LZ), 
              #List.M.Cons(x#0, Lit(#List.M.Nil())), 
              f#0));
        // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        ##xss#0_2_1 := #List.M.Cons(Apply1(List._default.LeftIdentity$A, 
            Tclass.List.M(List._default.LeftIdentity$B), 
            $Heap, 
            f#0, 
            x#0), 
          Lit(#List.M.Nil()));
        // assume allocatedness for argument to function
        assume $IsAlloc(##xss#0_2_1, Tclass.List.M(Tclass.List.M(List._default.LeftIdentity$B)), $Heap);
        assume List.__default.Join#canCall(List._default.LeftIdentity$B, 
          #List.M.Cons(Apply1(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $Heap, 
              f#0, 
              x#0), 
            Lit(#List.M.Nil())));
        assume List.__default.Join#canCall(List._default.LeftIdentity$B, 
          #List.M.Cons(Apply1(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $Heap, 
              f#0, 
              x#0), 
            Lit(#List.M.Nil())));
        // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        assert {:id "id100"} {:subsumption 0} List.M#Equal(List.__default.Join(List._default.LeftIdentity$B, 
            $LS($LS($LZ)), 
            List.__default.Map(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $LS($LS($LZ)), 
              #List.M.Cons(x#0, Lit(#List.M.Nil())), 
              f#0)), 
          List.__default.Join(List._default.LeftIdentity$B, 
            $LS($LS($LZ)), 
            #List.M.Cons(Apply1(List._default.LeftIdentity$A, 
                Tclass.List.M(List._default.LeftIdentity$B), 
                $Heap, 
                f#0, 
                x#0), 
              Lit(#List.M.Nil()))));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        ##xss#0_1_0 := #List.M.Cons(Apply1(List._default.LeftIdentity$A, 
            Tclass.List.M(List._default.LeftIdentity$B), 
            $Heap, 
            f#0, 
            x#0), 
          Lit(#List.M.Nil()));
        // assume allocatedness for argument to function
        assume $IsAlloc(##xss#0_1_0, Tclass.List.M(Tclass.List.M(List._default.LeftIdentity$B)), $Heap);
        assume List.__default.Join#canCall(List._default.LeftIdentity$B, 
          #List.M.Cons(Apply1(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $Heap, 
              f#0, 
              x#0), 
            Lit(#List.M.Nil())));
        assume List.__default.Join#canCall(List._default.LeftIdentity$B, 
          #List.M.Cons(Apply1(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $Heap, 
              f#0, 
              x#0), 
            Lit(#List.M.Nil())));
        // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        ##xs#0_1_0 := $Unbox(Apply1(List._default.LeftIdentity$A, 
            Tclass.List.M(List._default.LeftIdentity$B), 
            $Heap, 
            f#0, 
            x#0)): DatatypeType;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_1_0, Tclass.List.M(List._default.LeftIdentity$B), $Heap);
        ##ys#0_1_0 := Lit(#List.M.Nil());
        // assume allocatedness for argument to function
        assume $IsAlloc(##ys#0_1_0, Tclass.List.M(List._default.LeftIdentity$B), $Heap);
        assume List.__default.Concat#canCall(List._default.LeftIdentity$B, 
          $Unbox(Apply1(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $Heap, 
              f#0, 
              x#0)): DatatypeType, 
          Lit(#List.M.Nil()));
        assume List.__default.Concat#canCall(List._default.LeftIdentity$B, 
          $Unbox(Apply1(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $Heap, 
              f#0, 
              x#0)): DatatypeType, 
          Lit(#List.M.Nil()));
        // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        assert {:id "id99"} {:subsumption 0} List.M#Equal(List.__default.Join(List._default.LeftIdentity$B, 
            $LS($LS($LZ)), 
            #List.M.Cons(Apply1(List._default.LeftIdentity$A, 
                Tclass.List.M(List._default.LeftIdentity$B), 
                $Heap, 
                f#0, 
                x#0), 
              Lit(#List.M.Nil()))), 
          List.__default.Concat(List._default.LeftIdentity$B, 
            $LS($LS($LZ)), 
            $Unbox(Apply1(List._default.LeftIdentity$A, 
                Tclass.List.M(List._default.LeftIdentity$B), 
                $Heap, 
                f#0, 
                x#0)): DatatypeType, 
            Lit(#List.M.Nil())));
        assume false;
    }
    else if (*)
    {
        // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        ##xs#0_0_0 := $Unbox(Apply1(List._default.LeftIdentity$A, 
            Tclass.List.M(List._default.LeftIdentity$B), 
            $Heap, 
            f#0, 
            x#0)): DatatypeType;
        // assume allocatedness for argument to function
        assume $IsAlloc(##xs#0_0_0, Tclass.List.M(List._default.LeftIdentity$B), $Heap);
        ##ys#0_0_0 := Lit(#List.M.Nil());
        // assume allocatedness for argument to function
        assume $IsAlloc(##ys#0_0_0, Tclass.List.M(List._default.LeftIdentity$B), $Heap);
        assume List.__default.Concat#canCall(List._default.LeftIdentity$B, 
          $Unbox(Apply1(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $Heap, 
              f#0, 
              x#0)): DatatypeType, 
          Lit(#List.M.Nil()));
        assume List.__default.Concat#canCall(List._default.LeftIdentity$B, 
          $Unbox(Apply1(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $Heap, 
              f#0, 
              x#0)): DatatypeType, 
          Lit(#List.M.Nil()));
        // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(123,10)
        // Begin Comprehension WF check
        havoc xs#0_0_0;
        if ($Is(xs#0_0_0, Tclass.List.M(List._default.LeftIdentity$B))
           && $IsAlloc(xs#0_0_0, Tclass.List.M(List._default.LeftIdentity$B), $Heap))
        {
            ##xs#0_0_1 := xs#0_0_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1, Tclass.List.M(List._default.LeftIdentity$B), $Heap);
            ##ys#0_0_1 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_1, Tclass.List.M(List._default.LeftIdentity$B), $Heap);
            assume List.__default.Concat#canCall(List._default.LeftIdentity$B, xs#0_0_0, Lit(#List.M.Nil()));
        }

        // End Comprehension WF check
        assume (forall xs#0_0_1: DatatypeType :: 
          { List.__default.Concat(List._default.LeftIdentity$B, $LS($LZ), xs#0_0_1, #List.M.Nil()) } 
          $Is(xs#0_0_1, Tclass.List.M(List._default.LeftIdentity$B))
             ==> $IsA#List.M(List.__default.Concat(List._default.LeftIdentity$B, $LS($LZ), xs#0_0_1, Lit(#List.M.Nil())))
               && $IsA#List.M(xs#0_0_1)
               && List.__default.Concat#canCall(List._default.LeftIdentity$B, xs#0_0_1, Lit(#List.M.Nil())));
        assert {:id "id95"} {:subsumption 0} (forall xs#0_0_1: DatatypeType :: 
          { List.__default.Concat(List._default.LeftIdentity$B, $LS($LS($LZ)), xs#0_0_1, #List.M.Nil()) } 
          $Is(xs#0_0_1, Tclass.List.M(List._default.LeftIdentity$B))
               && $IsAlloc(xs#0_0_1, Tclass.List.M(List._default.LeftIdentity$B), $Heap)
               && (forall xs$ih#0_0_0#0_0_0: DatatypeType :: 
                { List.__default.Concat(List._default.LeftIdentity$B, $LS($LZ), xs$ih#0_0_0#0_0_0, #List.M.Nil()) } 
                $Is(xs$ih#0_0_0#0_0_0, Tclass.List.M(List._default.LeftIdentity$B))
                   ==> 
                  DtRank(xs$ih#0_0_0#0_0_0) < DtRank(xs#0_0_1)
                   ==> List.M#Equal(List.__default.Concat(List._default.LeftIdentity$B, $LS($LZ), xs$ih#0_0_0#0_0_0, Lit(#List.M.Nil())), 
                    xs$ih#0_0_0#0_0_0))
               && 
              true
               && (exists a#0_0_0#0#0: Box, a#0_0_0#1#0: DatatypeType :: 
                { #List.M.Cons(a#0_0_0#0#0, a#0_0_0#1#0) } 
                $IsBox(a#0_0_0#0#0, List._default.LeftIdentity$B)
                   && $Is(a#0_0_0#1#0, Tclass.List.M(List._default.LeftIdentity$B))
                   && #List.M.Cons(a#0_0_0#0#0, a#0_0_0#1#0) == xs#0_0_1)
             ==> List.M#Equal(List.__default.Concat(List._default.LeftIdentity$B, $LS($LS($LZ)), xs#0_0_1, Lit(#List.M.Nil())), 
              xs#0_0_1));
        assert {:id "id96"} {:subsumption 0} (forall xs#0_0_1: DatatypeType :: 
          { List.__default.Concat(List._default.LeftIdentity$B, $LS($LS($LZ)), xs#0_0_1, #List.M.Nil()) } 
          $Is(xs#0_0_1, Tclass.List.M(List._default.LeftIdentity$B))
               && $IsAlloc(xs#0_0_1, Tclass.List.M(List._default.LeftIdentity$B), $Heap)
               && (forall xs$ih#0_0_0#0_0_0: DatatypeType :: 
                { List.__default.Concat(List._default.LeftIdentity$B, $LS($LZ), xs$ih#0_0_0#0_0_0, #List.M.Nil()) } 
                $Is(xs$ih#0_0_0#0_0_0, Tclass.List.M(List._default.LeftIdentity$B))
                   ==> 
                  DtRank(xs$ih#0_0_0#0_0_0) < DtRank(xs#0_0_1)
                   ==> List.M#Equal(List.__default.Concat(List._default.LeftIdentity$B, $LS($LZ), xs$ih#0_0_0#0_0_0, Lit(#List.M.Nil())), 
                    xs$ih#0_0_0#0_0_0))
               && 
              true
               && #List.M.Nil() == xs#0_0_1
             ==> List.M#Equal(List.__default.Concat(List._default.LeftIdentity$B, $LS($LS($LZ)), xs#0_0_1, Lit(#List.M.Nil())), 
              xs#0_0_1));
        assume {:id "id97"} (forall xs#0_0_1: DatatypeType :: 
          { List.__default.Concat(List._default.LeftIdentity$B, $LS($LZ), xs#0_0_1, #List.M.Nil()) } 
          $Is(xs#0_0_1, Tclass.List.M(List._default.LeftIdentity$B))
               && $IsAlloc(xs#0_0_1, Tclass.List.M(List._default.LeftIdentity$B), $Heap)
             ==> List.M#Equal(List.__default.Concat(List._default.LeftIdentity$B, $LS($LZ), xs#0_0_1, Lit(#List.M.Nil())), 
              xs#0_0_1));
        // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        assume true;
        // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(118,5)
        assert {:id "id98"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.LeftIdentity$B, 
            $LS($LS($LZ)), 
            $Unbox(Apply1(List._default.LeftIdentity$A, 
                Tclass.List.M(List._default.LeftIdentity$B), 
                $Heap, 
                f#0, 
                x#0)): DatatypeType, 
            Lit(#List.M.Nil())), 
          $Unbox(Apply1(List._default.LeftIdentity$A, 
              Tclass.List.M(List._default.LeftIdentity$B), 
              $Heap, 
              f#0, 
              x#0)): DatatypeType);
        assume false;
    }

    assume {:id "id102"} List.M#Equal(List.__default.Bind(List._default.LeftIdentity$A, 
        List._default.LeftIdentity$B, 
        List.__default.Return(List._default.LeftIdentity$A, x#0), 
        f#0), 
      $Unbox(Apply1(List._default.LeftIdentity$A, 
          Tclass.List.M(List._default.LeftIdentity$B), 
          $Heap, 
          f#0, 
          x#0)): DatatypeType);
}



procedure {:verboseName "List.RightIdentity (well-formedness)"} CheckWellFormed$$List.__default.RightIdentity(List._default.RightIdentity$A: Ty, 
    m#0: DatatypeType
       where $Is(m#0, Tclass.List.M(List._default.RightIdentity$A))
         && $IsAlloc(m#0, Tclass.List.M(List._default.RightIdentity$A), $Heap)
         && $IsA#List.M(m#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



function List.__default.Return#Handle(List._default.Return$A: Ty) : HandleType;

axiom (forall List._default.Return$A: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { Apply1(List._default.Return$A, 
      Tclass.List.M(List._default.Return$A), 
      $heap, 
      List.__default.Return#Handle(List._default.Return$A), 
      $fh$0x#0) } 
  Apply1(List._default.Return$A, 
      Tclass.List.M(List._default.Return$A), 
      $heap, 
      List.__default.Return#Handle(List._default.Return$A), 
      $fh$0x#0)
     == $Box(List.__default.Return(List._default.Return$A, $fh$0x#0)));

axiom (forall List._default.Return$A: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { Requires1(List._default.Return$A, 
      Tclass.List.M(List._default.Return$A), 
      $heap, 
      List.__default.Return#Handle(List._default.Return$A), 
      $fh$0x#0) } 
  Requires1(List._default.Return$A, 
      Tclass.List.M(List._default.Return$A), 
      $heap, 
      List.__default.Return#Handle(List._default.Return$A), 
      $fh$0x#0)
     == List.__default.Return#requires(List._default.Return$A, $fh$0x#0));

axiom (forall $bx: Box, List._default.Return$A: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { Set#IsMember(Reads1(List._default.Return$A, 
        Tclass.List.M(List._default.Return$A), 
        $heap, 
        List.__default.Return#Handle(List._default.Return$A), 
        $fh$0x#0), 
      $bx) } 
  Set#IsMember(Reads1(List._default.Return$A, 
        Tclass.List.M(List._default.Return$A), 
        $heap, 
        List.__default.Return#Handle(List._default.Return$A), 
        $fh$0x#0), 
      $bx)
     == false);

axiom (forall List._default.Return$A: Ty, $heap: Heap, $fh$0x#0: Box :: 
  { List.__default.Return(List._default.Return$A, $fh$0x#0), $IsGoodHeap($heap) } 
  List.__default.Return(List._default.Return$A, $fh$0x#0)
     == $Unbox(Apply1(List._default.Return$A, 
        Tclass.List.M(List._default.Return$A), 
        $heap, 
        List.__default.Return#Handle(List._default.Return$A), 
        $fh$0x#0)): DatatypeType);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.RightIdentity (well-formedness)"} CheckWellFormed$$List.__default.RightIdentity(List._default.RightIdentity$A: Ty, m#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##m#0: DatatypeType;
  var ##f#0: HandleType;


    // AddMethodImpl: RightIdentity, CheckWellFormed$$List.__default.RightIdentity
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##m#0 := m#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
    assert {:id "id103"} 1 != $FunctionContextHeight;
    ##f#0 := List.__default.Return#Handle(List._default.RightIdentity$A);
    // assume allocatedness for argument to function
    assume $IsAlloc(##f#0, 
      Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
      $Heap);
    assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
      List._default.RightIdentity$A, 
      m#0, 
      List.__default.Return#Handle(List._default.RightIdentity$A));
    assume {:id "id104"} List.M#Equal(List.__default.Bind(List._default.RightIdentity$A, 
        List._default.RightIdentity$A, 
        m#0, 
        List.__default.Return#Handle(List._default.RightIdentity$A)), 
      m#0);
}



procedure {:verboseName "List.RightIdentity (call)"} Call$$List.__default.RightIdentity(List._default.RightIdentity$A: Ty, 
    m#0: DatatypeType
       where $Is(m#0, Tclass.List.M(List._default.RightIdentity$A))
         && $IsAlloc(m#0, Tclass.List.M(List._default.RightIdentity$A), $Heap)
         && $IsA#List.M(m#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#List.M(List.__default.Bind(List._default.RightIdentity$A, 
        List._default.RightIdentity$A, 
        m#0, 
        List.__default.Return#Handle(List._default.RightIdentity$A)))
     && $IsA#List.M(m#0)
     && List.__default.Bind#canCall(List._default.RightIdentity$A, 
      List._default.RightIdentity$A, 
      m#0, 
      List.__default.Return#Handle(List._default.RightIdentity$A));
  ensures {:id "id105"} List.M#Equal(List.__default.Bind(List._default.RightIdentity$A, 
      List._default.RightIdentity$A, 
      m#0, 
      List.__default.Return#Handle(List._default.RightIdentity$A)), 
    m#0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "List.RightIdentity (correctness)"} Impl$$List.__default.RightIdentity(List._default.RightIdentity$A: Ty, 
    m#0: DatatypeType
       where $Is(m#0, Tclass.List.M(List._default.RightIdentity$A))
         && $IsAlloc(m#0, Tclass.List.M(List._default.RightIdentity$A), $Heap)
         && $IsA#List.M(m#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#List.M(List.__default.Bind(List._default.RightIdentity$A, 
        List._default.RightIdentity$A, 
        m#0, 
        List.__default.Return#Handle(List._default.RightIdentity$A)))
     && $IsA#List.M(m#0)
     && List.__default.Bind#canCall(List._default.RightIdentity$A, 
      List._default.RightIdentity$A, 
      m#0, 
      List.__default.Return#Handle(List._default.RightIdentity$A));
  ensures {:id "id106"} List.M#Equal(List.__default.Bind(List._default.RightIdentity$A, 
      List._default.RightIdentity$A, 
      m#0, 
      List.__default.Return#Handle(List._default.RightIdentity$A)), 
    m#0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.RightIdentity (correctness)"} Impl$$List.__default.RightIdentity(List._default.RightIdentity$A: Ty, m#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##xss#0_0_1_0: DatatypeType;
  var ##xss#0_0_2_0: DatatypeType;
  var ##xs#0_0_2_0: DatatypeType;
  var ##f#0_0_2_0: HandleType;
  var ##xss#0_0_2_1: DatatypeType;
  var ##m#0_0_3_0: DatatypeType;
  var ##f#0_0_3_0: HandleType;
  var ##xss#0_0_3_0: DatatypeType;
  var ##xs#0_0_3_0: DatatypeType;
  var ##f#0_0_3_1: HandleType;
  var ##m#0_0_0: DatatypeType;
  var ##f#0_0_0: HandleType;
  var _mcc#0#1_0: Box;
  var _mcc#1#1_0: DatatypeType;
  var xs#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var x#1_0: Box;
  var let#1_1#0#0: Box;
  var ##xs#1_0_1_0: DatatypeType;
  var ##ys#1_0_1_0: DatatypeType;
  var ##xs#1_0_2_0: DatatypeType;
  var ##x#1_0_2_0: Box;
  var ##ys#1_0_2_0: DatatypeType;
  var ##xs#1_0_2_1: DatatypeType;
  var ##ys#1_0_2_1: DatatypeType;
  var ##xs#1_0_3_0: DatatypeType;
  var ##x#1_0_3_0: Box;
  var ##ys#1_0_3_0: DatatypeType;
  var ##xss#1_0_3_0: DatatypeType;
  var ##xs#1_0_3_1: DatatypeType;
  var ##f#1_0_3_0: HandleType;
  var m##1_0_3_0: DatatypeType;
  var ##xs#1_0_3_2: DatatypeType;
  var ##x#1_0_3_1: Box;
  var ##ys#1_0_3_1: DatatypeType;
  var ##xss#1_0_4_0: DatatypeType;
  var ##x#1_0_4_0: Box;
  var ##xs#1_0_4_0: DatatypeType;
  var ##f#1_0_4_0: HandleType;
  var ##xs#1_0_4_1: DatatypeType;
  var ##x#1_0_4_1: Box;
  var ##ys#1_0_4_0: DatatypeType;
  var ##xss#1_0_4_1: DatatypeType;
  var ##xs#1_0_4_2: DatatypeType;
  var ##f#1_0_4_1: HandleType;
  var ##xss#1_0_5_0: DatatypeType;
  var ##xs#1_0_5_0: DatatypeType;
  var ##f#1_0_5_0: HandleType;
  var ##xss#1_0_5_1: DatatypeType;
  var ##x#1_0_5_0: Box;
  var ##xs#1_0_5_1: DatatypeType;
  var ##f#1_0_5_1: HandleType;
  var ##m#1_0_6_0: DatatypeType;
  var ##f#1_0_6_0: HandleType;
  var ##xss#1_0_6_0: DatatypeType;
  var ##xs#1_0_6_0: DatatypeType;
  var ##f#1_0_6_1: HandleType;
  var ##m#1_0_7_0: DatatypeType;
  var ##f#1_0_7_0: HandleType;
  var ##m#1_0_7_1: DatatypeType;
  var ##f#1_0_7_1: HandleType;
  var ##m#1_0_0: DatatypeType;
  var ##f#1_0_0: HandleType;

    // AddMethodImpl: RightIdentity, Impl$$List.__default.RightIdentity
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#1_0, _mcc#1#1_0;
    if (m#0 == #List.M.Cons(_mcc#0#1_0, _mcc#1#1_0))
    {
        assume $IsBox(_mcc#0#1_0, List._default.RightIdentity$A);
        assume $Is(_mcc#1#1_0, Tclass.List.M(List._default.RightIdentity$A));
        havoc xs#1_0;
        assume $Is(xs#1_0, Tclass.List.M(List._default.RightIdentity$A))
           && $IsAlloc(xs#1_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
        assume {:id "id116"} let#1_0#0#0 == _mcc#1#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, Tclass.List.M(List._default.RightIdentity$A));
        assume {:id "id117"} xs#1_0 == let#1_0#0#0;
        havoc x#1_0;
        assume $IsBox(x#1_0, List._default.RightIdentity$A)
           && $IsAllocBox(x#1_0, List._default.RightIdentity$A, $Heap);
        assume {:id "id118"} let#1_1#0#0 == _mcc#0#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#1_1#0#0, List._default.RightIdentity$A);
        assume {:id "id119"} x#1_0 == let#1_1#0#0;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##m#1_0_0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assert {:id "id139"} 1 != $FunctionContextHeight;
            ##f#1_0_0 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_0, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              m#0, 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              m#0, 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##m#1_0_7_0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_7_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume {:id "id136"} 1 != $FunctionContextHeight;
            ##f#1_0_7_0 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_7_0, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              m#0, 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              m#0, 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##m#1_0_7_1 := #List.M.Cons(x#1_0, xs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_7_1, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assert {:id "id137"} 1 != $FunctionContextHeight;
            ##f#1_0_7_1 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_7_1, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              #List.M.Cons(x#1_0, xs#1_0), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              #List.M.Cons(x#1_0, xs#1_0), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assert {:id "id138"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.RightIdentity$A, 
                List._default.RightIdentity$A, 
                m#0, 
                List.__default.Return#Handle(List._default.RightIdentity$A)), 
              List.__default.Bind(List._default.RightIdentity$A, 
                List._default.RightIdentity$A, 
                #List.M.Cons(x#1_0, xs#1_0), 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##m#1_0_6_0 := #List.M.Cons(x#1_0, xs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_6_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume {:id "id133"} 1 != $FunctionContextHeight;
            ##f#1_0_6_0 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_6_0, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              #List.M.Cons(x#1_0, xs#1_0), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              #List.M.Cons(x#1_0, xs#1_0), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##xs#1_0_6_0 := #List.M.Cons(x#1_0, xs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_6_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assert {:id "id134"} 1 != $FunctionContextHeight;
            ##f#1_0_6_1 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_6_1, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              #List.M.Cons(x#1_0, xs#1_0), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            ##xss#1_0_6_0 := List.__default.Map(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              $LS($LZ), 
              #List.M.Cons(x#1_0, xs#1_0), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_6_0, 
              Tclass.List.M(Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.RightIdentity$A, 
              List.__default.Map(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                $LS($LZ), 
                #List.M.Cons(x#1_0, xs#1_0), 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                #List.M.Cons(x#1_0, xs#1_0), 
                List.__default.Return#Handle(List._default.RightIdentity$A))
               && List.__default.Join#canCall(List._default.RightIdentity$A, 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LZ), 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  List.__default.Return#Handle(List._default.RightIdentity$A)));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assert {:id "id135"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.RightIdentity$A, 
                List._default.RightIdentity$A, 
                #List.M.Cons(x#1_0, xs#1_0), 
                List.__default.Return#Handle(List._default.RightIdentity$A)), 
              List.__default.Join(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LS($LZ)), 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  List.__default.Return#Handle(List._default.RightIdentity$A))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##xs#1_0_5_0 := #List.M.Cons(x#1_0, xs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_5_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume {:id "id130"} 1 != $FunctionContextHeight;
            ##f#1_0_5_0 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_5_0, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              #List.M.Cons(x#1_0, xs#1_0), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            ##xss#1_0_5_0 := List.__default.Map(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              $LS($LZ), 
              #List.M.Cons(x#1_0, xs#1_0), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_5_0, 
              Tclass.List.M(Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.RightIdentity$A, 
              List.__default.Map(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                $LS($LZ), 
                #List.M.Cons(x#1_0, xs#1_0), 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                #List.M.Cons(x#1_0, xs#1_0), 
                List.__default.Return#Handle(List._default.RightIdentity$A))
               && List.__default.Join#canCall(List._default.RightIdentity$A, 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LZ), 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  List.__default.Return#Handle(List._default.RightIdentity$A)));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##x#1_0_5_0 := x#1_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#1_0_5_0, List._default.RightIdentity$A, $Heap);
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0);
            ##xs#1_0_5_1 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_5_1, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assert {:id "id131"} 1 != $FunctionContextHeight;
            ##f#1_0_5_1 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_5_1, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              xs#1_0, 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            ##xss#1_0_5_1 := #List.M.Cons($Box(List.__default.Return(List._default.RightIdentity$A, x#1_0)), 
              List.__default.Map(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                $LS($LZ), 
                xs#1_0, 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_5_1, 
              Tclass.List.M(Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.RightIdentity$A, 
              #List.M.Cons($Box(List.__default.Return(List._default.RightIdentity$A, x#1_0)), 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LZ), 
                  xs#1_0, 
                  List.__default.Return#Handle(List._default.RightIdentity$A))));
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0)
               && List.__default.Map#canCall(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                xs#1_0, 
                List.__default.Return#Handle(List._default.RightIdentity$A))
               && List.__default.Join#canCall(List._default.RightIdentity$A, 
                #List.M.Cons($Box(List.__default.Return(List._default.RightIdentity$A, x#1_0)), 
                  List.__default.Map(List._default.RightIdentity$A, 
                    Tclass.List.M(List._default.RightIdentity$A), 
                    $LS($LZ), 
                    xs#1_0, 
                    List.__default.Return#Handle(List._default.RightIdentity$A))));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assert {:id "id132"} {:subsumption 0} List.M#Equal(List.__default.Join(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LS($LZ)), 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  List.__default.Return#Handle(List._default.RightIdentity$A))), 
              List.__default.Join(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                #List.M.Cons($Box(List.__default.Return(List._default.RightIdentity$A, x#1_0)), 
                  List.__default.Map(List._default.RightIdentity$A, 
                    Tclass.List.M(List._default.RightIdentity$A), 
                    $LS($LS($LZ)), 
                    xs#1_0, 
                    List.__default.Return#Handle(List._default.RightIdentity$A)))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##x#1_0_4_0 := x#1_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#1_0_4_0, List._default.RightIdentity$A, $Heap);
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0);
            ##xs#1_0_4_0 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume {:id "id127"} 1 != $FunctionContextHeight;
            ##f#1_0_4_0 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_4_0, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              xs#1_0, 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            ##xss#1_0_4_0 := #List.M.Cons($Box(List.__default.Return(List._default.RightIdentity$A, x#1_0)), 
              List.__default.Map(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                $LS($LZ), 
                xs#1_0, 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_4_0, 
              Tclass.List.M(Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.RightIdentity$A, 
              #List.M.Cons($Box(List.__default.Return(List._default.RightIdentity$A, x#1_0)), 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LZ), 
                  xs#1_0, 
                  List.__default.Return#Handle(List._default.RightIdentity$A))));
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0)
               && List.__default.Map#canCall(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                xs#1_0, 
                List.__default.Return#Handle(List._default.RightIdentity$A))
               && List.__default.Join#canCall(List._default.RightIdentity$A, 
                #List.M.Cons($Box(List.__default.Return(List._default.RightIdentity$A, x#1_0)), 
                  List.__default.Map(List._default.RightIdentity$A, 
                    Tclass.List.M(List._default.RightIdentity$A), 
                    $LS($LZ), 
                    xs#1_0, 
                    List.__default.Return#Handle(List._default.RightIdentity$A))));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##x#1_0_4_1 := x#1_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#1_0_4_1, List._default.RightIdentity$A, $Heap);
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0);
            ##xs#1_0_4_1 := List.__default.Return(List._default.RightIdentity$A, x#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_1, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            ##xs#1_0_4_2 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_2, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assert {:id "id128"} 1 != $FunctionContextHeight;
            ##f#1_0_4_1 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_4_1, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              xs#1_0, 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            ##xss#1_0_4_1 := List.__default.Map(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              $LS($LZ), 
              xs#1_0, 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_4_1, 
              Tclass.List.M(Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.RightIdentity$A, 
              List.__default.Map(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                $LS($LZ), 
                xs#1_0, 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            ##ys#1_0_4_0 := List.__default.Join(List._default.RightIdentity$A, 
              $LS($LZ), 
              List.__default.Map(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                $LS($LZ), 
                xs#1_0, 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_4_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume List.__default.Concat#canCall(List._default.RightIdentity$A, 
              List.__default.Return(List._default.RightIdentity$A, x#1_0), 
              List.__default.Join(List._default.RightIdentity$A, 
                $LS($LZ), 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LZ), 
                  xs#1_0, 
                  List.__default.Return#Handle(List._default.RightIdentity$A))));
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0)
               && 
              List.__default.Map#canCall(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                xs#1_0, 
                List.__default.Return#Handle(List._default.RightIdentity$A))
               && List.__default.Join#canCall(List._default.RightIdentity$A, 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LZ), 
                  xs#1_0, 
                  List.__default.Return#Handle(List._default.RightIdentity$A)))
               && List.__default.Concat#canCall(List._default.RightIdentity$A, 
                List.__default.Return(List._default.RightIdentity$A, x#1_0), 
                List.__default.Join(List._default.RightIdentity$A, 
                  $LS($LZ), 
                  List.__default.Map(List._default.RightIdentity$A, 
                    Tclass.List.M(List._default.RightIdentity$A), 
                    $LS($LZ), 
                    xs#1_0, 
                    List.__default.Return#Handle(List._default.RightIdentity$A))));
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assert {:id "id129"} {:subsumption 0} List.M#Equal(List.__default.Join(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                #List.M.Cons($Box(List.__default.Return(List._default.RightIdentity$A, x#1_0)), 
                  List.__default.Map(List._default.RightIdentity$A, 
                    Tclass.List.M(List._default.RightIdentity$A), 
                    $LS($LS($LZ)), 
                    xs#1_0, 
                    List.__default.Return#Handle(List._default.RightIdentity$A)))), 
              List.__default.Concat(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                List.__default.Return(List._default.RightIdentity$A, x#1_0), 
                List.__default.Join(List._default.RightIdentity$A, 
                  $LS($LS($LZ)), 
                  List.__default.Map(List._default.RightIdentity$A, 
                    Tclass.List.M(List._default.RightIdentity$A), 
                    $LS($LS($LZ)), 
                    xs#1_0, 
                    List.__default.Return#Handle(List._default.RightIdentity$A)))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##x#1_0_3_0 := x#1_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#1_0_3_0, List._default.RightIdentity$A, $Heap);
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0);
            ##xs#1_0_3_0 := List.__default.Return(List._default.RightIdentity$A, x#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            ##xs#1_0_3_1 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_1, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume {:id "id123"} 1 != $FunctionContextHeight;
            ##f#1_0_3_0 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_3_0, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              xs#1_0, 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            ##xss#1_0_3_0 := List.__default.Map(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              $LS($LZ), 
              xs#1_0, 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_3_0, 
              Tclass.List.M(Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.RightIdentity$A, 
              List.__default.Map(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                $LS($LZ), 
                xs#1_0, 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            ##ys#1_0_3_0 := List.__default.Join(List._default.RightIdentity$A, 
              $LS($LZ), 
              List.__default.Map(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                $LS($LZ), 
                xs#1_0, 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_3_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume List.__default.Concat#canCall(List._default.RightIdentity$A, 
              List.__default.Return(List._default.RightIdentity$A, x#1_0), 
              List.__default.Join(List._default.RightIdentity$A, 
                $LS($LZ), 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LZ), 
                  xs#1_0, 
                  List.__default.Return#Handle(List._default.RightIdentity$A))));
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0)
               && 
              List.__default.Map#canCall(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                xs#1_0, 
                List.__default.Return#Handle(List._default.RightIdentity$A))
               && List.__default.Join#canCall(List._default.RightIdentity$A, 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LZ), 
                  xs#1_0, 
                  List.__default.Return#Handle(List._default.RightIdentity$A)))
               && List.__default.Concat#canCall(List._default.RightIdentity$A, 
                List.__default.Return(List._default.RightIdentity$A, x#1_0), 
                List.__default.Join(List._default.RightIdentity$A, 
                  $LS($LZ), 
                  List.__default.Map(List._default.RightIdentity$A, 
                    Tclass.List.M(List._default.RightIdentity$A), 
                    $LS($LZ), 
                    xs#1_0, 
                    List.__default.Return#Handle(List._default.RightIdentity$A))));
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(146,25)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            m##1_0_3_0 := xs#1_0;
            assert {:id "id124"} DtRank(m##1_0_3_0) < DtRank(m#0);
            call {:id "id125"} Call$$List.__default.RightIdentity(List._default.RightIdentity$A, m##1_0_3_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##x#1_0_3_1 := x#1_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#1_0_3_1, List._default.RightIdentity$A, $Heap);
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0);
            ##xs#1_0_3_2 := List.__default.Return(List._default.RightIdentity$A, x#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_2, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            ##ys#1_0_3_1 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_3_1, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume List.__default.Concat#canCall(List._default.RightIdentity$A, 
              List.__default.Return(List._default.RightIdentity$A, x#1_0), 
              xs#1_0);
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0)
               && List.__default.Concat#canCall(List._default.RightIdentity$A, 
                List.__default.Return(List._default.RightIdentity$A, x#1_0), 
                xs#1_0);
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assert {:id "id126"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                List.__default.Return(List._default.RightIdentity$A, x#1_0), 
                List.__default.Join(List._default.RightIdentity$A, 
                  $LS($LS($LZ)), 
                  List.__default.Map(List._default.RightIdentity$A, 
                    Tclass.List.M(List._default.RightIdentity$A), 
                    $LS($LS($LZ)), 
                    xs#1_0, 
                    List.__default.Return#Handle(List._default.RightIdentity$A)))), 
              List.__default.Concat(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                List.__default.Return(List._default.RightIdentity$A, x#1_0), 
                xs#1_0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##x#1_0_2_0 := x#1_0;
            // assume allocatedness for argument to function
            assume $IsAllocBox(##x#1_0_2_0, List._default.RightIdentity$A, $Heap);
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0);
            ##xs#1_0_2_0 := List.__default.Return(List._default.RightIdentity$A, x#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            ##ys#1_0_2_0 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_2_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume List.__default.Concat#canCall(List._default.RightIdentity$A, 
              List.__default.Return(List._default.RightIdentity$A, x#1_0), 
              xs#1_0);
            assume List.__default.Return#canCall(List._default.RightIdentity$A, x#1_0)
               && List.__default.Concat#canCall(List._default.RightIdentity$A, 
                List.__default.Return(List._default.RightIdentity$A, x#1_0), 
                xs#1_0);
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##xs#1_0_2_1 := #List.M.Cons(x#1_0, Lit(#List.M.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_1, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            ##ys#1_0_2_1 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_2_1, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume List.__default.Concat#canCall(List._default.RightIdentity$A, #List.M.Cons(x#1_0, Lit(#List.M.Nil())), xs#1_0);
            assume List.__default.Concat#canCall(List._default.RightIdentity$A, #List.M.Cons(x#1_0, Lit(#List.M.Nil())), xs#1_0);
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assert {:id "id122"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                List.__default.Return(List._default.RightIdentity$A, x#1_0), 
                xs#1_0), 
              List.__default.Concat(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                #List.M.Cons(x#1_0, Lit(#List.M.Nil())), 
                xs#1_0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            ##xs#1_0_1_0 := #List.M.Cons(x#1_0, Lit(#List.M.Nil()));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            ##ys#1_0_1_0 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_1_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume List.__default.Concat#canCall(List._default.RightIdentity$A, #List.M.Cons(x#1_0, Lit(#List.M.Nil())), xs#1_0);
            assume List.__default.Concat#canCall(List._default.RightIdentity$A, #List.M.Cons(x#1_0, Lit(#List.M.Nil())), xs#1_0);
            // ----- Hint6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assume true;
            // ----- assert line6 == line7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assert {:id "id121"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                #List.M.Cons(x#1_0, Lit(#List.M.Nil())), 
                xs#1_0), 
              #List.M.Cons(x#1_0, xs#1_0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assume true;
            // ----- Hint7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assume true;
            // ----- assert line7 == line8 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(140,7)
            assert {:id "id120"} {:subsumption 0} List.M#Equal(#List.M.Cons(x#1_0, xs#1_0), m#0);
            assume false;
        }

        assume {:id "id140"} List.M#Equal(List.__default.Bind(List._default.RightIdentity$A, 
            List._default.RightIdentity$A, 
            m#0, 
            List.__default.Return#Handle(List._default.RightIdentity$A)), 
          m#0);
    }
    else if (m#0 == #List.M.Nil())
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            ##m#0_0_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assert {:id "id114"} 1 != $FunctionContextHeight;
            ##f#0_0_0 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_0, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              Lit(#List.M.Nil()), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              Lit(#List.M.Nil()), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            ##m#0_0_3_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume {:id "id111"} 1 != $FunctionContextHeight;
            ##f#0_0_3_0 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_3_0, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              Lit(#List.M.Nil()), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            assume List.__default.Bind#canCall(List._default.RightIdentity$A, 
              List._default.RightIdentity$A, 
              Lit(#List.M.Nil()), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            ##xs#0_0_3_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_3_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assert {:id "id112"} 1 != $FunctionContextHeight;
            ##f#0_0_3_1 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_3_1, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              Lit(#List.M.Nil()), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            ##xss#0_0_3_0 := List.__default.Map(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              $LS($LZ), 
              Lit(#List.M.Nil()), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#0_0_3_0, 
              Tclass.List.M(Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.RightIdentity$A, 
              List.__default.Map(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                $LS($LZ), 
                Lit(#List.M.Nil()), 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                Lit(#List.M.Nil()), 
                List.__default.Return#Handle(List._default.RightIdentity$A))
               && List.__default.Join#canCall(List._default.RightIdentity$A, 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LZ), 
                  Lit(#List.M.Nil()), 
                  List.__default.Return#Handle(List._default.RightIdentity$A)));
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            assert {:id "id113"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.RightIdentity$A, 
                List._default.RightIdentity$A, 
                Lit(#List.M.Nil()), 
                List.__default.Return#Handle(List._default.RightIdentity$A)), 
              List.__default.Join(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LS($LZ)), 
                  Lit(#List.M.Nil()), 
                  List.__default.Return#Handle(List._default.RightIdentity$A))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            ##xs#0_0_2_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2_0, Tclass.List.M(List._default.RightIdentity$A), $Heap);
            assume {:id "id109"} 1 != $FunctionContextHeight;
            ##f#0_0_2_0 := List.__default.Return#Handle(List._default.RightIdentity$A);
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_2_0, 
              Tclass._System.___hTotalFunc1(List._default.RightIdentity$A, Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              Lit(#List.M.Nil()), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            ##xss#0_0_2_0 := List.__default.Map(List._default.RightIdentity$A, 
              Tclass.List.M(List._default.RightIdentity$A), 
              $LS($LZ), 
              Lit(#List.M.Nil()), 
              List.__default.Return#Handle(List._default.RightIdentity$A));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#0_0_2_0, 
              Tclass.List.M(Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.RightIdentity$A, 
              List.__default.Map(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                $LS($LZ), 
                Lit(#List.M.Nil()), 
                List.__default.Return#Handle(List._default.RightIdentity$A)));
            assume List.__default.Map#canCall(List._default.RightIdentity$A, 
                Tclass.List.M(List._default.RightIdentity$A), 
                Lit(#List.M.Nil()), 
                List.__default.Return#Handle(List._default.RightIdentity$A))
               && List.__default.Join#canCall(List._default.RightIdentity$A, 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LZ), 
                  Lit(#List.M.Nil()), 
                  List.__default.Return#Handle(List._default.RightIdentity$A)));
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            ##xss#0_0_2_1 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#0_0_2_1, 
              Tclass.List.M(Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.RightIdentity$A, Lit(#List.M.Nil()));
            assume List.__default.Join#canCall(List._default.RightIdentity$A, Lit(#List.M.Nil()));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            assert {:id "id110"} {:subsumption 0} List.M#Equal(List.__default.Join(List._default.RightIdentity$A, 
                $LS($LS($LZ)), 
                List.__default.Map(List._default.RightIdentity$A, 
                  Tclass.List.M(List._default.RightIdentity$A), 
                  $LS($LS($LZ)), 
                  Lit(#List.M.Nil()), 
                  List.__default.Return#Handle(List._default.RightIdentity$A))), 
              List.__default.Join(List._default.RightIdentity$A, $LS($LS($LZ)), Lit(#List.M.Nil())));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            ##xss#0_0_1_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#0_0_1_0, 
              Tclass.List.M(Tclass.List.M(List._default.RightIdentity$A)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.RightIdentity$A, Lit(#List.M.Nil()));
            assume List.__default.Join#canCall(List._default.RightIdentity$A, Lit(#List.M.Nil()));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            assume true;
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            assert {:id "id108"} {:subsumption 0} List.M#Equal(List.__default.Join(List._default.RightIdentity$A, $LS($LS($LZ)), Lit(#List.M.Nil())), 
              #List.M.Nil());
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            assume true;
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            assume true;
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(132,7)
            assert {:id "id107"} {:subsumption 0} List.M#Equal(#List.M.Nil(), m#0);
            assume false;
        }

        assume {:id "id115"} List.M#Equal(List.__default.Bind(List._default.RightIdentity$A, 
            List._default.RightIdentity$A, 
            Lit(#List.M.Nil()), 
            List.__default.Return#Handle(List._default.RightIdentity$A)), 
          m#0);
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "List.ConcatAssociativity (well-formedness)"} CheckWellFormed$$List.__default.ConcatAssociativity(List._default.ConcatAssociativity$A: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass.List.M(List._default.ConcatAssociativity$A))
         && $IsAlloc(xs#0, Tclass.List.M(List._default.ConcatAssociativity$A), $Heap)
         && $IsA#List.M(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass.List.M(List._default.ConcatAssociativity$A))
         && $IsAlloc(ys#0, Tclass.List.M(List._default.ConcatAssociativity$A), $Heap)
         && $IsA#List.M(ys#0), 
    zs#0: DatatypeType
       where $Is(zs#0, Tclass.List.M(List._default.ConcatAssociativity$A))
         && $IsAlloc(zs#0, Tclass.List.M(List._default.ConcatAssociativity$A), $Heap)
         && $IsA#List.M(zs#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "List.ConcatAssociativity (call)"} Call$$List.__default.ConcatAssociativity(List._default.ConcatAssociativity$A: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass.List.M(List._default.ConcatAssociativity$A))
         && $IsAlloc(xs#0, Tclass.List.M(List._default.ConcatAssociativity$A), $Heap)
         && $IsA#List.M(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass.List.M(List._default.ConcatAssociativity$A))
         && $IsAlloc(ys#0, Tclass.List.M(List._default.ConcatAssociativity$A), $Heap)
         && $IsA#List.M(ys#0), 
    zs#0: DatatypeType
       where $Is(zs#0, Tclass.List.M(List._default.ConcatAssociativity$A))
         && $IsAlloc(zs#0, Tclass.List.M(List._default.ConcatAssociativity$A), $Heap)
         && $IsA#List.M(zs#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#List.M(List.__default.Concat(List._default.ConcatAssociativity$A, 
        $LS($LZ), 
        List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), xs#0, ys#0), 
        zs#0))
     && $IsA#List.M(List.__default.Concat(List._default.ConcatAssociativity$A, 
        $LS($LZ), 
        xs#0, 
        List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), ys#0, zs#0)))
     && 
    List.__default.Concat#canCall(List._default.ConcatAssociativity$A, xs#0, ys#0)
     && List.__default.Concat#canCall(List._default.ConcatAssociativity$A, 
      List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), xs#0, ys#0), 
      zs#0)
     && 
    List.__default.Concat#canCall(List._default.ConcatAssociativity$A, ys#0, zs#0)
     && List.__default.Concat#canCall(List._default.ConcatAssociativity$A, 
      xs#0, 
      List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), ys#0, zs#0));
  ensures {:id "id142"} List.M#Equal(List.__default.Concat(List._default.ConcatAssociativity$A, 
      $LS($LS($LZ)), 
      List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LS($LZ)), xs#0, ys#0), 
      zs#0), 
    List.__default.Concat(List._default.ConcatAssociativity$A, 
      $LS($LS($LZ)), 
      xs#0, 
      List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LS($LZ)), ys#0, zs#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "List.ConcatAssociativity (correctness)"} Impl$$List.__default.ConcatAssociativity(List._default.ConcatAssociativity$A: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass.List.M(List._default.ConcatAssociativity$A))
         && $IsAlloc(xs#0, Tclass.List.M(List._default.ConcatAssociativity$A), $Heap)
         && $IsA#List.M(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass.List.M(List._default.ConcatAssociativity$A))
         && $IsAlloc(ys#0, Tclass.List.M(List._default.ConcatAssociativity$A), $Heap)
         && $IsA#List.M(ys#0), 
    zs#0: DatatypeType
       where $Is(zs#0, Tclass.List.M(List._default.ConcatAssociativity$A))
         && $IsAlloc(zs#0, Tclass.List.M(List._default.ConcatAssociativity$A), $Heap)
         && $IsA#List.M(zs#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#List.M(List.__default.Concat(List._default.ConcatAssociativity$A, 
        $LS($LZ), 
        List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), xs#0, ys#0), 
        zs#0))
     && $IsA#List.M(List.__default.Concat(List._default.ConcatAssociativity$A, 
        $LS($LZ), 
        xs#0, 
        List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), ys#0, zs#0)))
     && 
    List.__default.Concat#canCall(List._default.ConcatAssociativity$A, xs#0, ys#0)
     && List.__default.Concat#canCall(List._default.ConcatAssociativity$A, 
      List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), xs#0, ys#0), 
      zs#0)
     && 
    List.__default.Concat#canCall(List._default.ConcatAssociativity$A, ys#0, zs#0)
     && List.__default.Concat#canCall(List._default.ConcatAssociativity$A, 
      xs#0, 
      List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), ys#0, zs#0));
  ensures {:id "id143"} List.M#Equal(List.__default.Concat(List._default.ConcatAssociativity$A, 
      $LS($LS($LZ)), 
      List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LS($LZ)), xs#0, ys#0), 
      zs#0), 
    List.__default.Concat(List._default.ConcatAssociativity$A, 
      $LS($LS($LZ)), 
      xs#0, 
      List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LS($LZ)), ys#0, zs#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.ConcatAssociativity (correctness)"} Impl$$List.__default.ConcatAssociativity(List._default.ConcatAssociativity$A: Ty, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType, 
    zs#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: ConcatAssociativity, Impl$$List.__default.ConcatAssociativity
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#List.M(xs#0);
    assume $IsA#List.M(ys#0);
    assume $IsA#List.M(zs#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType, $ih#ys0#0: DatatypeType, $ih#zs0#0: DatatypeType :: 
      { List.__default.Concat(List._default.ConcatAssociativity$A, 
          $LS($LZ), 
          $ih#xs0#0, 
          List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), $ih#ys0#0, $ih#zs0#0)) } 
        { List.__default.Concat(List._default.ConcatAssociativity$A, 
          $LS($LZ), 
          List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), $ih#xs0#0, $ih#ys0#0), 
          $ih#zs0#0) } 
      $Is($ih#xs0#0, Tclass.List.M(List._default.ConcatAssociativity$A))
           && $Is($ih#ys0#0, Tclass.List.M(List._default.ConcatAssociativity$A))
           && $Is($ih#zs0#0, Tclass.List.M(List._default.ConcatAssociativity$A))
           && Lit(true)
           && (DtRank($ih#xs0#0) < DtRank(xs#0)
             || (DtRank($ih#xs0#0) == DtRank(xs#0)
               && (DtRank($ih#ys0#0) < DtRank(ys#0)
                 || (DtRank($ih#ys0#0) == DtRank(ys#0) && DtRank($ih#zs0#0) < DtRank(zs#0)))))
         ==> List.M#Equal(List.__default.Concat(List._default.ConcatAssociativity$A, 
            $LS($LZ), 
            List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), $ih#xs0#0, $ih#ys0#0), 
            $ih#zs0#0), 
          List.__default.Concat(List._default.ConcatAssociativity$A, 
            $LS($LZ), 
            $ih#xs0#0, 
            List.__default.Concat(List._default.ConcatAssociativity$A, $LS($LZ), $ih#ys0#0, $ih#zs0#0))));
    $_reverifyPost := false;
}



procedure {:verboseName "List.BindMorphism (well-formedness)"} CheckWellFormed$$List.__default.BindMorphism(List._default.BindMorphism$A: Ty, 
    List._default.BindMorphism$B: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass.List.M(List._default.BindMorphism$A))
         && $IsAlloc(xs#0, Tclass.List.M(List._default.BindMorphism$A), $Heap)
         && $IsA#List.M(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass.List.M(List._default.BindMorphism$A))
         && $IsAlloc(ys#0, Tclass.List.M(List._default.BindMorphism$A), $Heap)
         && $IsA#List.M(ys#0), 
    f#0: HandleType
       where $Is(f#0, 
          Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)))
         && $IsAlloc(f#0, 
          Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
          $Heap));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "List.BindMorphism (call)"} Call$$List.__default.BindMorphism(List._default.BindMorphism$A: Ty, 
    List._default.BindMorphism$B: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass.List.M(List._default.BindMorphism$A))
         && $IsAlloc(xs#0, Tclass.List.M(List._default.BindMorphism$A), $Heap)
         && $IsA#List.M(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass.List.M(List._default.BindMorphism$A))
         && $IsAlloc(ys#0, Tclass.List.M(List._default.BindMorphism$A), $Heap)
         && $IsA#List.M(ys#0), 
    f#0: HandleType
       where $Is(f#0, 
          Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)))
         && $IsAlloc(f#0, 
          Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
          $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#List.M(List.__default.Bind(List._default.BindMorphism$A, 
        List._default.BindMorphism$B, 
        List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0), 
        f#0))
     && $IsA#List.M(List.__default.Concat(List._default.BindMorphism$B, 
        $LS($LZ), 
        List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0), 
        List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)))
     && 
    List.__default.Concat#canCall(List._default.BindMorphism$A, xs#0, ys#0)
     && List.__default.Bind#canCall(List._default.BindMorphism$A, 
      List._default.BindMorphism$B, 
      List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0), 
      f#0)
     && 
    List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0)
     && List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
     && List.__default.Concat#canCall(List._default.BindMorphism$B, 
      List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0), 
      List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
  ensures {:id "id145"} List.M#Equal(List.__default.Bind(List._default.BindMorphism$A, 
      List._default.BindMorphism$B, 
      List.__default.Concat(List._default.BindMorphism$A, $LS($LS($LZ)), xs#0, ys#0), 
      f#0), 
    List.__default.Concat(List._default.BindMorphism$B, 
      $LS($LS($LZ)), 
      List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0), 
      List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "List.BindMorphism (correctness)"} Impl$$List.__default.BindMorphism(List._default.BindMorphism$A: Ty, 
    List._default.BindMorphism$B: Ty, 
    xs#0: DatatypeType
       where $Is(xs#0, Tclass.List.M(List._default.BindMorphism$A))
         && $IsAlloc(xs#0, Tclass.List.M(List._default.BindMorphism$A), $Heap)
         && $IsA#List.M(xs#0), 
    ys#0: DatatypeType
       where $Is(ys#0, Tclass.List.M(List._default.BindMorphism$A))
         && $IsAlloc(ys#0, Tclass.List.M(List._default.BindMorphism$A), $Heap)
         && $IsA#List.M(ys#0), 
    f#0: HandleType
       where $Is(f#0, 
          Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)))
         && $IsAlloc(f#0, 
          Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#List.M(List.__default.Bind(List._default.BindMorphism$A, 
        List._default.BindMorphism$B, 
        List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0), 
        f#0))
     && $IsA#List.M(List.__default.Concat(List._default.BindMorphism$B, 
        $LS($LZ), 
        List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0), 
        List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)))
     && 
    List.__default.Concat#canCall(List._default.BindMorphism$A, xs#0, ys#0)
     && List.__default.Bind#canCall(List._default.BindMorphism$A, 
      List._default.BindMorphism$B, 
      List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0), 
      f#0)
     && 
    List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0)
     && List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
     && List.__default.Concat#canCall(List._default.BindMorphism$B, 
      List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0), 
      List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
  ensures {:id "id146"} List.M#Equal(List.__default.Bind(List._default.BindMorphism$A, 
      List._default.BindMorphism$B, 
      List.__default.Concat(List._default.BindMorphism$A, $LS($LS($LZ)), xs#0, ys#0), 
      f#0), 
    List.__default.Concat(List._default.BindMorphism$B, 
      $LS($LS($LZ)), 
      List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0), 
      List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.BindMorphism (correctness)"} Impl$$List.__default.BindMorphism(List._default.BindMorphism$A: Ty, 
    List._default.BindMorphism$B: Ty, 
    xs#0: DatatypeType, 
    ys#0: DatatypeType, 
    f#0: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var ##xs#0_0_0_0: DatatypeType;
  var ##ys#0_0_0_0: DatatypeType;
  var ##m#0_0_0_0: DatatypeType;
  var ##f#0_0_0_0: HandleType;
  var ##xs#0_0_0_1: DatatypeType;
  var ##m#0_0_0_1: DatatypeType;
  var ##f#0_0_0_1: HandleType;
  var ##ys#0_0_0_1: DatatypeType;
  var ##m#0_0_0_2: DatatypeType;
  var ##f#0_0_0_2: HandleType;
  var ##m#0_0_1_0: DatatypeType;
  var ##f#0_0_1_0: HandleType;
  var ##xs#0_0_1_0: DatatypeType;
  var ##ys#0_0_1_0: DatatypeType;
  var ##m#0_0_1_1: DatatypeType;
  var ##f#0_0_1_1: HandleType;
  var ##m#0_0_2_0: DatatypeType;
  var ##xs#0_0_2_0: DatatypeType;
  var ##ys#0_0_2_0: DatatypeType;
  var ##f#0_0_2_0: HandleType;
  var ##m#0_0_2_1: DatatypeType;
  var ##f#0_0_2_1: HandleType;
  var ##m#0_0_0: DatatypeType;
  var ##xs#0_0_0: DatatypeType;
  var ##ys#0_0_0: DatatypeType;
  var ##f#0_0_0: HandleType;
  var _mcc#0#1_0: Box;
  var _mcc#1#1_0: DatatypeType;
  var zs#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var z#1_0: Box;
  var let#1_1#0#0: Box;
  var ##xs#1_0_0_0: DatatypeType;
  var ##m#1_0_0_0: DatatypeType;
  var ##f#1_0_0_0: HandleType;
  var ##ys#1_0_0_0: DatatypeType;
  var ##m#1_0_0_1: DatatypeType;
  var ##f#1_0_0_1: HandleType;
  var ##xs#1_0_0_1: DatatypeType;
  var ##m#1_0_0_2: DatatypeType;
  var ##f#1_0_0_2: HandleType;
  var ##ys#1_0_0_1: DatatypeType;
  var ##m#1_0_0_3: DatatypeType;
  var ##f#1_0_0_3: HandleType;
  var ##xs#1_0_1_0: DatatypeType;
  var ##xs#1_0_1_1: DatatypeType;
  var ##ys#1_0_1_0: DatatypeType;
  var ##xss#1_0_1_0: DatatypeType;
  var ##xs#1_0_1_2: DatatypeType;
  var ##f#1_0_1_0: HandleType;
  var ##ys#1_0_1_1: DatatypeType;
  var ##m#1_0_1_0: DatatypeType;
  var ##f#1_0_1_1: HandleType;
  var ##xs#1_0_1_3: DatatypeType;
  var ##m#1_0_1_1: DatatypeType;
  var ##f#1_0_1_2: HandleType;
  var ##ys#1_0_1_2: DatatypeType;
  var ##m#1_0_1_2: DatatypeType;
  var ##f#1_0_1_3: HandleType;
  var ##xs#1_0_2_0: DatatypeType;
  var ##ys#1_0_2_0: DatatypeType;
  var ##xs#1_0_2_1: DatatypeType;
  var ##m#1_0_2_0: DatatypeType;
  var ##f#1_0_2_0: HandleType;
  var ##ys#1_0_2_1: DatatypeType;
  var ##m#1_0_2_1: DatatypeType;
  var ##f#1_0_2_1: HandleType;
  var xs##1_0_2_0: DatatypeType;
  var ys##1_0_2_0: DatatypeType;
  var ##m#1_0_2_2: DatatypeType;
  var ##f#1_0_2_2: HandleType;
  var zs##1_0_2_0: DatatypeType;
  var ##m#1_0_2_3: DatatypeType;
  var ##f#1_0_2_3: HandleType;
  var ##xs#1_0_2_2: DatatypeType;
  var ##xs#1_0_2_3: DatatypeType;
  var ##ys#1_0_2_2: DatatypeType;
  var ##xss#1_0_2_0: DatatypeType;
  var ##xs#1_0_2_4: DatatypeType;
  var ##f#1_0_2_4: HandleType;
  var ##ys#1_0_2_3: DatatypeType;
  var ##m#1_0_2_4: DatatypeType;
  var ##f#1_0_2_5: HandleType;
  var ##xs#1_0_3_0: DatatypeType;
  var ##ys#1_0_3_0: DatatypeType;
  var ##m#1_0_3_0: DatatypeType;
  var ##xs#1_0_3_1: DatatypeType;
  var ##ys#1_0_3_1: DatatypeType;
  var ##f#1_0_3_0: HandleType;
  var xs##1_0_3_0: DatatypeType;
  var ys##1_0_3_0: DatatypeType;
  var f##1_0_3_0: HandleType;
  var ##xs#1_0_3_2: DatatypeType;
  var ##ys#1_0_3_2: DatatypeType;
  var ##xs#1_0_3_3: DatatypeType;
  var ##m#1_0_3_1: DatatypeType;
  var ##f#1_0_3_1: HandleType;
  var ##ys#1_0_3_3: DatatypeType;
  var ##m#1_0_3_2: DatatypeType;
  var ##f#1_0_3_2: HandleType;
  var ##m#1_0_4_0: DatatypeType;
  var ##xs#1_0_4_0: DatatypeType;
  var ##ys#1_0_4_0: DatatypeType;
  var ##f#1_0_4_0: HandleType;
  var ##xs#1_0_4_1: DatatypeType;
  var ##ys#1_0_4_1: DatatypeType;
  var ##m#1_0_4_1: DatatypeType;
  var ##xs#1_0_4_2: DatatypeType;
  var ##ys#1_0_4_2: DatatypeType;
  var ##f#1_0_4_1: HandleType;
  var ##m#1_0_5_0: DatatypeType;
  var ##xs#1_0_5_0: DatatypeType;
  var ##ys#1_0_5_0: DatatypeType;
  var ##f#1_0_5_0: HandleType;
  var ##m#1_0_5_1: DatatypeType;
  var ##xs#1_0_5_1: DatatypeType;
  var ##ys#1_0_5_1: DatatypeType;
  var ##f#1_0_5_1: HandleType;
  var ##m#1_0_0: DatatypeType;
  var ##xs#1_0_0: DatatypeType;
  var ##ys#1_0_0: DatatypeType;
  var ##f#1_0_0: HandleType;

    // AddMethodImpl: BindMorphism, Impl$$List.__default.BindMorphism
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#List.M(xs#0);
    assume $IsA#List.M(ys#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#xs0#0: DatatypeType, $ih#ys0#0: DatatypeType :: 
      { List.__default.Concat(List._default.BindMorphism$B, 
          $LS($LZ), 
          List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, $ih#xs0#0, f#0), 
          List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, $ih#ys0#0, f#0)) } 
        { List.__default.Bind(List._default.BindMorphism$A, 
          List._default.BindMorphism$B, 
          List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), $ih#xs0#0, $ih#ys0#0), 
          f#0) } 
      $Is($ih#xs0#0, Tclass.List.M(List._default.BindMorphism$A))
           && $Is($ih#ys0#0, Tclass.List.M(List._default.BindMorphism$A))
           && Lit(true)
           && (DtRank($ih#xs0#0) < DtRank(xs#0)
             || (DtRank($ih#xs0#0) == DtRank(xs#0) && DtRank($ih#ys0#0) < DtRank(ys#0)))
         ==> List.M#Equal(List.__default.Bind(List._default.BindMorphism$A, 
            List._default.BindMorphism$B, 
            List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), $ih#xs0#0, $ih#ys0#0), 
            f#0), 
          List.__default.Concat(List._default.BindMorphism$B, 
            $LS($LZ), 
            List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, $ih#xs0#0, f#0), 
            List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, $ih#ys0#0, f#0))));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#1_0, _mcc#1#1_0;
    if (xs#0 == #List.M.Cons(_mcc#0#1_0, _mcc#1#1_0))
    {
        assume $IsBox(_mcc#0#1_0, List._default.BindMorphism$A);
        assume $Is(_mcc#1#1_0, Tclass.List.M(List._default.BindMorphism$A));
        havoc zs#1_0;
        assume $Is(zs#1_0, Tclass.List.M(List._default.BindMorphism$A))
           && $IsAlloc(zs#1_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
        assume {:id "id151"} let#1_0#0#0 == _mcc#1#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, Tclass.List.M(List._default.BindMorphism$A));
        assume {:id "id152"} zs#1_0 == let#1_0#0#0;
        havoc z#1_0;
        assume $IsBox(z#1_0, List._default.BindMorphism$A)
           && $IsAllocBox(z#1_0, List._default.BindMorphism$A, $Heap);
        assume {:id "id153"} let#1_1#0#0 == _mcc#0#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#1_1#0#0, List._default.BindMorphism$A);
        assume {:id "id154"} z#1_0 == let#1_1#0#0;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##xs#1_0_0 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##ys#1_0_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, xs#0, ys#0);
            ##m#1_0_0 := List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0), 
              f#0);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, xs#0, ys#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0), 
                f#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##xs#1_0_5_0 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_5_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##ys#1_0_5_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_5_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, xs#0, ys#0);
            ##m#1_0_5_0 := List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_5_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_5_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_5_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0), 
              f#0);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, xs#0, ys#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0), 
                f#0);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##xs#1_0_5_1 := #List.M.Cons(z#1_0, zs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_5_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##ys#1_0_5_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_5_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, #List.M.Cons(z#1_0, zs#1_0), ys#0);
            ##m#1_0_5_1 := List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), #List.M.Cons(z#1_0, zs#1_0), ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_5_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_5_1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_5_1, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), #List.M.Cons(z#1_0, zs#1_0), ys#0), 
              f#0);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, #List.M.Cons(z#1_0, zs#1_0), ys#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), #List.M.Cons(z#1_0, zs#1_0), ys#0), 
                f#0);
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            assert {:id "id163"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LS($LZ)), xs#0, ys#0), 
                f#0), 
              List.__default.Bind(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LS($LZ)), #List.M.Cons(z#1_0, zs#1_0), ys#0), 
                f#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##xs#1_0_4_0 := #List.M.Cons(z#1_0, zs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##ys#1_0_4_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_4_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, #List.M.Cons(z#1_0, zs#1_0), ys#0);
            ##m#1_0_4_0 := List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), #List.M.Cons(z#1_0, zs#1_0), ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_4_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_4_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_4_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), #List.M.Cons(z#1_0, zs#1_0), ys#0), 
              f#0);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, #List.M.Cons(z#1_0, zs#1_0), ys#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), #List.M.Cons(z#1_0, zs#1_0), ys#0), 
                f#0);
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##xs#1_0_4_1 := $Unbox(Apply1(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $Heap, 
                f#0, 
                z#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_1, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##xs#1_0_4_2 := zs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_2, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##ys#1_0_4_2 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_4_2, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, zs#1_0, ys#0);
            ##m#1_0_4_1 := List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_4_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_4_1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_4_1, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0), 
              f#0);
            ##ys#1_0_4_1 := List.__default.Bind(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0), 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_4_1, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              $Unbox(Apply1(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $Heap, 
                  f#0, 
                  z#1_0)): DatatypeType, 
              List.__default.Bind(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0), 
                f#0));
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, zs#1_0, ys#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0), 
                f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Bind(List._default.BindMorphism$A, 
                  List._default.BindMorphism$B, 
                  List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0), 
                  f#0));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            assert {:id "id162"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LS($LZ)), #List.M.Cons(z#1_0, zs#1_0), ys#0), 
                f#0), 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Bind(List._default.BindMorphism$A, 
                  List._default.BindMorphism$B, 
                  List.__default.Concat(List._default.BindMorphism$A, $LS($LS($LZ)), zs#1_0, ys#0), 
                  f#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##xs#1_0_3_0 := $Unbox(Apply1(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $Heap, 
                f#0, 
                z#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##xs#1_0_3_1 := zs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##ys#1_0_3_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_3_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, zs#1_0, ys#0);
            ##m#1_0_3_0 := List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_3_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_3_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_3_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0), 
              f#0);
            ##ys#1_0_3_0 := List.__default.Bind(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0), 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_3_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              $Unbox(Apply1(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $Heap, 
                  f#0, 
                  z#1_0)): DatatypeType, 
              List.__default.Bind(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0), 
                f#0));
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, zs#1_0, ys#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0), 
                f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Bind(List._default.BindMorphism$A, 
                  List._default.BindMorphism$B, 
                  List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), zs#1_0, ys#0), 
                  f#0));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(174,24)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            xs##1_0_3_0 := zs#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            ys##1_0_3_0 := ys#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            f##1_0_3_0 := f#0;
            assert {:id "id159"} DtRank(xs##1_0_3_0) < DtRank(xs#0)
               || (DtRank(xs##1_0_3_0) == DtRank(xs#0) && DtRank(ys##1_0_3_0) < DtRank(ys#0));
            call {:id "id160"} Call$$List.__default.BindMorphism(List._default.BindMorphism$A, List._default.BindMorphism$B, xs##1_0_3_0, ys##1_0_3_0, f##1_0_3_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##xs#1_0_3_2 := $Unbox(Apply1(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $Heap, 
                f#0, 
                z#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_2, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#1_0_3_1 := zs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_3_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_3_1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_3_1, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0);
            ##xs#1_0_3_3 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_3, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#1_0_3_2 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_3_2, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_3_2 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_3_2, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            ##ys#1_0_3_3 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_3_3, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            ##ys#1_0_3_2 := List.__default.Concat(List._default.BindMorphism$B, 
              $LS($LZ), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_3_2, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              $Unbox(Apply1(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $Heap, 
                  f#0, 
                  z#1_0)): DatatypeType, 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LZ), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0))
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Concat(List._default.BindMorphism$B, 
                  $LS($LZ), 
                  List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
                  List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            assert {:id "id161"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Bind(List._default.BindMorphism$A, 
                  List._default.BindMorphism$B, 
                  List.__default.Concat(List._default.BindMorphism$A, $LS($LS($LZ)), zs#1_0, ys#0), 
                  f#0)), 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Concat(List._default.BindMorphism$B, 
                  $LS($LS($LZ)), 
                  List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
                  List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##xs#1_0_2_0 := $Unbox(Apply1(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $Heap, 
                f#0, 
                z#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#1_0_2_0 := zs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_2_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_2_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_2_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0);
            ##xs#1_0_2_1 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_1, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#1_0_2_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_2_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_2_1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_2_1, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            ##ys#1_0_2_1 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_2_1, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            ##ys#1_0_2_0 := List.__default.Concat(List._default.BindMorphism$B, 
              $LS($LZ), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_2_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              $Unbox(Apply1(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $Heap, 
                  f#0, 
                  z#1_0)): DatatypeType, 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LZ), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0))
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Concat(List._default.BindMorphism$B, 
                  $LS($LZ), 
                  List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
                  List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(176,31)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            xs##1_0_2_0 := $Unbox(Apply1(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $Heap, 
                f#0, 
                z#1_0)): DatatypeType;
            ##m#1_0_2_2 := zs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_2_2, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_2_2 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_2_2, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0);
            // ProcessCallStmt: CheckSubrange
            ys##1_0_2_0 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0);
            ##m#1_0_2_3 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_2_3, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_2_3 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_2_3, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // ProcessCallStmt: CheckSubrange
            zs##1_0_2_0 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            call {:id "id157"} Call$$List.__default.ConcatAssociativity(List._default.BindMorphism$B, xs##1_0_2_0, ys##1_0_2_0, zs##1_0_2_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##xs#1_0_2_3 := $Unbox(Apply1(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $Heap, 
                f#0, 
                z#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_3, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##xs#1_0_2_4 := zs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_4, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_2_4 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_2_4, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.BindMorphism$A, 
              Tclass.List.M(List._default.BindMorphism$B), 
              zs#1_0, 
              f#0);
            ##xss#1_0_2_0 := List.__default.Map(List._default.BindMorphism$A, 
              Tclass.List.M(List._default.BindMorphism$B), 
              $LS($LZ), 
              zs#1_0, 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_2_0, Tclass.List.M(Tclass.List.M(List._default.BindMorphism$B)), $Heap);
            assume List.__default.Join#canCall(List._default.BindMorphism$B, 
              List.__default.Map(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $LS($LZ), 
                zs#1_0, 
                f#0));
            ##ys#1_0_2_2 := List.__default.Join(List._default.BindMorphism$B, 
              $LS($LZ), 
              List.__default.Map(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $LS($LZ), 
                zs#1_0, 
                f#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_2_2, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              $Unbox(Apply1(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $Heap, 
                  f#0, 
                  z#1_0)): DatatypeType, 
              List.__default.Join(List._default.BindMorphism$B, 
                $LS($LZ), 
                List.__default.Map(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $LS($LZ), 
                  zs#1_0, 
                  f#0)));
            ##xs#1_0_2_2 := List.__default.Concat(List._default.BindMorphism$B, 
              $LS($LZ), 
              $Unbox(Apply1(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $Heap, 
                  f#0, 
                  z#1_0)): DatatypeType, 
              List.__default.Join(List._default.BindMorphism$B, 
                $LS($LZ), 
                List.__default.Map(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $LS($LZ), 
                  zs#1_0, 
                  f#0)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_2, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#1_0_2_4 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_2_4, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_2_5 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_2_5, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            ##ys#1_0_2_3 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_2_3, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LZ), 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Join(List._default.BindMorphism$B, 
                  $LS($LZ), 
                  List.__default.Map(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $LS($LZ), 
                    zs#1_0, 
                    f#0))), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            assume List.__default.Map#canCall(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                zs#1_0, 
                f#0)
               && List.__default.Join#canCall(List._default.BindMorphism$B, 
                List.__default.Map(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $LS($LZ), 
                  zs#1_0, 
                  f#0))
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Join(List._default.BindMorphism$B, 
                  $LS($LZ), 
                  List.__default.Map(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $LS($LZ), 
                    zs#1_0, 
                    f#0)))
               && List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$B, 
                  $LS($LZ), 
                  $Unbox(Apply1(List._default.BindMorphism$A, 
                      Tclass.List.M(List._default.BindMorphism$B), 
                      $Heap, 
                      f#0, 
                      z#1_0)): DatatypeType, 
                  List.__default.Join(List._default.BindMorphism$B, 
                    $LS($LZ), 
                    List.__default.Map(List._default.BindMorphism$A, 
                      Tclass.List.M(List._default.BindMorphism$B), 
                      $LS($LZ), 
                      zs#1_0, 
                      f#0))), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            assert {:id "id158"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Concat(List._default.BindMorphism$B, 
                  $LS($LS($LZ)), 
                  List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, zs#1_0, f#0), 
                  List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0))), 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                List.__default.Concat(List._default.BindMorphism$B, 
                  $LS($LS($LZ)), 
                  $Unbox(Apply1(List._default.BindMorphism$A, 
                      Tclass.List.M(List._default.BindMorphism$B), 
                      $Heap, 
                      f#0, 
                      z#1_0)): DatatypeType, 
                  List.__default.Join(List._default.BindMorphism$B, 
                    $LS($LS($LZ)), 
                    List.__default.Map(List._default.BindMorphism$A, 
                      Tclass.List.M(List._default.BindMorphism$B), 
                      $LS($LS($LZ)), 
                      zs#1_0, 
                      f#0))), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##xs#1_0_1_1 := $Unbox(Apply1(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $Heap, 
                f#0, 
                z#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_1, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##xs#1_0_1_2 := zs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_2, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_1_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_1_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.BindMorphism$A, 
              Tclass.List.M(List._default.BindMorphism$B), 
              zs#1_0, 
              f#0);
            ##xss#1_0_1_0 := List.__default.Map(List._default.BindMorphism$A, 
              Tclass.List.M(List._default.BindMorphism$B), 
              $LS($LZ), 
              zs#1_0, 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_1_0, Tclass.List.M(Tclass.List.M(List._default.BindMorphism$B)), $Heap);
            assume List.__default.Join#canCall(List._default.BindMorphism$B, 
              List.__default.Map(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $LS($LZ), 
                zs#1_0, 
                f#0));
            ##ys#1_0_1_0 := List.__default.Join(List._default.BindMorphism$B, 
              $LS($LZ), 
              List.__default.Map(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                $LS($LZ), 
                zs#1_0, 
                f#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_1_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              $Unbox(Apply1(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $Heap, 
                  f#0, 
                  z#1_0)): DatatypeType, 
              List.__default.Join(List._default.BindMorphism$B, 
                $LS($LZ), 
                List.__default.Map(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $LS($LZ), 
                  zs#1_0, 
                  f#0)));
            ##xs#1_0_1_0 := List.__default.Concat(List._default.BindMorphism$B, 
              $LS($LZ), 
              $Unbox(Apply1(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $Heap, 
                  f#0, 
                  z#1_0)): DatatypeType, 
              List.__default.Join(List._default.BindMorphism$B, 
                $LS($LZ), 
                List.__default.Map(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $LS($LZ), 
                  zs#1_0, 
                  f#0)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#1_0_1_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_1_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_1_1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_1_1, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            ##ys#1_0_1_1 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_1_1, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LZ), 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Join(List._default.BindMorphism$B, 
                  $LS($LZ), 
                  List.__default.Map(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $LS($LZ), 
                    zs#1_0, 
                    f#0))), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            assume List.__default.Map#canCall(List._default.BindMorphism$A, 
                Tclass.List.M(List._default.BindMorphism$B), 
                zs#1_0, 
                f#0)
               && List.__default.Join#canCall(List._default.BindMorphism$B, 
                List.__default.Map(List._default.BindMorphism$A, 
                  Tclass.List.M(List._default.BindMorphism$B), 
                  $LS($LZ), 
                  zs#1_0, 
                  f#0))
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                $Unbox(Apply1(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $Heap, 
                    f#0, 
                    z#1_0)): DatatypeType, 
                List.__default.Join(List._default.BindMorphism$B, 
                  $LS($LZ), 
                  List.__default.Map(List._default.BindMorphism$A, 
                    Tclass.List.M(List._default.BindMorphism$B), 
                    $LS($LZ), 
                    zs#1_0, 
                    f#0)))
               && List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$B, 
                  $LS($LZ), 
                  $Unbox(Apply1(List._default.BindMorphism$A, 
                      Tclass.List.M(List._default.BindMorphism$B), 
                      $Heap, 
                      f#0, 
                      z#1_0)): DatatypeType, 
                  List.__default.Join(List._default.BindMorphism$B, 
                    $LS($LZ), 
                    List.__default.Map(List._default.BindMorphism$A, 
                      Tclass.List.M(List._default.BindMorphism$B), 
                      $LS($LZ), 
                      zs#1_0, 
                      f#0))), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##m#1_0_1_1 := #List.M.Cons(z#1_0, zs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_1_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_1_2 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_1_2, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              #List.M.Cons(z#1_0, zs#1_0), 
              f#0);
            ##xs#1_0_1_3 := List.__default.Bind(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              #List.M.Cons(z#1_0, zs#1_0), 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_3, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#1_0_1_2 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_1_2, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_1_3 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_1_3, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            ##ys#1_0_1_2 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_1_2, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              List.__default.Bind(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                #List.M.Cons(z#1_0, zs#1_0), 
                f#0), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                #List.M.Cons(z#1_0, zs#1_0), 
                f#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                List.__default.Bind(List._default.BindMorphism$A, 
                  List._default.BindMorphism$B, 
                  #List.M.Cons(z#1_0, zs#1_0), 
                  f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            assert {:id "id156"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                List.__default.Concat(List._default.BindMorphism$B, 
                  $LS($LS($LZ)), 
                  $Unbox(Apply1(List._default.BindMorphism$A, 
                      Tclass.List.M(List._default.BindMorphism$B), 
                      $Heap, 
                      f#0, 
                      z#1_0)): DatatypeType, 
                  List.__default.Join(List._default.BindMorphism$B, 
                    $LS($LS($LZ)), 
                    List.__default.Map(List._default.BindMorphism$A, 
                      Tclass.List.M(List._default.BindMorphism$B), 
                      $LS($LS($LZ)), 
                      zs#1_0, 
                      f#0))), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)), 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                List.__default.Bind(List._default.BindMorphism$A, 
                  List._default.BindMorphism$B, 
                  #List.M.Cons(z#1_0, zs#1_0), 
                  f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##m#1_0_0_0 := #List.M.Cons(z#1_0, zs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_0_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_0_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_0_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              #List.M.Cons(z#1_0, zs#1_0), 
              f#0);
            ##xs#1_0_0_0 := List.__default.Bind(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              #List.M.Cons(z#1_0, zs#1_0), 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#1_0_0_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_0_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_0_1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_0_1, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            ##ys#1_0_0_0 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_0_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              List.__default.Bind(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                #List.M.Cons(z#1_0, zs#1_0), 
                f#0), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                #List.M.Cons(z#1_0, zs#1_0), 
                f#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                List.__default.Bind(List._default.BindMorphism$A, 
                  List._default.BindMorphism$B, 
                  #List.M.Cons(z#1_0, zs#1_0), 
                  f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            ##m#1_0_0_2 := xs#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_0_2, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_0_2 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_0_2, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0);
            ##xs#1_0_0_1 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_0_1, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#1_0_0_3 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_0_3, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#1_0_0_3 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_0_3, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            ##ys#1_0_0_1 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_0_1, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(170,7)
            assert {:id "id155"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                List.__default.Bind(List._default.BindMorphism$A, 
                  List._default.BindMorphism$B, 
                  #List.M.Cons(z#1_0, zs#1_0), 
                  f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)), 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
            assume false;
        }

        assume {:id "id164"} List.M#Equal(List.__default.Bind(List._default.BindMorphism$A, 
            List._default.BindMorphism$B, 
            List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), xs#0, ys#0), 
            f#0), 
          List.__default.Concat(List._default.BindMorphism$B, 
            $LS($LZ), 
            List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, xs#0, f#0), 
            List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
    }
    else if (xs#0 == #List.M.Nil())
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            ##xs#0_0_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##ys#0_0_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, Lit(#List.M.Nil()), ys#0);
            ##m#0_0_0 := List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), Lit(#List.M.Nil()), ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#0_0_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), Lit(#List.M.Nil()), ys#0), 
              f#0);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, Lit(#List.M.Nil()), ys#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), Lit(#List.M.Nil()), ys#0), 
                f#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            ##xs#0_0_2_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_2_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##ys#0_0_2_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_2_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, Lit(#List.M.Nil()), ys#0);
            ##m#0_0_2_0 := List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), Lit(#List.M.Nil()), ys#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_2_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#0_0_2_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_2_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), Lit(#List.M.Nil()), ys#0), 
              f#0);
            assume List.__default.Concat#canCall(List._default.BindMorphism$A, Lit(#List.M.Nil()), ys#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), Lit(#List.M.Nil()), ys#0), 
                f#0);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            ##m#0_0_2_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_2_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#0_0_2_1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_2_1, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            assert {:id "id149"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                List.__default.Concat(List._default.BindMorphism$A, $LS($LS($LZ)), Lit(#List.M.Nil()), ys#0), 
                f#0), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            ##m#0_0_1_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_1_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#0_0_1_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_1_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            ##xs#0_0_1_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_1_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#0_0_1_1 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_1_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#0_0_1_1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_1_1, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            ##ys#0_0_1_0 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_1_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              Lit(#List.M.Nil()), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                Lit(#List.M.Nil()), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            assert {:id "id148"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0), 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                Lit(#List.M.Nil()), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            ##xs#0_0_0_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#0_0_0_0 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0_0, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#0_0_0_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_0_0, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            ##ys#0_0_0_0 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_0_0, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              Lit(#List.M.Nil()), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                Lit(#List.M.Nil()), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            ##m#0_0_0_1 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0_1, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#0_0_0_1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_0_1, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              Lit(#List.M.Nil()), 
              f#0);
            ##xs#0_0_0_1 := List.__default.Bind(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              Lit(#List.M.Nil()), 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0_0_0_1, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            ##m#0_0_0_2 := ys#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0_2, Tclass.List.M(List._default.BindMorphism$A), $Heap);
            ##f#0_0_0_2 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_0_2, 
              Tclass._System.___hTotalFunc1(List._default.BindMorphism$A, Tclass.List.M(List._default.BindMorphism$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            ##ys#0_0_0_1 := List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#0_0_0_1, Tclass.List.M(List._default.BindMorphism$B), $Heap);
            assume List.__default.Concat#canCall(List._default.BindMorphism$B, 
              List.__default.Bind(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                Lit(#List.M.Nil()), 
                f#0), 
              List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            assume List.__default.Bind#canCall(List._default.BindMorphism$A, 
                List._default.BindMorphism$B, 
                Lit(#List.M.Nil()), 
                f#0)
               && List.__default.Bind#canCall(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)
               && List.__default.Concat#canCall(List._default.BindMorphism$B, 
                List.__default.Bind(List._default.BindMorphism$A, 
                  List._default.BindMorphism$B, 
                  Lit(#List.M.Nil()), 
                  f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(163,7)
            assert {:id "id147"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                Lit(#List.M.Nil()), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)), 
              List.__default.Concat(List._default.BindMorphism$B, 
                $LS($LS($LZ)), 
                List.__default.Bind(List._default.BindMorphism$A, 
                  List._default.BindMorphism$B, 
                  Lit(#List.M.Nil()), 
                  f#0), 
                List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
            assume false;
        }

        assume {:id "id150"} List.M#Equal(List.__default.Bind(List._default.BindMorphism$A, 
            List._default.BindMorphism$B, 
            List.__default.Concat(List._default.BindMorphism$A, $LS($LZ), Lit(#List.M.Nil()), ys#0), 
            f#0), 
          List.__default.Concat(List._default.BindMorphism$B, 
            $LS($LZ), 
            List.__default.Bind(List._default.BindMorphism$A, 
              List._default.BindMorphism$B, 
              Lit(#List.M.Nil()), 
              f#0), 
            List.__default.Bind(List._default.BindMorphism$A, List._default.BindMorphism$B, ys#0, f#0)));
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "List.Associativity (well-formedness)"} CheckWellFormed$$List.__default.Associativity(List._default.Associativity$A: Ty, 
    List._default.Associativity$B: Ty, 
    List._default.Associativity$C: Ty, 
    m#0: DatatypeType
       where $Is(m#0, Tclass.List.M(List._default.Associativity$A))
         && $IsAlloc(m#0, Tclass.List.M(List._default.Associativity$A), $Heap)
         && $IsA#List.M(m#0), 
    f#0: HandleType
       where $Is(f#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)))
         && $IsAlloc(f#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
          $Heap), 
    g#0: HandleType
       where $Is(g#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)))
         && $IsAlloc(g#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
          $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "List.Associativity (call)"} Call$$List.__default.Associativity(List._default.Associativity$A: Ty, 
    List._default.Associativity$B: Ty, 
    List._default.Associativity$C: Ty, 
    m#0: DatatypeType
       where $Is(m#0, Tclass.List.M(List._default.Associativity$A))
         && $IsAlloc(m#0, Tclass.List.M(List._default.Associativity$A), $Heap)
         && $IsA#List.M(m#0), 
    f#0: HandleType
       where $Is(f#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)))
         && $IsAlloc(f#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
          $Heap), 
    g#0: HandleType
       where $Is(g#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)))
         && $IsAlloc(g#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
          $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#List.M(List.__default.Bind(List._default.Associativity$B, 
        List._default.Associativity$C, 
        List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
        g#0))
     && $IsA#List.M(List.__default.Bind(List._default.Associativity$A, 
        List._default.Associativity$C, 
        m#0, 
        Lit(AtLayer((lambda $l#6#ly#0: LayerType :: 
              Handle1((lambda $l#6#heap#0: Heap, $l#6#x#0: Box :: 
                  $Box(List.__default.Bind(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $l#6#heap#0, 
                          f#0, 
                          $l#6#x#0)): DatatypeType, 
                      g#0))), 
                (lambda $l#6#heap#0: Heap, $l#6#x#0: Box :: 
                  $IsBox($l#6#x#0, List._default.Associativity$A)), 
                (lambda $l#6#heap#0: Heap, $l#6#x#0: Box :: 
                  SetRef_to_SetBox((lambda $l#6#o#0: ref :: false))))), 
            $LS($LZ)))))
     && 
    List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0)
     && List.__default.Bind#canCall(List._default.Associativity$B, 
      List._default.Associativity$C, 
      List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
      g#0)
     && 
    (forall $l#4#x#0: Box, $l#4#heap#0: Heap :: 
      $IsBox($l#4#x#0, List._default.Associativity$A) && $IsGoodHeap($l#4#heap#0)
         ==> List.__default.Bind#canCall(List._default.Associativity$B, 
          List._default.Associativity$C, 
          $Unbox(Apply1(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$B), 
              $l#4#heap#0, 
              f#0, 
              $l#4#x#0)): DatatypeType, 
          g#0))
     && List.__default.Bind#canCall(List._default.Associativity$A, 
      List._default.Associativity$C, 
      m#0, 
      Lit(AtLayer((lambda $l#5#ly#0: LayerType :: 
            Handle1((lambda $l#5#heap#0: Heap, $l#5#x#0: Box :: 
                $Box(List.__default.Bind(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#5#heap#0, 
                        f#0, 
                        $l#5#x#0)): DatatypeType, 
                    g#0))), 
              (lambda $l#5#heap#0: Heap, $l#5#x#0: Box :: 
                $IsBox($l#5#x#0, List._default.Associativity$A)), 
              (lambda $l#5#heap#0: Heap, $l#5#x#0: Box :: 
                SetRef_to_SetBox((lambda $l#5#o#0: ref :: false))))), 
          $LS($LZ))));
  ensures {:id "id167"} List.M#Equal(List.__default.Bind(List._default.Associativity$B, 
      List._default.Associativity$C, 
      List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
      g#0), 
    List.__default.Bind(List._default.Associativity$A, 
      List._default.Associativity$C, 
      m#0, 
      Lit(AtLayer((lambda $l#7#ly#0: LayerType :: 
            Handle1((lambda $l#7#heap#0: Heap, $l#7#x#0: Box :: 
                $Box(List.__default.Bind(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#7#heap#0, 
                        f#0, 
                        $l#7#x#0)): DatatypeType, 
                    g#0))), 
              (lambda $l#7#heap#0: Heap, $l#7#x#0: Box :: 
                $IsBox($l#7#x#0, List._default.Associativity$A)), 
              (lambda $l#7#heap#0: Heap, $l#7#x#0: Box :: 
                SetRef_to_SetBox((lambda $l#7#o#0: ref :: false))))), 
          $LS($LZ)))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "List.Associativity (correctness)"} Impl$$List.__default.Associativity(List._default.Associativity$A: Ty, 
    List._default.Associativity$B: Ty, 
    List._default.Associativity$C: Ty, 
    m#0: DatatypeType
       where $Is(m#0, Tclass.List.M(List._default.Associativity$A))
         && $IsAlloc(m#0, Tclass.List.M(List._default.Associativity$A), $Heap)
         && $IsA#List.M(m#0), 
    f#0: HandleType
       where $Is(f#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)))
         && $IsAlloc(f#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
          $Heap), 
    g#0: HandleType
       where $Is(g#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)))
         && $IsAlloc(g#0, 
          Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
          $Heap))
   returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#List.M(List.__default.Bind(List._default.Associativity$B, 
        List._default.Associativity$C, 
        List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
        g#0))
     && $IsA#List.M(List.__default.Bind(List._default.Associativity$A, 
        List._default.Associativity$C, 
        m#0, 
        Lit(AtLayer((lambda $l#10#ly#0: LayerType :: 
              Handle1((lambda $l#10#heap#0: Heap, $l#10#x#0: Box :: 
                  $Box(List.__default.Bind(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $l#10#heap#0, 
                          f#0, 
                          $l#10#x#0)): DatatypeType, 
                      g#0))), 
                (lambda $l#10#heap#0: Heap, $l#10#x#0: Box :: 
                  $IsBox($l#10#x#0, List._default.Associativity$A)), 
                (lambda $l#10#heap#0: Heap, $l#10#x#0: Box :: 
                  SetRef_to_SetBox((lambda $l#10#o#0: ref :: false))))), 
            $LS($LZ)))))
     && 
    List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0)
     && List.__default.Bind#canCall(List._default.Associativity$B, 
      List._default.Associativity$C, 
      List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
      g#0)
     && 
    (forall $l#8#x#0: Box, $l#8#heap#0: Heap :: 
      $IsBox($l#8#x#0, List._default.Associativity$A) && $IsGoodHeap($l#8#heap#0)
         ==> List.__default.Bind#canCall(List._default.Associativity$B, 
          List._default.Associativity$C, 
          $Unbox(Apply1(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$B), 
              $l#8#heap#0, 
              f#0, 
              $l#8#x#0)): DatatypeType, 
          g#0))
     && List.__default.Bind#canCall(List._default.Associativity$A, 
      List._default.Associativity$C, 
      m#0, 
      Lit(AtLayer((lambda $l#9#ly#0: LayerType :: 
            Handle1((lambda $l#9#heap#0: Heap, $l#9#x#0: Box :: 
                $Box(List.__default.Bind(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#9#heap#0, 
                        f#0, 
                        $l#9#x#0)): DatatypeType, 
                    g#0))), 
              (lambda $l#9#heap#0: Heap, $l#9#x#0: Box :: 
                $IsBox($l#9#x#0, List._default.Associativity$A)), 
              (lambda $l#9#heap#0: Heap, $l#9#x#0: Box :: 
                SetRef_to_SetBox((lambda $l#9#o#0: ref :: false))))), 
          $LS($LZ))));
  ensures {:id "id168"} List.M#Equal(List.__default.Bind(List._default.Associativity$B, 
      List._default.Associativity$C, 
      List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
      g#0), 
    List.__default.Bind(List._default.Associativity$A, 
      List._default.Associativity$C, 
      m#0, 
      Lit(AtLayer((lambda $l#11#ly#0: LayerType :: 
            Handle1((lambda $l#11#heap#0: Heap, $l#11#x#0: Box :: 
                $Box(List.__default.Bind(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#11#heap#0, 
                        f#0, 
                        $l#11#x#0)): DatatypeType, 
                    g#0))), 
              (lambda $l#11#heap#0: Heap, $l#11#x#0: Box :: 
                $IsBox($l#11#x#0, List._default.Associativity$A)), 
              (lambda $l#11#heap#0: Heap, $l#11#x#0: Box :: 
                SetRef_to_SetBox((lambda $l#11#o#0: ref :: false))))), 
          $LS($LZ)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "List.Associativity (correctness)"} Impl$$List.__default.Associativity(List._default.Associativity$A: Ty, 
    List._default.Associativity$B: Ty, 
    List._default.Associativity$C: Ty, 
    m#0: DatatypeType, 
    f#0: HandleType, 
    g#0: HandleType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##m#0_0_0_0: DatatypeType;
  var ##f#0_0_0_0: HandleType;
  var $lambdaHeap#0_0_0_0: Heap;
  var x#0_0_0_0: Box;
  var $_Frame#l0_0_0_0: [ref,Field]bool;
  var lambdaResult#0_0_0_0: DatatypeType;
  var ##m#0_0_0_1: DatatypeType;
  var ##f#0_0_0_1: HandleType;
  var ##m#0_0_0_2: DatatypeType;
  var ##f#0_0_0_2: HandleType;
  var $lambdaHeap#0_0_0_1: Heap;
  var x#0_0_0_1: Box;
  var $_Frame#l0_0_0_1: [ref,Field]bool;
  var lambdaResult#0_0_0_1: DatatypeType;
  var ##m#0_0_0_3: DatatypeType;
  var ##f#0_0_0_3: HandleType;
  var ##m#0_0_1_0: DatatypeType;
  var ##f#0_0_1_0: HandleType;
  var $lambdaHeap#0_0_1_0: Heap;
  var x#0_0_1_0: Box;
  var $_Frame#l0_0_1_0: [ref,Field]bool;
  var lambdaResult#0_0_1_0: DatatypeType;
  var ##m#0_0_1_1: DatatypeType;
  var ##f#0_0_1_1: HandleType;
  var ##m#0_0_2_0: DatatypeType;
  var ##f#0_0_2_0: HandleType;
  var ##m#0_0_3_0: DatatypeType;
  var ##m#0_0_3_1: DatatypeType;
  var ##f#0_0_3_0: HandleType;
  var ##f#0_0_3_1: HandleType;
  var ##m#0_0_3_2: DatatypeType;
  var ##f#0_0_3_2: HandleType;
  var ##m#0_0_4_0: DatatypeType;
  var ##m#0_0_4_1: DatatypeType;
  var ##f#0_0_4_0: HandleType;
  var ##f#0_0_4_1: HandleType;
  var ##m#0_0_4_2: DatatypeType;
  var ##m#0_0_4_3: DatatypeType;
  var ##f#0_0_4_2: HandleType;
  var ##f#0_0_4_3: HandleType;
  var ##m#0_0_0: DatatypeType;
  var ##m#0_0_1: DatatypeType;
  var ##f#0_0_0: HandleType;
  var ##f#0_0_1: HandleType;
  var _mcc#0#1_0: Box;
  var _mcc#1#1_0: DatatypeType;
  var xs#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var x#1_0: Box;
  var let#1_1#0#0: Box;
  var ##m#1_0_0_0: DatatypeType;
  var ##f#1_0_0_0: HandleType;
  var $lambdaHeap#1_0_0_0: Heap;
  var y#1_0_0_0: Box;
  var $_Frame#l1_0_0_0: [ref,Field]bool;
  var lambdaResult#1_0_0_0: DatatypeType;
  var ##m#1_0_0_1: DatatypeType;
  var ##f#1_0_0_1: HandleType;
  var ##m#1_0_0_2: DatatypeType;
  var ##f#1_0_0_2: HandleType;
  var $lambdaHeap#1_0_0_1: Heap;
  var x#1_0_0_0: Box;
  var $_Frame#l1_0_0_1: [ref,Field]bool;
  var lambdaResult#1_0_0_1: DatatypeType;
  var ##m#1_0_0_3: DatatypeType;
  var ##f#1_0_0_3: HandleType;
  var ##xss#1_0_1_0: DatatypeType;
  var ##xs#1_0_1_0: DatatypeType;
  var ##f#1_0_1_0: HandleType;
  var $lambdaHeap#1_0_1_0: Heap;
  var y#1_0_1_0: Box;
  var $_Frame#l1_0_1_0: [ref,Field]bool;
  var lambdaResult#1_0_1_0: DatatypeType;
  var ##m#1_0_1_0: DatatypeType;
  var ##f#1_0_1_1: HandleType;
  var ##m#1_0_1_1: DatatypeType;
  var ##f#1_0_1_2: HandleType;
  var $lambdaHeap#1_0_1_1: Heap;
  var y#1_0_1_1: Box;
  var $_Frame#l1_0_1_1: [ref,Field]bool;
  var lambdaResult#1_0_1_1: DatatypeType;
  var ##m#1_0_1_2: DatatypeType;
  var ##f#1_0_1_3: HandleType;
  var ##xss#1_0_2_0: DatatypeType;
  var ##m#1_0_2_0: DatatypeType;
  var ##f#1_0_2_0: HandleType;
  var ##xs#1_0_2_0: DatatypeType;
  var ##f#1_0_2_1: HandleType;
  var $lambdaHeap#1_0_2_0: Heap;
  var y#1_0_2_0: Box;
  var $_Frame#l1_0_2_0: [ref,Field]bool;
  var lambdaResult#1_0_2_0: DatatypeType;
  var ##m#1_0_2_1: DatatypeType;
  var ##f#1_0_2_2: HandleType;
  var ##xss#1_0_2_1: DatatypeType;
  var ##xs#1_0_2_1: DatatypeType;
  var ##f#1_0_2_3: HandleType;
  var $lambdaHeap#1_0_2_1: Heap;
  var y#1_0_2_1: Box;
  var $_Frame#l1_0_2_1: [ref,Field]bool;
  var lambdaResult#1_0_2_1: DatatypeType;
  var ##m#1_0_2_2: DatatypeType;
  var ##f#1_0_2_4: HandleType;
  var ##xs#1_0_3_0: DatatypeType;
  var ##m#1_0_3_0: DatatypeType;
  var ##f#1_0_3_0: HandleType;
  var ##ys#1_0_3_0: DatatypeType;
  var ##xss#1_0_3_0: DatatypeType;
  var ##xs#1_0_3_1: DatatypeType;
  var ##f#1_0_3_1: HandleType;
  var $lambdaHeap#1_0_3_0: Heap;
  var y#1_0_3_0: Box;
  var $_Frame#l1_0_3_0: [ref,Field]bool;
  var lambdaResult#1_0_3_0: DatatypeType;
  var ##m#1_0_3_1: DatatypeType;
  var ##f#1_0_3_2: HandleType;
  var ##xss#1_0_3_1: DatatypeType;
  var ##m#1_0_3_2: DatatypeType;
  var ##f#1_0_3_3: HandleType;
  var ##xs#1_0_3_2: DatatypeType;
  var ##f#1_0_3_4: HandleType;
  var $lambdaHeap#1_0_3_1: Heap;
  var y#1_0_3_1: Box;
  var $_Frame#l1_0_3_1: [ref,Field]bool;
  var lambdaResult#1_0_3_1: DatatypeType;
  var ##m#1_0_3_3: DatatypeType;
  var ##f#1_0_3_5: HandleType;
  var ##xs#1_0_4_0: DatatypeType;
  var ##m#1_0_4_0: DatatypeType;
  var ##f#1_0_4_0: HandleType;
  var ##ys#1_0_4_0: DatatypeType;
  var ##m#1_0_4_1: DatatypeType;
  var ##m#1_0_4_2: DatatypeType;
  var ##f#1_0_4_1: HandleType;
  var ##f#1_0_4_2: HandleType;
  var m##1_0_4_0: DatatypeType;
  var f##1_0_4_0: HandleType;
  var g##1_0_4_0: HandleType;
  var ##xs#1_0_4_1: DatatypeType;
  var ##m#1_0_4_3: DatatypeType;
  var ##f#1_0_4_3: HandleType;
  var ##ys#1_0_4_1: DatatypeType;
  var ##xss#1_0_4_0: DatatypeType;
  var ##xs#1_0_4_2: DatatypeType;
  var ##f#1_0_4_4: HandleType;
  var $lambdaHeap#1_0_4_0: Heap;
  var y#1_0_4_0: Box;
  var $_Frame#l1_0_4_0: [ref,Field]bool;
  var lambdaResult#1_0_4_0: DatatypeType;
  var ##m#1_0_4_4: DatatypeType;
  var ##f#1_0_4_5: HandleType;
  var ##m#1_0_5_0: DatatypeType;
  var ##xs#1_0_5_0: DatatypeType;
  var ##ys#1_0_5_0: DatatypeType;
  var ##m#1_0_5_1: DatatypeType;
  var ##f#1_0_5_0: HandleType;
  var ##f#1_0_5_1: HandleType;
  var xs##1_0_5_0: DatatypeType;
  var ys##1_0_5_0: DatatypeType;
  var ##m#1_0_5_2: DatatypeType;
  var ##f#1_0_5_2: HandleType;
  var f##1_0_5_0: HandleType;
  var ##xs#1_0_5_1: DatatypeType;
  var ##m#1_0_5_3: DatatypeType;
  var ##f#1_0_5_3: HandleType;
  var ##ys#1_0_5_1: DatatypeType;
  var ##m#1_0_5_4: DatatypeType;
  var ##m#1_0_5_5: DatatypeType;
  var ##f#1_0_5_4: HandleType;
  var ##f#1_0_5_5: HandleType;
  var ##m#1_0_6_0: DatatypeType;
  var ##m#1_0_6_1: DatatypeType;
  var ##f#1_0_6_0: HandleType;
  var ##f#1_0_6_1: HandleType;
  var ##m#1_0_6_2: DatatypeType;
  var ##xs#1_0_6_0: DatatypeType;
  var ##ys#1_0_6_0: DatatypeType;
  var ##m#1_0_6_3: DatatypeType;
  var ##f#1_0_6_2: HandleType;
  var ##f#1_0_6_3: HandleType;
  var ##m#1_0_7_0: DatatypeType;
  var ##m#1_0_7_1: DatatypeType;
  var ##f#1_0_7_0: HandleType;
  var ##f#1_0_7_1: HandleType;
  var ##m#1_0_7_2: DatatypeType;
  var ##m#1_0_7_3: DatatypeType;
  var ##f#1_0_7_2: HandleType;
  var ##f#1_0_7_3: HandleType;
  var ##m#1_0_0: DatatypeType;
  var ##m#1_0_1: DatatypeType;
  var ##f#1_0_0: HandleType;
  var ##f#1_0_1: HandleType;

    // AddMethodImpl: Associativity, Impl$$List.__default.Associativity
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#1_0, _mcc#1#1_0;
    if (m#0 == #List.M.Cons(_mcc#0#1_0, _mcc#1#1_0))
    {
        assume $IsBox(_mcc#0#1_0, List._default.Associativity$A);
        assume $Is(_mcc#1#1_0, Tclass.List.M(List._default.Associativity$A));
        havoc xs#1_0;
        assume $Is(xs#1_0, Tclass.List.M(List._default.Associativity$A))
           && $IsAlloc(xs#1_0, Tclass.List.M(List._default.Associativity$A), $Heap);
        assume {:id "id178"} let#1_0#0#0 == _mcc#1#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, Tclass.List.M(List._default.Associativity$A));
        assume {:id "id179"} xs#1_0 == let#1_0#0#0;
        havoc x#1_0;
        assume $IsBox(x#1_0, List._default.Associativity$A)
           && $IsAllocBox(x#1_0, List._default.Associativity$A, $Heap);
        assume {:id "id180"} let#1_1#0#0 == _mcc#0#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#1_1#0#0, List._default.Associativity$A);
        assume {:id "id181"} x#1_0 == let#1_1#0#0;
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_1 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_1, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#1_0_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0);
            ##m#1_0_0 := List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_1 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_1, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0)
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
                g#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_7_1 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_7_1, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#1_0_7_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_7_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0);
            ##m#1_0_7_0 := List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_7_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_7_1 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_7_1, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0)
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
                g#0);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_7_3 := #List.M.Cons(x#1_0, xs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_7_3, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#1_0_7_2 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_7_2, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
              List._default.Associativity$B, 
              #List.M.Cons(x#1_0, xs#1_0), 
              f#0);
            ##m#1_0_7_2 := List.__default.Bind(List._default.Associativity$A, 
              List._default.Associativity$B, 
              #List.M.Cons(x#1_0, xs#1_0), 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_7_2, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_7_3 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_7_3, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, 
                List._default.Associativity$B, 
                #List.M.Cons(x#1_0, xs#1_0), 
                f#0), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
                List._default.Associativity$B, 
                #List.M.Cons(x#1_0, xs#1_0), 
                f#0)
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, 
                  List._default.Associativity$B, 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  f#0), 
                g#0);
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            assert {:id "id201"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
                g#0), 
              List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, 
                  List._default.Associativity$B, 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  f#0), 
                g#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_6_1 := #List.M.Cons(x#1_0, xs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_6_1, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#1_0_6_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_6_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
              List._default.Associativity$B, 
              #List.M.Cons(x#1_0, xs#1_0), 
              f#0);
            ##m#1_0_6_0 := List.__default.Bind(List._default.Associativity$A, 
              List._default.Associativity$B, 
              #List.M.Cons(x#1_0, xs#1_0), 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_6_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_6_1 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_6_1, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, 
                List._default.Associativity$B, 
                #List.M.Cons(x#1_0, xs#1_0), 
                f#0), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
                List._default.Associativity$B, 
                #List.M.Cons(x#1_0, xs#1_0), 
                f#0)
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, 
                  List._default.Associativity$B, 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  f#0), 
                g#0);
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##xs#1_0_6_0 := $Unbox(Apply1(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$B), 
                $Heap, 
                f#0, 
                x#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_6_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##m#1_0_6_3 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_6_3, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#1_0_6_2 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_6_2, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            ##ys#1_0_6_0 := List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_6_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            assume List.__default.Concat#canCall(List._default.Associativity$B, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0));
            ##m#1_0_6_2 := List.__default.Concat(List._default.Associativity$B, 
              $LS($LZ), 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_6_2, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_6_3 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_6_3, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Concat(List._default.Associativity$B, 
                $LS($LZ), 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0)), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0)
               && List.__default.Concat#canCall(List._default.Associativity$B, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0))
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Concat(List._default.Associativity$B, 
                  $LS($LZ), 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0)), 
                g#0);
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            assert {:id "id200"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, 
                  List._default.Associativity$B, 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  f#0), 
                g#0), 
              List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Concat(List._default.Associativity$B, 
                  $LS($LS($LZ)), 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0)), 
                g#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##xs#1_0_5_0 := $Unbox(Apply1(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$B), 
                $Heap, 
                f#0, 
                x#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_5_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##m#1_0_5_1 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_5_1, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#1_0_5_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_5_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            ##ys#1_0_5_0 := List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_5_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            assume List.__default.Concat#canCall(List._default.Associativity$B, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0));
            ##m#1_0_5_0 := List.__default.Concat(List._default.Associativity$B, 
              $LS($LZ), 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0));
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_5_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_5_1 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_5_1, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Concat(List._default.Associativity$B, 
                $LS($LZ), 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0)), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0)
               && List.__default.Concat#canCall(List._default.Associativity$B, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0))
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Concat(List._default.Associativity$B, 
                  $LS($LZ), 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0)), 
                g#0);
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(200,24)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            xs##1_0_5_0 := $Unbox(Apply1(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$B), 
                $Heap, 
                f#0, 
                x#1_0)): DatatypeType;
            ##m#1_0_5_2 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_5_2, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#1_0_5_2 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_5_2, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            // ProcessCallStmt: CheckSubrange
            ys##1_0_5_0 := List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            f##1_0_5_0 := g#0;
            call {:id "id198"} Call$$List.__default.BindMorphism(List._default.Associativity$B, List._default.Associativity$C, xs##1_0_5_0, ys##1_0_5_0, f##1_0_5_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_5_3 := $Unbox(Apply1(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$B), 
                $Heap, 
                f#0, 
                x#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_5_3, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_5_3 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_5_3, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              g#0);
            ##xs#1_0_5_1 := List.__default.Bind(List._default.Associativity$B, 
              List._default.Associativity$C, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              g#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_5_1, Tclass.List.M(List._default.Associativity$C), $Heap);
            ##m#1_0_5_5 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_5_5, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#1_0_5_4 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_5_4, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            ##m#1_0_5_4 := List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_5_4, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_5_5 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_5_5, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
              g#0);
            ##ys#1_0_5_1 := List.__default.Bind(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
              g#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_5_1, Tclass.List.M(List._default.Associativity$C), $Heap);
            assume List.__default.Concat#canCall(List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                g#0), 
              List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
                g#0));
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                g#0)
               && 
              List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0)
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
                g#0)
               && List.__default.Concat#canCall(List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  g#0), 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
                  g#0));
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            assert {:id "id199"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Concat(List._default.Associativity$B, 
                  $LS($LS($LZ)), 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0)), 
                g#0), 
              List.__default.Concat(List._default.Associativity$C, 
                $LS($LS($LZ)), 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  g#0), 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
                  g#0)));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_4_0 := $Unbox(Apply1(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$B), 
                $Heap, 
                f#0, 
                x#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_4_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_4_0 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_4_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              g#0);
            ##xs#1_0_4_0 := List.__default.Bind(List._default.Associativity$B, 
              List._default.Associativity$C, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              g#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_0, Tclass.List.M(List._default.Associativity$C), $Heap);
            ##m#1_0_4_2 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_4_2, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#1_0_4_1 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_4_1, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            ##m#1_0_4_1 := List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_4_1, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_4_2 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_4_2, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
              g#0);
            ##ys#1_0_4_0 := List.__default.Bind(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
              g#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_4_0, Tclass.List.M(List._default.Associativity$C), $Heap);
            assume List.__default.Concat#canCall(List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                g#0), 
              List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
                g#0));
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                g#0)
               && 
              List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0)
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
                g#0)
               && List.__default.Concat#canCall(List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  g#0), 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
                  g#0));
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(202,25)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            m##1_0_4_0 := xs#1_0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            f##1_0_4_0 := f#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            g##1_0_4_0 := g#0;
            assert {:id "id194"} DtRank(m##1_0_4_0) < DtRank(m#0);
            call {:id "id195"} Call$$List.__default.Associativity(List._default.Associativity$A, List._default.Associativity$B, List._default.Associativity$C, m##1_0_4_0, f##1_0_4_0, g##1_0_4_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_4_3 := $Unbox(Apply1(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$B), 
                $Heap, 
                f#0, 
                x#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_4_3, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_4_3 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_4_3, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              g#0);
            ##xs#1_0_4_1 := List.__default.Bind(List._default.Associativity$B, 
              List._default.Associativity$C, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              g#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_1, Tclass.List.M(List._default.Associativity$C), $Heap);
            ##xs#1_0_4_2 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_4_2, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#1_0_4_0;
                assume $IsGoodHeap($lambdaHeap#1_0_4_0);
                assume $Heap == $lambdaHeap#1_0_4_0 || $HeapSucc($Heap, $lambdaHeap#1_0_4_0);
                havoc y#1_0_4_0;
                if ($IsBox(y#1_0_4_0, List._default.Associativity$A)
                   && $IsAllocBox(y#1_0_4_0, List._default.Associativity$A, $lambdaHeap#1_0_4_0))
                {
                    $_Frame#l1_0_4_0 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#1_0_4_0, $o, alloc)): bool ==> false);
                    ##m#1_0_4_4 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#1_0_4_0, 
                        f#0, 
                        y#1_0_4_0)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#1_0_4_4, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#1_0_4_0);
                    ##f#1_0_4_5 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#1_0_4_5, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#1_0_4_0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#1_0_4_0, 
                          f#0, 
                          y#1_0_4_0)): DatatypeType, 
                      g#0);
                    assume {:id "id196"} lambdaResult#1_0_4_0
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            y#1_0_4_0)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          y#1_0_4_0)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#1_0_4_0, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#1_0_4_4 := Lit(AtLayer((lambda $l#1_0_4_1#ly#0: LayerType :: 
                  Handle1((lambda $l#1_0_4_1#heap#0: Heap, $l#1_0_4_1#y#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#1_0_4_1#heap#0, 
                              f#0, 
                              $l#1_0_4_1#y#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#1_0_4_1#heap#0: Heap, $l#1_0_4_1#y#0: Box :: 
                      $IsBox($l#1_0_4_1#y#0, List._default.Associativity$A)), 
                    (lambda $l#1_0_4_1#heap#0: Heap, $l#1_0_4_1#y#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1_0_4_1#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_4_4, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$C), 
              xs#1_0, 
              Lit(AtLayer((lambda $l#1_0_4_2#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_4_2#heap#0: Heap, $l#1_0_4_2#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_4_2#heap#0, 
                                f#0, 
                                $l#1_0_4_2#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_4_2#heap#0: Heap, $l#1_0_4_2#y#0: Box :: 
                        $IsBox($l#1_0_4_2#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_4_2#heap#0: Heap, $l#1_0_4_2#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_4_2#o#0: ref :: false))))), 
                  $LS($LZ))));
            ##xss#1_0_4_0 := List.__default.Map(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$C), 
              $LS($LZ), 
              xs#1_0, 
              Lit(AtLayer((lambda $l#1_0_4_4#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_4_4#heap#0: Heap, $l#1_0_4_4#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_4_4#heap#0, 
                                f#0, 
                                $l#1_0_4_4#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_4_4#heap#0: Heap, $l#1_0_4_4#y#0: Box :: 
                        $IsBox($l#1_0_4_4#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_4_4#heap#0: Heap, $l#1_0_4_4#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_4_4#o#0: ref :: false))))), 
                  $LS($LZ))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_4_0, 
              Tclass.List.M(Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.Associativity$C, 
              List.__default.Map(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                $LS($LZ), 
                xs#1_0, 
                Lit(AtLayer((lambda $l#1_0_4_5#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_4_5#heap#0: Heap, $l#1_0_4_5#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_4_5#heap#0, 
                                  f#0, 
                                  $l#1_0_4_5#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_4_5#heap#0: Heap, $l#1_0_4_5#y#0: Box :: 
                          $IsBox($l#1_0_4_5#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_4_5#heap#0: Heap, $l#1_0_4_5#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_4_5#o#0: ref :: false))))), 
                    $LS($LZ)))));
            ##ys#1_0_4_1 := List.__default.Join(List._default.Associativity$C, 
              $LS($LZ), 
              List.__default.Map(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                $LS($LZ), 
                xs#1_0, 
                Lit(AtLayer((lambda $l#1_0_4_7#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_4_7#heap#0: Heap, $l#1_0_4_7#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_4_7#heap#0, 
                                  f#0, 
                                  $l#1_0_4_7#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_4_7#heap#0: Heap, $l#1_0_4_7#y#0: Box :: 
                          $IsBox($l#1_0_4_7#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_4_7#heap#0: Heap, $l#1_0_4_7#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_4_7#o#0: ref :: false))))), 
                    $LS($LZ)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_4_1, Tclass.List.M(List._default.Associativity$C), $Heap);
            assume List.__default.Concat#canCall(List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                g#0), 
              List.__default.Join(List._default.Associativity$C, 
                $LS($LZ), 
                List.__default.Map(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$C), 
                  $LS($LZ), 
                  xs#1_0, 
                  Lit(AtLayer((lambda $l#1_0_4_8#ly#0: LayerType :: 
                        Handle1((lambda $l#1_0_4_8#heap#0: Heap, $l#1_0_4_8#y#0: Box :: 
                            $Box(List.__default.Bind(List._default.Associativity$B, 
                                List._default.Associativity$C, 
                                $Unbox(Apply1(List._default.Associativity$A, 
                                    Tclass.List.M(List._default.Associativity$B), 
                                    $l#1_0_4_8#heap#0, 
                                    f#0, 
                                    $l#1_0_4_8#y#0)): DatatypeType, 
                                g#0))), 
                          (lambda $l#1_0_4_8#heap#0: Heap, $l#1_0_4_8#y#0: Box :: 
                            $IsBox($l#1_0_4_8#y#0, List._default.Associativity$A)), 
                          (lambda $l#1_0_4_8#heap#0: Heap, $l#1_0_4_8#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#1_0_4_8#o#0: ref :: false))))), 
                      $LS($LZ))))));
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                g#0)
               && 
              (forall $l#1_0_4_9#y#0: Box, $l#1_0_4_9#heap#0: Heap :: 
                $IsBox($l#1_0_4_9#y#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#1_0_4_9#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#1_0_4_9#heap#0, 
                        f#0, 
                        $l#1_0_4_9#y#0)): DatatypeType, 
                    g#0))
               && List.__default.Map#canCall(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                xs#1_0, 
                Lit(AtLayer((lambda $l#1_0_4_10#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_4_10#heap#0: Heap, $l#1_0_4_10#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_4_10#heap#0, 
                                  f#0, 
                                  $l#1_0_4_10#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_4_10#heap#0: Heap, $l#1_0_4_10#y#0: Box :: 
                          $IsBox($l#1_0_4_10#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_4_10#heap#0: Heap, $l#1_0_4_10#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_4_10#o#0: ref :: false))))), 
                    $LS($LZ))))
               && List.__default.Join#canCall(List._default.Associativity$C, 
                List.__default.Map(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$C), 
                  $LS($LZ), 
                  xs#1_0, 
                  Lit(AtLayer((lambda $l#1_0_4_11#ly#0: LayerType :: 
                        Handle1((lambda $l#1_0_4_11#heap#0: Heap, $l#1_0_4_11#y#0: Box :: 
                            $Box(List.__default.Bind(List._default.Associativity$B, 
                                List._default.Associativity$C, 
                                $Unbox(Apply1(List._default.Associativity$A, 
                                    Tclass.List.M(List._default.Associativity$B), 
                                    $l#1_0_4_11#heap#0, 
                                    f#0, 
                                    $l#1_0_4_11#y#0)): DatatypeType, 
                                g#0))), 
                          (lambda $l#1_0_4_11#heap#0: Heap, $l#1_0_4_11#y#0: Box :: 
                            $IsBox($l#1_0_4_11#y#0, List._default.Associativity$A)), 
                          (lambda $l#1_0_4_11#heap#0: Heap, $l#1_0_4_11#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#1_0_4_11#o#0: ref :: false))))), 
                      $LS($LZ)))))
               && List.__default.Concat#canCall(List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  g#0), 
                List.__default.Join(List._default.Associativity$C, 
                  $LS($LZ), 
                  List.__default.Map(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$C), 
                    $LS($LZ), 
                    xs#1_0, 
                    Lit(AtLayer((lambda $l#1_0_4_12#ly#0: LayerType :: 
                          Handle1((lambda $l#1_0_4_12#heap#0: Heap, $l#1_0_4_12#y#0: Box :: 
                              $Box(List.__default.Bind(List._default.Associativity$B, 
                                  List._default.Associativity$C, 
                                  $Unbox(Apply1(List._default.Associativity$A, 
                                      Tclass.List.M(List._default.Associativity$B), 
                                      $l#1_0_4_12#heap#0, 
                                      f#0, 
                                      $l#1_0_4_12#y#0)): DatatypeType, 
                                  g#0))), 
                            (lambda $l#1_0_4_12#heap#0: Heap, $l#1_0_4_12#y#0: Box :: 
                              $IsBox($l#1_0_4_12#y#0, List._default.Associativity$A)), 
                            (lambda $l#1_0_4_12#heap#0: Heap, $l#1_0_4_12#y#0: Box :: 
                              SetRef_to_SetBox((lambda $l#1_0_4_12#o#0: ref :: false))))), 
                        $LS($LZ))))));
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            assert {:id "id197"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.Associativity$C, 
                $LS($LS($LZ)), 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  g#0), 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, xs#1_0, f#0), 
                  g#0)), 
              List.__default.Concat(List._default.Associativity$C, 
                $LS($LS($LZ)), 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  g#0), 
                List.__default.Join(List._default.Associativity$C, 
                  $LS($LS($LZ)), 
                  List.__default.Map(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$C), 
                    $LS($LS($LZ)), 
                    xs#1_0, 
                    Lit(AtLayer((lambda $l#1_0_4_13#ly#0: LayerType :: 
                          Handle1((lambda $l#1_0_4_13#heap#0: Heap, $l#1_0_4_13#y#0: Box :: 
                              $Box(List.__default.Bind(List._default.Associativity$B, 
                                  List._default.Associativity$C, 
                                  $Unbox(Apply1(List._default.Associativity$A, 
                                      Tclass.List.M(List._default.Associativity$B), 
                                      $l#1_0_4_13#heap#0, 
                                      f#0, 
                                      $l#1_0_4_13#y#0)): DatatypeType, 
                                  g#0))), 
                            (lambda $l#1_0_4_13#heap#0: Heap, $l#1_0_4_13#y#0: Box :: 
                              $IsBox($l#1_0_4_13#y#0, List._default.Associativity$A)), 
                            (lambda $l#1_0_4_13#heap#0: Heap, $l#1_0_4_13#y#0: Box :: 
                              SetRef_to_SetBox((lambda $l#1_0_4_13#o#0: ref :: false))))), 
                        $LS($LZ)))))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_3_0 := $Unbox(Apply1(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$B), 
                $Heap, 
                f#0, 
                x#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_3_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_3_0 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_3_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              g#0);
            ##xs#1_0_3_0 := List.__default.Bind(List._default.Associativity$B, 
              List._default.Associativity$C, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              g#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_0, Tclass.List.M(List._default.Associativity$C), $Heap);
            ##xs#1_0_3_1 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_1, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#1_0_3_0;
                assume $IsGoodHeap($lambdaHeap#1_0_3_0);
                assume $Heap == $lambdaHeap#1_0_3_0 || $HeapSucc($Heap, $lambdaHeap#1_0_3_0);
                havoc y#1_0_3_0;
                if ($IsBox(y#1_0_3_0, List._default.Associativity$A)
                   && $IsAllocBox(y#1_0_3_0, List._default.Associativity$A, $lambdaHeap#1_0_3_0))
                {
                    $_Frame#l1_0_3_0 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#1_0_3_0, $o, alloc)): bool ==> false);
                    ##m#1_0_3_1 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#1_0_3_0, 
                        f#0, 
                        y#1_0_3_0)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#1_0_3_1, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#1_0_3_0);
                    ##f#1_0_3_2 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#1_0_3_2, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#1_0_3_0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#1_0_3_0, 
                          f#0, 
                          y#1_0_3_0)): DatatypeType, 
                      g#0);
                    assume {:id "id191"} lambdaResult#1_0_3_0
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            y#1_0_3_0)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          y#1_0_3_0)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#1_0_3_0, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#1_0_3_1 := Lit(AtLayer((lambda $l#1_0_3_1#ly#0: LayerType :: 
                  Handle1((lambda $l#1_0_3_1#heap#0: Heap, $l#1_0_3_1#y#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#1_0_3_1#heap#0, 
                              f#0, 
                              $l#1_0_3_1#y#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#1_0_3_1#heap#0: Heap, $l#1_0_3_1#y#0: Box :: 
                      $IsBox($l#1_0_3_1#y#0, List._default.Associativity$A)), 
                    (lambda $l#1_0_3_1#heap#0: Heap, $l#1_0_3_1#y#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1_0_3_1#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_3_1, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$C), 
              xs#1_0, 
              Lit(AtLayer((lambda $l#1_0_3_2#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_3_2#heap#0: Heap, $l#1_0_3_2#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_3_2#heap#0, 
                                f#0, 
                                $l#1_0_3_2#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_3_2#heap#0: Heap, $l#1_0_3_2#y#0: Box :: 
                        $IsBox($l#1_0_3_2#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_3_2#heap#0: Heap, $l#1_0_3_2#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_3_2#o#0: ref :: false))))), 
                  $LS($LZ))));
            ##xss#1_0_3_0 := List.__default.Map(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$C), 
              $LS($LZ), 
              xs#1_0, 
              Lit(AtLayer((lambda $l#1_0_3_4#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_3_4#heap#0: Heap, $l#1_0_3_4#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_3_4#heap#0, 
                                f#0, 
                                $l#1_0_3_4#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_3_4#heap#0: Heap, $l#1_0_3_4#y#0: Box :: 
                        $IsBox($l#1_0_3_4#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_3_4#heap#0: Heap, $l#1_0_3_4#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_3_4#o#0: ref :: false))))), 
                  $LS($LZ))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_3_0, 
              Tclass.List.M(Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.Associativity$C, 
              List.__default.Map(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                $LS($LZ), 
                xs#1_0, 
                Lit(AtLayer((lambda $l#1_0_3_5#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_3_5#heap#0: Heap, $l#1_0_3_5#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_3_5#heap#0, 
                                  f#0, 
                                  $l#1_0_3_5#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_3_5#heap#0: Heap, $l#1_0_3_5#y#0: Box :: 
                          $IsBox($l#1_0_3_5#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_3_5#heap#0: Heap, $l#1_0_3_5#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_3_5#o#0: ref :: false))))), 
                    $LS($LZ)))));
            ##ys#1_0_3_0 := List.__default.Join(List._default.Associativity$C, 
              $LS($LZ), 
              List.__default.Map(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                $LS($LZ), 
                xs#1_0, 
                Lit(AtLayer((lambda $l#1_0_3_7#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_3_7#heap#0: Heap, $l#1_0_3_7#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_3_7#heap#0, 
                                  f#0, 
                                  $l#1_0_3_7#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_3_7#heap#0: Heap, $l#1_0_3_7#y#0: Box :: 
                          $IsBox($l#1_0_3_7#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_3_7#heap#0: Heap, $l#1_0_3_7#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_3_7#o#0: ref :: false))))), 
                    $LS($LZ)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##ys#1_0_3_0, Tclass.List.M(List._default.Associativity$C), $Heap);
            assume List.__default.Concat#canCall(List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                g#0), 
              List.__default.Join(List._default.Associativity$C, 
                $LS($LZ), 
                List.__default.Map(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$C), 
                  $LS($LZ), 
                  xs#1_0, 
                  Lit(AtLayer((lambda $l#1_0_3_8#ly#0: LayerType :: 
                        Handle1((lambda $l#1_0_3_8#heap#0: Heap, $l#1_0_3_8#y#0: Box :: 
                            $Box(List.__default.Bind(List._default.Associativity$B, 
                                List._default.Associativity$C, 
                                $Unbox(Apply1(List._default.Associativity$A, 
                                    Tclass.List.M(List._default.Associativity$B), 
                                    $l#1_0_3_8#heap#0, 
                                    f#0, 
                                    $l#1_0_3_8#y#0)): DatatypeType, 
                                g#0))), 
                          (lambda $l#1_0_3_8#heap#0: Heap, $l#1_0_3_8#y#0: Box :: 
                            $IsBox($l#1_0_3_8#y#0, List._default.Associativity$A)), 
                          (lambda $l#1_0_3_8#heap#0: Heap, $l#1_0_3_8#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#1_0_3_8#o#0: ref :: false))))), 
                      $LS($LZ))))));
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                g#0)
               && 
              (forall $l#1_0_3_9#y#0: Box, $l#1_0_3_9#heap#0: Heap :: 
                $IsBox($l#1_0_3_9#y#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#1_0_3_9#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#1_0_3_9#heap#0, 
                        f#0, 
                        $l#1_0_3_9#y#0)): DatatypeType, 
                    g#0))
               && List.__default.Map#canCall(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                xs#1_0, 
                Lit(AtLayer((lambda $l#1_0_3_10#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_3_10#heap#0: Heap, $l#1_0_3_10#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_3_10#heap#0, 
                                  f#0, 
                                  $l#1_0_3_10#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_3_10#heap#0: Heap, $l#1_0_3_10#y#0: Box :: 
                          $IsBox($l#1_0_3_10#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_3_10#heap#0: Heap, $l#1_0_3_10#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_3_10#o#0: ref :: false))))), 
                    $LS($LZ))))
               && List.__default.Join#canCall(List._default.Associativity$C, 
                List.__default.Map(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$C), 
                  $LS($LZ), 
                  xs#1_0, 
                  Lit(AtLayer((lambda $l#1_0_3_11#ly#0: LayerType :: 
                        Handle1((lambda $l#1_0_3_11#heap#0: Heap, $l#1_0_3_11#y#0: Box :: 
                            $Box(List.__default.Bind(List._default.Associativity$B, 
                                List._default.Associativity$C, 
                                $Unbox(Apply1(List._default.Associativity$A, 
                                    Tclass.List.M(List._default.Associativity$B), 
                                    $l#1_0_3_11#heap#0, 
                                    f#0, 
                                    $l#1_0_3_11#y#0)): DatatypeType, 
                                g#0))), 
                          (lambda $l#1_0_3_11#heap#0: Heap, $l#1_0_3_11#y#0: Box :: 
                            $IsBox($l#1_0_3_11#y#0, List._default.Associativity$A)), 
                          (lambda $l#1_0_3_11#heap#0: Heap, $l#1_0_3_11#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#1_0_3_11#o#0: ref :: false))))), 
                      $LS($LZ)))))
               && List.__default.Concat#canCall(List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  g#0), 
                List.__default.Join(List._default.Associativity$C, 
                  $LS($LZ), 
                  List.__default.Map(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$C), 
                    $LS($LZ), 
                    xs#1_0, 
                    Lit(AtLayer((lambda $l#1_0_3_12#ly#0: LayerType :: 
                          Handle1((lambda $l#1_0_3_12#heap#0: Heap, $l#1_0_3_12#y#0: Box :: 
                              $Box(List.__default.Bind(List._default.Associativity$B, 
                                  List._default.Associativity$C, 
                                  $Unbox(Apply1(List._default.Associativity$A, 
                                      Tclass.List.M(List._default.Associativity$B), 
                                      $l#1_0_3_12#heap#0, 
                                      f#0, 
                                      $l#1_0_3_12#y#0)): DatatypeType, 
                                  g#0))), 
                            (lambda $l#1_0_3_12#heap#0: Heap, $l#1_0_3_12#y#0: Box :: 
                              $IsBox($l#1_0_3_12#y#0, List._default.Associativity$A)), 
                            (lambda $l#1_0_3_12#heap#0: Heap, $l#1_0_3_12#y#0: Box :: 
                              SetRef_to_SetBox((lambda $l#1_0_3_12#o#0: ref :: false))))), 
                        $LS($LZ))))));
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_3_2 := $Unbox(Apply1(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$B), 
                $Heap, 
                f#0, 
                x#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_3_2, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_3_3 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_3_3, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              g#0);
            ##xs#1_0_3_2 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_3_2, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#1_0_3_1;
                assume $IsGoodHeap($lambdaHeap#1_0_3_1);
                assume $Heap == $lambdaHeap#1_0_3_1 || $HeapSucc($Heap, $lambdaHeap#1_0_3_1);
                havoc y#1_0_3_1;
                if ($IsBox(y#1_0_3_1, List._default.Associativity$A)
                   && $IsAllocBox(y#1_0_3_1, List._default.Associativity$A, $lambdaHeap#1_0_3_1))
                {
                    $_Frame#l1_0_3_1 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#1_0_3_1, $o, alloc)): bool ==> false);
                    ##m#1_0_3_3 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#1_0_3_1, 
                        f#0, 
                        y#1_0_3_1)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#1_0_3_3, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#1_0_3_1);
                    ##f#1_0_3_5 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#1_0_3_5, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#1_0_3_1);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#1_0_3_1, 
                          f#0, 
                          y#1_0_3_1)): DatatypeType, 
                      g#0);
                    assume {:id "id192"} lambdaResult#1_0_3_1
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            y#1_0_3_1)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          y#1_0_3_1)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#1_0_3_1, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#1_0_3_4 := Lit(AtLayer((lambda $l#1_0_3_14#ly#0: LayerType :: 
                  Handle1((lambda $l#1_0_3_14#heap#0: Heap, $l#1_0_3_14#y#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#1_0_3_14#heap#0, 
                              f#0, 
                              $l#1_0_3_14#y#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#1_0_3_14#heap#0: Heap, $l#1_0_3_14#y#0: Box :: 
                      $IsBox($l#1_0_3_14#y#0, List._default.Associativity$A)), 
                    (lambda $l#1_0_3_14#heap#0: Heap, $l#1_0_3_14#y#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1_0_3_14#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_3_4, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$C), 
              xs#1_0, 
              Lit(AtLayer((lambda $l#1_0_3_15#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_3_15#heap#0: Heap, $l#1_0_3_15#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_3_15#heap#0, 
                                f#0, 
                                $l#1_0_3_15#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_3_15#heap#0: Heap, $l#1_0_3_15#y#0: Box :: 
                        $IsBox($l#1_0_3_15#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_3_15#heap#0: Heap, $l#1_0_3_15#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_3_15#o#0: ref :: false))))), 
                  $LS($LZ))));
            ##xss#1_0_3_1 := #List.M.Cons($Box(List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  g#0)), 
              List.__default.Map(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                $LS($LZ), 
                xs#1_0, 
                Lit(AtLayer((lambda $l#1_0_3_18#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_3_18#heap#0: Heap, $l#1_0_3_18#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_3_18#heap#0, 
                                  f#0, 
                                  $l#1_0_3_18#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_3_18#heap#0: Heap, $l#1_0_3_18#y#0: Box :: 
                          $IsBox($l#1_0_3_18#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_3_18#heap#0: Heap, $l#1_0_3_18#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_3_18#o#0: ref :: false))))), 
                    $LS($LZ)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_3_1, 
              Tclass.List.M(Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.Associativity$C, 
              #List.M.Cons($Box(List.__default.Bind(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $Heap, 
                        f#0, 
                        x#1_0)): DatatypeType, 
                    g#0)), 
                List.__default.Map(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$C), 
                  $LS($LZ), 
                  xs#1_0, 
                  Lit(AtLayer((lambda $l#1_0_3_19#ly#0: LayerType :: 
                        Handle1((lambda $l#1_0_3_19#heap#0: Heap, $l#1_0_3_19#y#0: Box :: 
                            $Box(List.__default.Bind(List._default.Associativity$B, 
                                List._default.Associativity$C, 
                                $Unbox(Apply1(List._default.Associativity$A, 
                                    Tclass.List.M(List._default.Associativity$B), 
                                    $l#1_0_3_19#heap#0, 
                                    f#0, 
                                    $l#1_0_3_19#y#0)): DatatypeType, 
                                g#0))), 
                          (lambda $l#1_0_3_19#heap#0: Heap, $l#1_0_3_19#y#0: Box :: 
                            $IsBox($l#1_0_3_19#y#0, List._default.Associativity$A)), 
                          (lambda $l#1_0_3_19#heap#0: Heap, $l#1_0_3_19#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#1_0_3_19#o#0: ref :: false))))), 
                      $LS($LZ))))));
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                g#0)
               && 
              (forall $l#1_0_3_20#y#0: Box, $l#1_0_3_20#heap#0: Heap :: 
                $IsBox($l#1_0_3_20#y#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#1_0_3_20#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#1_0_3_20#heap#0, 
                        f#0, 
                        $l#1_0_3_20#y#0)): DatatypeType, 
                    g#0))
               && List.__default.Map#canCall(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                xs#1_0, 
                Lit(AtLayer((lambda $l#1_0_3_21#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_3_21#heap#0: Heap, $l#1_0_3_21#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_3_21#heap#0, 
                                  f#0, 
                                  $l#1_0_3_21#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_3_21#heap#0: Heap, $l#1_0_3_21#y#0: Box :: 
                          $IsBox($l#1_0_3_21#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_3_21#heap#0: Heap, $l#1_0_3_21#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_3_21#o#0: ref :: false))))), 
                    $LS($LZ))))
               && List.__default.Join#canCall(List._default.Associativity$C, 
                #List.M.Cons($Box(List.__default.Bind(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          x#1_0)): DatatypeType, 
                      g#0)), 
                  List.__default.Map(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$C), 
                    $LS($LZ), 
                    xs#1_0, 
                    Lit(AtLayer((lambda $l#1_0_3_22#ly#0: LayerType :: 
                          Handle1((lambda $l#1_0_3_22#heap#0: Heap, $l#1_0_3_22#y#0: Box :: 
                              $Box(List.__default.Bind(List._default.Associativity$B, 
                                  List._default.Associativity$C, 
                                  $Unbox(Apply1(List._default.Associativity$A, 
                                      Tclass.List.M(List._default.Associativity$B), 
                                      $l#1_0_3_22#heap#0, 
                                      f#0, 
                                      $l#1_0_3_22#y#0)): DatatypeType, 
                                  g#0))), 
                            (lambda $l#1_0_3_22#heap#0: Heap, $l#1_0_3_22#y#0: Box :: 
                              $IsBox($l#1_0_3_22#y#0, List._default.Associativity$A)), 
                            (lambda $l#1_0_3_22#heap#0: Heap, $l#1_0_3_22#y#0: Box :: 
                              SetRef_to_SetBox((lambda $l#1_0_3_22#o#0: ref :: false))))), 
                        $LS($LZ))))));
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            assert {:id "id193"} {:subsumption 0} List.M#Equal(List.__default.Concat(List._default.Associativity$C, 
                $LS($LS($LZ)), 
                List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  g#0), 
                List.__default.Join(List._default.Associativity$C, 
                  $LS($LS($LZ)), 
                  List.__default.Map(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$C), 
                    $LS($LS($LZ)), 
                    xs#1_0, 
                    Lit(AtLayer((lambda $l#1_0_3_23#ly#0: LayerType :: 
                          Handle1((lambda $l#1_0_3_23#heap#0: Heap, $l#1_0_3_23#y#0: Box :: 
                              $Box(List.__default.Bind(List._default.Associativity$B, 
                                  List._default.Associativity$C, 
                                  $Unbox(Apply1(List._default.Associativity$A, 
                                      Tclass.List.M(List._default.Associativity$B), 
                                      $l#1_0_3_23#heap#0, 
                                      f#0, 
                                      $l#1_0_3_23#y#0)): DatatypeType, 
                                  g#0))), 
                            (lambda $l#1_0_3_23#heap#0: Heap, $l#1_0_3_23#y#0: Box :: 
                              $IsBox($l#1_0_3_23#y#0, List._default.Associativity$A)), 
                            (lambda $l#1_0_3_23#heap#0: Heap, $l#1_0_3_23#y#0: Box :: 
                              SetRef_to_SetBox((lambda $l#1_0_3_23#o#0: ref :: false))))), 
                        $LS($LZ)))))), 
              List.__default.Join(List._default.Associativity$C, 
                $LS($LS($LZ)), 
                #List.M.Cons($Box(List.__default.Bind(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          x#1_0)): DatatypeType, 
                      g#0)), 
                  List.__default.Map(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$C), 
                    $LS($LS($LZ)), 
                    xs#1_0, 
                    Lit(AtLayer((lambda $l#1_0_3_24#ly#0: LayerType :: 
                          Handle1((lambda $l#1_0_3_24#heap#0: Heap, $l#1_0_3_24#y#0: Box :: 
                              $Box(List.__default.Bind(List._default.Associativity$B, 
                                  List._default.Associativity$C, 
                                  $Unbox(Apply1(List._default.Associativity$A, 
                                      Tclass.List.M(List._default.Associativity$B), 
                                      $l#1_0_3_24#heap#0, 
                                      f#0, 
                                      $l#1_0_3_24#y#0)): DatatypeType, 
                                  g#0))), 
                            (lambda $l#1_0_3_24#heap#0: Heap, $l#1_0_3_24#y#0: Box :: 
                              $IsBox($l#1_0_3_24#y#0, List._default.Associativity$A)), 
                            (lambda $l#1_0_3_24#heap#0: Heap, $l#1_0_3_24#y#0: Box :: 
                              SetRef_to_SetBox((lambda $l#1_0_3_24#o#0: ref :: false))))), 
                        $LS($LZ)))))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_2_0 := $Unbox(Apply1(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$B), 
                $Heap, 
                f#0, 
                x#1_0)): DatatypeType;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_2_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#1_0_2_0 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_2_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              $Unbox(Apply1(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$B), 
                  $Heap, 
                  f#0, 
                  x#1_0)): DatatypeType, 
              g#0);
            ##xs#1_0_2_0 := xs#1_0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_0, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#1_0_2_0;
                assume $IsGoodHeap($lambdaHeap#1_0_2_0);
                assume $Heap == $lambdaHeap#1_0_2_0 || $HeapSucc($Heap, $lambdaHeap#1_0_2_0);
                havoc y#1_0_2_0;
                if ($IsBox(y#1_0_2_0, List._default.Associativity$A)
                   && $IsAllocBox(y#1_0_2_0, List._default.Associativity$A, $lambdaHeap#1_0_2_0))
                {
                    $_Frame#l1_0_2_0 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#1_0_2_0, $o, alloc)): bool ==> false);
                    ##m#1_0_2_1 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#1_0_2_0, 
                        f#0, 
                        y#1_0_2_0)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#1_0_2_1, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#1_0_2_0);
                    ##f#1_0_2_2 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#1_0_2_2, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#1_0_2_0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#1_0_2_0, 
                          f#0, 
                          y#1_0_2_0)): DatatypeType, 
                      g#0);
                    assume {:id "id188"} lambdaResult#1_0_2_0
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            y#1_0_2_0)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          y#1_0_2_0)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#1_0_2_0, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#1_0_2_1 := Lit(AtLayer((lambda $l#1_0_2_1#ly#0: LayerType :: 
                  Handle1((lambda $l#1_0_2_1#heap#0: Heap, $l#1_0_2_1#y#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#1_0_2_1#heap#0, 
                              f#0, 
                              $l#1_0_2_1#y#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#1_0_2_1#heap#0: Heap, $l#1_0_2_1#y#0: Box :: 
                      $IsBox($l#1_0_2_1#y#0, List._default.Associativity$A)), 
                    (lambda $l#1_0_2_1#heap#0: Heap, $l#1_0_2_1#y#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1_0_2_1#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_2_1, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$C), 
              xs#1_0, 
              Lit(AtLayer((lambda $l#1_0_2_2#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_2_2#heap#0: Heap, $l#1_0_2_2#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_2_2#heap#0, 
                                f#0, 
                                $l#1_0_2_2#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_2_2#heap#0: Heap, $l#1_0_2_2#y#0: Box :: 
                        $IsBox($l#1_0_2_2#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_2_2#heap#0: Heap, $l#1_0_2_2#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_2_2#o#0: ref :: false))))), 
                  $LS($LZ))));
            ##xss#1_0_2_0 := #List.M.Cons($Box(List.__default.Bind(List._default.Associativity$B, 
                  List._default.Associativity$C, 
                  $Unbox(Apply1(List._default.Associativity$A, 
                      Tclass.List.M(List._default.Associativity$B), 
                      $Heap, 
                      f#0, 
                      x#1_0)): DatatypeType, 
                  g#0)), 
              List.__default.Map(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                $LS($LZ), 
                xs#1_0, 
                Lit(AtLayer((lambda $l#1_0_2_5#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_2_5#heap#0: Heap, $l#1_0_2_5#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_2_5#heap#0, 
                                  f#0, 
                                  $l#1_0_2_5#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_2_5#heap#0: Heap, $l#1_0_2_5#y#0: Box :: 
                          $IsBox($l#1_0_2_5#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_2_5#heap#0: Heap, $l#1_0_2_5#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_2_5#o#0: ref :: false))))), 
                    $LS($LZ)))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_2_0, 
              Tclass.List.M(Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.Associativity$C, 
              #List.M.Cons($Box(List.__default.Bind(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $Heap, 
                        f#0, 
                        x#1_0)): DatatypeType, 
                    g#0)), 
                List.__default.Map(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$C), 
                  $LS($LZ), 
                  xs#1_0, 
                  Lit(AtLayer((lambda $l#1_0_2_6#ly#0: LayerType :: 
                        Handle1((lambda $l#1_0_2_6#heap#0: Heap, $l#1_0_2_6#y#0: Box :: 
                            $Box(List.__default.Bind(List._default.Associativity$B, 
                                List._default.Associativity$C, 
                                $Unbox(Apply1(List._default.Associativity$A, 
                                    Tclass.List.M(List._default.Associativity$B), 
                                    $l#1_0_2_6#heap#0, 
                                    f#0, 
                                    $l#1_0_2_6#y#0)): DatatypeType, 
                                g#0))), 
                          (lambda $l#1_0_2_6#heap#0: Heap, $l#1_0_2_6#y#0: Box :: 
                            $IsBox($l#1_0_2_6#y#0, List._default.Associativity$A)), 
                          (lambda $l#1_0_2_6#heap#0: Heap, $l#1_0_2_6#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#1_0_2_6#o#0: ref :: false))))), 
                      $LS($LZ))))));
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                $Unbox(Apply1(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$B), 
                    $Heap, 
                    f#0, 
                    x#1_0)): DatatypeType, 
                g#0)
               && 
              (forall $l#1_0_2_7#y#0: Box, $l#1_0_2_7#heap#0: Heap :: 
                $IsBox($l#1_0_2_7#y#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#1_0_2_7#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#1_0_2_7#heap#0, 
                        f#0, 
                        $l#1_0_2_7#y#0)): DatatypeType, 
                    g#0))
               && List.__default.Map#canCall(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                xs#1_0, 
                Lit(AtLayer((lambda $l#1_0_2_8#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_2_8#heap#0: Heap, $l#1_0_2_8#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_2_8#heap#0, 
                                  f#0, 
                                  $l#1_0_2_8#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_2_8#heap#0: Heap, $l#1_0_2_8#y#0: Box :: 
                          $IsBox($l#1_0_2_8#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_2_8#heap#0: Heap, $l#1_0_2_8#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_2_8#o#0: ref :: false))))), 
                    $LS($LZ))))
               && List.__default.Join#canCall(List._default.Associativity$C, 
                #List.M.Cons($Box(List.__default.Bind(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          x#1_0)): DatatypeType, 
                      g#0)), 
                  List.__default.Map(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$C), 
                    $LS($LZ), 
                    xs#1_0, 
                    Lit(AtLayer((lambda $l#1_0_2_9#ly#0: LayerType :: 
                          Handle1((lambda $l#1_0_2_9#heap#0: Heap, $l#1_0_2_9#y#0: Box :: 
                              $Box(List.__default.Bind(List._default.Associativity$B, 
                                  List._default.Associativity$C, 
                                  $Unbox(Apply1(List._default.Associativity$A, 
                                      Tclass.List.M(List._default.Associativity$B), 
                                      $l#1_0_2_9#heap#0, 
                                      f#0, 
                                      $l#1_0_2_9#y#0)): DatatypeType, 
                                  g#0))), 
                            (lambda $l#1_0_2_9#heap#0: Heap, $l#1_0_2_9#y#0: Box :: 
                              $IsBox($l#1_0_2_9#y#0, List._default.Associativity$A)), 
                            (lambda $l#1_0_2_9#heap#0: Heap, $l#1_0_2_9#y#0: Box :: 
                              SetRef_to_SetBox((lambda $l#1_0_2_9#o#0: ref :: false))))), 
                        $LS($LZ))))));
            // ----- Hint5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##xs#1_0_2_1 := #List.M.Cons(x#1_0, xs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_2_1, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#1_0_2_1;
                assume $IsGoodHeap($lambdaHeap#1_0_2_1);
                assume $Heap == $lambdaHeap#1_0_2_1 || $HeapSucc($Heap, $lambdaHeap#1_0_2_1);
                havoc y#1_0_2_1;
                if ($IsBox(y#1_0_2_1, List._default.Associativity$A)
                   && $IsAllocBox(y#1_0_2_1, List._default.Associativity$A, $lambdaHeap#1_0_2_1))
                {
                    $_Frame#l1_0_2_1 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#1_0_2_1, $o, alloc)): bool ==> false);
                    ##m#1_0_2_2 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#1_0_2_1, 
                        f#0, 
                        y#1_0_2_1)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#1_0_2_2, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#1_0_2_1);
                    ##f#1_0_2_4 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#1_0_2_4, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#1_0_2_1);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#1_0_2_1, 
                          f#0, 
                          y#1_0_2_1)): DatatypeType, 
                      g#0);
                    assume {:id "id189"} lambdaResult#1_0_2_1
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            y#1_0_2_1)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          y#1_0_2_1)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#1_0_2_1, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#1_0_2_3 := Lit(AtLayer((lambda $l#1_0_2_11#ly#0: LayerType :: 
                  Handle1((lambda $l#1_0_2_11#heap#0: Heap, $l#1_0_2_11#y#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#1_0_2_11#heap#0, 
                              f#0, 
                              $l#1_0_2_11#y#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#1_0_2_11#heap#0: Heap, $l#1_0_2_11#y#0: Box :: 
                      $IsBox($l#1_0_2_11#y#0, List._default.Associativity$A)), 
                    (lambda $l#1_0_2_11#heap#0: Heap, $l#1_0_2_11#y#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1_0_2_11#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_2_3, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$C), 
              #List.M.Cons(x#1_0, xs#1_0), 
              Lit(AtLayer((lambda $l#1_0_2_12#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_2_12#heap#0: Heap, $l#1_0_2_12#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_2_12#heap#0, 
                                f#0, 
                                $l#1_0_2_12#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_2_12#heap#0: Heap, $l#1_0_2_12#y#0: Box :: 
                        $IsBox($l#1_0_2_12#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_2_12#heap#0: Heap, $l#1_0_2_12#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_2_12#o#0: ref :: false))))), 
                  $LS($LZ))));
            ##xss#1_0_2_1 := List.__default.Map(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$C), 
              $LS($LZ), 
              #List.M.Cons(x#1_0, xs#1_0), 
              Lit(AtLayer((lambda $l#1_0_2_14#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_2_14#heap#0: Heap, $l#1_0_2_14#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_2_14#heap#0, 
                                f#0, 
                                $l#1_0_2_14#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_2_14#heap#0: Heap, $l#1_0_2_14#y#0: Box :: 
                        $IsBox($l#1_0_2_14#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_2_14#heap#0: Heap, $l#1_0_2_14#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_2_14#o#0: ref :: false))))), 
                  $LS($LZ))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_2_1, 
              Tclass.List.M(Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.Associativity$C, 
              List.__default.Map(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                $LS($LZ), 
                #List.M.Cons(x#1_0, xs#1_0), 
                Lit(AtLayer((lambda $l#1_0_2_15#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_2_15#heap#0: Heap, $l#1_0_2_15#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_2_15#heap#0, 
                                  f#0, 
                                  $l#1_0_2_15#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_2_15#heap#0: Heap, $l#1_0_2_15#y#0: Box :: 
                          $IsBox($l#1_0_2_15#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_2_15#heap#0: Heap, $l#1_0_2_15#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_2_15#o#0: ref :: false))))), 
                    $LS($LZ)))));
            assume (forall $l#1_0_2_16#y#0: Box, $l#1_0_2_16#heap#0: Heap :: 
                $IsBox($l#1_0_2_16#y#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#1_0_2_16#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#1_0_2_16#heap#0, 
                        f#0, 
                        $l#1_0_2_16#y#0)): DatatypeType, 
                    g#0))
               && List.__default.Map#canCall(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                #List.M.Cons(x#1_0, xs#1_0), 
                Lit(AtLayer((lambda $l#1_0_2_17#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_2_17#heap#0: Heap, $l#1_0_2_17#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_2_17#heap#0, 
                                  f#0, 
                                  $l#1_0_2_17#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_2_17#heap#0: Heap, $l#1_0_2_17#y#0: Box :: 
                          $IsBox($l#1_0_2_17#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_2_17#heap#0: Heap, $l#1_0_2_17#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_2_17#o#0: ref :: false))))), 
                    $LS($LZ))))
               && List.__default.Join#canCall(List._default.Associativity$C, 
                List.__default.Map(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$C), 
                  $LS($LZ), 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  Lit(AtLayer((lambda $l#1_0_2_18#ly#0: LayerType :: 
                        Handle1((lambda $l#1_0_2_18#heap#0: Heap, $l#1_0_2_18#y#0: Box :: 
                            $Box(List.__default.Bind(List._default.Associativity$B, 
                                List._default.Associativity$C, 
                                $Unbox(Apply1(List._default.Associativity$A, 
                                    Tclass.List.M(List._default.Associativity$B), 
                                    $l#1_0_2_18#heap#0, 
                                    f#0, 
                                    $l#1_0_2_18#y#0)): DatatypeType, 
                                g#0))), 
                          (lambda $l#1_0_2_18#heap#0: Heap, $l#1_0_2_18#y#0: Box :: 
                            $IsBox($l#1_0_2_18#y#0, List._default.Associativity$A)), 
                          (lambda $l#1_0_2_18#heap#0: Heap, $l#1_0_2_18#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#1_0_2_18#o#0: ref :: false))))), 
                      $LS($LZ)))));
            // ----- assert line5 == line6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            assert {:id "id190"} {:subsumption 0} List.M#Equal(List.__default.Join(List._default.Associativity$C, 
                $LS($LS($LZ)), 
                #List.M.Cons($Box(List.__default.Bind(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          x#1_0)): DatatypeType, 
                      g#0)), 
                  List.__default.Map(List._default.Associativity$A, 
                    Tclass.List.M(List._default.Associativity$C), 
                    $LS($LS($LZ)), 
                    xs#1_0, 
                    Lit(AtLayer((lambda $l#1_0_2_19#ly#0: LayerType :: 
                          Handle1((lambda $l#1_0_2_19#heap#0: Heap, $l#1_0_2_19#y#0: Box :: 
                              $Box(List.__default.Bind(List._default.Associativity$B, 
                                  List._default.Associativity$C, 
                                  $Unbox(Apply1(List._default.Associativity$A, 
                                      Tclass.List.M(List._default.Associativity$B), 
                                      $l#1_0_2_19#heap#0, 
                                      f#0, 
                                      $l#1_0_2_19#y#0)): DatatypeType, 
                                  g#0))), 
                            (lambda $l#1_0_2_19#heap#0: Heap, $l#1_0_2_19#y#0: Box :: 
                              $IsBox($l#1_0_2_19#y#0, List._default.Associativity$A)), 
                            (lambda $l#1_0_2_19#heap#0: Heap, $l#1_0_2_19#y#0: Box :: 
                              SetRef_to_SetBox((lambda $l#1_0_2_19#o#0: ref :: false))))), 
                        $LS($LZ)))))), 
              List.__default.Join(List._default.Associativity$C, 
                $LS($LS($LZ)), 
                List.__default.Map(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$C), 
                  $LS($LS($LZ)), 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  Lit(AtLayer((lambda $l#1_0_2_20#ly#0: LayerType :: 
                        Handle1((lambda $l#1_0_2_20#heap#0: Heap, $l#1_0_2_20#y#0: Box :: 
                            $Box(List.__default.Bind(List._default.Associativity$B, 
                                List._default.Associativity$C, 
                                $Unbox(Apply1(List._default.Associativity$A, 
                                    Tclass.List.M(List._default.Associativity$B), 
                                    $l#1_0_2_20#heap#0, 
                                    f#0, 
                                    $l#1_0_2_20#y#0)): DatatypeType, 
                                g#0))), 
                          (lambda $l#1_0_2_20#heap#0: Heap, $l#1_0_2_20#y#0: Box :: 
                            $IsBox($l#1_0_2_20#y#0, List._default.Associativity$A)), 
                          (lambda $l#1_0_2_20#heap#0: Heap, $l#1_0_2_20#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#1_0_2_20#o#0: ref :: false))))), 
                      $LS($LZ))))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##xs#1_0_1_0 := #List.M.Cons(x#1_0, xs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#1_0_1_0, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#1_0_1_0;
                assume $IsGoodHeap($lambdaHeap#1_0_1_0);
                assume $Heap == $lambdaHeap#1_0_1_0 || $HeapSucc($Heap, $lambdaHeap#1_0_1_0);
                havoc y#1_0_1_0;
                if ($IsBox(y#1_0_1_0, List._default.Associativity$A)
                   && $IsAllocBox(y#1_0_1_0, List._default.Associativity$A, $lambdaHeap#1_0_1_0))
                {
                    $_Frame#l1_0_1_0 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#1_0_1_0, $o, alloc)): bool ==> false);
                    ##m#1_0_1_0 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#1_0_1_0, 
                        f#0, 
                        y#1_0_1_0)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#1_0_1_0, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#1_0_1_0);
                    ##f#1_0_1_1 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#1_0_1_1, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#1_0_1_0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#1_0_1_0, 
                          f#0, 
                          y#1_0_1_0)): DatatypeType, 
                      g#0);
                    assume {:id "id185"} lambdaResult#1_0_1_0
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            y#1_0_1_0)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          y#1_0_1_0)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#1_0_1_0, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#1_0_1_0 := Lit(AtLayer((lambda $l#1_0_1_1#ly#0: LayerType :: 
                  Handle1((lambda $l#1_0_1_1#heap#0: Heap, $l#1_0_1_1#y#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#1_0_1_1#heap#0, 
                              f#0, 
                              $l#1_0_1_1#y#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#1_0_1_1#heap#0: Heap, $l#1_0_1_1#y#0: Box :: 
                      $IsBox($l#1_0_1_1#y#0, List._default.Associativity$A)), 
                    (lambda $l#1_0_1_1#heap#0: Heap, $l#1_0_1_1#y#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1_0_1_1#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_1_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Map#canCall(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$C), 
              #List.M.Cons(x#1_0, xs#1_0), 
              Lit(AtLayer((lambda $l#1_0_1_2#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_1_2#heap#0: Heap, $l#1_0_1_2#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_1_2#heap#0, 
                                f#0, 
                                $l#1_0_1_2#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_1_2#heap#0: Heap, $l#1_0_1_2#y#0: Box :: 
                        $IsBox($l#1_0_1_2#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_1_2#heap#0: Heap, $l#1_0_1_2#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_1_2#o#0: ref :: false))))), 
                  $LS($LZ))));
            ##xss#1_0_1_0 := List.__default.Map(List._default.Associativity$A, 
              Tclass.List.M(List._default.Associativity$C), 
              $LS($LZ), 
              #List.M.Cons(x#1_0, xs#1_0), 
              Lit(AtLayer((lambda $l#1_0_1_4#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_1_4#heap#0: Heap, $l#1_0_1_4#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_1_4#heap#0, 
                                f#0, 
                                $l#1_0_1_4#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_1_4#heap#0: Heap, $l#1_0_1_4#y#0: Box :: 
                        $IsBox($l#1_0_1_4#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_1_4#heap#0: Heap, $l#1_0_1_4#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_1_4#o#0: ref :: false))))), 
                  $LS($LZ))));
            // assume allocatedness for argument to function
            assume $IsAlloc(##xss#1_0_1_0, 
              Tclass.List.M(Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Join#canCall(List._default.Associativity$C, 
              List.__default.Map(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                $LS($LZ), 
                #List.M.Cons(x#1_0, xs#1_0), 
                Lit(AtLayer((lambda $l#1_0_1_5#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_1_5#heap#0: Heap, $l#1_0_1_5#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_1_5#heap#0, 
                                  f#0, 
                                  $l#1_0_1_5#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_1_5#heap#0: Heap, $l#1_0_1_5#y#0: Box :: 
                          $IsBox($l#1_0_1_5#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_1_5#heap#0: Heap, $l#1_0_1_5#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_1_5#o#0: ref :: false))))), 
                    $LS($LZ)))));
            assume (forall $l#1_0_1_6#y#0: Box, $l#1_0_1_6#heap#0: Heap :: 
                $IsBox($l#1_0_1_6#y#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#1_0_1_6#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#1_0_1_6#heap#0, 
                        f#0, 
                        $l#1_0_1_6#y#0)): DatatypeType, 
                    g#0))
               && List.__default.Map#canCall(List._default.Associativity$A, 
                Tclass.List.M(List._default.Associativity$C), 
                #List.M.Cons(x#1_0, xs#1_0), 
                Lit(AtLayer((lambda $l#1_0_1_7#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_1_7#heap#0: Heap, $l#1_0_1_7#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_1_7#heap#0, 
                                  f#0, 
                                  $l#1_0_1_7#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_1_7#heap#0: Heap, $l#1_0_1_7#y#0: Box :: 
                          $IsBox($l#1_0_1_7#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_1_7#heap#0: Heap, $l#1_0_1_7#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_1_7#o#0: ref :: false))))), 
                    $LS($LZ))))
               && List.__default.Join#canCall(List._default.Associativity$C, 
                List.__default.Map(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$C), 
                  $LS($LZ), 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  Lit(AtLayer((lambda $l#1_0_1_8#ly#0: LayerType :: 
                        Handle1((lambda $l#1_0_1_8#heap#0: Heap, $l#1_0_1_8#y#0: Box :: 
                            $Box(List.__default.Bind(List._default.Associativity$B, 
                                List._default.Associativity$C, 
                                $Unbox(Apply1(List._default.Associativity$A, 
                                    Tclass.List.M(List._default.Associativity$B), 
                                    $l#1_0_1_8#heap#0, 
                                    f#0, 
                                    $l#1_0_1_8#y#0)): DatatypeType, 
                                g#0))), 
                          (lambda $l#1_0_1_8#heap#0: Heap, $l#1_0_1_8#y#0: Box :: 
                            $IsBox($l#1_0_1_8#y#0, List._default.Associativity$A)), 
                          (lambda $l#1_0_1_8#heap#0: Heap, $l#1_0_1_8#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#1_0_1_8#o#0: ref :: false))))), 
                      $LS($LZ)))));
            // ----- Hint6 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_1_1 := #List.M.Cons(x#1_0, xs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_1_1, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#1_0_1_1;
                assume $IsGoodHeap($lambdaHeap#1_0_1_1);
                assume $Heap == $lambdaHeap#1_0_1_1 || $HeapSucc($Heap, $lambdaHeap#1_0_1_1);
                havoc y#1_0_1_1;
                if ($IsBox(y#1_0_1_1, List._default.Associativity$A)
                   && $IsAllocBox(y#1_0_1_1, List._default.Associativity$A, $lambdaHeap#1_0_1_1))
                {
                    $_Frame#l1_0_1_1 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#1_0_1_1, $o, alloc)): bool ==> false);
                    ##m#1_0_1_2 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#1_0_1_1, 
                        f#0, 
                        y#1_0_1_1)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#1_0_1_2, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#1_0_1_1);
                    ##f#1_0_1_3 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#1_0_1_3, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#1_0_1_1);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#1_0_1_1, 
                          f#0, 
                          y#1_0_1_1)): DatatypeType, 
                      g#0);
                    assume {:id "id186"} lambdaResult#1_0_1_1
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            y#1_0_1_1)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          y#1_0_1_1)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#1_0_1_1, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#1_0_1_2 := Lit(AtLayer((lambda $l#1_0_1_10#ly#0: LayerType :: 
                  Handle1((lambda $l#1_0_1_10#heap#0: Heap, $l#1_0_1_10#y#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#1_0_1_10#heap#0, 
                              f#0, 
                              $l#1_0_1_10#y#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#1_0_1_10#heap#0: Heap, $l#1_0_1_10#y#0: Box :: 
                      $IsBox($l#1_0_1_10#y#0, List._default.Associativity$A)), 
                    (lambda $l#1_0_1_10#heap#0: Heap, $l#1_0_1_10#y#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1_0_1_10#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_1_2, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
              List._default.Associativity$C, 
              #List.M.Cons(x#1_0, xs#1_0), 
              Lit(AtLayer((lambda $l#1_0_1_11#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_1_11#heap#0: Heap, $l#1_0_1_11#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_1_11#heap#0, 
                                f#0, 
                                $l#1_0_1_11#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_1_11#heap#0: Heap, $l#1_0_1_11#y#0: Box :: 
                        $IsBox($l#1_0_1_11#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_1_11#heap#0: Heap, $l#1_0_1_11#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_1_11#o#0: ref :: false))))), 
                  $LS($LZ))));
            assume (forall $l#1_0_1_12#y#0: Box, $l#1_0_1_12#heap#0: Heap :: 
                $IsBox($l#1_0_1_12#y#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#1_0_1_12#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#1_0_1_12#heap#0, 
                        f#0, 
                        $l#1_0_1_12#y#0)): DatatypeType, 
                    g#0))
               && List.__default.Bind#canCall(List._default.Associativity$A, 
                List._default.Associativity$C, 
                #List.M.Cons(x#1_0, xs#1_0), 
                Lit(AtLayer((lambda $l#1_0_1_13#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_1_13#heap#0: Heap, $l#1_0_1_13#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_1_13#heap#0, 
                                  f#0, 
                                  $l#1_0_1_13#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_1_13#heap#0: Heap, $l#1_0_1_13#y#0: Box :: 
                          $IsBox($l#1_0_1_13#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_1_13#heap#0: Heap, $l#1_0_1_13#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_1_13#o#0: ref :: false))))), 
                    $LS($LZ))));
            // ----- assert line6 == line7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            assert {:id "id187"} {:subsumption 0} List.M#Equal(List.__default.Join(List._default.Associativity$C, 
                $LS($LS($LZ)), 
                List.__default.Map(List._default.Associativity$A, 
                  Tclass.List.M(List._default.Associativity$C), 
                  $LS($LS($LZ)), 
                  #List.M.Cons(x#1_0, xs#1_0), 
                  Lit(AtLayer((lambda $l#1_0_1_14#ly#0: LayerType :: 
                        Handle1((lambda $l#1_0_1_14#heap#0: Heap, $l#1_0_1_14#y#0: Box :: 
                            $Box(List.__default.Bind(List._default.Associativity$B, 
                                List._default.Associativity$C, 
                                $Unbox(Apply1(List._default.Associativity$A, 
                                    Tclass.List.M(List._default.Associativity$B), 
                                    $l#1_0_1_14#heap#0, 
                                    f#0, 
                                    $l#1_0_1_14#y#0)): DatatypeType, 
                                g#0))), 
                          (lambda $l#1_0_1_14#heap#0: Heap, $l#1_0_1_14#y#0: Box :: 
                            $IsBox($l#1_0_1_14#y#0, List._default.Associativity$A)), 
                          (lambda $l#1_0_1_14#heap#0: Heap, $l#1_0_1_14#y#0: Box :: 
                            SetRef_to_SetBox((lambda $l#1_0_1_14#o#0: ref :: false))))), 
                      $LS($LZ))))), 
              List.__default.Bind(List._default.Associativity$A, 
                List._default.Associativity$C, 
                #List.M.Cons(x#1_0, xs#1_0), 
                Lit(AtLayer((lambda $l#1_0_1_15#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_1_15#heap#0: Heap, $l#1_0_1_15#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_1_15#heap#0, 
                                  f#0, 
                                  $l#1_0_1_15#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_1_15#heap#0: Heap, $l#1_0_1_15#y#0: Box :: 
                          $IsBox($l#1_0_1_15#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_1_15#heap#0: Heap, $l#1_0_1_15#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_1_15#o#0: ref :: false))))), 
                    $LS($LZ)))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_0_0 := #List.M.Cons(x#1_0, xs#1_0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_0_0, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#1_0_0_0;
                assume $IsGoodHeap($lambdaHeap#1_0_0_0);
                assume $Heap == $lambdaHeap#1_0_0_0 || $HeapSucc($Heap, $lambdaHeap#1_0_0_0);
                havoc y#1_0_0_0;
                if ($IsBox(y#1_0_0_0, List._default.Associativity$A)
                   && $IsAllocBox(y#1_0_0_0, List._default.Associativity$A, $lambdaHeap#1_0_0_0))
                {
                    $_Frame#l1_0_0_0 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#1_0_0_0, $o, alloc)): bool ==> false);
                    ##m#1_0_0_1 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#1_0_0_0, 
                        f#0, 
                        y#1_0_0_0)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#1_0_0_1, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#1_0_0_0);
                    ##f#1_0_0_1 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#1_0_0_1, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#1_0_0_0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#1_0_0_0, 
                          f#0, 
                          y#1_0_0_0)): DatatypeType, 
                      g#0);
                    assume {:id "id182"} lambdaResult#1_0_0_0
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            y#1_0_0_0)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          y#1_0_0_0)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#1_0_0_0, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#1_0_0_0 := Lit(AtLayer((lambda $l#1_0_0_1#ly#0: LayerType :: 
                  Handle1((lambda $l#1_0_0_1#heap#0: Heap, $l#1_0_0_1#y#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#1_0_0_1#heap#0, 
                              f#0, 
                              $l#1_0_0_1#y#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#1_0_0_1#heap#0: Heap, $l#1_0_0_1#y#0: Box :: 
                      $IsBox($l#1_0_0_1#y#0, List._default.Associativity$A)), 
                    (lambda $l#1_0_0_1#heap#0: Heap, $l#1_0_0_1#y#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1_0_0_1#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_0_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
              List._default.Associativity$C, 
              #List.M.Cons(x#1_0, xs#1_0), 
              Lit(AtLayer((lambda $l#1_0_0_2#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_0_2#heap#0: Heap, $l#1_0_0_2#y#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_0_2#heap#0, 
                                f#0, 
                                $l#1_0_0_2#y#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_0_2#heap#0: Heap, $l#1_0_0_2#y#0: Box :: 
                        $IsBox($l#1_0_0_2#y#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_0_2#heap#0: Heap, $l#1_0_0_2#y#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_0_2#o#0: ref :: false))))), 
                  $LS($LZ))));
            assume (forall $l#1_0_0_3#y#0: Box, $l#1_0_0_3#heap#0: Heap :: 
                $IsBox($l#1_0_0_3#y#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#1_0_0_3#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#1_0_0_3#heap#0, 
                        f#0, 
                        $l#1_0_0_3#y#0)): DatatypeType, 
                    g#0))
               && List.__default.Bind#canCall(List._default.Associativity$A, 
                List._default.Associativity$C, 
                #List.M.Cons(x#1_0, xs#1_0), 
                Lit(AtLayer((lambda $l#1_0_0_4#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_0_4#heap#0: Heap, $l#1_0_0_4#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_0_4#heap#0, 
                                  f#0, 
                                  $l#1_0_0_4#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_0_4#heap#0: Heap, $l#1_0_0_4#y#0: Box :: 
                          $IsBox($l#1_0_0_4#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_0_4#heap#0: Heap, $l#1_0_0_4#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_0_4#o#0: ref :: false))))), 
                    $LS($LZ))));
            // ----- Hint7 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            ##m#1_0_0_2 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#1_0_0_2, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#1_0_0_1;
                assume $IsGoodHeap($lambdaHeap#1_0_0_1);
                assume $Heap == $lambdaHeap#1_0_0_1 || $HeapSucc($Heap, $lambdaHeap#1_0_0_1);
                havoc x#1_0_0_0;
                if ($IsBox(x#1_0_0_0, List._default.Associativity$A)
                   && $IsAllocBox(x#1_0_0_0, List._default.Associativity$A, $lambdaHeap#1_0_0_1))
                {
                    $_Frame#l1_0_0_1 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#1_0_0_1, $o, alloc)): bool ==> false);
                    ##m#1_0_0_3 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#1_0_0_1, 
                        f#0, 
                        x#1_0_0_0)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#1_0_0_3, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#1_0_0_1);
                    ##f#1_0_0_3 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#1_0_0_3, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#1_0_0_1);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#1_0_0_1, 
                          f#0, 
                          x#1_0_0_0)): DatatypeType, 
                      g#0);
                    assume {:id "id183"} lambdaResult#1_0_0_1
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            x#1_0_0_0)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          x#1_0_0_0)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#1_0_0_1, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#1_0_0_2 := Lit(AtLayer((lambda $l#1_0_0_6#ly#0: LayerType :: 
                  Handle1((lambda $l#1_0_0_6#heap#0: Heap, $l#1_0_0_6#x#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#1_0_0_6#heap#0, 
                              f#0, 
                              $l#1_0_0_6#x#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#1_0_0_6#heap#0: Heap, $l#1_0_0_6#x#0: Box :: 
                      $IsBox($l#1_0_0_6#x#0, List._default.Associativity$A)), 
                    (lambda $l#1_0_0_6#heap#0: Heap, $l#1_0_0_6#x#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1_0_0_6#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#1_0_0_2, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
              List._default.Associativity$C, 
              m#0, 
              Lit(AtLayer((lambda $l#1_0_0_7#ly#0: LayerType :: 
                    Handle1((lambda $l#1_0_0_7#heap#0: Heap, $l#1_0_0_7#x#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#1_0_0_7#heap#0, 
                                f#0, 
                                $l#1_0_0_7#x#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#1_0_0_7#heap#0: Heap, $l#1_0_0_7#x#0: Box :: 
                        $IsBox($l#1_0_0_7#x#0, List._default.Associativity$A)), 
                      (lambda $l#1_0_0_7#heap#0: Heap, $l#1_0_0_7#x#0: Box :: 
                        SetRef_to_SetBox((lambda $l#1_0_0_7#o#0: ref :: false))))), 
                  $LS($LZ))));
            assume (forall $l#1_0_0_8#x#0: Box, $l#1_0_0_8#heap#0: Heap :: 
                $IsBox($l#1_0_0_8#x#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#1_0_0_8#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#1_0_0_8#heap#0, 
                        f#0, 
                        $l#1_0_0_8#x#0)): DatatypeType, 
                    g#0))
               && List.__default.Bind#canCall(List._default.Associativity$A, 
                List._default.Associativity$C, 
                m#0, 
                Lit(AtLayer((lambda $l#1_0_0_9#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_0_9#heap#0: Heap, $l#1_0_0_9#x#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_0_9#heap#0, 
                                  f#0, 
                                  $l#1_0_0_9#x#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_0_9#heap#0: Heap, $l#1_0_0_9#x#0: Box :: 
                          $IsBox($l#1_0_0_9#x#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_0_9#heap#0: Heap, $l#1_0_0_9#x#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_0_9#o#0: ref :: false))))), 
                    $LS($LZ))));
            // ----- assert line7 == line8 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(196,7)
            assert {:id "id184"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.Associativity$A, 
                List._default.Associativity$C, 
                #List.M.Cons(x#1_0, xs#1_0), 
                Lit(AtLayer((lambda $l#1_0_0_12#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_0_12#heap#0: Heap, $l#1_0_0_12#y#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_0_12#heap#0, 
                                  f#0, 
                                  $l#1_0_0_12#y#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_0_12#heap#0: Heap, $l#1_0_0_12#y#0: Box :: 
                          $IsBox($l#1_0_0_12#y#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_0_12#heap#0: Heap, $l#1_0_0_12#y#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_0_12#o#0: ref :: false))))), 
                    $LS($LZ)))), 
              List.__default.Bind(List._default.Associativity$A, 
                List._default.Associativity$C, 
                m#0, 
                Lit(AtLayer((lambda $l#1_0_0_13#ly#0: LayerType :: 
                      Handle1((lambda $l#1_0_0_13#heap#0: Heap, $l#1_0_0_13#x#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#1_0_0_13#heap#0, 
                                  f#0, 
                                  $l#1_0_0_13#x#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#1_0_0_13#heap#0: Heap, $l#1_0_0_13#x#0: Box :: 
                          $IsBox($l#1_0_0_13#x#0, List._default.Associativity$A)), 
                        (lambda $l#1_0_0_13#heap#0: Heap, $l#1_0_0_13#x#0: Box :: 
                          SetRef_to_SetBox((lambda $l#1_0_0_13#o#0: ref :: false))))), 
                    $LS($LZ)))));
            assume false;
        }

        assume {:id "id202"} List.M#Equal(List.__default.Bind(List._default.Associativity$B, 
            List._default.Associativity$C, 
            List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
            g#0), 
          List.__default.Bind(List._default.Associativity$A, 
            List._default.Associativity$C, 
            m#0, 
            Lit(AtLayer((lambda $l#1_0_0#ly#0: LayerType :: 
                  Handle1((lambda $l#1_0_0#heap#0: Heap, $l#1_0_0#x#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#1_0_0#heap#0, 
                              f#0, 
                              $l#1_0_0#x#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#1_0_0#heap#0: Heap, $l#1_0_0#x#0: Box :: 
                      $IsBox($l#1_0_0#x#0, List._default.Associativity$A)), 
                    (lambda $l#1_0_0#heap#0: Heap, $l#1_0_0#x#0: Box :: 
                      SetRef_to_SetBox((lambda $l#1_0_0#o#0: ref :: false))))), 
                $LS($LZ)))));
    }
    else if (m#0 == #List.M.Nil())
    {
        // ----- calc statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
        // Assume Fuel Constant
        if (*)
        {
            // ----- assert wf[initial] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            ##m#0_0_1 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_1, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#0_0_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0);
            ##m#0_0_0 := List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#0_0_1 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_1, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0)
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
                g#0);
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            ##m#0_0_4_1 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_1, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#0_0_4_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_4_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0);
            ##m#0_0_4_0 := List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#0_0_4_1 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_4_1, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0)
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
                g#0);
            // ----- Hint0 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            ##m#0_0_4_3 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_3, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#0_0_4_2 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_4_2, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
              List._default.Associativity$B, 
              Lit(#List.M.Nil()), 
              f#0);
            ##m#0_0_4_2 := List.__default.Bind(List._default.Associativity$A, 
              List._default.Associativity$B, 
              Lit(#List.M.Nil()), 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_4_2, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#0_0_4_3 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_4_3, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, 
                List._default.Associativity$B, 
                Lit(#List.M.Nil()), 
                f#0), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
                List._default.Associativity$B, 
                Lit(#List.M.Nil()), 
                f#0)
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, 
                  List._default.Associativity$B, 
                  Lit(#List.M.Nil()), 
                  f#0), 
                g#0);
            // ----- assert line0 == line1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            assert {:id "id176"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
                g#0), 
              List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, 
                  List._default.Associativity$B, 
                  Lit(#List.M.Nil()), 
                  f#0), 
                g#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            ##m#0_0_3_1 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_1, Tclass.List.M(List._default.Associativity$A), $Heap);
            ##f#0_0_3_0 := f#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_3_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$B)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
              List._default.Associativity$B, 
              Lit(#List.M.Nil()), 
              f#0);
            ##m#0_0_3_0 := List.__default.Bind(List._default.Associativity$A, 
              List._default.Associativity$B, 
              Lit(#List.M.Nil()), 
              f#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#0_0_3_1 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_3_1, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              List.__default.Bind(List._default.Associativity$A, 
                List._default.Associativity$B, 
                Lit(#List.M.Nil()), 
                f#0), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
                List._default.Associativity$B, 
                Lit(#List.M.Nil()), 
                f#0)
               && List.__default.Bind#canCall(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, 
                  List._default.Associativity$B, 
                  Lit(#List.M.Nil()), 
                  f#0), 
                g#0);
            // ----- Hint1 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            ##m#0_0_3_2 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_3_2, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#0_0_3_2 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_3_2, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              Lit(#List.M.Nil()), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              Lit(#List.M.Nil()), 
              g#0);
            // ----- assert line1 == line2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            assert {:id "id175"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                List.__default.Bind(List._default.Associativity$A, 
                  List._default.Associativity$B, 
                  Lit(#List.M.Nil()), 
                  f#0), 
                g#0), 
              List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                Lit(#List.M.Nil()), 
                g#0));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            ##m#0_0_2_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_2_0, Tclass.List.M(List._default.Associativity$B), $Heap);
            ##f#0_0_2_0 := g#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_2_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              Lit(#List.M.Nil()), 
              g#0);
            assume List.__default.Bind#canCall(List._default.Associativity$B, 
              List._default.Associativity$C, 
              Lit(#List.M.Nil()), 
              g#0);
            // ----- Hint2 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            assume true;
            // ----- assert line2 == line3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            assert {:id "id174"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.Associativity$B, 
                List._default.Associativity$C, 
                Lit(#List.M.Nil()), 
                g#0), 
              #List.M.Nil());
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            assume true;
            // ----- Hint3 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            ##m#0_0_1_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_1_0, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#0_0_1_0;
                assume $IsGoodHeap($lambdaHeap#0_0_1_0);
                assume $Heap == $lambdaHeap#0_0_1_0 || $HeapSucc($Heap, $lambdaHeap#0_0_1_0);
                havoc x#0_0_1_0;
                if ($IsBox(x#0_0_1_0, List._default.Associativity$A)
                   && $IsAllocBox(x#0_0_1_0, List._default.Associativity$A, $lambdaHeap#0_0_1_0))
                {
                    $_Frame#l0_0_1_0 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#0_0_1_0, $o, alloc)): bool ==> false);
                    ##m#0_0_1_1 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#0_0_1_0, 
                        f#0, 
                        x#0_0_1_0)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#0_0_1_1, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#0_0_1_0);
                    ##f#0_0_1_1 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#0_0_1_1, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#0_0_1_0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#0_0_1_0, 
                          f#0, 
                          x#0_0_1_0)): DatatypeType, 
                      g#0);
                    assume {:id "id172"} lambdaResult#0_0_1_0
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            x#0_0_1_0)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          x#0_0_1_0)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0_0_1_0, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#0_0_1_0 := Lit(AtLayer((lambda $l#0_0_1_1#ly#0: LayerType :: 
                  Handle1((lambda $l#0_0_1_1#heap#0: Heap, $l#0_0_1_1#x#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#0_0_1_1#heap#0, 
                              f#0, 
                              $l#0_0_1_1#x#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#0_0_1_1#heap#0: Heap, $l#0_0_1_1#x#0: Box :: 
                      $IsBox($l#0_0_1_1#x#0, List._default.Associativity$A)), 
                    (lambda $l#0_0_1_1#heap#0: Heap, $l#0_0_1_1#x#0: Box :: 
                      SetRef_to_SetBox((lambda $l#0_0_1_1#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_1_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
              List._default.Associativity$C, 
              Lit(#List.M.Nil()), 
              Lit(AtLayer((lambda $l#0_0_1_2#ly#0: LayerType :: 
                    Handle1((lambda $l#0_0_1_2#heap#0: Heap, $l#0_0_1_2#x#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#0_0_1_2#heap#0, 
                                f#0, 
                                $l#0_0_1_2#x#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#0_0_1_2#heap#0: Heap, $l#0_0_1_2#x#0: Box :: 
                        $IsBox($l#0_0_1_2#x#0, List._default.Associativity$A)), 
                      (lambda $l#0_0_1_2#heap#0: Heap, $l#0_0_1_2#x#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0_0_1_2#o#0: ref :: false))))), 
                  $LS($LZ))));
            assume (forall $l#0_0_1_3#x#0: Box, $l#0_0_1_3#heap#0: Heap :: 
                $IsBox($l#0_0_1_3#x#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#0_0_1_3#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#0_0_1_3#heap#0, 
                        f#0, 
                        $l#0_0_1_3#x#0)): DatatypeType, 
                    g#0))
               && List.__default.Bind#canCall(List._default.Associativity$A, 
                List._default.Associativity$C, 
                Lit(#List.M.Nil()), 
                Lit(AtLayer((lambda $l#0_0_1_4#ly#0: LayerType :: 
                      Handle1((lambda $l#0_0_1_4#heap#0: Heap, $l#0_0_1_4#x#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#0_0_1_4#heap#0, 
                                  f#0, 
                                  $l#0_0_1_4#x#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#0_0_1_4#heap#0: Heap, $l#0_0_1_4#x#0: Box :: 
                          $IsBox($l#0_0_1_4#x#0, List._default.Associativity$A)), 
                        (lambda $l#0_0_1_4#heap#0: Heap, $l#0_0_1_4#x#0: Box :: 
                          SetRef_to_SetBox((lambda $l#0_0_1_4#o#0: ref :: false))))), 
                    $LS($LZ))));
            // ----- assert line3 == line4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            assert {:id "id173"} {:subsumption 0} List.M#Equal(#List.M.Nil(), 
              List.__default.Bind(List._default.Associativity$A, 
                List._default.Associativity$C, 
                Lit(#List.M.Nil()), 
                Lit(AtLayer((lambda $l#0_0_1_6#ly#0: LayerType :: 
                      Handle1((lambda $l#0_0_1_6#heap#0: Heap, $l#0_0_1_6#x#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#0_0_1_6#heap#0, 
                                  f#0, 
                                  $l#0_0_1_6#x#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#0_0_1_6#heap#0: Heap, $l#0_0_1_6#x#0: Box :: 
                          $IsBox($l#0_0_1_6#x#0, List._default.Associativity$A)), 
                        (lambda $l#0_0_1_6#heap#0: Heap, $l#0_0_1_6#x#0: Box :: 
                          SetRef_to_SetBox((lambda $l#0_0_1_6#o#0: ref :: false))))), 
                    $LS($LZ)))));
            assume false;
        }
        else if (*)
        {
            // ----- assume wf[lhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            ##m#0_0_0_0 := Lit(#List.M.Nil());
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0_0, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#0_0_0_0;
                assume $IsGoodHeap($lambdaHeap#0_0_0_0);
                assume $Heap == $lambdaHeap#0_0_0_0 || $HeapSucc($Heap, $lambdaHeap#0_0_0_0);
                havoc x#0_0_0_0;
                if ($IsBox(x#0_0_0_0, List._default.Associativity$A)
                   && $IsAllocBox(x#0_0_0_0, List._default.Associativity$A, $lambdaHeap#0_0_0_0))
                {
                    $_Frame#l0_0_0_0 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#0_0_0_0, $o, alloc)): bool ==> false);
                    ##m#0_0_0_1 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#0_0_0_0, 
                        f#0, 
                        x#0_0_0_0)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#0_0_0_1, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#0_0_0_0);
                    ##f#0_0_0_1 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#0_0_0_1, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#0_0_0_0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#0_0_0_0, 
                          f#0, 
                          x#0_0_0_0)): DatatypeType, 
                      g#0);
                    assume {:id "id169"} lambdaResult#0_0_0_0
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            x#0_0_0_0)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          x#0_0_0_0)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0_0_0_0, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#0_0_0_0 := Lit(AtLayer((lambda $l#0_0_0_1#ly#0: LayerType :: 
                  Handle1((lambda $l#0_0_0_1#heap#0: Heap, $l#0_0_0_1#x#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#0_0_0_1#heap#0, 
                              f#0, 
                              $l#0_0_0_1#x#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#0_0_0_1#heap#0: Heap, $l#0_0_0_1#x#0: Box :: 
                      $IsBox($l#0_0_0_1#x#0, List._default.Associativity$A)), 
                    (lambda $l#0_0_0_1#heap#0: Heap, $l#0_0_0_1#x#0: Box :: 
                      SetRef_to_SetBox((lambda $l#0_0_0_1#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_0_0, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
              List._default.Associativity$C, 
              Lit(#List.M.Nil()), 
              Lit(AtLayer((lambda $l#0_0_0_2#ly#0: LayerType :: 
                    Handle1((lambda $l#0_0_0_2#heap#0: Heap, $l#0_0_0_2#x#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#0_0_0_2#heap#0, 
                                f#0, 
                                $l#0_0_0_2#x#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#0_0_0_2#heap#0: Heap, $l#0_0_0_2#x#0: Box :: 
                        $IsBox($l#0_0_0_2#x#0, List._default.Associativity$A)), 
                      (lambda $l#0_0_0_2#heap#0: Heap, $l#0_0_0_2#x#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0_0_0_2#o#0: ref :: false))))), 
                  $LS($LZ))));
            assume (forall $l#0_0_0_3#x#0: Box, $l#0_0_0_3#heap#0: Heap :: 
                $IsBox($l#0_0_0_3#x#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#0_0_0_3#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#0_0_0_3#heap#0, 
                        f#0, 
                        $l#0_0_0_3#x#0)): DatatypeType, 
                    g#0))
               && List.__default.Bind#canCall(List._default.Associativity$A, 
                List._default.Associativity$C, 
                Lit(#List.M.Nil()), 
                Lit(AtLayer((lambda $l#0_0_0_4#ly#0: LayerType :: 
                      Handle1((lambda $l#0_0_0_4#heap#0: Heap, $l#0_0_0_4#x#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#0_0_0_4#heap#0, 
                                  f#0, 
                                  $l#0_0_0_4#x#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#0_0_0_4#heap#0: Heap, $l#0_0_0_4#x#0: Box :: 
                          $IsBox($l#0_0_0_4#x#0, List._default.Associativity$A)), 
                        (lambda $l#0_0_0_4#heap#0: Heap, $l#0_0_0_4#x#0: Box :: 
                          SetRef_to_SetBox((lambda $l#0_0_0_4#o#0: ref :: false))))), 
                    $LS($LZ))));
            // ----- Hint4 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            // ----- assert wf[rhs] ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            ##m#0_0_0_2 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0_0_0_2, Tclass.List.M(List._default.Associativity$A), $Heap);
            // Begin Comprehension WF check
            if (*)
            {
                havoc $lambdaHeap#0_0_0_1;
                assume $IsGoodHeap($lambdaHeap#0_0_0_1);
                assume $Heap == $lambdaHeap#0_0_0_1 || $HeapSucc($Heap, $lambdaHeap#0_0_0_1);
                havoc x#0_0_0_1;
                if ($IsBox(x#0_0_0_1, List._default.Associativity$A)
                   && $IsAllocBox(x#0_0_0_1, List._default.Associativity$A, $lambdaHeap#0_0_0_1))
                {
                    $_Frame#l0_0_0_1 := (lambda $o: ref, $f: Field :: 
                      $o != null && $Unbox(read($lambdaHeap#0_0_0_1, $o, alloc)): bool ==> false);
                    ##m#0_0_0_3 := $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $lambdaHeap#0_0_0_1, 
                        f#0, 
                        x#0_0_0_1)): DatatypeType;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##m#0_0_0_3, Tclass.List.M(List._default.Associativity$B), $lambdaHeap#0_0_0_1);
                    ##f#0_0_0_3 := g#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##f#0_0_0_3, 
                      Tclass._System.___hTotalFunc1(List._default.Associativity$B, Tclass.List.M(List._default.Associativity$C)), 
                      $lambdaHeap#0_0_0_1);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $lambdaHeap#0_0_0_1, 
                          f#0, 
                          x#0_0_0_1)): DatatypeType, 
                      g#0);
                    assume {:id "id170"} lambdaResult#0_0_0_1
                       == List.__default.Bind(List._default.Associativity$B, 
                        List._default.Associativity$C, 
                        $Unbox(Apply1(List._default.Associativity$A, 
                            Tclass.List.M(List._default.Associativity$B), 
                            $Heap, 
                            f#0, 
                            x#0_0_0_1)): DatatypeType, 
                        g#0);
                    assume List.__default.Bind#canCall(List._default.Associativity$B, 
                      List._default.Associativity$C, 
                      $Unbox(Apply1(List._default.Associativity$A, 
                          Tclass.List.M(List._default.Associativity$B), 
                          $Heap, 
                          f#0, 
                          x#0_0_0_1)): DatatypeType, 
                      g#0);
                    // CheckWellformedWithResult: any expression
                    assume $Is(lambdaResult#0_0_0_1, Tclass.List.M(List._default.Associativity$C));
                }

                assume false;
            }

            // End Comprehension WF check
            ##f#0_0_0_2 := Lit(AtLayer((lambda $l#0_0_0_6#ly#0: LayerType :: 
                  Handle1((lambda $l#0_0_0_6#heap#0: Heap, $l#0_0_0_6#x#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#0_0_0_6#heap#0, 
                              f#0, 
                              $l#0_0_0_6#x#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#0_0_0_6#heap#0: Heap, $l#0_0_0_6#x#0: Box :: 
                      $IsBox($l#0_0_0_6#x#0, List._default.Associativity$A)), 
                    (lambda $l#0_0_0_6#heap#0: Heap, $l#0_0_0_6#x#0: Box :: 
                      SetRef_to_SetBox((lambda $l#0_0_0_6#o#0: ref :: false))))), 
                $LS($LZ)));
            // assume allocatedness for argument to function
            assume $IsAlloc(##f#0_0_0_2, 
              Tclass._System.___hTotalFunc1(List._default.Associativity$A, Tclass.List.M(List._default.Associativity$C)), 
              $Heap);
            assume List.__default.Bind#canCall(List._default.Associativity$A, 
              List._default.Associativity$C, 
              m#0, 
              Lit(AtLayer((lambda $l#0_0_0_7#ly#0: LayerType :: 
                    Handle1((lambda $l#0_0_0_7#heap#0: Heap, $l#0_0_0_7#x#0: Box :: 
                        $Box(List.__default.Bind(List._default.Associativity$B, 
                            List._default.Associativity$C, 
                            $Unbox(Apply1(List._default.Associativity$A, 
                                Tclass.List.M(List._default.Associativity$B), 
                                $l#0_0_0_7#heap#0, 
                                f#0, 
                                $l#0_0_0_7#x#0)): DatatypeType, 
                            g#0))), 
                      (lambda $l#0_0_0_7#heap#0: Heap, $l#0_0_0_7#x#0: Box :: 
                        $IsBox($l#0_0_0_7#x#0, List._default.Associativity$A)), 
                      (lambda $l#0_0_0_7#heap#0: Heap, $l#0_0_0_7#x#0: Box :: 
                        SetRef_to_SetBox((lambda $l#0_0_0_7#o#0: ref :: false))))), 
                  $LS($LZ))));
            assume (forall $l#0_0_0_8#x#0: Box, $l#0_0_0_8#heap#0: Heap :: 
                $IsBox($l#0_0_0_8#x#0, List._default.Associativity$A)
                     && $IsGoodHeap($l#0_0_0_8#heap#0)
                   ==> List.__default.Bind#canCall(List._default.Associativity$B, 
                    List._default.Associativity$C, 
                    $Unbox(Apply1(List._default.Associativity$A, 
                        Tclass.List.M(List._default.Associativity$B), 
                        $l#0_0_0_8#heap#0, 
                        f#0, 
                        $l#0_0_0_8#x#0)): DatatypeType, 
                    g#0))
               && List.__default.Bind#canCall(List._default.Associativity$A, 
                List._default.Associativity$C, 
                m#0, 
                Lit(AtLayer((lambda $l#0_0_0_9#ly#0: LayerType :: 
                      Handle1((lambda $l#0_0_0_9#heap#0: Heap, $l#0_0_0_9#x#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#0_0_0_9#heap#0, 
                                  f#0, 
                                  $l#0_0_0_9#x#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#0_0_0_9#heap#0: Heap, $l#0_0_0_9#x#0: Box :: 
                          $IsBox($l#0_0_0_9#x#0, List._default.Associativity$A)), 
                        (lambda $l#0_0_0_9#heap#0: Heap, $l#0_0_0_9#x#0: Box :: 
                          SetRef_to_SetBox((lambda $l#0_0_0_9#o#0: ref :: false))))), 
                    $LS($LZ))));
            // ----- assert line4 == line5 ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/hofs/Monads.dfy(187,7)
            assert {:id "id171"} {:subsumption 0} List.M#Equal(List.__default.Bind(List._default.Associativity$A, 
                List._default.Associativity$C, 
                Lit(#List.M.Nil()), 
                Lit(AtLayer((lambda $l#0_0_0_12#ly#0: LayerType :: 
                      Handle1((lambda $l#0_0_0_12#heap#0: Heap, $l#0_0_0_12#x#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#0_0_0_12#heap#0, 
                                  f#0, 
                                  $l#0_0_0_12#x#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#0_0_0_12#heap#0: Heap, $l#0_0_0_12#x#0: Box :: 
                          $IsBox($l#0_0_0_12#x#0, List._default.Associativity$A)), 
                        (lambda $l#0_0_0_12#heap#0: Heap, $l#0_0_0_12#x#0: Box :: 
                          SetRef_to_SetBox((lambda $l#0_0_0_12#o#0: ref :: false))))), 
                    $LS($LZ)))), 
              List.__default.Bind(List._default.Associativity$A, 
                List._default.Associativity$C, 
                m#0, 
                Lit(AtLayer((lambda $l#0_0_0_13#ly#0: LayerType :: 
                      Handle1((lambda $l#0_0_0_13#heap#0: Heap, $l#0_0_0_13#x#0: Box :: 
                          $Box(List.__default.Bind(List._default.Associativity$B, 
                              List._default.Associativity$C, 
                              $Unbox(Apply1(List._default.Associativity$A, 
                                  Tclass.List.M(List._default.Associativity$B), 
                                  $l#0_0_0_13#heap#0, 
                                  f#0, 
                                  $l#0_0_0_13#x#0)): DatatypeType, 
                              g#0))), 
                        (lambda $l#0_0_0_13#heap#0: Heap, $l#0_0_0_13#x#0: Box :: 
                          $IsBox($l#0_0_0_13#x#0, List._default.Associativity$A)), 
                        (lambda $l#0_0_0_13#heap#0: Heap, $l#0_0_0_13#x#0: Box :: 
                          SetRef_to_SetBox((lambda $l#0_0_0_13#o#0: ref :: false))))), 
                    $LS($LZ)))));
            assume false;
        }

        assume {:id "id177"} List.M#Equal(List.__default.Bind(List._default.Associativity$B, 
            List._default.Associativity$C, 
            List.__default.Bind(List._default.Associativity$A, List._default.Associativity$B, m#0, f#0), 
            g#0), 
          List.__default.Bind(List._default.Associativity$A, 
            List._default.Associativity$C, 
            m#0, 
            Lit(AtLayer((lambda $l#0_0_0#ly#0: LayerType :: 
                  Handle1((lambda $l#0_0_0#heap#0: Heap, $l#0_0_0#x#0: Box :: 
                      $Box(List.__default.Bind(List._default.Associativity$B, 
                          List._default.Associativity$C, 
                          $Unbox(Apply1(List._default.Associativity$A, 
                              Tclass.List.M(List._default.Associativity$B), 
                              $l#0_0_0#heap#0, 
                              f#0, 
                              $l#0_0_0#x#0)): DatatypeType, 
                          g#0))), 
                    (lambda $l#0_0_0#heap#0: Heap, $l#0_0_0#x#0: Box :: 
                      $IsBox($l#0_0_0#x#0, List._default.Associativity$A)), 
                    (lambda $l#0_0_0#heap#0: Heap, $l#0_0_0#x#0: Box :: 
                      SetRef_to_SetBox((lambda $l#0_0_0#o#0: ref :: false))))), 
                $LS($LZ)))));
    }
    else
    {
        assume false;
    }
}



// Constructor function declaration
function #List.M.Cons(Box, DatatypeType) : DatatypeType;

const unique ##List.M.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: DatatypeType :: 
  { #List.M.Cons(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#List.M.Cons(a#0#0#0, a#0#1#0)) == ##List.M.Cons);
}

function List.M.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { List.M.Cons_q(d) } 
  List.M.Cons_q(d) <==> DatatypeCtorId(d) == ##List.M.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { List.M.Cons_q(d) } 
  List.M.Cons_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: DatatypeType :: 
      d == #List.M.Cons(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall List.M$A: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType :: 
  { $Is(#List.M.Cons(a#2#0#0, a#2#1#0), Tclass.List.M(List.M$A)) } 
  $Is(#List.M.Cons(a#2#0#0, a#2#1#0), Tclass.List.M(List.M$A))
     <==> $IsBox(a#2#0#0, List.M$A) && $Is(a#2#1#0, Tclass.List.M(List.M$A)));

// Constructor $IsAlloc
axiom (forall List.M$A: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#List.M.Cons(a#2#0#0, a#2#1#0), Tclass.List.M(List.M$A), $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#List.M.Cons(a#2#0#0, a#2#1#0), Tclass.List.M(List.M$A), $h)
       <==> $IsAllocBox(a#2#0#0, List.M$A, $h)
         && $IsAlloc(a#2#1#0, Tclass.List.M(List.M$A), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, List.M$A: Ty, $h: Heap :: 
  { $IsAllocBox(List.M.hd(d), List.M$A, $h) } 
  $IsGoodHeap($h) && List.M.Cons_q(d) && $IsAlloc(d, Tclass.List.M(List.M$A), $h)
     ==> $IsAllocBox(List.M.hd(d), List.M$A, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, List.M$A: Ty, $h: Heap :: 
  { $IsAlloc(List.M.tl(d), Tclass.List.M(List.M$A), $h) } 
  $IsGoodHeap($h) && List.M.Cons_q(d) && $IsAlloc(d, Tclass.List.M(List.M$A), $h)
     ==> $IsAlloc(List.M.tl(d), Tclass.List.M(List.M$A), $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #List.M.Cons(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #List.M.Cons(Lit(a#3#0#0), Lit(a#3#1#0)) == Lit(#List.M.Cons(a#3#0#0, a#3#1#0)));

function List.M.hd(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #List.M.Cons(a#4#0#0, a#4#1#0) } 
  List.M.hd(#List.M.Cons(a#4#0#0, a#4#1#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: DatatypeType :: 
  { #List.M.Cons(a#5#0#0, a#5#1#0) } 
  BoxRank(a#5#0#0) < DtRank(#List.M.Cons(a#5#0#0, a#5#1#0)));

function List.M.tl(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { #List.M.Cons(a#6#0#0, a#6#1#0) } 
  List.M.tl(#List.M.Cons(a#6#0#0, a#6#1#0)) == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #List.M.Cons(a#7#0#0, a#7#1#0) } 
  DtRank(a#7#1#0) < DtRank(#List.M.Cons(a#7#0#0, a#7#1#0)));

// Constructor function declaration
function #List.M.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#List.M.Nil()) == ##List.M.Nil;
// Constructor literal
axiom #List.M.Nil() == Lit(#List.M.Nil());
}

const unique ##List.M.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#List.M.Nil()) == ##List.M.Nil;
}

function List.M.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { List.M.Nil_q(d) } 
  List.M.Nil_q(d) <==> DatatypeCtorId(d) == ##List.M.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { List.M.Nil_q(d) } 
  List.M.Nil_q(d) ==> d == #List.M.Nil());

// Constructor $Is
axiom (forall List.M$A: Ty :: 
  { $Is(#List.M.Nil(), Tclass.List.M(List.M$A)) } 
  $Is(#List.M.Nil(), Tclass.List.M(List.M$A)));

// Constructor $IsAlloc
axiom (forall List.M$A: Ty, $h: Heap :: 
  { $IsAlloc(#List.M.Nil(), Tclass.List.M(List.M$A), $h) } 
  $IsGoodHeap($h) ==> $IsAlloc(#List.M.Nil(), Tclass.List.M(List.M$A), $h));

// Depth-one case-split function
function $IsA#List.M(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#List.M(d) } 
  $IsA#List.M(d) ==> List.M.Cons_q(d) || List.M.Nil_q(d));

// Questionmark data type disjunctivity
axiom (forall List.M$A: Ty, d: DatatypeType :: 
  { List.M.Nil_q(d), $Is(d, Tclass.List.M(List.M$A)) } 
    { List.M.Cons_q(d), $Is(d, Tclass.List.M(List.M$A)) } 
  $Is(d, Tclass.List.M(List.M$A)) ==> List.M.Cons_q(d) || List.M.Nil_q(d));

// Datatype extensional equality declaration
function List.M#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #List.M.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { List.M#Equal(a, b), List.M.Cons_q(a) } 
    { List.M#Equal(a, b), List.M.Cons_q(b) } 
  List.M.Cons_q(a) && List.M.Cons_q(b)
     ==> (List.M#Equal(a, b)
       <==> List.M.hd(a) == List.M.hd(b) && List.M#Equal(List.M.tl(a), List.M.tl(b))));

// Datatype extensional equality definition: #List.M.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { List.M#Equal(a, b), List.M.Nil_q(a) } { List.M#Equal(a, b), List.M.Nil_q(b) } 
  List.M.Nil_q(a) && List.M.Nil_q(b) ==> List.M#Equal(a, b));

// Datatype extensionality axiom: List.M
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { List.M#Equal(a, b) } 
  List.M#Equal(a, b) <==> a == b);

const unique class.List.M: ClassName;

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

const unique tytagFamily$M: TyTagFamily;
