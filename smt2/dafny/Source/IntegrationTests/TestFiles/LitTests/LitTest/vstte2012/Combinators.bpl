// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators-@PROC@.smt2 /normalizeNames:0 /emitDebugInformation:1 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy

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

const unique class._module.__default: ClassName;

// function declaration for _module._default.IsValue
function _module.__default.IsValue($ly: LayerType, t#0: DatatypeType) : bool
uses {
// consequence axiom for _module.__default.IsValue
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.IsValue($ly, t#0) } 
    _module.__default.IsValue#canCall(t#0)
         || (1 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> 
      _module.__default.IsValue($ly, t#0) && _module.Term.Apply_q(t#0)
       ==> _module.__default.IsValue($ly, _module.Term.car(t#0))
         && _module.__default.IsValue($ly, _module.Term.cdr(t#0)));
// definition axiom for _module.__default.IsValue (revealed)
axiom {:id "id0"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.IsValue($LS($ly), t#0) } 
    _module.__default.IsValue#canCall(t#0)
         || (1 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (!_module.Term.S_q(t#0)
           ==> 
          !_module.Term.K_q(t#0)
           ==> (var b#1 := _module.Term.cdr(t#0); 
            (var a#1 := _module.Term.car(t#0); 
              (_module.Term.S_q(a#1) ==> _module.__default.IsValue#canCall(b#1))
                 && (!_module.Term.S_q(a#1)
                   ==> (_module.Term.K_q(a#1) ==> _module.__default.IsValue#canCall(b#1))
                     && (!_module.Term.K_q(a#1)
                       ==> (var y#1 := _module.Term.cdr(a#1); 
                        (var x#1 := _module.Term.car(a#1); 
                          $IsA#_module.Term(x#1)
                             && (_module.Term#Equal(x#1, #_module.Term.S())
                               ==> _module.__default.IsValue#canCall(y#1)
                                 && (_module.__default.IsValue($ly, y#1) ==> _module.__default.IsValue#canCall(b#1))))))))))
         && _module.__default.IsValue($LS($ly), t#0)
           == (if _module.Term.S_q(t#0)
             then true
             else (if _module.Term.K_q(t#0)
               then true
               else (var b#0 := _module.Term.cdr(t#0); 
                (var a#0 := _module.Term.car(t#0); 
                  (if _module.Term.S_q(a#0)
                     then _module.__default.IsValue($ly, b#0)
                     else (if _module.Term.K_q(a#0)
                       then _module.__default.IsValue($ly, b#0)
                       else (var y#0 := _module.Term.cdr(a#0); 
                        (var x#0 := _module.Term.car(a#0); 
                          _module.Term#Equal(x#0, #_module.Term.S())
                             && _module.__default.IsValue($ly, y#0)
                             && _module.__default.IsValue($ly, b#0))))))))));
// definition axiom for _module.__default.IsValue for all literals (revealed)
axiom {:id "id1"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsValue($LS($ly), Lit(t#0)) } 
    _module.__default.IsValue#canCall(Lit(t#0))
         || (1 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (!Lit(_module.Term.S_q(Lit(t#0)))
           ==> 
          !Lit(_module.Term.K_q(Lit(t#0)))
           ==> (var b#3 := Lit(_module.Term.cdr(Lit(t#0))); 
            (var a#3 := Lit(_module.Term.car(Lit(t#0))); 
              (_module.Term.S_q(a#3) ==> _module.__default.IsValue#canCall(b#3))
                 && (!_module.Term.S_q(a#3)
                   ==> (_module.Term.K_q(a#3) ==> _module.__default.IsValue#canCall(b#3))
                     && (!_module.Term.K_q(a#3)
                       ==> (var y#3 := _module.Term.cdr(a#3); 
                        (var x#3 := _module.Term.car(a#3); 
                          $IsA#_module.Term(x#3)
                             && (_module.Term#Equal(x#3, #_module.Term.S())
                               ==> _module.__default.IsValue#canCall(y#3)
                                 && (_module.__default.IsValue($LS($ly), y#3)
                                   ==> _module.__default.IsValue#canCall(b#3))))))))))
         && _module.__default.IsValue($LS($ly), Lit(t#0))
           == (if _module.Term.S_q(Lit(t#0))
             then true
             else (if _module.Term.K_q(Lit(t#0))
               then true
               else (var b#2 := Lit(_module.Term.cdr(Lit(t#0))); 
                (var a#2 := Lit(_module.Term.car(Lit(t#0))); 
                  (if _module.Term.S_q(a#2)
                     then _module.__default.IsValue($LS($ly), b#2)
                     else (if _module.Term.K_q(a#2)
                       then _module.__default.IsValue($LS($ly), b#2)
                       else (var y#2 := Lit(_module.Term.cdr(a#2)); 
                        (var x#2 := Lit(_module.Term.car(a#2)); 
                          _module.Term#Equal(x#2, #_module.Term.S())
                             && _module.__default.IsValue($LS($ly), y#2)
                             && _module.__default.IsValue($LS($ly), b#2))))))))));
}

function _module.__default.IsValue#canCall(t#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.IsValue($LS($ly), t#0) } 
  _module.__default.IsValue($LS($ly), t#0) == _module.__default.IsValue($ly, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.IsValue(AsFuelBottom($ly), t#0) } 
  _module.__default.IsValue($ly, t#0) == _module.__default.IsValue($LZ, t#0));

function Tclass._module.Term() : Ty
uses {
// Tclass._module.Term Tag
axiom Tag(Tclass._module.Term()) == Tagclass._module.Term
   && TagFamily(Tclass._module.Term()) == tytagFamily$Term;
}

const unique Tagclass._module.Term: TyTag;

// Box/unbox axiom for Tclass._module.Term
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Term()) } 
  $IsBox(bx, Tclass._module.Term())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Term()));

function _module.__default.IsValue#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.IsValue
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.IsValue#requires($ly, t#0) } 
  $Is(t#0, Tclass._module.Term())
     ==> _module.__default.IsValue#requires($ly, t#0) == true);

procedure {:verboseName "IsValue (well-formedness)"} CheckWellformed$$_module.__default.IsValue(t#0: DatatypeType where $Is(t#0, Tclass._module.Term()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id2"} _module.__default.IsValue($LS($LZ), t#0) && _module.Term.Apply_q(t#0)
     ==> _module.__default.IsValue($LS($LS($LZ)), _module.Term.car(t#0));
  ensures {:id "id3"} _module.__default.IsValue($LS($LZ), t#0) && _module.Term.Apply_q(t#0)
     ==> _module.__default.IsValue($LS($LS($LZ)), _module.Term.cdr(t#0));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IsValue (well-formedness)"} CheckWellformed$$_module.__default.IsValue(t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##t#0: DatatypeType;
  var ##t#1: DatatypeType;
  var ##t#2: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var b#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var a#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var x#Z#0: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##t#3: DatatypeType;
  var ##t#4: DatatypeType;
  var ##t#5: DatatypeType;
  var ##t#6: DatatypeType;
  var ##t#7: DatatypeType;
  var ##t#8: DatatypeType;
  var ##t#9: DatatypeType;
  var ##t#10: DatatypeType;
  var ##t#11: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        if (*)
        {
            ##t#0 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
            assert {:id "id4"} _module.Term#Equal(t#0, t#0) || DtRank(##t#0) < DtRank(t#0);
            assume _module.Term#Equal(t#0, t#0) || _module.__default.IsValue#canCall(t#0);
            assume {:id "id5"} _module.__default.IsValue($LS($LZ), t#0);
            assume {:id "id6"} _module.Term.Apply_q(t#0);
            assert {:id "id7"} _module.Term.Apply_q(t#0);
            ##t#1 := _module.Term.car(t#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
            assert {:id "id8"} _module.Term#Equal(_module.Term.car(t#0), t#0) || DtRank(##t#1) < DtRank(t#0);
            assume _module.Term#Equal(_module.Term.car(t#0), t#0)
               || _module.__default.IsValue#canCall(_module.Term.car(t#0));
            assume {:id "id9"} _module.__default.IsValue($LS($LZ), _module.Term.car(t#0));
            assert {:id "id10"} _module.Term.Apply_q(t#0);
            ##t#2 := _module.Term.cdr(t#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#2, Tclass._module.Term(), $Heap);
            assert {:id "id11"} _module.Term#Equal(_module.Term.cdr(t#0), t#0) || DtRank(##t#2) < DtRank(t#0);
            assume _module.Term#Equal(_module.Term.cdr(t#0), t#0)
               || _module.__default.IsValue#canCall(_module.Term.cdr(t#0));
            assume {:id "id12"} _module.__default.IsValue($LS($LZ), _module.Term.cdr(t#0));
        }
        else
        {
            assume {:id "id13"} _module.__default.IsValue($LS($LZ), t#0) && _module.Term.Apply_q(t#0)
               ==> _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                 && _module.__default.IsValue($LS($LZ), _module.Term.cdr(t#0));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (t#0 == #_module.Term.S())
        {
            assume {:id "id59"} _module.__default.IsValue($LS($LZ), t#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.IsValue($LS($LZ), t#0), TBool);
            return;
        }
        else if (t#0 == #_module.Term.K())
        {
            assume {:id "id58"} _module.__default.IsValue($LS($LZ), t#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.IsValue($LS($LZ), t#0), TBool);
            return;
        }
        else if (t#0 == #_module.Term.Apply(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Term());
            assume $Is(_mcc#1#0, Tclass._module.Term());
            havoc b#Z#0;
            assume {:id "id14"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Term());
            assume {:id "id15"} b#Z#0 == let#0#0#0;
            havoc a#Z#0;
            assume {:id "id16"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Term());
            assume {:id "id17"} a#Z#0 == let#1#0#0;
            if (a#Z#0 == #_module.Term.S())
            {
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(33,7)
                ##t#10 := a#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#10, Tclass._module.Term(), $Heap);
                assert {:id "id47"} DtRank(##t#10) < DtRank(t#0);
                assume _module.__default.IsValue#canCall(a#Z#0);
                assume _module.__default.IsValue#canCall(a#Z#0);
                assert {:id "id48"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (_module.Term.S_q(a#Z#0) ==> Lit(true));
                assert {:id "id49"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0) ==> _module.Term.K_q(a#Z#0) ==> Lit(true));
                assert {:id "id50"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#8 := _module.Term.cdr(a#Z#0); 
                        (var a#8 := _module.Term.car(a#Z#0); 
                          _module.Term.S_q(a#8)
                             ==> 
                            _module.__default.IsValue($LS($LZ), a#8)
                             ==> _module.__default.IsValue($LS($LS($LZ)), b#8))));
                assert {:id "id51"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#8 := _module.Term.cdr(a#Z#0); 
                        (var a#8 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#8)
                             ==> 
                            _module.Term.K_q(a#8)
                             ==> 
                            _module.__default.IsValue($LS($LZ), a#8)
                             ==> _module.__default.IsValue($LS($LS($LZ)), b#8))));
                assert {:id "id52"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#8 := _module.Term.cdr(a#Z#0); 
                        (var a#8 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#8)
                             ==> 
                            !_module.Term.K_q(a#8)
                             ==> (var y#8 := _module.Term.cdr(a#8); 
                              (var x#8 := _module.Term.car(a#8); 
                                (_module.Term#Equal(x#8, #_module.Term.S())
                                     && _module.__default.IsValue($LS($LZ), y#8)
                                     && _module.__default.IsValue($LS($LZ), b#8)
                                   ==> _module.__default.IsValue($LS($LZ), a#8))
                                   ==> _module.Term#Equal(x#8, #_module.Term.S()))))));
                assert {:id "id53"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#8 := _module.Term.cdr(a#Z#0); 
                        (var a#8 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#8)
                             ==> 
                            !_module.Term.K_q(a#8)
                             ==> (var y#8 := _module.Term.cdr(a#8); 
                              (var x#8 := _module.Term.car(a#8); 
                                (_module.Term#Equal(x#8, #_module.Term.S())
                                     && _module.__default.IsValue($LS($LZ), y#8)
                                     && _module.__default.IsValue($LS($LZ), b#8)
                                   ==> _module.__default.IsValue($LS($LZ), a#8))
                                   ==> _module.__default.IsValue($LS($LS($LZ)), y#8))))));
                assert {:id "id54"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#8 := _module.Term.cdr(a#Z#0); 
                        (var a#8 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#8)
                             ==> 
                            !_module.Term.K_q(a#8)
                             ==> (var y#8 := _module.Term.cdr(a#8); 
                              (var x#8 := _module.Term.car(a#8); 
                                (_module.Term#Equal(x#8, #_module.Term.S())
                                     && _module.__default.IsValue($LS($LZ), y#8)
                                     && _module.__default.IsValue($LS($LZ), b#8)
                                   ==> _module.__default.IsValue($LS($LZ), a#8))
                                   ==> _module.__default.IsValue($LS($LS($LZ)), b#8))))));
                assume {:id "id55"} _module.__default.IsValue($LS($LZ), a#Z#0);
                ##t#11 := b#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#11, Tclass._module.Term(), $Heap);
                assert {:id "id56"} DtRank(##t#11) < DtRank(t#0);
                assume _module.__default.IsValue#canCall(b#Z#0);
                assume {:id "id57"} _module.__default.IsValue($LS($LZ), t#0)
                   == _module.__default.IsValue($LS($LZ), b#Z#0);
                assume _module.__default.IsValue#canCall(b#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.IsValue($LS($LZ), t#0), TBool);
                return;
            }
            else if (a#Z#0 == #_module.Term.K())
            {
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(30,7)
                ##t#8 := a#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#8, Tclass._module.Term(), $Heap);
                assert {:id "id36"} DtRank(##t#8) < DtRank(t#0);
                assume _module.__default.IsValue#canCall(a#Z#0);
                assume _module.__default.IsValue#canCall(a#Z#0);
                assert {:id "id37"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (_module.Term.S_q(a#Z#0) ==> Lit(true));
                assert {:id "id38"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0) ==> _module.Term.K_q(a#Z#0) ==> Lit(true));
                assert {:id "id39"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#6 := _module.Term.cdr(a#Z#0); 
                        (var a#6 := _module.Term.car(a#Z#0); 
                          _module.Term.S_q(a#6)
                             ==> 
                            _module.__default.IsValue($LS($LZ), a#6)
                             ==> _module.__default.IsValue($LS($LS($LZ)), b#6))));
                assert {:id "id40"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#6 := _module.Term.cdr(a#Z#0); 
                        (var a#6 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#6)
                             ==> 
                            _module.Term.K_q(a#6)
                             ==> 
                            _module.__default.IsValue($LS($LZ), a#6)
                             ==> _module.__default.IsValue($LS($LS($LZ)), b#6))));
                assert {:id "id41"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#6 := _module.Term.cdr(a#Z#0); 
                        (var a#6 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#6)
                             ==> 
                            !_module.Term.K_q(a#6)
                             ==> (var y#6 := _module.Term.cdr(a#6); 
                              (var x#6 := _module.Term.car(a#6); 
                                (_module.Term#Equal(x#6, #_module.Term.S())
                                     && _module.__default.IsValue($LS($LZ), y#6)
                                     && _module.__default.IsValue($LS($LZ), b#6)
                                   ==> _module.__default.IsValue($LS($LZ), a#6))
                                   ==> _module.Term#Equal(x#6, #_module.Term.S()))))));
                assert {:id "id42"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#6 := _module.Term.cdr(a#Z#0); 
                        (var a#6 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#6)
                             ==> 
                            !_module.Term.K_q(a#6)
                             ==> (var y#6 := _module.Term.cdr(a#6); 
                              (var x#6 := _module.Term.car(a#6); 
                                (_module.Term#Equal(x#6, #_module.Term.S())
                                     && _module.__default.IsValue($LS($LZ), y#6)
                                     && _module.__default.IsValue($LS($LZ), b#6)
                                   ==> _module.__default.IsValue($LS($LZ), a#6))
                                   ==> _module.__default.IsValue($LS($LS($LZ)), y#6))))));
                assert {:id "id43"} {:subsumption 0} _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#6 := _module.Term.cdr(a#Z#0); 
                        (var a#6 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#6)
                             ==> 
                            !_module.Term.K_q(a#6)
                             ==> (var y#6 := _module.Term.cdr(a#6); 
                              (var x#6 := _module.Term.car(a#6); 
                                (_module.Term#Equal(x#6, #_module.Term.S())
                                     && _module.__default.IsValue($LS($LZ), y#6)
                                     && _module.__default.IsValue($LS($LZ), b#6)
                                   ==> _module.__default.IsValue($LS($LZ), a#6))
                                   ==> _module.__default.IsValue($LS($LS($LZ)), b#6))))));
                assume {:id "id44"} _module.__default.IsValue($LS($LZ), a#Z#0);
                ##t#9 := b#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#9, Tclass._module.Term(), $Heap);
                assert {:id "id45"} DtRank(##t#9) < DtRank(t#0);
                assume _module.__default.IsValue#canCall(b#Z#0);
                assume {:id "id46"} _module.__default.IsValue($LS($LZ), t#0)
                   == _module.__default.IsValue($LS($LZ), b#Z#0);
                assume _module.__default.IsValue#canCall(b#Z#0);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.IsValue($LS($LZ), t#0), TBool);
                return;
            }
            else if (a#Z#0 == #_module.Term.Apply(_mcc#2#0, _mcc#3#0))
            {
                assume $Is(_mcc#2#0, Tclass._module.Term());
                assume $Is(_mcc#3#0, Tclass._module.Term());
                havoc y#Z#0;
                assume {:id "id18"} let#2#0#0 == _mcc#3#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, Tclass._module.Term());
                assume {:id "id19"} y#Z#0 == let#2#0#0;
                havoc x#Z#0;
                assume {:id "id20"} let#3#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#3#0#0, Tclass._module.Term());
                assume {:id "id21"} x#Z#0 == let#3#0#0;
                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(36,7)
                if (_module.Term#Equal(x#Z#0, #_module.Term.S()))
                {
                    ##t#3 := y#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#3, Tclass._module.Term(), $Heap);
                    assert {:id "id22"} DtRank(##t#3) < DtRank(t#0);
                    assume _module.__default.IsValue#canCall(y#Z#0);
                }

                if (_module.Term#Equal(x#Z#0, #_module.Term.S())
                   && _module.__default.IsValue($LS($LZ), y#Z#0))
                {
                    ##t#4 := b#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#4, Tclass._module.Term(), $Heap);
                    assert {:id "id23"} DtRank(##t#4) < DtRank(t#0);
                    assume _module.__default.IsValue#canCall(b#Z#0);
                }

                if (_module.Term#Equal(x#Z#0, #_module.Term.S())
                   && _module.__default.IsValue($LS($LZ), y#Z#0)
                   && _module.__default.IsValue($LS($LZ), b#Z#0))
                {
                    ##t#5 := a#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#5, Tclass._module.Term(), $Heap);
                    assert {:id "id24"} DtRank(##t#5) < DtRank(t#0);
                    assume _module.__default.IsValue#canCall(a#Z#0);
                }

                assume $IsA#_module.Term(x#Z#0)
                   && (_module.Term#Equal(x#Z#0, #_module.Term.S())
                     ==> _module.__default.IsValue#canCall(y#Z#0)
                       && (_module.__default.IsValue($LS($LZ), y#Z#0)
                         ==> _module.__default.IsValue#canCall(b#Z#0)
                           && (_module.__default.IsValue($LS($LZ), b#Z#0)
                             ==> _module.__default.IsValue#canCall(a#Z#0))));
                assert {:id "id25"} {:subsumption 0} _module.Term#Equal(x#Z#0, #_module.Term.S())
                     && _module.__default.IsValue($LS($LZ), y#Z#0)
                     && _module.__default.IsValue($LS($LZ), b#Z#0)
                   ==> 
                  _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (_module.Term.S_q(a#Z#0) ==> Lit(true));
                assert {:id "id26"} {:subsumption 0} _module.Term#Equal(x#Z#0, #_module.Term.S())
                     && _module.__default.IsValue($LS($LZ), y#Z#0)
                     && _module.__default.IsValue($LS($LZ), b#Z#0)
                   ==> 
                  _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0) ==> _module.Term.K_q(a#Z#0) ==> Lit(true));
                assert {:id "id27"} {:subsumption 0} _module.Term#Equal(x#Z#0, #_module.Term.S())
                     && _module.__default.IsValue($LS($LZ), y#Z#0)
                     && _module.__default.IsValue($LS($LZ), b#Z#0)
                   ==> 
                  _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#4 := _module.Term.cdr(a#Z#0); 
                        (var a#4 := _module.Term.car(a#Z#0); 
                          _module.Term.S_q(a#4)
                             ==> 
                            _module.__default.IsValue($LS($LZ), a#4)
                             ==> _module.__default.IsValue($LS($LS($LZ)), b#4))));
                assert {:id "id28"} {:subsumption 0} _module.Term#Equal(x#Z#0, #_module.Term.S())
                     && _module.__default.IsValue($LS($LZ), y#Z#0)
                     && _module.__default.IsValue($LS($LZ), b#Z#0)
                   ==> 
                  _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#4 := _module.Term.cdr(a#Z#0); 
                        (var a#4 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#4)
                             ==> 
                            _module.Term.K_q(a#4)
                             ==> 
                            _module.__default.IsValue($LS($LZ), a#4)
                             ==> _module.__default.IsValue($LS($LS($LZ)), b#4))));
                assert {:id "id29"} {:subsumption 0} _module.Term#Equal(x#Z#0, #_module.Term.S())
                     && _module.__default.IsValue($LS($LZ), y#Z#0)
                     && _module.__default.IsValue($LS($LZ), b#Z#0)
                   ==> 
                  _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#4 := _module.Term.cdr(a#Z#0); 
                        (var a#4 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#4)
                             ==> 
                            !_module.Term.K_q(a#4)
                             ==> (var y#4 := _module.Term.cdr(a#4); 
                              (var x#4 := _module.Term.car(a#4); 
                                (_module.Term#Equal(x#4, #_module.Term.S())
                                     && _module.__default.IsValue($LS($LZ), y#4)
                                     && _module.__default.IsValue($LS($LZ), b#4)
                                   ==> _module.__default.IsValue($LS($LZ), a#4))
                                   ==> _module.Term#Equal(x#4, #_module.Term.S()))))));
                assert {:id "id30"} {:subsumption 0} _module.Term#Equal(x#Z#0, #_module.Term.S())
                     && _module.__default.IsValue($LS($LZ), y#Z#0)
                     && _module.__default.IsValue($LS($LZ), b#Z#0)
                   ==> 
                  _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#4 := _module.Term.cdr(a#Z#0); 
                        (var a#4 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#4)
                             ==> 
                            !_module.Term.K_q(a#4)
                             ==> (var y#4 := _module.Term.cdr(a#4); 
                              (var x#4 := _module.Term.car(a#4); 
                                (_module.Term#Equal(x#4, #_module.Term.S())
                                     && _module.__default.IsValue($LS($LZ), y#4)
                                     && _module.__default.IsValue($LS($LZ), b#4)
                                   ==> _module.__default.IsValue($LS($LZ), a#4))
                                   ==> _module.__default.IsValue($LS($LS($LZ)), y#4))))));
                assert {:id "id31"} {:subsumption 0} _module.Term#Equal(x#Z#0, #_module.Term.S())
                     && _module.__default.IsValue($LS($LZ), y#Z#0)
                     && _module.__default.IsValue($LS($LZ), b#Z#0)
                   ==> 
                  _module.__default.IsValue#canCall(a#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0)
                     || (!_module.Term.S_q(a#Z#0)
                       ==> 
                      !_module.Term.K_q(a#Z#0)
                       ==> (var b#4 := _module.Term.cdr(a#Z#0); 
                        (var a#4 := _module.Term.car(a#Z#0); 
                          !_module.Term.S_q(a#4)
                             ==> 
                            !_module.Term.K_q(a#4)
                             ==> (var y#4 := _module.Term.cdr(a#4); 
                              (var x#4 := _module.Term.car(a#4); 
                                (_module.Term#Equal(x#4, #_module.Term.S())
                                     && _module.__default.IsValue($LS($LZ), y#4)
                                     && _module.__default.IsValue($LS($LZ), b#4)
                                   ==> _module.__default.IsValue($LS($LZ), a#4))
                                   ==> _module.__default.IsValue($LS($LS($LZ)), b#4))))));
                assume {:id "id32"} _module.Term#Equal(x#Z#0, #_module.Term.S())
                     && _module.__default.IsValue($LS($LZ), y#Z#0)
                     && _module.__default.IsValue($LS($LZ), b#Z#0)
                   ==> _module.__default.IsValue($LS($LZ), a#Z#0);
                if (_module.Term#Equal(x#Z#0, #_module.Term.S()))
                {
                    ##t#6 := y#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#6, Tclass._module.Term(), $Heap);
                    assert {:id "id33"} DtRank(##t#6) < DtRank(t#0);
                    assume _module.__default.IsValue#canCall(y#Z#0);
                }

                if (_module.Term#Equal(x#Z#0, #_module.Term.S())
                   && _module.__default.IsValue($LS($LZ), y#Z#0))
                {
                    ##t#7 := b#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#7, Tclass._module.Term(), $Heap);
                    assert {:id "id34"} DtRank(##t#7) < DtRank(t#0);
                    assume _module.__default.IsValue#canCall(b#Z#0);
                }

                assume {:id "id35"} _module.__default.IsValue($LS($LZ), t#0)
                   == (
                    _module.Term#Equal(x#Z#0, #_module.Term.S())
                     && _module.__default.IsValue($LS($LZ), y#Z#0)
                     && _module.__default.IsValue($LS($LZ), b#Z#0));
                assume $IsA#_module.Term(x#Z#0)
                   && (_module.Term#Equal(x#Z#0, #_module.Term.S())
                     ==> _module.__default.IsValue#canCall(y#Z#0)
                       && (_module.__default.IsValue($LS($LZ), y#Z#0)
                         ==> _module.__default.IsValue#canCall(b#Z#0)));
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.IsValue($LS($LZ), t#0), TBool);
                return;
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.IsContext
function _module.__default.IsContext($ly: LayerType, C#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.IsContext (revealed)
axiom {:id "id60"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, C#0: DatatypeType :: 
    { _module.__default.IsContext($LS($ly), C#0) } 
    _module.__default.IsContext#canCall(C#0)
         || (2 < $FunctionContextHeight && $Is(C#0, Tclass._module.Context()))
       ==> (!_module.Context.Hole_q(C#0)
           ==> (_module.Context.C__term_q(C#0)
               ==> (var D#2 := _module.Context._h0(C#0); _module.__default.IsContext#canCall(D#2)))
             && (!_module.Context.C__term_q(C#0)
               ==> (var D#3 := _module.Context._h3(C#0); 
                (var v#1 := _module.Context._h2(C#0); 
                  _module.__default.IsValue#canCall(v#1)
                     && (_module.__default.IsValue($LS($LZ), v#1)
                       ==> _module.__default.IsContext#canCall(D#3))))))
         && _module.__default.IsContext($LS($ly), C#0)
           == (if _module.Context.Hole_q(C#0)
             then true
             else (if _module.Context.C__term_q(C#0)
               then (var t#0 := _module.Context._h1(C#0); 
                (var D#0 := _module.Context._h0(C#0); _module.__default.IsContext($ly, D#0)))
               else (var D#1 := _module.Context._h3(C#0); 
                (var v#0 := _module.Context._h2(C#0); 
                  _module.__default.IsValue($LS($LZ), v#0)
                     && _module.__default.IsContext($ly, D#1))))));
// definition axiom for _module.__default.IsContext for all literals (revealed)
axiom {:id "id61"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, C#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsContext($LS($ly), Lit(C#0)) } 
    _module.__default.IsContext#canCall(Lit(C#0))
         || (2 < $FunctionContextHeight && $Is(C#0, Tclass._module.Context()))
       ==> (!Lit(_module.Context.Hole_q(Lit(C#0)))
           ==> (Lit(_module.Context.C__term_q(Lit(C#0)))
               ==> (var D#6 := Lit(_module.Context._h0(Lit(C#0))); 
                _module.__default.IsContext#canCall(D#6)))
             && (!Lit(_module.Context.C__term_q(Lit(C#0)))
               ==> (var D#7 := Lit(_module.Context._h3(Lit(C#0))); 
                (var v#3 := Lit(_module.Context._h2(Lit(C#0))); 
                  _module.__default.IsValue#canCall(v#3)
                     && (_module.__default.IsValue($LS($LZ), v#3)
                       ==> _module.__default.IsContext#canCall(D#7))))))
         && _module.__default.IsContext($LS($ly), Lit(C#0))
           == (if _module.Context.Hole_q(Lit(C#0))
             then true
             else (if _module.Context.C__term_q(Lit(C#0))
               then (var t#2 := Lit(_module.Context._h1(Lit(C#0))); 
                (var D#4 := Lit(_module.Context._h0(Lit(C#0))); 
                  Lit(_module.__default.IsContext($LS($ly), D#4))))
               else (var D#5 := Lit(_module.Context._h3(Lit(C#0))); 
                (var v#2 := Lit(_module.Context._h2(Lit(C#0))); 
                  Lit(_module.__default.IsValue($LS($LZ), v#2)
                       && _module.__default.IsContext($LS($ly), D#5)))))));
}

function _module.__default.IsContext#canCall(C#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, C#0: DatatypeType :: 
  { _module.__default.IsContext($LS($ly), C#0) } 
  _module.__default.IsContext($LS($ly), C#0)
     == _module.__default.IsContext($ly, C#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, C#0: DatatypeType :: 
  { _module.__default.IsContext(AsFuelBottom($ly), C#0) } 
  _module.__default.IsContext($ly, C#0) == _module.__default.IsContext($LZ, C#0));

function Tclass._module.Context() : Ty
uses {
// Tclass._module.Context Tag
axiom Tag(Tclass._module.Context()) == Tagclass._module.Context
   && TagFamily(Tclass._module.Context()) == tytagFamily$Context;
}

const unique Tagclass._module.Context: TyTag;

// Box/unbox axiom for Tclass._module.Context
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Context()) } 
  $IsBox(bx, Tclass._module.Context())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Context()));

function _module.__default.IsContext#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.IsContext
axiom (forall $ly: LayerType, C#0: DatatypeType :: 
  { _module.__default.IsContext#requires($ly, C#0) } 
  $Is(C#0, Tclass._module.Context())
     ==> _module.__default.IsContext#requires($ly, C#0) == true);

procedure {:verboseName "IsContext (well-formedness)"} CheckWellformed$$_module.__default.IsContext(C#0: DatatypeType where $Is(C#0, Tclass._module.Context()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IsContext (well-formedness)"} CheckWellformed$$_module.__default.IsContext(C#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var D#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var v#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##t#0: DatatypeType;
  var ##C#0: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var t#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var D#Z#1: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##C#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
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
        if (C#0 == #_module.Context.Hole())
        {
            assume {:id "id74"} _module.__default.IsContext($LS($LZ), C#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.IsContext($LS($LZ), C#0), TBool);
            return;
        }
        else if (C#0 == #_module.Context.C_term(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Context());
            assume $Is(_mcc#1#0, Tclass._module.Term());
            havoc t#Z#0;
            assume {:id "id68"} let#2#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass._module.Term());
            assume {:id "id69"} t#Z#0 == let#2#0#0;
            havoc D#Z#1;
            assume {:id "id70"} let#3#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, Tclass._module.Context());
            assume {:id "id71"} D#Z#1 == let#3#0#0;
            ##C#1 := D#Z#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#1, Tclass._module.Context(), $Heap);
            assert {:id "id72"} DtRank(##C#1) < DtRank(C#0);
            assume _module.__default.IsContext#canCall(D#Z#1);
            assume {:id "id73"} _module.__default.IsContext($LS($LZ), C#0)
               == _module.__default.IsContext($LS($LZ), D#Z#1);
            assume _module.__default.IsContext#canCall(D#Z#1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.IsContext($LS($LZ), C#0), TBool);
            return;
        }
        else if (C#0 == #_module.Context.value_C(_mcc#2#0, _mcc#3#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.Term());
            assume $Is(_mcc#3#0, Tclass._module.Context());
            havoc D#Z#0;
            assume {:id "id62"} let#0#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Context());
            assume {:id "id63"} D#Z#0 == let#0#0#0;
            havoc v#Z#0;
            assume {:id "id64"} let#1#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Term());
            assume {:id "id65"} v#Z#0 == let#1#0#0;
            ##t#0 := v#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
            assume _module.__default.IsValue#canCall(v#Z#0);
            if (_module.__default.IsValue($LS($LZ), v#Z#0))
            {
                ##C#0 := D#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##C#0, Tclass._module.Context(), $Heap);
                assert {:id "id66"} DtRank(##C#0) < DtRank(C#0);
                assume _module.__default.IsContext#canCall(D#Z#0);
            }

            assume {:id "id67"} _module.__default.IsContext($LS($LZ), C#0)
               == (_module.__default.IsValue($LS($LZ), v#Z#0)
                 && _module.__default.IsContext($LS($LZ), D#Z#0));
            assume _module.__default.IsValue#canCall(v#Z#0)
               && (_module.__default.IsValue($LS($LZ), v#Z#0)
                 ==> _module.__default.IsContext#canCall(D#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.IsContext($LS($LZ), C#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.EvalExpr
function _module.__default.EvalExpr($ly: LayerType, C#0: DatatypeType, t#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.EvalExpr
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, C#0: DatatypeType, t#0: DatatypeType :: 
    { _module.__default.EvalExpr($ly, C#0, t#0) } 
    _module.__default.EvalExpr#canCall(C#0, t#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(C#0, Tclass._module.Context())
           && $Is(t#0, Tclass._module.Term())
           && _module.__default.IsContext($LS($LZ), C#0))
       ==> $Is(_module.__default.EvalExpr($ly, C#0, t#0), Tclass._module.Term()));
// definition axiom for _module.__default.EvalExpr (revealed)
axiom {:id "id75"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, C#0: DatatypeType, t#0: DatatypeType :: 
    { _module.__default.EvalExpr($LS($ly), C#0, t#0) } 
    _module.__default.EvalExpr#canCall(C#0, t#0)
         || (3 < $FunctionContextHeight
           && 
          $Is(C#0, Tclass._module.Context())
           && $Is(t#0, Tclass._module.Term())
           && _module.__default.IsContext($LS($LZ), C#0))
       ==> (!_module.Context.Hole_q(C#0)
           ==> (_module.Context.C__term_q(C#0)
               ==> (var D#2 := _module.Context._h0(C#0); 
                _module.__default.EvalExpr#canCall(D#2, t#0)))
             && (!_module.Context.C__term_q(C#0)
               ==> (var D#3 := _module.Context._h3(C#0); 
                _module.__default.EvalExpr#canCall(D#3, t#0))))
         && _module.__default.EvalExpr($LS($ly), C#0, t#0)
           == (if _module.Context.Hole_q(C#0)
             then t#0
             else (if _module.Context.C__term_q(C#0)
               then (var u#0 := _module.Context._h1(C#0); 
                (var D#0 := _module.Context._h0(C#0); 
                  #_module.Term.Apply(_module.__default.EvalExpr($ly, D#0, t#0), u#0)))
               else (var D#1 := _module.Context._h3(C#0); 
                (var v#0 := _module.Context._h2(C#0); 
                  #_module.Term.Apply(v#0, _module.__default.EvalExpr($ly, D#1, t#0)))))));
// definition axiom for _module.__default.EvalExpr for all literals (revealed)
axiom {:id "id76"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, C#0: DatatypeType, t#0: DatatypeType :: 
    {:weight 3} { _module.__default.EvalExpr($LS($ly), Lit(C#0), Lit(t#0)) } 
    _module.__default.EvalExpr#canCall(Lit(C#0), Lit(t#0))
         || (3 < $FunctionContextHeight
           && 
          $Is(C#0, Tclass._module.Context())
           && $Is(t#0, Tclass._module.Term())
           && Lit(_module.__default.IsContext($LS($LZ), Lit(C#0))))
       ==> (!Lit(_module.Context.Hole_q(Lit(C#0)))
           ==> (Lit(_module.Context.C__term_q(Lit(C#0)))
               ==> (var D#6 := Lit(_module.Context._h0(Lit(C#0))); 
                _module.__default.EvalExpr#canCall(D#6, Lit(t#0))))
             && (!Lit(_module.Context.C__term_q(Lit(C#0)))
               ==> (var D#7 := Lit(_module.Context._h3(Lit(C#0))); 
                _module.__default.EvalExpr#canCall(D#7, Lit(t#0)))))
         && _module.__default.EvalExpr($LS($ly), Lit(C#0), Lit(t#0))
           == (if _module.Context.Hole_q(Lit(C#0))
             then t#0
             else (if _module.Context.C__term_q(Lit(C#0))
               then (var u#2 := Lit(_module.Context._h1(Lit(C#0))); 
                (var D#4 := Lit(_module.Context._h0(Lit(C#0))); 
                  Lit(#_module.Term.Apply(Lit(_module.__default.EvalExpr($LS($ly), D#4, Lit(t#0))), u#2))))
               else (var D#5 := Lit(_module.Context._h3(Lit(C#0))); 
                (var v#2 := Lit(_module.Context._h2(Lit(C#0))); 
                  Lit(#_module.Term.Apply(v#2, Lit(_module.__default.EvalExpr($LS($ly), D#5, Lit(t#0))))))))));
}

function _module.__default.EvalExpr#canCall(C#0: DatatypeType, t#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, C#0: DatatypeType, t#0: DatatypeType :: 
  { _module.__default.EvalExpr($LS($ly), C#0, t#0) } 
  _module.__default.EvalExpr($LS($ly), C#0, t#0)
     == _module.__default.EvalExpr($ly, C#0, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, C#0: DatatypeType, t#0: DatatypeType :: 
  { _module.__default.EvalExpr(AsFuelBottom($ly), C#0, t#0) } 
  _module.__default.EvalExpr($ly, C#0, t#0)
     == _module.__default.EvalExpr($LZ, C#0, t#0));

function _module.__default.EvalExpr#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.EvalExpr
axiom (forall $ly: LayerType, C#0: DatatypeType, t#0: DatatypeType :: 
  { _module.__default.EvalExpr#requires($ly, C#0, t#0) } 
  $Is(C#0, Tclass._module.Context()) && $Is(t#0, Tclass._module.Term())
     ==> _module.__default.EvalExpr#requires($ly, C#0, t#0)
       == _module.__default.IsContext($LS($LZ), C#0));

procedure {:verboseName "EvalExpr (well-formedness)"} CheckWellformed$$_module.__default.EvalExpr(C#0: DatatypeType where $Is(C#0, Tclass._module.Context()), 
    t#0: DatatypeType where $Is(t#0, Tclass._module.Term()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EvalExpr (well-formedness)"} CheckWellformed$$_module.__default.EvalExpr(C#0: DatatypeType, t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##C#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var D#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var v#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##C#1: DatatypeType;
  var ##t#0: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var u#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var D#Z#1: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##C#2: DatatypeType;
  var ##t#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##C#0 := C#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##C#0, Tclass._module.Context(), $Heap);
    assume _module.__default.IsContext#canCall(C#0);
    assume {:id "id77"} _module.__default.IsContext($LS($LZ), C#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.EvalExpr($LS($LZ), C#0, t#0), Tclass._module.Term());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (C#0 == #_module.Context.Hole())
        {
            assume {:id "id110"} _module.__default.EvalExpr($LS($LZ), C#0, t#0) == t#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.EvalExpr($LS($LZ), C#0, t#0), Tclass._module.Term());
            return;
        }
        else if (C#0 == #_module.Context.C_term(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Context());
            assume $Is(_mcc#1#0, Tclass._module.Term());
            havoc u#Z#0;
            assume {:id "id94"} let#2#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass._module.Term());
            assume {:id "id95"} u#Z#0 == let#2#0#0;
            havoc D#Z#1;
            assume {:id "id96"} let#3#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, Tclass._module.Context());
            assume {:id "id97"} D#Z#1 == let#3#0#0;
            ##C#2 := D#Z#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#2, Tclass._module.Context(), $Heap);
            ##t#1 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
            assert {:id "id98"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                 || (_module.Context.Hole_q(##C#2) ==> Lit(true));
            assert {:id "id99"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                 || (!_module.Context.Hole_q(##C#2)
                   ==> 
                  _module.Context.C__term_q(##C#2)
                   ==> (var t#3 := _module.Context._h1(##C#2); 
                    (var D#12 := _module.Context._h0(##C#2); 
                      _module.__default.IsContext($LS($LS($LZ)), D#12))));
            assert {:id "id100"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                 || (!_module.Context.Hole_q(##C#2)
                   ==> 
                  !_module.Context.C__term_q(##C#2)
                   ==> (var D#13 := _module.Context._h3(##C#2); 
                    (var v#6 := _module.Context._h2(##C#2); 
                      _module.__default.IsValue#canCall(v#6)
                         ==> _module.__default.IsValue($LS($LZ), v#6)
                           || (_module.Term.S_q(v#6) ==> Lit(true)))));
            assert {:id "id101"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                 || (!_module.Context.Hole_q(##C#2)
                   ==> 
                  !_module.Context.C__term_q(##C#2)
                   ==> (var D#13 := _module.Context._h3(##C#2); 
                    (var v#6 := _module.Context._h2(##C#2); 
                      _module.__default.IsValue#canCall(v#6)
                         ==> _module.__default.IsValue($LS($LZ), v#6)
                           || (!_module.Term.S_q(v#6) ==> _module.Term.K_q(v#6) ==> Lit(true)))));
            assert {:id "id102"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                 || (!_module.Context.Hole_q(##C#2)
                   ==> 
                  !_module.Context.C__term_q(##C#2)
                   ==> (var D#13 := _module.Context._h3(##C#2); 
                    (var v#6 := _module.Context._h2(##C#2); 
                      _module.__default.IsValue#canCall(v#6)
                         ==> _module.__default.IsValue($LS($LZ), v#6)
                           || (!_module.Term.S_q(v#6)
                             ==> 
                            !_module.Term.K_q(v#6)
                             ==> (var b#2 := _module.Term.cdr(v#6); 
                              (var a#2 := _module.Term.car(v#6); 
                                _module.Term.S_q(a#2)
                                   ==> 
                                  _module.__default.IsValue($LS($LZ), a#2)
                                   ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))));
            assert {:id "id103"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                 || (!_module.Context.Hole_q(##C#2)
                   ==> 
                  !_module.Context.C__term_q(##C#2)
                   ==> (var D#13 := _module.Context._h3(##C#2); 
                    (var v#6 := _module.Context._h2(##C#2); 
                      _module.__default.IsValue#canCall(v#6)
                         ==> _module.__default.IsValue($LS($LZ), v#6)
                           || (!_module.Term.S_q(v#6)
                             ==> 
                            !_module.Term.K_q(v#6)
                             ==> (var b#2 := _module.Term.cdr(v#6); 
                              (var a#2 := _module.Term.car(v#6); 
                                !_module.Term.S_q(a#2)
                                   ==> 
                                  _module.Term.K_q(a#2)
                                   ==> 
                                  _module.__default.IsValue($LS($LZ), a#2)
                                   ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))));
            assert {:id "id104"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                 || (!_module.Context.Hole_q(##C#2)
                   ==> 
                  !_module.Context.C__term_q(##C#2)
                   ==> (var D#13 := _module.Context._h3(##C#2); 
                    (var v#6 := _module.Context._h2(##C#2); 
                      _module.__default.IsValue#canCall(v#6)
                         ==> _module.__default.IsValue($LS($LZ), v#6)
                           || (!_module.Term.S_q(v#6)
                             ==> 
                            !_module.Term.K_q(v#6)
                             ==> (var b#2 := _module.Term.cdr(v#6); 
                              (var a#2 := _module.Term.car(v#6); 
                                !_module.Term.S_q(a#2)
                                   ==> 
                                  !_module.Term.K_q(a#2)
                                   ==> (var y#2 := _module.Term.cdr(a#2); 
                                    (var x#2 := _module.Term.car(a#2); 
                                      (_module.Term#Equal(x#2, #_module.Term.S())
                                           && _module.__default.IsValue($LS($LZ), y#2)
                                           && _module.__default.IsValue($LS($LZ), b#2)
                                         ==> _module.__default.IsValue($LS($LZ), a#2))
                                         ==> _module.Term#Equal(x#2, #_module.Term.S())))))))));
            assert {:id "id105"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                 || (!_module.Context.Hole_q(##C#2)
                   ==> 
                  !_module.Context.C__term_q(##C#2)
                   ==> (var D#13 := _module.Context._h3(##C#2); 
                    (var v#6 := _module.Context._h2(##C#2); 
                      _module.__default.IsValue#canCall(v#6)
                         ==> _module.__default.IsValue($LS($LZ), v#6)
                           || (!_module.Term.S_q(v#6)
                             ==> 
                            !_module.Term.K_q(v#6)
                             ==> (var b#2 := _module.Term.cdr(v#6); 
                              (var a#2 := _module.Term.car(v#6); 
                                !_module.Term.S_q(a#2)
                                   ==> 
                                  !_module.Term.K_q(a#2)
                                   ==> (var y#2 := _module.Term.cdr(a#2); 
                                    (var x#2 := _module.Term.car(a#2); 
                                      (_module.Term#Equal(x#2, #_module.Term.S())
                                           && _module.__default.IsValue($LS($LZ), y#2)
                                           && _module.__default.IsValue($LS($LZ), b#2)
                                         ==> _module.__default.IsValue($LS($LZ), a#2))
                                         ==> _module.__default.IsValue($LS($LS($LZ)), y#2)))))))));
            assert {:id "id106"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                 || (!_module.Context.Hole_q(##C#2)
                   ==> 
                  !_module.Context.C__term_q(##C#2)
                   ==> (var D#13 := _module.Context._h3(##C#2); 
                    (var v#6 := _module.Context._h2(##C#2); 
                      _module.__default.IsValue#canCall(v#6)
                         ==> _module.__default.IsValue($LS($LZ), v#6)
                           || (!_module.Term.S_q(v#6)
                             ==> 
                            !_module.Term.K_q(v#6)
                             ==> (var b#2 := _module.Term.cdr(v#6); 
                              (var a#2 := _module.Term.car(v#6); 
                                !_module.Term.S_q(a#2)
                                   ==> 
                                  !_module.Term.K_q(a#2)
                                   ==> (var y#2 := _module.Term.cdr(a#2); 
                                    (var x#2 := _module.Term.car(a#2); 
                                      (_module.Term#Equal(x#2, #_module.Term.S())
                                           && _module.__default.IsValue($LS($LZ), y#2)
                                           && _module.__default.IsValue($LS($LZ), b#2)
                                         ==> _module.__default.IsValue($LS($LZ), a#2))
                                         ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))))));
            assert {:id "id107"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                 || (!_module.Context.Hole_q(##C#2)
                   ==> 
                  !_module.Context.C__term_q(##C#2)
                   ==> (var D#13 := _module.Context._h3(##C#2); 
                    (var v#6 := _module.Context._h2(##C#2); 
                      _module.__default.IsContext($LS($LS($LZ)), D#13))));
            assume _module.__default.IsContext($LS($LZ), ##C#2);
            assert {:id "id108"} DtRank(##C#2) < DtRank(C#0)
               || (DtRank(##C#2) == DtRank(C#0) && DtRank(##t#1) < DtRank(t#0));
            assume _module.__default.EvalExpr#canCall(D#Z#1, t#0);
            assume {:id "id109"} _module.__default.EvalExpr($LS($LZ), C#0, t#0)
               == #_module.Term.Apply(_module.__default.EvalExpr($LS($LZ), D#Z#1, t#0), u#Z#0);
            assume _module.__default.EvalExpr#canCall(D#Z#1, t#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.EvalExpr($LS($LZ), C#0, t#0), Tclass._module.Term());
            return;
        }
        else if (C#0 == #_module.Context.value_C(_mcc#2#0, _mcc#3#0))
        {
            assume $Is(_mcc#2#0, Tclass._module.Term());
            assume $Is(_mcc#3#0, Tclass._module.Context());
            havoc D#Z#0;
            assume {:id "id78"} let#0#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Context());
            assume {:id "id79"} D#Z#0 == let#0#0#0;
            havoc v#Z#0;
            assume {:id "id80"} let#1#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Term());
            assume {:id "id81"} v#Z#0 == let#1#0#0;
            ##C#1 := D#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#1, Tclass._module.Context(), $Heap);
            ##t#0 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
            assert {:id "id82"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
               ==> _module.__default.IsContext($LS($LZ), ##C#1)
                 || (_module.Context.Hole_q(##C#1) ==> Lit(true));
            assert {:id "id83"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
               ==> _module.__default.IsContext($LS($LZ), ##C#1)
                 || (!_module.Context.Hole_q(##C#1)
                   ==> 
                  _module.Context.C__term_q(##C#1)
                   ==> (var t#1 := _module.Context._h1(##C#1); 
                    (var D#8 := _module.Context._h0(##C#1); 
                      _module.__default.IsContext($LS($LS($LZ)), D#8))));
            assert {:id "id84"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
               ==> _module.__default.IsContext($LS($LZ), ##C#1)
                 || (!_module.Context.Hole_q(##C#1)
                   ==> 
                  !_module.Context.C__term_q(##C#1)
                   ==> (var D#9 := _module.Context._h3(##C#1); 
                    (var v#4 := _module.Context._h2(##C#1); 
                      _module.__default.IsValue#canCall(v#4)
                         ==> _module.__default.IsValue($LS($LZ), v#4)
                           || (_module.Term.S_q(v#4) ==> Lit(true)))));
            assert {:id "id85"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
               ==> _module.__default.IsContext($LS($LZ), ##C#1)
                 || (!_module.Context.Hole_q(##C#1)
                   ==> 
                  !_module.Context.C__term_q(##C#1)
                   ==> (var D#9 := _module.Context._h3(##C#1); 
                    (var v#4 := _module.Context._h2(##C#1); 
                      _module.__default.IsValue#canCall(v#4)
                         ==> _module.__default.IsValue($LS($LZ), v#4)
                           || (!_module.Term.S_q(v#4) ==> _module.Term.K_q(v#4) ==> Lit(true)))));
            assert {:id "id86"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
               ==> _module.__default.IsContext($LS($LZ), ##C#1)
                 || (!_module.Context.Hole_q(##C#1)
                   ==> 
                  !_module.Context.C__term_q(##C#1)
                   ==> (var D#9 := _module.Context._h3(##C#1); 
                    (var v#4 := _module.Context._h2(##C#1); 
                      _module.__default.IsValue#canCall(v#4)
                         ==> _module.__default.IsValue($LS($LZ), v#4)
                           || (!_module.Term.S_q(v#4)
                             ==> 
                            !_module.Term.K_q(v#4)
                             ==> (var b#0 := _module.Term.cdr(v#4); 
                              (var a#0 := _module.Term.car(v#4); 
                                _module.Term.S_q(a#0)
                                   ==> 
                                  _module.__default.IsValue($LS($LZ), a#0)
                                   ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))));
            assert {:id "id87"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
               ==> _module.__default.IsContext($LS($LZ), ##C#1)
                 || (!_module.Context.Hole_q(##C#1)
                   ==> 
                  !_module.Context.C__term_q(##C#1)
                   ==> (var D#9 := _module.Context._h3(##C#1); 
                    (var v#4 := _module.Context._h2(##C#1); 
                      _module.__default.IsValue#canCall(v#4)
                         ==> _module.__default.IsValue($LS($LZ), v#4)
                           || (!_module.Term.S_q(v#4)
                             ==> 
                            !_module.Term.K_q(v#4)
                             ==> (var b#0 := _module.Term.cdr(v#4); 
                              (var a#0 := _module.Term.car(v#4); 
                                !_module.Term.S_q(a#0)
                                   ==> 
                                  _module.Term.K_q(a#0)
                                   ==> 
                                  _module.__default.IsValue($LS($LZ), a#0)
                                   ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))));
            assert {:id "id88"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
               ==> _module.__default.IsContext($LS($LZ), ##C#1)
                 || (!_module.Context.Hole_q(##C#1)
                   ==> 
                  !_module.Context.C__term_q(##C#1)
                   ==> (var D#9 := _module.Context._h3(##C#1); 
                    (var v#4 := _module.Context._h2(##C#1); 
                      _module.__default.IsValue#canCall(v#4)
                         ==> _module.__default.IsValue($LS($LZ), v#4)
                           || (!_module.Term.S_q(v#4)
                             ==> 
                            !_module.Term.K_q(v#4)
                             ==> (var b#0 := _module.Term.cdr(v#4); 
                              (var a#0 := _module.Term.car(v#4); 
                                !_module.Term.S_q(a#0)
                                   ==> 
                                  !_module.Term.K_q(a#0)
                                   ==> (var y#0 := _module.Term.cdr(a#0); 
                                    (var x#0 := _module.Term.car(a#0); 
                                      (_module.Term#Equal(x#0, #_module.Term.S())
                                           && _module.__default.IsValue($LS($LZ), y#0)
                                           && _module.__default.IsValue($LS($LZ), b#0)
                                         ==> _module.__default.IsValue($LS($LZ), a#0))
                                         ==> _module.Term#Equal(x#0, #_module.Term.S())))))))));
            assert {:id "id89"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
               ==> _module.__default.IsContext($LS($LZ), ##C#1)
                 || (!_module.Context.Hole_q(##C#1)
                   ==> 
                  !_module.Context.C__term_q(##C#1)
                   ==> (var D#9 := _module.Context._h3(##C#1); 
                    (var v#4 := _module.Context._h2(##C#1); 
                      _module.__default.IsValue#canCall(v#4)
                         ==> _module.__default.IsValue($LS($LZ), v#4)
                           || (!_module.Term.S_q(v#4)
                             ==> 
                            !_module.Term.K_q(v#4)
                             ==> (var b#0 := _module.Term.cdr(v#4); 
                              (var a#0 := _module.Term.car(v#4); 
                                !_module.Term.S_q(a#0)
                                   ==> 
                                  !_module.Term.K_q(a#0)
                                   ==> (var y#0 := _module.Term.cdr(a#0); 
                                    (var x#0 := _module.Term.car(a#0); 
                                      (_module.Term#Equal(x#0, #_module.Term.S())
                                           && _module.__default.IsValue($LS($LZ), y#0)
                                           && _module.__default.IsValue($LS($LZ), b#0)
                                         ==> _module.__default.IsValue($LS($LZ), a#0))
                                         ==> _module.__default.IsValue($LS($LS($LZ)), y#0)))))))));
            assert {:id "id90"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
               ==> _module.__default.IsContext($LS($LZ), ##C#1)
                 || (!_module.Context.Hole_q(##C#1)
                   ==> 
                  !_module.Context.C__term_q(##C#1)
                   ==> (var D#9 := _module.Context._h3(##C#1); 
                    (var v#4 := _module.Context._h2(##C#1); 
                      _module.__default.IsValue#canCall(v#4)
                         ==> _module.__default.IsValue($LS($LZ), v#4)
                           || (!_module.Term.S_q(v#4)
                             ==> 
                            !_module.Term.K_q(v#4)
                             ==> (var b#0 := _module.Term.cdr(v#4); 
                              (var a#0 := _module.Term.car(v#4); 
                                !_module.Term.S_q(a#0)
                                   ==> 
                                  !_module.Term.K_q(a#0)
                                   ==> (var y#0 := _module.Term.cdr(a#0); 
                                    (var x#0 := _module.Term.car(a#0); 
                                      (_module.Term#Equal(x#0, #_module.Term.S())
                                           && _module.__default.IsValue($LS($LZ), y#0)
                                           && _module.__default.IsValue($LS($LZ), b#0)
                                         ==> _module.__default.IsValue($LS($LZ), a#0))
                                         ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))))));
            assert {:id "id91"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
               ==> _module.__default.IsContext($LS($LZ), ##C#1)
                 || (!_module.Context.Hole_q(##C#1)
                   ==> 
                  !_module.Context.C__term_q(##C#1)
                   ==> (var D#9 := _module.Context._h3(##C#1); 
                    (var v#4 := _module.Context._h2(##C#1); 
                      _module.__default.IsContext($LS($LS($LZ)), D#9))));
            assume _module.__default.IsContext($LS($LZ), ##C#1);
            assert {:id "id92"} DtRank(##C#1) < DtRank(C#0)
               || (DtRank(##C#1) == DtRank(C#0) && DtRank(##t#0) < DtRank(t#0));
            assume _module.__default.EvalExpr#canCall(D#Z#0, t#0);
            assume {:id "id93"} _module.__default.EvalExpr($LS($LZ), C#0, t#0)
               == #_module.Term.Apply(v#Z#0, _module.__default.EvalExpr($LS($LZ), D#Z#0, t#0));
            assume _module.__default.EvalExpr#canCall(D#Z#0, t#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.EvalExpr($LS($LZ), C#0, t#0), Tclass._module.Term());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.Step
function _module.__default.Step(t#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.Step
axiom 2 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    { _module.__default.Step(t#0) } 
    _module.__default.Step#canCall(t#0)
         || (2 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (!_module.__default.ContainsS($LS($LZ), t#0)
           ==> !_module.__default.ContainsS($LS($LZ), _module.__default.Step(t#0))
             && (_module.Term#Equal(_module.__default.Step(t#0), t#0)
               || _module.__default.TermSize($LS($LZ), _module.__default.Step(t#0))
                 < _module.__default.TermSize($LS($LZ), t#0)))
         && $Is(_module.__default.Step(t#0), Tclass._module.Term()));
// definition axiom for _module.__default.Step (revealed)
axiom {:id "id111"} 2 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    { _module.__default.Step(t#0) } 
    _module.__default.Step#canCall(t#0)
         || (2 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (!_module.Term.S_q(t#0)
           ==> 
          !_module.Term.K_q(t#0)
           ==> (var y#1 := _module.Term.cdr(t#0); 
            (var x#1 := _module.Term.car(t#0); 
              !_module.Term.S_q(x#1)
                 ==> 
                !_module.Term.K_q(x#1)
                 ==> (var n#1 := _module.Term.cdr(x#1); 
                  (var m#1 := _module.Term.car(x#1); 
                    $IsA#_module.Term(m#1)
                       && (_module.Term#Equal(m#1, #_module.Term.K())
                         ==> _module.__default.IsValue#canCall(n#1)
                           && (_module.__default.IsValue($LS($LZ), n#1)
                             ==> _module.__default.IsValue#canCall(y#1)))
                       && (!(
                          _module.Term#Equal(m#1, #_module.Term.K())
                           && _module.__default.IsValue($LS($LZ), n#1)
                           && _module.__default.IsValue($LS($LZ), y#1))
                         ==> 
                        _module.Term.Apply_q(m#1)
                         ==> $IsA#_module.Term(_module.Term.car(m#1))
                           && (_module.Term#Equal(_module.Term.car(m#1), #_module.Term.S())
                             ==> _module.__default.IsValue#canCall(_module.Term.cdr(m#1))
                               && (_module.__default.IsValue($LS($LZ), _module.Term.cdr(m#1))
                                 ==> _module.__default.IsValue#canCall(n#1)
                                   && (_module.__default.IsValue($LS($LZ), n#1)
                                     ==> _module.__default.IsValue#canCall(y#1))))))))))
         && _module.__default.Step(t#0)
           == (if _module.Term.S_q(t#0)
             then t#0
             else (if _module.Term.K_q(t#0)
               then t#0
               else (var y#0 := _module.Term.cdr(t#0); 
                (var x#0 := _module.Term.car(t#0); 
                  (if _module.Term.S_q(x#0)
                     then t#0
                     else (if _module.Term.K_q(x#0)
                       then t#0
                       else (var n#0 := _module.Term.cdr(x#0); 
                        (var m#0 := _module.Term.car(x#0); 
                          (if _module.Term#Equal(m#0, #_module.Term.K())
                               && _module.__default.IsValue($LS($LZ), n#0)
                               && _module.__default.IsValue($LS($LZ), y#0)
                             then n#0
                             else (if _module.Term.Apply_q(m#0)
                                 && _module.Term#Equal(_module.Term.car(m#0), #_module.Term.S())
                                 && _module.__default.IsValue($LS($LZ), _module.Term.cdr(m#0))
                                 && _module.__default.IsValue($LS($LZ), n#0)
                                 && _module.__default.IsValue($LS($LZ), y#0)
                               then #_module.Term.Apply(#_module.Term.Apply(_module.Term.cdr(m#0), y#0), #_module.Term.Apply(n#0, y#0))
                               else t#0)))))))))));
// definition axiom for _module.__default.Step for all literals (revealed)
axiom {:id "id112"} 2 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    {:weight 3} { _module.__default.Step(Lit(t#0)) } 
    _module.__default.Step#canCall(Lit(t#0))
         || (2 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (!Lit(_module.Term.S_q(Lit(t#0)))
           ==> 
          !Lit(_module.Term.K_q(Lit(t#0)))
           ==> (var y#3 := Lit(_module.Term.cdr(Lit(t#0))); 
            (var x#3 := Lit(_module.Term.car(Lit(t#0))); 
              !_module.Term.S_q(x#3)
                 ==> 
                !_module.Term.K_q(x#3)
                 ==> (var n#3 := _module.Term.cdr(x#3); 
                  (var m#3 := _module.Term.car(x#3); 
                    $IsA#_module.Term(m#3)
                       && (_module.Term#Equal(m#3, #_module.Term.K())
                         ==> _module.__default.IsValue#canCall(n#3)
                           && (_module.__default.IsValue($LS($LZ), n#3)
                             ==> _module.__default.IsValue#canCall(y#3)))
                       && (!(
                          _module.Term#Equal(m#3, #_module.Term.K())
                           && _module.__default.IsValue($LS($LZ), n#3)
                           && _module.__default.IsValue($LS($LZ), y#3))
                         ==> 
                        _module.Term.Apply_q(m#3)
                         ==> $IsA#_module.Term(_module.Term.car(m#3))
                           && (_module.Term#Equal(_module.Term.car(m#3), #_module.Term.S())
                             ==> _module.__default.IsValue#canCall(_module.Term.cdr(m#3))
                               && (_module.__default.IsValue($LS($LZ), _module.Term.cdr(m#3))
                                 ==> _module.__default.IsValue#canCall(n#3)
                                   && (_module.__default.IsValue($LS($LZ), n#3)
                                     ==> _module.__default.IsValue#canCall(y#3))))))))))
         && _module.__default.Step(Lit(t#0))
           == (if _module.Term.S_q(Lit(t#0))
             then t#0
             else (if _module.Term.K_q(Lit(t#0))
               then t#0
               else (var y#2 := Lit(_module.Term.cdr(Lit(t#0))); 
                (var x#2 := Lit(_module.Term.car(Lit(t#0))); 
                  (if _module.Term.S_q(x#2)
                     then t#0
                     else (if _module.Term.K_q(x#2)
                       then t#0
                       else (var n#2 := Lit(_module.Term.cdr(x#2)); 
                        (var m#2 := Lit(_module.Term.car(x#2)); 
                          (if _module.Term#Equal(m#2, #_module.Term.K())
                               && _module.__default.IsValue($LS($LZ), n#2)
                               && _module.__default.IsValue($LS($LZ), y#2)
                             then n#2
                             else (if _module.Term.Apply_q(m#2)
                                 && _module.Term#Equal(_module.Term.car(m#2), #_module.Term.S())
                                 && _module.__default.IsValue($LS($LZ), Lit(_module.Term.cdr(m#2)))
                                 && _module.__default.IsValue($LS($LZ), n#2)
                                 && _module.__default.IsValue($LS($LZ), y#2)
                               then #_module.Term.Apply(Lit(#_module.Term.Apply(Lit(_module.Term.cdr(m#2)), y#2)), 
                                Lit(#_module.Term.Apply(n#2, y#2)))
                               else t#0)))))))))));
}

function _module.__default.Step#canCall(t#0: DatatypeType) : bool;

function _module.__default.Step#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.Step
axiom (forall t#0: DatatypeType :: 
  { _module.__default.Step#requires(t#0) } 
  $Is(t#0, Tclass._module.Term()) ==> _module.__default.Step#requires(t#0) == true);

procedure {:verboseName "Step (well-formedness)"} CheckWellformed$$_module.__default.Step(t#0: DatatypeType where $Is(t#0, Tclass._module.Term()));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id113"} !_module.__default.ContainsS($LS($LZ), t#0)
     ==> !_module.__default.ContainsS($LS($LS($LZ)), _module.__default.Step(t#0));
  ensures {:id "id114"} !_module.__default.ContainsS($LS($LZ), t#0)
     ==> _module.Term#Equal(_module.__default.Step(t#0), t#0)
       || _module.__default.TermSize($LS($LS($LZ)), _module.__default.Step(t#0))
         < _module.__default.TermSize($LS($LS($LZ)), t#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Step (well-formedness)"} CheckWellformed$$_module.__default.Step(t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##t#0: DatatypeType;
  var ##t#1: DatatypeType;
  var ##t#2: DatatypeType;
  var ##t#3: DatatypeType;
  var ##t#4: DatatypeType;
  var ##t#5: DatatypeType;
  var ##t#6: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var n#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var m#Z#0: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##t#7: DatatypeType;
  var ##t#8: DatatypeType;
  var ##t#9: DatatypeType;
  var ##t#10: DatatypeType;
  var ##t#11: DatatypeType;
  var ##t#12: DatatypeType;
  var ##t#13: DatatypeType;
  var ##t#14: DatatypeType;
  var ##t#15: DatatypeType;
  var ##t#16: DatatypeType;
  var ##t#17: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Step(t#0), Tclass._module.Term());
        if (*)
        {
            ##t#0 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
            assume _module.__default.ContainsS#canCall(t#0);
            assume {:id "id115"} !_module.__default.ContainsS($LS($LZ), t#0);
            ##t#2 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#2, Tclass._module.Term(), $Heap);
            assert {:id "id116"} _module.Term#Equal(t#0, t#0) || DtRank(##t#2) < DtRank(t#0);
            assume _module.Term#Equal(t#0, t#0) || _module.__default.Step#canCall(t#0);
            ##t#1 := _module.__default.Step(t#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
            assume _module.__default.ContainsS#canCall(_module.__default.Step(t#0));
            assume {:id "id117"} !_module.__default.ContainsS($LS($LZ), _module.__default.Step(t#0));
            ##t#3 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#3, Tclass._module.Term(), $Heap);
            assert {:id "id118"} _module.Term#Equal(t#0, t#0) || DtRank(##t#3) < DtRank(t#0);
            assume _module.Term#Equal(t#0, t#0) || _module.__default.Step#canCall(t#0);
            if (!_module.Term#Equal(_module.__default.Step(t#0), t#0))
            {
                ##t#5 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#5, Tclass._module.Term(), $Heap);
                assert {:id "id119"} _module.Term#Equal(t#0, t#0) || DtRank(##t#5) < DtRank(t#0);
                assume _module.Term#Equal(t#0, t#0) || _module.__default.Step#canCall(t#0);
                ##t#4 := _module.__default.Step(t#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#4, Tclass._module.Term(), $Heap);
                assume _module.__default.TermSize#canCall(_module.__default.Step(t#0));
                ##t#6 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#6, Tclass._module.Term(), $Heap);
                assume _module.__default.TermSize#canCall(t#0);
            }

            assume {:id "id120"} _module.Term#Equal(_module.__default.Step(t#0), t#0)
               || _module.__default.TermSize($LS($LZ), _module.__default.Step(t#0))
                 < _module.__default.TermSize($LS($LZ), t#0);
        }
        else
        {
            assume {:id "id121"} !_module.__default.ContainsS($LS($LZ), t#0)
               ==> !_module.__default.ContainsS($LS($LZ), _module.__default.Step(t#0))
                 && (_module.Term#Equal(_module.__default.Step(t#0), t#0)
                   || _module.__default.TermSize($LS($LZ), _module.__default.Step(t#0))
                     < _module.__default.TermSize($LS($LZ), t#0));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (t#0 == #_module.Term.S())
        {
            assume {:id "id153"} _module.__default.Step(t#0) == t#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Step(t#0), Tclass._module.Term());
            return;
        }
        else if (t#0 == #_module.Term.K())
        {
            assume {:id "id152"} _module.__default.Step(t#0) == t#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Step(t#0), Tclass._module.Term());
            return;
        }
        else if (t#0 == #_module.Term.Apply(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Term());
            assume $Is(_mcc#1#0, Tclass._module.Term());
            havoc y#Z#0;
            assume {:id "id122"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Term());
            assume {:id "id123"} y#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id124"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Term());
            assume {:id "id125"} x#Z#0 == let#1#0#0;
            if (x#Z#0 == #_module.Term.S())
            {
                assume {:id "id151"} _module.__default.Step(t#0) == t#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Step(t#0), Tclass._module.Term());
                return;
            }
            else if (x#Z#0 == #_module.Term.K())
            {
                assume {:id "id150"} _module.__default.Step(t#0) == t#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Step(t#0), Tclass._module.Term());
                return;
            }
            else if (x#Z#0 == #_module.Term.Apply(_mcc#2#0, _mcc#3#0))
            {
                assume $Is(_mcc#2#0, Tclass._module.Term());
                assume $Is(_mcc#3#0, Tclass._module.Term());
                havoc n#Z#0;
                assume {:id "id126"} let#2#0#0 == _mcc#3#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, Tclass._module.Term());
                assume {:id "id127"} n#Z#0 == let#2#0#0;
                havoc m#Z#0;
                assume {:id "id128"} let#3#0#0 == _mcc#2#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#3#0#0, Tclass._module.Term());
                assume {:id "id129"} m#Z#0 == let#3#0#0;
                if (_module.Term#Equal(m#Z#0, #_module.Term.K()))
                {
                    ##t#7 := n#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#7, Tclass._module.Term(), $Heap);
                    assume _module.__default.IsValue#canCall(n#Z#0);
                }

                if (_module.Term#Equal(m#Z#0, #_module.Term.K())
                   && _module.__default.IsValue($LS($LZ), n#Z#0))
                {
                    ##t#8 := y#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#8, Tclass._module.Term(), $Heap);
                    assume _module.__default.IsValue#canCall(y#Z#0);
                }

                if (_module.Term#Equal(m#Z#0, #_module.Term.K())
                   && _module.__default.IsValue($LS($LZ), n#Z#0)
                   && _module.__default.IsValue($LS($LZ), y#Z#0))
                {
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(113,9)
                    assume $IsA#_module.Term(t#0);
                    assert {:id "id130"} {:focus} _module.Term#Equal(t#0, 
                      #_module.Term.Apply(#_module.Term.Apply(Lit(#_module.Term.K()), n#Z#0), y#Z#0));
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(114,9)
                    ##t#9 := t#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#9, Tclass._module.Term(), $Heap);
                    assume _module.__default.ContainsS#canCall(t#0);
                    if (!_module.__default.ContainsS($LS($LZ), t#0))
                    {
                        ##t#10 := x#Z#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#10, Tclass._module.Term(), $Heap);
                        assume _module.__default.ContainsS#canCall(x#Z#0);
                    }

                    assume _module.__default.ContainsS#canCall(t#0)
                       && (!_module.__default.ContainsS($LS($LZ), t#0)
                         ==> _module.__default.ContainsS#canCall(x#Z#0));
                    assert {:id "id131"} {:subsumption 0} !_module.__default.ContainsS($LS($LZ), t#0)
                       ==> !_module.__default.ContainsS($LS($LS($LZ)), x#Z#0);
                    assume {:id "id132"} !_module.__default.ContainsS($LS($LZ), t#0)
                       ==> !_module.__default.ContainsS($LS($LZ), x#Z#0);
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(115,9)
                    ##t#11 := n#Z#0;
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#11, Tclass._module.Term(), $Heap);
                    assume _module.__default.TermSize#canCall(n#Z#0);
                    ##t#12 := #_module.Term.Apply(m#Z#0, n#Z#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#12, Tclass._module.Term(), $Heap);
                    assume _module.__default.TermSize#canCall(#_module.Term.Apply(m#Z#0, n#Z#0));
                    assume _module.__default.TermSize#canCall(n#Z#0)
                       && _module.__default.TermSize#canCall(#_module.Term.Apply(m#Z#0, n#Z#0));
                    assert {:id "id133"} {:subsumption 0} _module.__default.TermSize($LS($LS($LZ)), n#Z#0)
                       < _module.__default.TermSize($LS($LS($LZ)), #_module.Term.Apply(m#Z#0, n#Z#0));
                    assume {:id "id134"} _module.__default.TermSize($LS($LZ), n#Z#0)
                       < _module.__default.TermSize($LS($LZ), #_module.Term.Apply(m#Z#0, n#Z#0));
                    assume {:id "id135"} _module.__default.Step(t#0) == n#Z#0;
                    assume true;
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.__default.Step(t#0), Tclass._module.Term());
                    return;
                }
                else
                {
                    if (_module.Term.Apply_q(m#Z#0))
                    {
                        assert {:id "id136"} _module.Term.Apply_q(m#Z#0);
                    }

                    if (_module.Term.Apply_q(m#Z#0)
                       && _module.Term#Equal(_module.Term.car(m#Z#0), #_module.Term.S()))
                    {
                        assert {:id "id137"} _module.Term.Apply_q(m#Z#0);
                        ##t#13 := _module.Term.cdr(m#Z#0);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#13, Tclass._module.Term(), $Heap);
                        assume _module.__default.IsValue#canCall(_module.Term.cdr(m#Z#0));
                    }

                    if (_module.Term.Apply_q(m#Z#0)
                       && _module.Term#Equal(_module.Term.car(m#Z#0), #_module.Term.S())
                       && _module.__default.IsValue($LS($LZ), _module.Term.cdr(m#Z#0)))
                    {
                        ##t#14 := n#Z#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#14, Tclass._module.Term(), $Heap);
                        assume _module.__default.IsValue#canCall(n#Z#0);
                    }

                    if (_module.Term.Apply_q(m#Z#0)
                       && _module.Term#Equal(_module.Term.car(m#Z#0), #_module.Term.S())
                       && _module.__default.IsValue($LS($LZ), _module.Term.cdr(m#Z#0))
                       && _module.__default.IsValue($LS($LZ), n#Z#0))
                    {
                        ##t#15 := y#Z#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#15, Tclass._module.Term(), $Heap);
                        assume _module.__default.IsValue#canCall(y#Z#0);
                    }

                    if (_module.Term.Apply_q(m#Z#0)
                       && _module.Term#Equal(_module.Term.car(m#Z#0), #_module.Term.S())
                       && _module.__default.IsValue($LS($LZ), _module.Term.cdr(m#Z#0))
                       && _module.__default.IsValue($LS($LZ), n#Z#0)
                       && _module.__default.IsValue($LS($LZ), y#Z#0))
                    {
                        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(118,9)
                        assert {:id "id138"} _module.Term.Apply_q(m#Z#0);
                        assume $IsA#_module.Term(t#0);
                        assert {:id "id139"} {:focus} _module.Term#Equal(t#0, 
                          #_module.Term.Apply(#_module.Term.Apply(#_module.Term.Apply(Lit(#_module.Term.S()), _module.Term.cdr(m#Z#0)), n#Z#0), 
                            y#Z#0));
                        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(119,9)
                        ##t#16 := m#Z#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#16, Tclass._module.Term(), $Heap);
                        assume _module.__default.ContainsS#canCall(m#Z#0);
                        if (_module.__default.ContainsS($LS($LZ), m#Z#0))
                        {
                            ##t#17 := t#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#17, Tclass._module.Term(), $Heap);
                            assume _module.__default.ContainsS#canCall(t#0);
                        }

                        assume _module.__default.ContainsS#canCall(m#Z#0)
                           && (_module.__default.ContainsS($LS($LZ), m#Z#0)
                             ==> _module.__default.ContainsS#canCall(t#0));
                        assert {:id "id140"} {:subsumption 0} _module.__default.ContainsS#canCall(m#Z#0)
                           ==> _module.__default.ContainsS($LS($LZ), m#Z#0)
                             || (_module.Term.S_q(m#Z#0) ==> Lit(true));
                        assert {:id "id141"} {:subsumption 0} _module.__default.ContainsS#canCall(m#Z#0)
                           ==> _module.__default.ContainsS($LS($LZ), m#Z#0)
                             || (!_module.Term.S_q(m#Z#0) ==> _module.Term.K_q(m#Z#0) ==> Lit(false));
                        assert {:id "id142"} {:subsumption 0} _module.__default.ContainsS#canCall(m#Z#0)
                           ==> _module.__default.ContainsS($LS($LZ), m#Z#0)
                             || (!_module.Term.S_q(m#Z#0)
                               ==> 
                              !_module.Term.K_q(m#Z#0)
                               ==> (var y#4 := _module.Term.cdr(m#Z#0); 
                                (var x#4 := _module.Term.car(m#Z#0); 
                                  _module.__default.ContainsS($LS($LS($LZ)), x#4)
                                     || _module.__default.ContainsS($LS($LS($LZ)), y#4))));
                        assert {:id "id143"} {:subsumption 0} _module.__default.ContainsS#canCall(t#0)
                           ==> _module.__default.ContainsS($LS($LZ), t#0)
                             || (_module.Term.S_q(t#0) ==> Lit(true));
                        assert {:id "id144"} {:subsumption 0} _module.__default.ContainsS#canCall(t#0)
                           ==> _module.__default.ContainsS($LS($LZ), t#0)
                             || (!_module.Term.S_q(t#0) ==> _module.Term.K_q(t#0) ==> Lit(false));
                        assert {:id "id145"} {:subsumption 0} _module.__default.ContainsS#canCall(t#0)
                           ==> _module.__default.ContainsS($LS($LZ), t#0)
                             || (!_module.Term.S_q(t#0)
                               ==> 
                              !_module.Term.K_q(t#0)
                               ==> (var y#6 := _module.Term.cdr(t#0); 
                                (var x#6 := _module.Term.car(t#0); 
                                  _module.__default.ContainsS($LS($LS($LZ)), x#6)
                                     || _module.__default.ContainsS($LS($LS($LZ)), y#6))));
                        assume {:id "id146"} _module.__default.ContainsS($LS($LZ), m#Z#0)
                           && _module.__default.ContainsS($LS($LZ), t#0);
                        assert {:id "id147"} _module.Term.Apply_q(m#Z#0);
                        assume {:id "id148"} _module.__default.Step(t#0)
                           == #_module.Term.Apply(#_module.Term.Apply(_module.Term.cdr(m#Z#0), y#Z#0), 
                            #_module.Term.Apply(n#Z#0, y#Z#0));
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(_module.__default.Step(t#0), Tclass._module.Term());
                        return;
                    }
                    else
                    {
                        assume {:id "id149"} _module.__default.Step(t#0) == t#0;
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(_module.__default.Step(t#0), Tclass._module.Term());
                        return;
                    }
                }
            }
            else
            {
                assume false;
            }
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.FindAndStep
function _module.__default.FindAndStep($ly: LayerType, t#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.FindAndStep
axiom 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.FindAndStep($ly, t#0) } 
    _module.__default.FindAndStep#canCall(t#0)
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (!_module.__default.ContainsS($LS($LZ), t#0)
           ==> !_module.__default.ContainsS($LS($LZ), _module.__default.FindAndStep($ly, t#0))
             && (_module.Term#Equal(_module.__default.FindAndStep($ly, t#0), t#0)
               || _module.__default.TermSize($LS($LZ), _module.__default.FindAndStep($ly, t#0))
                 < _module.__default.TermSize($LS($LZ), t#0)))
         && $Is(_module.__default.FindAndStep($ly, t#0), Tclass._module.Term()));
// definition axiom for _module.__default.FindAndStep (revealed)
axiom {:id "id154"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.FindAndStep($LS($ly), t#0) } 
    _module.__default.FindAndStep#canCall(t#0)
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> $IsA#_module.Term(_module.__default.Step(t#0))
         && $IsA#_module.Term(t#0)
         && _module.__default.Step#canCall(t#0)
         && (!_module.Term#Equal(_module.__default.Step(t#0), t#0)
           ==> _module.__default.Step#canCall(t#0))
         && (_module.Term#Equal(_module.__default.Step(t#0), t#0)
           ==> 
          _module.Term.Apply_q(t#0)
           ==> $IsA#_module.Term(_module.__default.FindAndStep($ly, _module.Term.car(t#0)))
             && $IsA#_module.Term(_module.Term.car(t#0))
             && _module.__default.FindAndStep#canCall(_module.Term.car(t#0))
             && (!_module.Term#Equal(_module.__default.FindAndStep($ly, _module.Term.car(t#0)), _module.Term.car(t#0))
               ==> _module.__default.FindAndStep#canCall(_module.Term.car(t#0)))
             && (_module.Term#Equal(_module.__default.FindAndStep($ly, _module.Term.car(t#0)), _module.Term.car(t#0))
               ==> _module.__default.IsValue#canCall(_module.Term.car(t#0))
                 && (_module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                   ==> $IsA#_module.Term(_module.__default.FindAndStep($ly, _module.Term.cdr(t#0)))
                     && $IsA#_module.Term(_module.Term.cdr(t#0))
                     && _module.__default.FindAndStep#canCall(_module.Term.cdr(t#0)))
                 && (_module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                     && !_module.Term#Equal(_module.__default.FindAndStep($ly, _module.Term.cdr(t#0)), _module.Term.cdr(t#0))
                   ==> _module.__default.FindAndStep#canCall(_module.Term.cdr(t#0)))))
         && _module.__default.FindAndStep($LS($ly), t#0)
           == (if !_module.Term#Equal(_module.__default.Step(t#0), t#0)
             then _module.__default.Step(t#0)
             else (if !_module.Term.Apply_q(t#0)
               then t#0
               else (if !_module.Term#Equal(_module.__default.FindAndStep($ly, _module.Term.car(t#0)), _module.Term.car(t#0))
                 then #_module.Term.Apply(_module.__default.FindAndStep($ly, _module.Term.car(t#0)), _module.Term.cdr(t#0))
                 else (if _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                     && !_module.Term#Equal(_module.__default.FindAndStep($ly, _module.Term.cdr(t#0)), _module.Term.cdr(t#0))
                   then #_module.Term.Apply(_module.Term.car(t#0), _module.__default.FindAndStep($ly, _module.Term.cdr(t#0)))
                   else t#0)))));
// definition axiom for _module.__default.FindAndStep for all literals (revealed)
axiom {:id "id155"} 3 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    {:weight 3} { _module.__default.FindAndStep($LS($ly), Lit(t#0)) } 
    _module.__default.FindAndStep#canCall(Lit(t#0))
         || (3 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> $IsA#_module.Term(Lit(_module.__default.Step(Lit(t#0))))
         && $IsA#_module.Term(Lit(t#0))
         && _module.__default.Step#canCall(Lit(t#0))
         && (!_module.Term#Equal(_module.__default.Step(Lit(t#0)), t#0)
           ==> _module.__default.Step#canCall(Lit(t#0)))
         && (_module.Term#Equal(_module.__default.Step(Lit(t#0)), t#0)
           ==> 
          Lit(_module.Term.Apply_q(Lit(t#0)))
           ==> $IsA#_module.Term(Lit(_module.__default.FindAndStep($LS($ly), Lit(_module.Term.car(Lit(t#0))))))
             && $IsA#_module.Term(Lit(_module.Term.car(Lit(t#0))))
             && _module.__default.FindAndStep#canCall(Lit(_module.Term.car(Lit(t#0))))
             && (!_module.Term#Equal(_module.__default.FindAndStep($LS($ly), Lit(_module.Term.car(Lit(t#0)))), 
                _module.Term.car(Lit(t#0)))
               ==> _module.__default.FindAndStep#canCall(Lit(_module.Term.car(Lit(t#0)))))
             && (_module.Term#Equal(_module.__default.FindAndStep($LS($ly), Lit(_module.Term.car(Lit(t#0)))), 
                _module.Term.car(Lit(t#0)))
               ==> _module.__default.IsValue#canCall(Lit(_module.Term.car(Lit(t#0))))
                 && (Lit(_module.__default.IsValue($LS($LZ), Lit(_module.Term.car(Lit(t#0)))))
                   ==> $IsA#_module.Term(Lit(_module.__default.FindAndStep($LS($ly), Lit(_module.Term.cdr(Lit(t#0))))))
                     && $IsA#_module.Term(Lit(_module.Term.cdr(Lit(t#0))))
                     && _module.__default.FindAndStep#canCall(Lit(_module.Term.cdr(Lit(t#0)))))
                 && (_module.__default.IsValue($LS($LZ), Lit(_module.Term.car(Lit(t#0))))
                     && !_module.Term#Equal(_module.__default.FindAndStep($LS($ly), Lit(_module.Term.cdr(Lit(t#0)))), 
                      _module.Term.cdr(Lit(t#0)))
                   ==> _module.__default.FindAndStep#canCall(Lit(_module.Term.cdr(Lit(t#0)))))))
         && _module.__default.FindAndStep($LS($ly), Lit(t#0))
           == (if !_module.Term#Equal(_module.__default.Step(Lit(t#0)), t#0)
             then _module.__default.Step(Lit(t#0))
             else (if !Lit(_module.Term.Apply_q(Lit(t#0)))
               then t#0
               else (if !_module.Term#Equal(_module.__default.FindAndStep($LS($ly), Lit(_module.Term.car(Lit(t#0)))), 
                  _module.Term.car(Lit(t#0)))
                 then #_module.Term.Apply(Lit(_module.__default.FindAndStep($LS($ly), Lit(_module.Term.car(Lit(t#0))))), 
                  Lit(_module.Term.cdr(Lit(t#0))))
                 else (if _module.__default.IsValue($LS($LZ), Lit(_module.Term.car(Lit(t#0))))
                     && !_module.Term#Equal(_module.__default.FindAndStep($LS($ly), Lit(_module.Term.cdr(Lit(t#0)))), 
                      _module.Term.cdr(Lit(t#0)))
                   then #_module.Term.Apply(Lit(_module.Term.car(Lit(t#0))), 
                    Lit(_module.__default.FindAndStep($LS($ly), Lit(_module.Term.cdr(Lit(t#0))))))
                   else t#0)))));
}

function _module.__default.FindAndStep#canCall(t#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.FindAndStep($LS($ly), t#0) } 
  _module.__default.FindAndStep($LS($ly), t#0)
     == _module.__default.FindAndStep($ly, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.FindAndStep(AsFuelBottom($ly), t#0) } 
  _module.__default.FindAndStep($ly, t#0)
     == _module.__default.FindAndStep($LZ, t#0));

function _module.__default.FindAndStep#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.FindAndStep
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.FindAndStep#requires($ly, t#0) } 
  $Is(t#0, Tclass._module.Term())
     ==> _module.__default.FindAndStep#requires($ly, t#0) == true);

procedure {:verboseName "FindAndStep (well-formedness)"} CheckWellformed$$_module.__default.FindAndStep(t#0: DatatypeType where $Is(t#0, Tclass._module.Term()));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id156"} !_module.__default.ContainsS($LS($LZ), t#0)
     ==> !_module.__default.ContainsS($LS($LS($LZ)), _module.__default.FindAndStep($LS($LS($LZ)), t#0));
  ensures {:id "id157"} !_module.__default.ContainsS($LS($LZ), t#0)
     ==> _module.Term#Equal(_module.__default.FindAndStep($LS($LS($LZ)), t#0), t#0)
       || _module.__default.TermSize($LS($LS($LZ)), _module.__default.FindAndStep($LS($LS($LZ)), t#0))
         < _module.__default.TermSize($LS($LS($LZ)), t#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FindAndStep (well-formedness)"} CheckWellformed$$_module.__default.FindAndStep(t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##t#0: DatatypeType;
  var ##t#1: DatatypeType;
  var ##t#2: DatatypeType;
  var ##t#3: DatatypeType;
  var ##t#4: DatatypeType;
  var ##t#5: DatatypeType;
  var ##t#6: DatatypeType;
  var ##t#7: DatatypeType;
  var ##t#8: DatatypeType;
  var ##t#9: DatatypeType;
  var ##t#10: DatatypeType;
  var ##t#11: DatatypeType;
  var ##t#12: DatatypeType;
  var ##t#13: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.FindAndStep($LS($LZ), t#0), Tclass._module.Term());
        if (*)
        {
            ##t#0 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
            assume _module.__default.ContainsS#canCall(t#0);
            assume {:id "id158"} !_module.__default.ContainsS($LS($LZ), t#0);
            ##t#2 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#2, Tclass._module.Term(), $Heap);
            assert {:id "id159"} _module.Term#Equal(t#0, t#0) || DtRank(##t#2) < DtRank(t#0);
            assume _module.Term#Equal(t#0, t#0) || _module.__default.FindAndStep#canCall(t#0);
            ##t#1 := _module.__default.FindAndStep($LS($LZ), t#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
            assume _module.__default.ContainsS#canCall(_module.__default.FindAndStep($LS($LZ), t#0));
            assume {:id "id160"} !_module.__default.ContainsS($LS($LZ), _module.__default.FindAndStep($LS($LZ), t#0));
            ##t#3 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#3, Tclass._module.Term(), $Heap);
            assert {:id "id161"} _module.Term#Equal(t#0, t#0) || DtRank(##t#3) < DtRank(t#0);
            assume _module.Term#Equal(t#0, t#0) || _module.__default.FindAndStep#canCall(t#0);
            if (!_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0))
            {
                ##t#5 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#5, Tclass._module.Term(), $Heap);
                assert {:id "id162"} _module.Term#Equal(t#0, t#0) || DtRank(##t#5) < DtRank(t#0);
                assume _module.Term#Equal(t#0, t#0) || _module.__default.FindAndStep#canCall(t#0);
                ##t#4 := _module.__default.FindAndStep($LS($LZ), t#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#4, Tclass._module.Term(), $Heap);
                assume _module.__default.TermSize#canCall(_module.__default.FindAndStep($LS($LZ), t#0));
                ##t#6 := t#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#6, Tclass._module.Term(), $Heap);
                assume _module.__default.TermSize#canCall(t#0);
            }

            assume {:id "id163"} _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
               || _module.__default.TermSize($LS($LZ), _module.__default.FindAndStep($LS($LZ), t#0))
                 < _module.__default.TermSize($LS($LZ), t#0);
        }
        else
        {
            assume {:id "id164"} !_module.__default.ContainsS($LS($LZ), t#0)
               ==> !_module.__default.ContainsS($LS($LZ), _module.__default.FindAndStep($LS($LZ), t#0))
                 && (_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
                   || _module.__default.TermSize($LS($LZ), _module.__default.FindAndStep($LS($LZ), t#0))
                     < _module.__default.TermSize($LS($LZ), t#0));
        }

        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        ##t#7 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#7, Tclass._module.Term(), $Heap);
        assume _module.__default.Step#canCall(t#0);
        if (!_module.Term#Equal(_module.__default.Step(t#0), t#0))
        {
            ##t#8 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#8, Tclass._module.Term(), $Heap);
            assume _module.__default.Step#canCall(t#0);
            assume {:id "id165"} _module.__default.FindAndStep($LS($LZ), t#0) == _module.__default.Step(t#0);
            assume _module.__default.Step#canCall(t#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.FindAndStep($LS($LZ), t#0), Tclass._module.Term());
            return;
        }
        else
        {
            if (!_module.Term.Apply_q(t#0))
            {
                assume {:id "id166"} _module.__default.FindAndStep($LS($LZ), t#0) == t#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.FindAndStep($LS($LZ), t#0), Tclass._module.Term());
                return;
            }
            else
            {
                assert {:id "id167"} _module.Term.Apply_q(t#0);
                ##t#9 := _module.Term.car(t#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#9, Tclass._module.Term(), $Heap);
                assert {:id "id168"} DtRank(##t#9) < DtRank(t#0);
                assume _module.__default.FindAndStep#canCall(_module.Term.car(t#0));
                assert {:id "id169"} _module.Term.Apply_q(t#0);
                if (!_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), _module.Term.car(t#0)), 
                  _module.Term.car(t#0)))
                {
                    assert {:id "id170"} _module.Term.Apply_q(t#0);
                    ##t#10 := _module.Term.car(t#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#10, Tclass._module.Term(), $Heap);
                    assert {:id "id171"} DtRank(##t#10) < DtRank(t#0);
                    assume _module.__default.FindAndStep#canCall(_module.Term.car(t#0));
                    assert {:id "id172"} _module.Term.Apply_q(t#0);
                    assume {:id "id173"} _module.__default.FindAndStep($LS($LZ), t#0)
                       == #_module.Term.Apply(_module.__default.FindAndStep($LS($LZ), _module.Term.car(t#0)), 
                        _module.Term.cdr(t#0));
                    assume _module.__default.FindAndStep#canCall(_module.Term.car(t#0));
                    // CheckWellformedWithResult: any expression
                    assume $Is(_module.__default.FindAndStep($LS($LZ), t#0), Tclass._module.Term());
                    return;
                }
                else
                {
                    assert {:id "id174"} _module.Term.Apply_q(t#0);
                    ##t#11 := _module.Term.car(t#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#11, Tclass._module.Term(), $Heap);
                    assume _module.__default.IsValue#canCall(_module.Term.car(t#0));
                    if (_module.__default.IsValue($LS($LZ), _module.Term.car(t#0)))
                    {
                        assert {:id "id175"} _module.Term.Apply_q(t#0);
                        ##t#12 := _module.Term.cdr(t#0);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#12, Tclass._module.Term(), $Heap);
                        assert {:id "id176"} DtRank(##t#12) < DtRank(t#0);
                        assume _module.__default.FindAndStep#canCall(_module.Term.cdr(t#0));
                        assert {:id "id177"} _module.Term.Apply_q(t#0);
                    }

                    if (_module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                       && !_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), _module.Term.cdr(t#0)), 
                        _module.Term.cdr(t#0)))
                    {
                        assert {:id "id178"} _module.Term.Apply_q(t#0);
                        assert {:id "id179"} _module.Term.Apply_q(t#0);
                        ##t#13 := _module.Term.cdr(t#0);
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#13, Tclass._module.Term(), $Heap);
                        assert {:id "id180"} DtRank(##t#13) < DtRank(t#0);
                        assume _module.__default.FindAndStep#canCall(_module.Term.cdr(t#0));
                        assume {:id "id181"} _module.__default.FindAndStep($LS($LZ), t#0)
                           == #_module.Term.Apply(_module.Term.car(t#0), 
                            _module.__default.FindAndStep($LS($LZ), _module.Term.cdr(t#0)));
                        assume _module.__default.FindAndStep#canCall(_module.Term.cdr(t#0));
                        // CheckWellformedWithResult: any expression
                        assume $Is(_module.__default.FindAndStep($LS($LZ), t#0), Tclass._module.Term());
                        return;
                    }
                    else
                    {
                        assume {:id "id182"} _module.__default.FindAndStep($LS($LZ), t#0) == t#0;
                        assume true;
                        // CheckWellformedWithResult: any expression
                        assume $Is(_module.__default.FindAndStep($LS($LZ), t#0), Tclass._module.Term());
                        return;
                    }
                }
            }
        }

        assume false;
    }
}



// function declaration for _module._default.IsTerminal
function _module.__default.IsTerminal(t#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.IsTerminal (revealed)
axiom {:id "id183"} 4 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    { _module.__default.IsTerminal(t#0) } 
    _module.__default.IsTerminal#canCall(t#0)
         || (4 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (forall C#0: DatatypeType, u#0: DatatypeType :: 
          { _module.__default.Step(u#0), _module.__default.IsContext($LS($LZ), C#0) } 
            { _module.__default.EvalExpr($LS($LZ), C#0, u#0) } 
          $Is(C#0, Tclass._module.Context()) && $Is(u#0, Tclass._module.Term())
             ==> _module.__default.IsContext#canCall(C#0)
               && (_module.__default.IsContext($LS($LZ), C#0)
                 ==> $IsA#_module.Term(t#0)
                   && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#0, u#0))
                   && _module.__default.EvalExpr#canCall(C#0, u#0)
                   && (_module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0))
                     ==> $IsA#_module.Term(_module.__default.Step(u#0))
                       && $IsA#_module.Term(u#0)
                       && _module.__default.Step#canCall(u#0))))
         && _module.__default.IsTerminal(t#0)
           == !(exists C#0: DatatypeType, u#0: DatatypeType :: 
            { _module.__default.Step(u#0), _module.__default.IsContext($LS($LZ), C#0) } 
              { _module.__default.EvalExpr($LS($LZ), C#0, u#0) } 
            $Is(C#0, Tclass._module.Context())
               && $Is(u#0, Tclass._module.Term())
               && 
              _module.__default.IsContext($LS($LZ), C#0)
               && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0))
               && !_module.Term#Equal(_module.__default.Step(u#0), u#0)));
// definition axiom for _module.__default.IsTerminal for all literals (revealed)
axiom {:id "id184"} 4 <= $FunctionContextHeight
   ==> (forall t#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsTerminal(Lit(t#0)) } 
    _module.__default.IsTerminal#canCall(Lit(t#0))
         || (4 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (forall C#1: DatatypeType, u#1: DatatypeType :: 
          { _module.__default.Step(u#1), _module.__default.IsContext($LS($LZ), C#1) } 
            { _module.__default.EvalExpr($LS($LZ), C#1, u#1) } 
          $Is(C#1, Tclass._module.Context()) && $Is(u#1, Tclass._module.Term())
             ==> _module.__default.IsContext#canCall(C#1)
               && (_module.__default.IsContext($LS($LZ), C#1)
                 ==> $IsA#_module.Term(Lit(t#0))
                   && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#1, u#1))
                   && _module.__default.EvalExpr#canCall(C#1, u#1)
                   && (_module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
                     ==> $IsA#_module.Term(_module.__default.Step(u#1))
                       && $IsA#_module.Term(u#1)
                       && _module.__default.Step#canCall(u#1))))
         && _module.__default.IsTerminal(Lit(t#0))
           == !(exists C#1: DatatypeType, u#1: DatatypeType :: 
            { _module.__default.Step(u#1), _module.__default.IsContext($LS($LZ), C#1) } 
              { _module.__default.EvalExpr($LS($LZ), C#1, u#1) } 
            $Is(C#1, Tclass._module.Context())
               && $Is(u#1, Tclass._module.Term())
               && 
              _module.__default.IsContext($LS($LZ), C#1)
               && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
               && !_module.Term#Equal(_module.__default.Step(u#1), u#1)));
}

function _module.__default.IsTerminal#canCall(t#0: DatatypeType) : bool;

function _module.__default.IsTerminal#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.IsTerminal
axiom (forall t#0: DatatypeType :: 
  { _module.__default.IsTerminal#requires(t#0) } 
  $Is(t#0, Tclass._module.Term())
     ==> _module.__default.IsTerminal#requires(t#0) == true);

procedure {:verboseName "IsTerminal (well-formedness)"} CheckWellformed$$_module.__default.IsTerminal(t#0: DatatypeType where $Is(t#0, Tclass._module.Term()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IsTerminal (well-formedness)"} CheckWellformed$$_module.__default.IsTerminal(t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var C#2: DatatypeType;
  var u#2: DatatypeType;
  var ##C#0: DatatypeType;
  var ##C#1: DatatypeType;
  var ##t#0: DatatypeType;
  var ##t#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
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
        // Begin Comprehension WF check
        havoc C#2;
        havoc u#2;
        if ($Is(C#2, Tclass._module.Context())
           && $IsAlloc(C#2, Tclass._module.Context(), $Heap)
           && 
          $Is(u#2, Tclass._module.Term())
           && $IsAlloc(u#2, Tclass._module.Term(), $Heap))
        {
            ##C#0 := C#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##C#0, Tclass._module.Context(), $Heap);
            assume _module.__default.IsContext#canCall(C#2);
            if (_module.__default.IsContext($LS($LZ), C#2))
            {
                ##C#1 := C#2;
                // assume allocatedness for argument to function
                assume $IsAlloc(##C#1, Tclass._module.Context(), $Heap);
                ##t#0 := u#2;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
                assert {:id "id185"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
                   ==> _module.__default.IsContext($LS($LZ), ##C#1)
                     || (_module.Context.Hole_q(##C#1) ==> Lit(true));
                assert {:id "id186"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
                   ==> _module.__default.IsContext($LS($LZ), ##C#1)
                     || (!_module.Context.Hole_q(##C#1)
                       ==> 
                      _module.Context.C__term_q(##C#1)
                       ==> (var t#1 := _module.Context._h1(##C#1); 
                        (var D#0 := _module.Context._h0(##C#1); 
                          _module.__default.IsContext($LS($LS($LZ)), D#0))));
                assert {:id "id187"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
                   ==> _module.__default.IsContext($LS($LZ), ##C#1)
                     || (!_module.Context.Hole_q(##C#1)
                       ==> 
                      !_module.Context.C__term_q(##C#1)
                       ==> (var D#1 := _module.Context._h3(##C#1); 
                        (var v#0 := _module.Context._h2(##C#1); 
                          _module.__default.IsValue#canCall(v#0)
                             ==> _module.__default.IsValue($LS($LZ), v#0)
                               || (_module.Term.S_q(v#0) ==> Lit(true)))));
                assert {:id "id188"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
                   ==> _module.__default.IsContext($LS($LZ), ##C#1)
                     || (!_module.Context.Hole_q(##C#1)
                       ==> 
                      !_module.Context.C__term_q(##C#1)
                       ==> (var D#1 := _module.Context._h3(##C#1); 
                        (var v#0 := _module.Context._h2(##C#1); 
                          _module.__default.IsValue#canCall(v#0)
                             ==> _module.__default.IsValue($LS($LZ), v#0)
                               || (!_module.Term.S_q(v#0) ==> _module.Term.K_q(v#0) ==> Lit(true)))));
                assert {:id "id189"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
                   ==> _module.__default.IsContext($LS($LZ), ##C#1)
                     || (!_module.Context.Hole_q(##C#1)
                       ==> 
                      !_module.Context.C__term_q(##C#1)
                       ==> (var D#1 := _module.Context._h3(##C#1); 
                        (var v#0 := _module.Context._h2(##C#1); 
                          _module.__default.IsValue#canCall(v#0)
                             ==> _module.__default.IsValue($LS($LZ), v#0)
                               || (!_module.Term.S_q(v#0)
                                 ==> 
                                !_module.Term.K_q(v#0)
                                 ==> (var b#0 := _module.Term.cdr(v#0); 
                                  (var a#0 := _module.Term.car(v#0); 
                                    _module.Term.S_q(a#0)
                                       ==> 
                                      _module.__default.IsValue($LS($LZ), a#0)
                                       ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))));
                assert {:id "id190"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
                   ==> _module.__default.IsContext($LS($LZ), ##C#1)
                     || (!_module.Context.Hole_q(##C#1)
                       ==> 
                      !_module.Context.C__term_q(##C#1)
                       ==> (var D#1 := _module.Context._h3(##C#1); 
                        (var v#0 := _module.Context._h2(##C#1); 
                          _module.__default.IsValue#canCall(v#0)
                             ==> _module.__default.IsValue($LS($LZ), v#0)
                               || (!_module.Term.S_q(v#0)
                                 ==> 
                                !_module.Term.K_q(v#0)
                                 ==> (var b#0 := _module.Term.cdr(v#0); 
                                  (var a#0 := _module.Term.car(v#0); 
                                    !_module.Term.S_q(a#0)
                                       ==> 
                                      _module.Term.K_q(a#0)
                                       ==> 
                                      _module.__default.IsValue($LS($LZ), a#0)
                                       ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))));
                assert {:id "id191"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
                   ==> _module.__default.IsContext($LS($LZ), ##C#1)
                     || (!_module.Context.Hole_q(##C#1)
                       ==> 
                      !_module.Context.C__term_q(##C#1)
                       ==> (var D#1 := _module.Context._h3(##C#1); 
                        (var v#0 := _module.Context._h2(##C#1); 
                          _module.__default.IsValue#canCall(v#0)
                             ==> _module.__default.IsValue($LS($LZ), v#0)
                               || (!_module.Term.S_q(v#0)
                                 ==> 
                                !_module.Term.K_q(v#0)
                                 ==> (var b#0 := _module.Term.cdr(v#0); 
                                  (var a#0 := _module.Term.car(v#0); 
                                    !_module.Term.S_q(a#0)
                                       ==> 
                                      !_module.Term.K_q(a#0)
                                       ==> (var y#0 := _module.Term.cdr(a#0); 
                                        (var x#0 := _module.Term.car(a#0); 
                                          (_module.Term#Equal(x#0, #_module.Term.S())
                                               && _module.__default.IsValue($LS($LZ), y#0)
                                               && _module.__default.IsValue($LS($LZ), b#0)
                                             ==> _module.__default.IsValue($LS($LZ), a#0))
                                             ==> _module.Term#Equal(x#0, #_module.Term.S())))))))));
                assert {:id "id192"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
                   ==> _module.__default.IsContext($LS($LZ), ##C#1)
                     || (!_module.Context.Hole_q(##C#1)
                       ==> 
                      !_module.Context.C__term_q(##C#1)
                       ==> (var D#1 := _module.Context._h3(##C#1); 
                        (var v#0 := _module.Context._h2(##C#1); 
                          _module.__default.IsValue#canCall(v#0)
                             ==> _module.__default.IsValue($LS($LZ), v#0)
                               || (!_module.Term.S_q(v#0)
                                 ==> 
                                !_module.Term.K_q(v#0)
                                 ==> (var b#0 := _module.Term.cdr(v#0); 
                                  (var a#0 := _module.Term.car(v#0); 
                                    !_module.Term.S_q(a#0)
                                       ==> 
                                      !_module.Term.K_q(a#0)
                                       ==> (var y#0 := _module.Term.cdr(a#0); 
                                        (var x#0 := _module.Term.car(a#0); 
                                          (_module.Term#Equal(x#0, #_module.Term.S())
                                               && _module.__default.IsValue($LS($LZ), y#0)
                                               && _module.__default.IsValue($LS($LZ), b#0)
                                             ==> _module.__default.IsValue($LS($LZ), a#0))
                                             ==> _module.__default.IsValue($LS($LS($LZ)), y#0)))))))));
                assert {:id "id193"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
                   ==> _module.__default.IsContext($LS($LZ), ##C#1)
                     || (!_module.Context.Hole_q(##C#1)
                       ==> 
                      !_module.Context.C__term_q(##C#1)
                       ==> (var D#1 := _module.Context._h3(##C#1); 
                        (var v#0 := _module.Context._h2(##C#1); 
                          _module.__default.IsValue#canCall(v#0)
                             ==> _module.__default.IsValue($LS($LZ), v#0)
                               || (!_module.Term.S_q(v#0)
                                 ==> 
                                !_module.Term.K_q(v#0)
                                 ==> (var b#0 := _module.Term.cdr(v#0); 
                                  (var a#0 := _module.Term.car(v#0); 
                                    !_module.Term.S_q(a#0)
                                       ==> 
                                      !_module.Term.K_q(a#0)
                                       ==> (var y#0 := _module.Term.cdr(a#0); 
                                        (var x#0 := _module.Term.car(a#0); 
                                          (_module.Term#Equal(x#0, #_module.Term.S())
                                               && _module.__default.IsValue($LS($LZ), y#0)
                                               && _module.__default.IsValue($LS($LZ), b#0)
                                             ==> _module.__default.IsValue($LS($LZ), a#0))
                                             ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))))));
                assert {:id "id194"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
                   ==> _module.__default.IsContext($LS($LZ), ##C#1)
                     || (!_module.Context.Hole_q(##C#1)
                       ==> 
                      !_module.Context.C__term_q(##C#1)
                       ==> (var D#1 := _module.Context._h3(##C#1); 
                        (var v#0 := _module.Context._h2(##C#1); 
                          _module.__default.IsContext($LS($LS($LZ)), D#1))));
                assume _module.__default.IsContext($LS($LZ), ##C#1);
                assume _module.__default.EvalExpr#canCall(C#2, u#2);
            }

            if (_module.__default.IsContext($LS($LZ), C#2)
               && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#2, u#2)))
            {
                ##t#1 := u#2;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
                assume _module.__default.Step#canCall(u#2);
            }
        }

        // End Comprehension WF check
        assume {:id "id195"} _module.__default.IsTerminal(t#0)
           == !(exists C#3: DatatypeType, u#3: DatatypeType :: 
            { _module.__default.Step(u#3), _module.__default.IsContext($LS($LZ), C#3) } 
              { _module.__default.EvalExpr($LS($LZ), C#3, u#3) } 
            $Is(C#3, Tclass._module.Context())
               && $Is(u#3, Tclass._module.Term())
               && 
              _module.__default.IsContext($LS($LZ), C#3)
               && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#3, u#3))
               && !_module.Term#Equal(_module.__default.Step(u#3), u#3));
        assume (forall C#3: DatatypeType, u#3: DatatypeType :: 
          { _module.__default.Step(u#3), _module.__default.IsContext($LS($LZ), C#3) } 
            { _module.__default.EvalExpr($LS($LZ), C#3, u#3) } 
          $Is(C#3, Tclass._module.Context()) && $Is(u#3, Tclass._module.Term())
             ==> _module.__default.IsContext#canCall(C#3)
               && (_module.__default.IsContext($LS($LZ), C#3)
                 ==> $IsA#_module.Term(t#0)
                   && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#3, u#3))
                   && _module.__default.EvalExpr#canCall(C#3, u#3)
                   && (_module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#3, u#3))
                     ==> $IsA#_module.Term(_module.__default.Step(u#3))
                       && $IsA#_module.Term(u#3)
                       && _module.__default.Step#canCall(u#3))));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.IsTerminal(t#0), TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "Theorem_FindAndStep (well-formedness)"} CheckWellFormed$$_module.__default.Theorem__FindAndStep(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0));
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem_FindAndStep (well-formedness)"} CheckWellFormed$$_module.__default.Theorem__FindAndStep(t#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##t#0: DatatypeType;
  var ##t#1: DatatypeType;
  var ##t#2: DatatypeType;
  var C#0: DatatypeType;
  var u#0: DatatypeType;
  var ##C#0: DatatypeType;
  var ##C#1: DatatypeType;
  var ##t#3: DatatypeType;
  var ##t#4: DatatypeType;
  var ##t#5: DatatypeType;
  var ##C#2: DatatypeType;
  var ##t#6: DatatypeType;
  var ##t#7: DatatypeType;


    // AddMethodImpl: Theorem_FindAndStep, CheckWellFormed$$_module.__default.Theorem__FindAndStep
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    if (*)
    {
        ##t#0 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
        assume _module.__default.FindAndStep#canCall(t#0);
        assume {:id "id196"} _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0);
        ##t#1 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
        assume _module.__default.IsTerminal#canCall(t#0);
        assume {:id "id197"} _module.__default.IsTerminal(t#0);
    }
    else
    {
        assume {:id "id198"} _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
           ==> _module.__default.IsTerminal(t#0);
    }

    if (*)
    {
        ##t#2 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#2, Tclass._module.Term(), $Heap);
        assume _module.__default.FindAndStep#canCall(t#0);
        assume {:id "id199"} !_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0);
        havoc C#0;
        havoc u#0;
        assume $Is(C#0, Tclass._module.Context())
           && $IsAlloc(C#0, Tclass._module.Context(), $Heap)
           && 
          $Is(u#0, Tclass._module.Term())
           && $IsAlloc(u#0, Tclass._module.Term(), $Heap);
        ##C#0 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#0, Tclass._module.Context(), $Heap);
        assume _module.__default.IsContext#canCall(C#0);
        assume {:id "id200"} _module.__default.IsContext($LS($LZ), C#0);
        ##C#1 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#1, Tclass._module.Context(), $Heap);
        ##t#3 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#3, Tclass._module.Term(), $Heap);
        assert {:id "id201"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (_module.Context.Hole_q(##C#1) ==> Lit(true));
        assert {:id "id202"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              _module.Context.C__term_q(##C#1)
               ==> (var t#1 := _module.Context._h1(##C#1); 
                (var D#0 := _module.Context._h0(##C#1); 
                  _module.__default.IsContext($LS($LS($LZ)), D#0))));
        assert {:id "id203"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (_module.Term.S_q(v#0) ==> Lit(true)))));
        assert {:id "id204"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0) ==> _module.Term.K_q(v#0) ==> Lit(true)))));
        assert {:id "id205"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            _module.Term.S_q(a#0)
                               ==> 
                              _module.__default.IsValue($LS($LZ), a#0)
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))));
        assert {:id "id206"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              _module.Term.K_q(a#0)
                               ==> 
                              _module.__default.IsValue($LS($LZ), a#0)
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))));
        assert {:id "id207"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              !_module.Term.K_q(a#0)
                               ==> (var y#0 := _module.Term.cdr(a#0); 
                                (var x#0 := _module.Term.car(a#0); 
                                  (_module.Term#Equal(x#0, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#0)
                                       && _module.__default.IsValue($LS($LZ), b#0)
                                     ==> _module.__default.IsValue($LS($LZ), a#0))
                                     ==> _module.Term#Equal(x#0, #_module.Term.S())))))))));
        assert {:id "id208"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              !_module.Term.K_q(a#0)
                               ==> (var y#0 := _module.Term.cdr(a#0); 
                                (var x#0 := _module.Term.car(a#0); 
                                  (_module.Term#Equal(x#0, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#0)
                                       && _module.__default.IsValue($LS($LZ), b#0)
                                     ==> _module.__default.IsValue($LS($LZ), a#0))
                                     ==> _module.__default.IsValue($LS($LS($LZ)), y#0)))))))));
        assert {:id "id209"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              !_module.Term.K_q(a#0)
                               ==> (var y#0 := _module.Term.cdr(a#0); 
                                (var x#0 := _module.Term.car(a#0); 
                                  (_module.Term#Equal(x#0, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#0)
                                       && _module.__default.IsValue($LS($LZ), b#0)
                                     ==> _module.__default.IsValue($LS($LZ), a#0))
                                     ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))))));
        assert {:id "id210"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsContext($LS($LS($LZ)), D#1))));
        assume _module.__default.IsContext($LS($LZ), ##C#1);
        assume _module.__default.EvalExpr#canCall(C#0, u#0);
        assume {:id "id211"} _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0));
        ##t#4 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#4, Tclass._module.Term(), $Heap);
        assume _module.__default.Step#canCall(u#0);
        assume {:id "id212"} !_module.Term#Equal(_module.__default.Step(u#0), u#0);
        ##t#5 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#5, Tclass._module.Term(), $Heap);
        assume _module.__default.FindAndStep#canCall(t#0);
        ##C#2 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#2, Tclass._module.Context(), $Heap);
        ##t#7 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#7, Tclass._module.Term(), $Heap);
        assume _module.__default.Step#canCall(u#0);
        ##t#6 := _module.__default.Step(u#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#6, Tclass._module.Term(), $Heap);
        assert {:id "id213"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (_module.Context.Hole_q(##C#2) ==> Lit(true));
        assert {:id "id214"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              _module.Context.C__term_q(##C#2)
               ==> (var t#3 := _module.Context._h1(##C#2); 
                (var D#4 := _module.Context._h0(##C#2); 
                  _module.__default.IsContext($LS($LS($LZ)), D#4))));
        assert {:id "id215"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (_module.Term.S_q(v#2) ==> Lit(true)))));
        assert {:id "id216"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2) ==> _module.Term.K_q(v#2) ==> Lit(true)))));
        assert {:id "id217"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2)
                         ==> 
                        !_module.Term.K_q(v#2)
                         ==> (var b#2 := _module.Term.cdr(v#2); 
                          (var a#2 := _module.Term.car(v#2); 
                            _module.Term.S_q(a#2)
                               ==> 
                              _module.__default.IsValue($LS($LZ), a#2)
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))));
        assert {:id "id218"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2)
                         ==> 
                        !_module.Term.K_q(v#2)
                         ==> (var b#2 := _module.Term.cdr(v#2); 
                          (var a#2 := _module.Term.car(v#2); 
                            !_module.Term.S_q(a#2)
                               ==> 
                              _module.Term.K_q(a#2)
                               ==> 
                              _module.__default.IsValue($LS($LZ), a#2)
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))));
        assert {:id "id219"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2)
                         ==> 
                        !_module.Term.K_q(v#2)
                         ==> (var b#2 := _module.Term.cdr(v#2); 
                          (var a#2 := _module.Term.car(v#2); 
                            !_module.Term.S_q(a#2)
                               ==> 
                              !_module.Term.K_q(a#2)
                               ==> (var y#2 := _module.Term.cdr(a#2); 
                                (var x#2 := _module.Term.car(a#2); 
                                  (_module.Term#Equal(x#2, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#2)
                                       && _module.__default.IsValue($LS($LZ), b#2)
                                     ==> _module.__default.IsValue($LS($LZ), a#2))
                                     ==> _module.Term#Equal(x#2, #_module.Term.S())))))))));
        assert {:id "id220"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2)
                         ==> 
                        !_module.Term.K_q(v#2)
                         ==> (var b#2 := _module.Term.cdr(v#2); 
                          (var a#2 := _module.Term.car(v#2); 
                            !_module.Term.S_q(a#2)
                               ==> 
                              !_module.Term.K_q(a#2)
                               ==> (var y#2 := _module.Term.cdr(a#2); 
                                (var x#2 := _module.Term.car(a#2); 
                                  (_module.Term#Equal(x#2, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#2)
                                       && _module.__default.IsValue($LS($LZ), b#2)
                                     ==> _module.__default.IsValue($LS($LZ), a#2))
                                     ==> _module.__default.IsValue($LS($LS($LZ)), y#2)))))))));
        assert {:id "id221"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2)
                         ==> 
                        !_module.Term.K_q(v#2)
                         ==> (var b#2 := _module.Term.cdr(v#2); 
                          (var a#2 := _module.Term.car(v#2); 
                            !_module.Term.S_q(a#2)
                               ==> 
                              !_module.Term.K_q(a#2)
                               ==> (var y#2 := _module.Term.cdr(a#2); 
                                (var x#2 := _module.Term.car(a#2); 
                                  (_module.Term#Equal(x#2, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#2)
                                       && _module.__default.IsValue($LS($LZ), b#2)
                                     ==> _module.__default.IsValue($LS($LZ), a#2))
                                     ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))))));
        assert {:id "id222"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsContext($LS($LS($LZ)), D#5))));
        assume _module.__default.IsContext($LS($LZ), ##C#2);
        assume _module.__default.EvalExpr#canCall(C#0, _module.__default.Step(u#0));
        assume {:id "id223"} _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), 
          _module.__default.EvalExpr($LS($LZ), C#0, _module.__default.Step(u#0)));
    }
    else
    {
        assume {:id "id224"} !_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
           ==> (exists C#1: DatatypeType, u#1: DatatypeType :: 
            { _module.__default.Step(u#1), _module.__default.IsContext($LS($LZ), C#1) } 
            $Is(C#1, Tclass._module.Context())
               && $Is(u#1, Tclass._module.Term())
               && 
              _module.__default.IsContext($LS($LZ), C#1)
               && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
               && !_module.Term#Equal(_module.__default.Step(u#1), u#1)
               && _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), 
                _module.__default.EvalExpr($LS($LZ), C#1, _module.__default.Step(u#1))));
    }
}



procedure {:verboseName "Theorem_FindAndStep (call)"} Call$$_module.__default.Theorem__FindAndStep(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), t#0))
     && $IsA#_module.Term(t#0)
     && _module.__default.FindAndStep#canCall(t#0)
     && (_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
       ==> _module.__default.IsTerminal#canCall(t#0));
  free ensures {:id "id225"} _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
     ==> _module.__default.IsTerminal#canCall(t#0)
       && 
      _module.__default.IsTerminal(t#0)
       && !(exists C#2: DatatypeType, u#2: DatatypeType :: 
        { _module.__default.Step(u#2), _module.__default.IsContext($LS($LZ), C#2) } 
          { _module.__default.EvalExpr($LS($LZ), C#2, u#2) } 
        $Is(C#2, Tclass._module.Context())
           && $Is(u#2, Tclass._module.Term())
           && 
          _module.__default.IsContext($LS($LZ), C#2)
           && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#2, u#2))
           && !_module.Term#Equal(_module.__default.Step(u#2), u#2));
  free ensures $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), t#0))
     && $IsA#_module.Term(t#0)
     && _module.__default.FindAndStep#canCall(t#0)
     && (!_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
       ==> (forall C#1: DatatypeType, u#1: DatatypeType :: 
        { _module.__default.Step(u#1), _module.__default.IsContext($LS($LZ), C#1) } 
        $Is(C#1, Tclass._module.Context()) && $Is(u#1, Tclass._module.Term())
           ==> _module.__default.IsContext#canCall(C#1)
             && (_module.__default.IsContext($LS($LZ), C#1)
               ==> $IsA#_module.Term(t#0)
                 && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#1, u#1))
                 && _module.__default.EvalExpr#canCall(C#1, u#1)
                 && (_module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
                   ==> $IsA#_module.Term(_module.__default.Step(u#1))
                     && $IsA#_module.Term(u#1)
                     && _module.__default.Step#canCall(u#1)
                     && (!_module.Term#Equal(_module.__default.Step(u#1), u#1)
                       ==> $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), t#0))
                         && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#1, _module.__default.Step(u#1)))
                         && 
                        _module.__default.FindAndStep#canCall(t#0)
                         && 
                        _module.__default.Step#canCall(u#1)
                         && _module.__default.EvalExpr#canCall(C#1, _module.__default.Step(u#1)))))));
  free ensures {:id "id226"} !_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
     ==> (exists C#1: DatatypeType, u#1: DatatypeType :: 
      { _module.__default.Step(u#1), _module.__default.IsContext($LS($LS($LZ)), C#1) } 
      $Is(C#1, Tclass._module.Context())
         && $Is(u#1, Tclass._module.Term())
         && 
        _module.__default.IsContext($LS($LS($LZ)), C#1)
         && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LS($LZ)), C#1, u#1))
         && !_module.Term#Equal(_module.__default.Step(u#1), u#1)
         && _module.Term#Equal(_module.__default.FindAndStep($LS($LS($LZ)), t#0), 
          _module.__default.EvalExpr($LS($LS($LZ)), C#1, _module.__default.Step(u#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Theorem_FindAndStep (correctness)"} Impl$$_module.__default.Theorem__FindAndStep(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), t#0))
     && $IsA#_module.Term(t#0)
     && _module.__default.FindAndStep#canCall(t#0)
     && (_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
       ==> _module.__default.IsTerminal#canCall(t#0));
  ensures {:id "id227"} _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
     ==> 
    _module.__default.IsTerminal#canCall(t#0)
     ==> _module.__default.IsTerminal(t#0)
       || !(exists C#3: DatatypeType, u#3: DatatypeType :: 
        { _module.__default.Step(u#3), _module.__default.IsContext($LS($LS($LZ)), C#3) } 
          { _module.__default.EvalExpr($LS($LS($LZ)), C#3, u#3) } 
        $Is(C#3, Tclass._module.Context())
           && $Is(u#3, Tclass._module.Term())
           && 
          _module.__default.IsContext($LS($LS($LZ)), C#3)
           && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LS($LZ)), C#3, u#3))
           && !_module.Term#Equal(_module.__default.Step(u#3), u#3));
  free ensures $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), t#0))
     && $IsA#_module.Term(t#0)
     && _module.__default.FindAndStep#canCall(t#0)
     && (!_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
       ==> (forall C#1: DatatypeType, u#1: DatatypeType :: 
        { _module.__default.Step(u#1), _module.__default.IsContext($LS($LZ), C#1) } 
        $Is(C#1, Tclass._module.Context()) && $Is(u#1, Tclass._module.Term())
           ==> _module.__default.IsContext#canCall(C#1)
             && (_module.__default.IsContext($LS($LZ), C#1)
               ==> $IsA#_module.Term(t#0)
                 && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#1, u#1))
                 && _module.__default.EvalExpr#canCall(C#1, u#1)
                 && (_module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
                   ==> $IsA#_module.Term(_module.__default.Step(u#1))
                     && $IsA#_module.Term(u#1)
                     && _module.__default.Step#canCall(u#1)
                     && (!_module.Term#Equal(_module.__default.Step(u#1), u#1)
                       ==> $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), t#0))
                         && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#1, _module.__default.Step(u#1)))
                         && 
                        _module.__default.FindAndStep#canCall(t#0)
                         && 
                        _module.__default.Step#canCall(u#1)
                         && _module.__default.EvalExpr#canCall(C#1, _module.__default.Step(u#1)))))));
  ensures {:id "id228"} !_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
     ==> (exists C#1: DatatypeType, u#1: DatatypeType :: 
      { _module.__default.Step(u#1), _module.__default.IsContext($LS($LZ), C#1) } 
      $Is(C#1, Tclass._module.Context())
         && $Is(u#1, Tclass._module.Term())
         && 
        _module.__default.IsContext($LS($LZ), C#1)
         && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
         && !_module.Term#Equal(_module.__default.Step(u#1), u#1)
         && _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), 
          _module.__default.EvalExpr($LS($LZ), C#1, _module.__default.Step(u#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Theorem_FindAndStep (correctness)"} Impl$$_module.__default.Theorem__FindAndStep(t#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var r#0: DatatypeType
     where $Is(r#0, Tclass._module.Term()) && $IsAlloc(r#0, Tclass._module.Term(), $Heap);
  var C#5: DatatypeType
     where $Is(C#5, Tclass._module.Context())
       && $IsAlloc(C#5, Tclass._module.Context(), $Heap);
  var u#5: DatatypeType
     where $Is(u#5, Tclass._module.Term()) && $IsAlloc(u#5, Tclass._module.Term(), $Heap);
  var $rhs##0: DatatypeType;
  var $rhs##1: DatatypeType;
  var $rhs##2: DatatypeType;
  var t##0: DatatypeType;

    // AddMethodImpl: Theorem_FindAndStep, Impl$$_module.__default.Theorem__FindAndStep
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#_module.Term(t#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#t0#0: DatatypeType :: 
      { _module.__default.IsTerminal($ih#t0#0) } 
        { _module.__default.FindAndStep($LS($LZ), $ih#t0#0) } 
      $Is($ih#t0#0, Tclass._module.Term())
           && Lit(true)
           && DtRank($ih#t0#0) < DtRank(t#0)
         ==> (_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), $ih#t0#0), $ih#t0#0)
             ==> _module.__default.IsTerminal($ih#t0#0))
           && (!_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), $ih#t0#0), $ih#t0#0)
             ==> (exists C#4: DatatypeType, u#4: DatatypeType :: 
              { _module.__default.Step(u#4), _module.__default.IsContext($LS($LZ), C#4) } 
              $Is(C#4, Tclass._module.Context())
                 && $Is(u#4, Tclass._module.Term())
                 && 
                _module.__default.IsContext($LS($LZ), C#4)
                 && _module.Term#Equal($ih#t0#0, _module.__default.EvalExpr($LS($LZ), C#4, u#4))
                 && !_module.Term#Equal(_module.__default.Step(u#4), u#4)
                 && _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), $ih#t0#0), 
                  _module.__default.EvalExpr($LS($LZ), C#4, _module.__default.Step(u#4))))));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(187,35)
    assume true;
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type Term
    // TrCallStmt: Adding lhs with type Context
    // TrCallStmt: Adding lhs with type Term
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := t#0;
    call {:id "id229"} $rhs##0, $rhs##1, $rhs##2 := Call$$_module.__default.Lemma__FindAndStep(t##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##0;
    C#5 := $rhs##1;
    u#5 := $rhs##2;
}



procedure {:verboseName "Lemma_FindAndStep (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__FindAndStep(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Term()) && $IsAlloc(r#0, Tclass._module.Term(), $Heap), 
    C#0: DatatypeType
       where $Is(C#0, Tclass._module.Context())
         && $IsAlloc(C#0, Tclass._module.Context(), $Heap), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Term()) && $IsAlloc(u#0, Tclass._module.Term(), $Heap));
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_FindAndStep (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__FindAndStep(t#0: DatatypeType)
   returns (r#0: DatatypeType, C#0: DatatypeType, u#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##t#0: DatatypeType;
  var ##t#1: DatatypeType;
  var ##C#0: DatatypeType;
  var ##C#1: DatatypeType;
  var ##t#2: DatatypeType;
  var ##t#3: DatatypeType;
  var ##C#2: DatatypeType;
  var ##t#4: DatatypeType;
  var ##t#5: DatatypeType;


    // AddMethodImpl: Lemma_FindAndStep, CheckWellFormed$$_module.__default.Lemma__FindAndStep
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc r#0, C#0, u#0;
    ##t#0 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
    assume _module.__default.FindAndStep#canCall(t#0);
    assume {:id "id233"} _module.Term#Equal(r#0, _module.__default.FindAndStep($LS($LZ), t#0));
    if (*)
    {
        assume {:id "id234"} _module.Term#Equal(r#0, t#0);
        ##t#1 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
        assume _module.__default.IsTerminal#canCall(t#0);
        assume {:id "id235"} _module.__default.IsTerminal(t#0);
    }
    else
    {
        assume {:id "id236"} _module.Term#Equal(r#0, t#0) ==> _module.__default.IsTerminal(t#0);
    }

    if (*)
    {
        assume {:id "id237"} !_module.Term#Equal(r#0, t#0);
        ##C#0 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#0, Tclass._module.Context(), $Heap);
        assume _module.__default.IsContext#canCall(C#0);
        assume {:id "id238"} _module.__default.IsContext($LS($LZ), C#0);
        ##C#1 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#1, Tclass._module.Context(), $Heap);
        ##t#2 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#2, Tclass._module.Term(), $Heap);
        assert {:id "id239"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (_module.Context.Hole_q(##C#1) ==> Lit(true));
        assert {:id "id240"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              _module.Context.C__term_q(##C#1)
               ==> (var t#1 := _module.Context._h1(##C#1); 
                (var D#0 := _module.Context._h0(##C#1); 
                  _module.__default.IsContext($LS($LS($LZ)), D#0))));
        assert {:id "id241"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (_module.Term.S_q(v#0) ==> Lit(true)))));
        assert {:id "id242"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0) ==> _module.Term.K_q(v#0) ==> Lit(true)))));
        assert {:id "id243"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            _module.Term.S_q(a#0)
                               ==> 
                              _module.__default.IsValue($LS($LZ), a#0)
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))));
        assert {:id "id244"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              _module.Term.K_q(a#0)
                               ==> 
                              _module.__default.IsValue($LS($LZ), a#0)
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))));
        assert {:id "id245"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              !_module.Term.K_q(a#0)
                               ==> (var y#0 := _module.Term.cdr(a#0); 
                                (var x#0 := _module.Term.car(a#0); 
                                  (_module.Term#Equal(x#0, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#0)
                                       && _module.__default.IsValue($LS($LZ), b#0)
                                     ==> _module.__default.IsValue($LS($LZ), a#0))
                                     ==> _module.Term#Equal(x#0, #_module.Term.S())))))))));
        assert {:id "id246"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              !_module.Term.K_q(a#0)
                               ==> (var y#0 := _module.Term.cdr(a#0); 
                                (var x#0 := _module.Term.car(a#0); 
                                  (_module.Term#Equal(x#0, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#0)
                                       && _module.__default.IsValue($LS($LZ), b#0)
                                     ==> _module.__default.IsValue($LS($LZ), a#0))
                                     ==> _module.__default.IsValue($LS($LS($LZ)), y#0)))))))));
        assert {:id "id247"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              !_module.Term.K_q(a#0)
                               ==> (var y#0 := _module.Term.cdr(a#0); 
                                (var x#0 := _module.Term.car(a#0); 
                                  (_module.Term#Equal(x#0, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#0)
                                       && _module.__default.IsValue($LS($LZ), b#0)
                                     ==> _module.__default.IsValue($LS($LZ), a#0))
                                     ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))))));
        assert {:id "id248"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsContext($LS($LS($LZ)), D#1))));
        assume _module.__default.IsContext($LS($LZ), ##C#1);
        assume _module.__default.EvalExpr#canCall(C#0, u#0);
        assume {:id "id249"} _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0));
        ##t#3 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#3, Tclass._module.Term(), $Heap);
        assume _module.__default.Step#canCall(u#0);
        assume {:id "id250"} !_module.Term#Equal(_module.__default.Step(u#0), u#0);
        ##C#2 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#2, Tclass._module.Context(), $Heap);
        ##t#5 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#5, Tclass._module.Term(), $Heap);
        assume _module.__default.Step#canCall(u#0);
        ##t#4 := _module.__default.Step(u#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#4, Tclass._module.Term(), $Heap);
        assert {:id "id251"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (_module.Context.Hole_q(##C#2) ==> Lit(true));
        assert {:id "id252"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              _module.Context.C__term_q(##C#2)
               ==> (var t#3 := _module.Context._h1(##C#2); 
                (var D#4 := _module.Context._h0(##C#2); 
                  _module.__default.IsContext($LS($LS($LZ)), D#4))));
        assert {:id "id253"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (_module.Term.S_q(v#2) ==> Lit(true)))));
        assert {:id "id254"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2) ==> _module.Term.K_q(v#2) ==> Lit(true)))));
        assert {:id "id255"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2)
                         ==> 
                        !_module.Term.K_q(v#2)
                         ==> (var b#2 := _module.Term.cdr(v#2); 
                          (var a#2 := _module.Term.car(v#2); 
                            _module.Term.S_q(a#2)
                               ==> 
                              _module.__default.IsValue($LS($LZ), a#2)
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))));
        assert {:id "id256"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2)
                         ==> 
                        !_module.Term.K_q(v#2)
                         ==> (var b#2 := _module.Term.cdr(v#2); 
                          (var a#2 := _module.Term.car(v#2); 
                            !_module.Term.S_q(a#2)
                               ==> 
                              _module.Term.K_q(a#2)
                               ==> 
                              _module.__default.IsValue($LS($LZ), a#2)
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))));
        assert {:id "id257"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2)
                         ==> 
                        !_module.Term.K_q(v#2)
                         ==> (var b#2 := _module.Term.cdr(v#2); 
                          (var a#2 := _module.Term.car(v#2); 
                            !_module.Term.S_q(a#2)
                               ==> 
                              !_module.Term.K_q(a#2)
                               ==> (var y#2 := _module.Term.cdr(a#2); 
                                (var x#2 := _module.Term.car(a#2); 
                                  (_module.Term#Equal(x#2, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#2)
                                       && _module.__default.IsValue($LS($LZ), b#2)
                                     ==> _module.__default.IsValue($LS($LZ), a#2))
                                     ==> _module.Term#Equal(x#2, #_module.Term.S())))))))));
        assert {:id "id258"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2)
                         ==> 
                        !_module.Term.K_q(v#2)
                         ==> (var b#2 := _module.Term.cdr(v#2); 
                          (var a#2 := _module.Term.car(v#2); 
                            !_module.Term.S_q(a#2)
                               ==> 
                              !_module.Term.K_q(a#2)
                               ==> (var y#2 := _module.Term.cdr(a#2); 
                                (var x#2 := _module.Term.car(a#2); 
                                  (_module.Term#Equal(x#2, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#2)
                                       && _module.__default.IsValue($LS($LZ), b#2)
                                     ==> _module.__default.IsValue($LS($LZ), a#2))
                                     ==> _module.__default.IsValue($LS($LS($LZ)), y#2)))))))));
        assert {:id "id259"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsValue#canCall(v#2)
                     ==> _module.__default.IsValue($LS($LZ), v#2)
                       || (!_module.Term.S_q(v#2)
                         ==> 
                        !_module.Term.K_q(v#2)
                         ==> (var b#2 := _module.Term.cdr(v#2); 
                          (var a#2 := _module.Term.car(v#2); 
                            !_module.Term.S_q(a#2)
                               ==> 
                              !_module.Term.K_q(a#2)
                               ==> (var y#2 := _module.Term.cdr(a#2); 
                                (var x#2 := _module.Term.car(a#2); 
                                  (_module.Term#Equal(x#2, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#2)
                                       && _module.__default.IsValue($LS($LZ), b#2)
                                     ==> _module.__default.IsValue($LS($LZ), a#2))
                                     ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))))));
        assert {:id "id260"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
           ==> _module.__default.IsContext($LS($LZ), ##C#2)
             || (!_module.Context.Hole_q(##C#2)
               ==> 
              !_module.Context.C__term_q(##C#2)
               ==> (var D#5 := _module.Context._h3(##C#2); 
                (var v#2 := _module.Context._h2(##C#2); 
                  _module.__default.IsContext($LS($LS($LZ)), D#5))));
        assume _module.__default.IsContext($LS($LZ), ##C#2);
        assume _module.__default.EvalExpr#canCall(C#0, _module.__default.Step(u#0));
        assume {:id "id261"} _module.Term#Equal(r#0, _module.__default.EvalExpr($LS($LZ), C#0, _module.__default.Step(u#0)));
    }
    else
    {
        assume {:id "id262"} !_module.Term#Equal(r#0, t#0)
           ==> _module.__default.IsContext($LS($LZ), C#0)
             && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0))
             && !_module.Term#Equal(_module.__default.Step(u#0), u#0)
             && _module.Term#Equal(r#0, _module.__default.EvalExpr($LS($LZ), C#0, _module.__default.Step(u#0)));
    }
}



procedure {:verboseName "Lemma_FindAndStep (call)"} Call$$_module.__default.Lemma__FindAndStep(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Term()) && $IsAlloc(r#0, Tclass._module.Term(), $Heap), 
    C#0: DatatypeType
       where $Is(C#0, Tclass._module.Context())
         && $IsAlloc(C#0, Tclass._module.Context(), $Heap), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Term()) && $IsAlloc(u#0, Tclass._module.Term(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Term(r#0)
     && $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), t#0))
     && _module.__default.FindAndStep#canCall(t#0);
  ensures {:id "id263"} _module.Term#Equal(r#0, _module.__default.FindAndStep($LS($LS($LZ)), t#0));
  free ensures $IsA#_module.Term(r#0)
     && $IsA#_module.Term(t#0)
     && (_module.Term#Equal(r#0, t#0) ==> _module.__default.IsTerminal#canCall(t#0));
  free ensures {:id "id264"} _module.Term#Equal(r#0, t#0)
     ==> _module.__default.IsTerminal#canCall(t#0)
       && 
      _module.__default.IsTerminal(t#0)
       && !(exists C#1: DatatypeType, u#1: DatatypeType :: 
        { _module.__default.Step(u#1), _module.__default.IsContext($LS($LZ), C#1) } 
          { _module.__default.EvalExpr($LS($LZ), C#1, u#1) } 
        $Is(C#1, Tclass._module.Context())
           && $Is(u#1, Tclass._module.Term())
           && 
          _module.__default.IsContext($LS($LZ), C#1)
           && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
           && !_module.Term#Equal(_module.__default.Step(u#1), u#1));
  free ensures $IsA#_module.Term(r#0)
     && $IsA#_module.Term(t#0)
     && (!_module.Term#Equal(r#0, t#0)
       ==> _module.__default.IsContext#canCall(C#0)
         && (_module.__default.IsContext($LS($LZ), C#0)
           ==> $IsA#_module.Term(t#0)
             && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#0, u#0))
             && _module.__default.EvalExpr#canCall(C#0, u#0)
             && (_module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0))
               ==> $IsA#_module.Term(_module.__default.Step(u#0))
                 && $IsA#_module.Term(u#0)
                 && _module.__default.Step#canCall(u#0)
                 && (!_module.Term#Equal(_module.__default.Step(u#0), u#0)
                   ==> $IsA#_module.Term(r#0)
                     && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#0, _module.__default.Step(u#0)))
                     && 
                    _module.__default.Step#canCall(u#0)
                     && _module.__default.EvalExpr#canCall(C#0, _module.__default.Step(u#0))))));
  free ensures {:id "id265"} !_module.Term#Equal(r#0, t#0)
     ==> _module.__default.IsContext#canCall(C#0)
       && 
      _module.__default.IsContext($LS($LZ), C#0)
       && (if _module.Context.Hole_q(C#0)
         then true
         else (if _module.Context.C__term_q(C#0)
           then (var t#6 := _module.Context._h1(C#0); 
            (var D#10 := _module.Context._h0(C#0); 
              _module.__default.IsContext($LS($LZ), D#10)))
           else (var D#11 := _module.Context._h3(C#0); 
            (var v#5 := _module.Context._h2(C#0); 
              _module.__default.IsValue($LS($LZ), v#5)
                 && _module.__default.IsContext($LS($LZ), D#11)))));
  ensures {:id "id266"} !_module.Term#Equal(r#0, t#0)
     ==> _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LS($LZ)), C#0, u#0));
  ensures {:id "id267"} !_module.Term#Equal(r#0, t#0)
     ==> !_module.Term#Equal(_module.__default.Step(u#0), u#0);
  ensures {:id "id268"} !_module.Term#Equal(r#0, t#0)
     ==> _module.Term#Equal(r#0, _module.__default.EvalExpr($LS($LS($LZ)), C#0, _module.__default.Step(u#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_FindAndStep (correctness)"} Impl$$_module.__default.Lemma__FindAndStep(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Term()) && $IsAlloc(r#0, Tclass._module.Term(), $Heap), 
    C#0: DatatypeType
       where $Is(C#0, Tclass._module.Context())
         && $IsAlloc(C#0, Tclass._module.Context(), $Heap), 
    u#0: DatatypeType
       where $Is(u#0, Tclass._module.Term()) && $IsAlloc(u#0, Tclass._module.Term(), $Heap), 
    $_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Term(r#0)
     && $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), t#0))
     && _module.__default.FindAndStep#canCall(t#0);
  ensures {:id "id269"} _module.Term#Equal(r#0, _module.__default.FindAndStep($LS($LS($LZ)), t#0));
  free ensures $IsA#_module.Term(r#0)
     && $IsA#_module.Term(t#0)
     && (_module.Term#Equal(r#0, t#0) ==> _module.__default.IsTerminal#canCall(t#0));
  ensures {:id "id270"} _module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsTerminal#canCall(t#0)
     ==> _module.__default.IsTerminal(t#0)
       || !(exists C#2: DatatypeType, u#2: DatatypeType :: 
        { _module.__default.Step(u#2), _module.__default.IsContext($LS($LS($LZ)), C#2) } 
          { _module.__default.EvalExpr($LS($LS($LZ)), C#2, u#2) } 
        $Is(C#2, Tclass._module.Context())
           && $Is(u#2, Tclass._module.Term())
           && 
          _module.__default.IsContext($LS($LS($LZ)), C#2)
           && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LS($LZ)), C#2, u#2))
           && !_module.Term#Equal(_module.__default.Step(u#2), u#2));
  free ensures $IsA#_module.Term(r#0)
     && $IsA#_module.Term(t#0)
     && (!_module.Term#Equal(r#0, t#0)
       ==> _module.__default.IsContext#canCall(C#0)
         && (_module.__default.IsContext($LS($LZ), C#0)
           ==> $IsA#_module.Term(t#0)
             && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#0, u#0))
             && _module.__default.EvalExpr#canCall(C#0, u#0)
             && (_module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0))
               ==> $IsA#_module.Term(_module.__default.Step(u#0))
                 && $IsA#_module.Term(u#0)
                 && _module.__default.Step#canCall(u#0)
                 && (!_module.Term#Equal(_module.__default.Step(u#0), u#0)
                   ==> $IsA#_module.Term(r#0)
                     && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#0, _module.__default.Step(u#0)))
                     && 
                    _module.__default.Step#canCall(u#0)
                     && _module.__default.EvalExpr#canCall(C#0, _module.__default.Step(u#0))))));
  ensures {:id "id271"} !_module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsContext#canCall(C#0)
     ==> _module.__default.IsContext($LS($LZ), C#0)
       || (_module.Context.Hole_q(C#0) ==> Lit(true));
  ensures {:id "id272"} !_module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsContext#canCall(C#0)
     ==> _module.__default.IsContext($LS($LZ), C#0)
       || (!_module.Context.Hole_q(C#0)
         ==> 
        _module.Context.C__term_q(C#0)
         ==> (var t#7 := _module.Context._h1(C#0); 
          (var D#12 := _module.Context._h0(C#0); 
            _module.__default.IsContext($LS($LS($LZ)), D#12))));
  ensures {:id "id273"} !_module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsContext#canCall(C#0)
     ==> _module.__default.IsContext($LS($LZ), C#0)
       || (!_module.Context.Hole_q(C#0)
         ==> 
        !_module.Context.C__term_q(C#0)
         ==> (var D#13 := _module.Context._h3(C#0); 
          (var v#6 := _module.Context._h2(C#0); 
            _module.__default.IsValue#canCall(v#6)
               ==> _module.__default.IsValue($LS($LZ), v#6)
                 || (_module.Term.S_q(v#6) ==> Lit(true)))));
  ensures {:id "id274"} !_module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsContext#canCall(C#0)
     ==> _module.__default.IsContext($LS($LZ), C#0)
       || (!_module.Context.Hole_q(C#0)
         ==> 
        !_module.Context.C__term_q(C#0)
         ==> (var D#13 := _module.Context._h3(C#0); 
          (var v#6 := _module.Context._h2(C#0); 
            _module.__default.IsValue#canCall(v#6)
               ==> _module.__default.IsValue($LS($LZ), v#6)
                 || (!_module.Term.S_q(v#6) ==> _module.Term.K_q(v#6) ==> Lit(true)))));
  ensures {:id "id275"} !_module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsContext#canCall(C#0)
     ==> _module.__default.IsContext($LS($LZ), C#0)
       || (!_module.Context.Hole_q(C#0)
         ==> 
        !_module.Context.C__term_q(C#0)
         ==> (var D#13 := _module.Context._h3(C#0); 
          (var v#6 := _module.Context._h2(C#0); 
            _module.__default.IsValue#canCall(v#6)
               ==> _module.__default.IsValue($LS($LZ), v#6)
                 || (!_module.Term.S_q(v#6)
                   ==> 
                  !_module.Term.K_q(v#6)
                   ==> (var b#6 := _module.Term.cdr(v#6); 
                    (var a#6 := _module.Term.car(v#6); 
                      _module.Term.S_q(a#6)
                         ==> 
                        _module.__default.IsValue($LS($LZ), a#6)
                         ==> _module.__default.IsValue($LS($LS($LZ)), b#6)))))));
  ensures {:id "id276"} !_module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsContext#canCall(C#0)
     ==> _module.__default.IsContext($LS($LZ), C#0)
       || (!_module.Context.Hole_q(C#0)
         ==> 
        !_module.Context.C__term_q(C#0)
         ==> (var D#13 := _module.Context._h3(C#0); 
          (var v#6 := _module.Context._h2(C#0); 
            _module.__default.IsValue#canCall(v#6)
               ==> _module.__default.IsValue($LS($LZ), v#6)
                 || (!_module.Term.S_q(v#6)
                   ==> 
                  !_module.Term.K_q(v#6)
                   ==> (var b#6 := _module.Term.cdr(v#6); 
                    (var a#6 := _module.Term.car(v#6); 
                      !_module.Term.S_q(a#6)
                         ==> 
                        _module.Term.K_q(a#6)
                         ==> 
                        _module.__default.IsValue($LS($LZ), a#6)
                         ==> _module.__default.IsValue($LS($LS($LZ)), b#6)))))));
  ensures {:id "id277"} !_module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsContext#canCall(C#0)
     ==> _module.__default.IsContext($LS($LZ), C#0)
       || (!_module.Context.Hole_q(C#0)
         ==> 
        !_module.Context.C__term_q(C#0)
         ==> (var D#13 := _module.Context._h3(C#0); 
          (var v#6 := _module.Context._h2(C#0); 
            _module.__default.IsValue#canCall(v#6)
               ==> _module.__default.IsValue($LS($LZ), v#6)
                 || (!_module.Term.S_q(v#6)
                   ==> 
                  !_module.Term.K_q(v#6)
                   ==> (var b#6 := _module.Term.cdr(v#6); 
                    (var a#6 := _module.Term.car(v#6); 
                      !_module.Term.S_q(a#6)
                         ==> 
                        !_module.Term.K_q(a#6)
                         ==> (var y#6 := _module.Term.cdr(a#6); 
                          (var x#6 := _module.Term.car(a#6); 
                            (_module.Term#Equal(x#6, #_module.Term.S())
                                 && _module.__default.IsValue($LS($LZ), y#6)
                                 && _module.__default.IsValue($LS($LZ), b#6)
                               ==> _module.__default.IsValue($LS($LZ), a#6))
                               ==> _module.Term#Equal(x#6, #_module.Term.S())))))))));
  ensures {:id "id278"} !_module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsContext#canCall(C#0)
     ==> _module.__default.IsContext($LS($LZ), C#0)
       || (!_module.Context.Hole_q(C#0)
         ==> 
        !_module.Context.C__term_q(C#0)
         ==> (var D#13 := _module.Context._h3(C#0); 
          (var v#6 := _module.Context._h2(C#0); 
            _module.__default.IsValue#canCall(v#6)
               ==> _module.__default.IsValue($LS($LZ), v#6)
                 || (!_module.Term.S_q(v#6)
                   ==> 
                  !_module.Term.K_q(v#6)
                   ==> (var b#6 := _module.Term.cdr(v#6); 
                    (var a#6 := _module.Term.car(v#6); 
                      !_module.Term.S_q(a#6)
                         ==> 
                        !_module.Term.K_q(a#6)
                         ==> (var y#6 := _module.Term.cdr(a#6); 
                          (var x#6 := _module.Term.car(a#6); 
                            (_module.Term#Equal(x#6, #_module.Term.S())
                                 && _module.__default.IsValue($LS($LZ), y#6)
                                 && _module.__default.IsValue($LS($LZ), b#6)
                               ==> _module.__default.IsValue($LS($LZ), a#6))
                               ==> _module.__default.IsValue($LS($LS($LZ)), y#6)))))))));
  ensures {:id "id279"} !_module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsContext#canCall(C#0)
     ==> _module.__default.IsContext($LS($LZ), C#0)
       || (!_module.Context.Hole_q(C#0)
         ==> 
        !_module.Context.C__term_q(C#0)
         ==> (var D#13 := _module.Context._h3(C#0); 
          (var v#6 := _module.Context._h2(C#0); 
            _module.__default.IsValue#canCall(v#6)
               ==> _module.__default.IsValue($LS($LZ), v#6)
                 || (!_module.Term.S_q(v#6)
                   ==> 
                  !_module.Term.K_q(v#6)
                   ==> (var b#6 := _module.Term.cdr(v#6); 
                    (var a#6 := _module.Term.car(v#6); 
                      !_module.Term.S_q(a#6)
                         ==> 
                        !_module.Term.K_q(a#6)
                         ==> (var y#6 := _module.Term.cdr(a#6); 
                          (var x#6 := _module.Term.car(a#6); 
                            (_module.Term#Equal(x#6, #_module.Term.S())
                                 && _module.__default.IsValue($LS($LZ), y#6)
                                 && _module.__default.IsValue($LS($LZ), b#6)
                               ==> _module.__default.IsValue($LS($LZ), a#6))
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#6)))))))));
  ensures {:id "id280"} !_module.Term#Equal(r#0, t#0)
     ==> 
    _module.__default.IsContext#canCall(C#0)
     ==> _module.__default.IsContext($LS($LZ), C#0)
       || (!_module.Context.Hole_q(C#0)
         ==> 
        !_module.Context.C__term_q(C#0)
         ==> (var D#13 := _module.Context._h3(C#0); 
          (var v#6 := _module.Context._h2(C#0); 
            _module.__default.IsContext($LS($LS($LZ)), D#13))));
  ensures {:id "id281"} !_module.Term#Equal(r#0, t#0)
     ==> _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LS($LZ)), C#0, u#0));
  ensures {:id "id282"} !_module.Term#Equal(r#0, t#0)
     ==> !_module.Term#Equal(_module.__default.Step(u#0), u#0);
  ensures {:id "id283"} !_module.Term#Equal(r#0, t#0)
     ==> _module.Term#Equal(r#0, _module.__default.EvalExpr($LS($LS($LZ)), C#0, _module.__default.Step(u#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_FindAndStep (correctness)"} Impl$$_module.__default.Lemma__FindAndStep(t#0: DatatypeType)
   returns (r#0: DatatypeType, C#0: DatatypeType, u#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var t##0: DatatypeType;
  var ##t#6: DatatypeType;
  var $rhs#0_0: DatatypeType;
  var ##t#0_0: DatatypeType;
  var $rhs#0_1: DatatypeType;
  var $rhs#0_2: DatatypeType;
  var $rhs##1_1_0: DatatypeType;
  var $rhs##1_1_1: DatatypeType;
  var $rhs##1_1_2: DatatypeType;
  var t##1_1_0: DatatypeType;
  var $rhs#1_1_0_0: DatatypeType;
  var $rhs#1_1_0_1: DatatypeType;
  var $rhs#1_1_0_2: DatatypeType;
  var ##t#1_1_1_0: DatatypeType;
  var $rhs##1_1_1_0_0: DatatypeType;
  var $rhs##1_1_1_0_1: DatatypeType;
  var $rhs##1_1_1_0_2: DatatypeType;
  var t##1_1_1_0_0: DatatypeType;
  var ##t#1_1_1_0_0: DatatypeType;
  var $rhs#1_1_1_0_0_0: DatatypeType;
  var $rhs#1_1_1_0_0_1: DatatypeType;
  var $rhs#1_1_1_0_0_2: DatatypeType;
  var C#1_1_1_0_1_0_0: DatatypeType;
  var u#1_1_1_0_1_0_0: DatatypeType;
  var ##C#1_1_1_0_1_0_0: DatatypeType;
  var ##C#1_1_1_0_1_0_1: DatatypeType;
  var ##t#1_1_1_0_1_0_0: DatatypeType;
  var ##t#1_1_1_0_1_0_1: DatatypeType;
  var ##t#1_1_1_0_1_0_2: DatatypeType;
  var _mcc#2#1_1_1_0_1_0_0_0: DatatypeType;
  var _mcc#3#1_1_1_0_1_0_0_0: DatatypeType;
  var D#1_1_1_0_1_0_0_0: DatatypeType;
  var let#1_1_1_0_1_0_0_0#0#0: DatatypeType;
  var at#1_1_1_0_1_0_0_0: DatatypeType;
  var let#1_1_1_0_1_0_0_1#0#0: DatatypeType;
  var ##C#1_1_1_0_1_0_0_0: DatatypeType;
  var ##t#1_1_1_0_1_0_0_0: DatatypeType;
  var _mcc#0#1_1_1_0_1_0_1_0: DatatypeType;
  var _mcc#1#1_1_1_0_1_0_1_0: DatatypeType;
  var bt#1_1_1_0_1_0_1_0: DatatypeType;
  var let#1_1_1_0_1_0_1_0#0#0: DatatypeType;
  var D#1_1_1_0_1_0_1_0: DatatypeType;
  var let#1_1_1_0_1_0_1_1#0#0: DatatypeType;
  var ##C#1_1_1_0_1_0_1_0: DatatypeType;
  var ##t#1_1_1_0_1_0_1_0: DatatypeType;

    // AddMethodImpl: Lemma_FindAndStep, Impl$$_module.__default.Lemma__FindAndStep
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(204,29)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    t##0 := t#0;
    call {:id "id284"} Call$$_module.__default.Lemma__ContextPossibilities(t##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(205,3)
    ##t#6 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#6, Tclass._module.Term(), $Heap);
    assume _module.__default.Step#canCall(t#0);
    assume $IsA#_module.Term(_module.__default.Step(t#0))
       && $IsA#_module.Term(t#0)
       && _module.__default.Step#canCall(t#0);
    if (!_module.Term#Equal(_module.__default.Step(t#0), t#0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(207,5)
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(207,5)
        assume true;
        assume true;
        assume true;
        ##t#0_0 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0_0, Tclass._module.Term(), $Heap);
        assume _module.__default.Step#canCall(t#0);
        assume _module.__default.Step#canCall(t#0);
        $rhs#0_0 := _module.__default.Step(t#0);
        assume true;
        $rhs#0_1 := Lit(#_module.Context.Hole());
        assume true;
        $rhs#0_2 := t#0;
        r#0 := $rhs#0_0;
        C#0 := $rhs#0_1;
        u#0 := $rhs#0_2;
        return;
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(208,10)
        assume true;
        if (!_module.Term.Apply_q(t#0))
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(209,7)
            assume true;
            assume true;
            r#0 := t#0;
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(211,33)
            assume true;
            assume true;
            assume true;
            // TrCallStmt: Adding lhs with type Term
            // TrCallStmt: Adding lhs with type Context
            // TrCallStmt: Adding lhs with type Term
            // TrCallStmt: Before ProcessCallStmt
            assert {:id "id292"} _module.Term.Apply_q(t#0);
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##1_1_0 := _module.Term.car(t#0);
            assert {:id "id293"} DtRank(t##1_1_0) < DtRank(t#0);
            call {:id "id294"} $rhs##1_1_0, $rhs##1_1_1, $rhs##1_1_2 := Call$$_module.__default.Lemma__FindAndStep(t##1_1_0);
            // TrCallStmt: After ProcessCallStmt
            r#0 := $rhs##1_1_0;
            C#0 := $rhs##1_1_1;
            u#0 := $rhs##1_1_2;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(212,5)
            assert {:id "id298"} _module.Term.Apply_q(t#0);
            assume $IsA#_module.Term(r#0) && $IsA#_module.Term(_module.Term.car(t#0));
            if (!_module.Term#Equal(r#0, _module.Term.car(t#0)))
            {
                // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(218,7)
                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(218,7)
                assume true;
                assume true;
                assume true;
                assert {:id "id299"} _module.Term.Apply_q(t#0);
                assume true;
                $rhs#1_1_0_0 := #_module.Term.Apply(r#0, _module.Term.cdr(t#0));
                assert {:id "id301"} _module.Term.Apply_q(t#0);
                assume true;
                $rhs#1_1_0_1 := #_module.Context.C_term(C#0, _module.Term.cdr(t#0));
                assume true;
                $rhs#1_1_0_2 := u#0;
                r#0 := $rhs#1_1_0_0;
                C#0 := $rhs#1_1_0_1;
                u#0 := $rhs#1_1_0_2;
                return;
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(219,12)
                assert {:id "id307"} _module.Term.Apply_q(t#0);
                ##t#1_1_1_0 := _module.Term.car(t#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1_1_1_0, Tclass._module.Term(), $Heap);
                assume _module.__default.IsValue#canCall(_module.Term.car(t#0));
                assume _module.__default.IsValue#canCall(_module.Term.car(t#0));
                if (_module.__default.IsValue($LS($LZ), _module.Term.car(t#0)))
                {
                    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(220,35)
                    assume true;
                    assume true;
                    assume true;
                    // TrCallStmt: Adding lhs with type Term
                    // TrCallStmt: Adding lhs with type Context
                    // TrCallStmt: Adding lhs with type Term
                    // TrCallStmt: Before ProcessCallStmt
                    assert {:id "id308"} _module.Term.Apply_q(t#0);
                    assume true;
                    // ProcessCallStmt: CheckSubrange
                    t##1_1_1_0_0 := _module.Term.cdr(t#0);
                    assert {:id "id309"} DtRank(t##1_1_1_0_0) < DtRank(t#0);
                    call {:id "id310"} $rhs##1_1_1_0_0, $rhs##1_1_1_0_1, $rhs##1_1_1_0_2 := Call$$_module.__default.Lemma__FindAndStep(t##1_1_1_0_0);
                    // TrCallStmt: After ProcessCallStmt
                    r#0 := $rhs##1_1_1_0_0;
                    C#0 := $rhs##1_1_1_0_1;
                    u#0 := $rhs##1_1_1_0_2;
                    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(221,7)
                    assert {:id "id314"} _module.Term.Apply_q(t#0);
                    ##t#1_1_1_0_0 := _module.Term.car(t#0);
                    // assume allocatedness for argument to function
                    assume $IsAlloc(##t#1_1_1_0_0, Tclass._module.Term(), $Heap);
                    assume _module.__default.IsTerminal#canCall(_module.Term.car(t#0));
                    assume _module.__default.IsTerminal#canCall(_module.Term.car(t#0));
                    assert {:id "id315"} {:subsumption 0} _module.__default.IsTerminal#canCall(_module.Term.car(t#0))
                       ==> _module.__default.IsTerminal(_module.Term.car(t#0))
                         || !(exists C#1_1_1_0_0: DatatypeType, u#1_1_1_0_0: DatatypeType :: 
                          { _module.__default.Step(u#1_1_1_0_0), _module.__default.IsContext($LS($LS($LZ)), C#1_1_1_0_0) } 
                            { _module.__default.EvalExpr($LS($LS($LZ)), C#1_1_1_0_0, u#1_1_1_0_0) } 
                          $Is(C#1_1_1_0_0, Tclass._module.Context())
                             && $Is(u#1_1_1_0_0, Tclass._module.Term())
                             && 
                            _module.__default.IsContext($LS($LS($LZ)), C#1_1_1_0_0)
                             && _module.Term#Equal(_module.Term.car(t#0), 
                              _module.__default.EvalExpr($LS($LS($LZ)), C#1_1_1_0_0, u#1_1_1_0_0))
                             && !_module.Term#Equal(_module.__default.Step(u#1_1_1_0_0), u#1_1_1_0_0));
                    assume {:id "id316"} _module.__default.IsTerminal(_module.Term.car(t#0));
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(223,7)
                    assert {:id "id317"} _module.Term.Apply_q(t#0);
                    assume $IsA#_module.Term(r#0) && $IsA#_module.Term(_module.Term.cdr(t#0));
                    if (!_module.Term#Equal(r#0, _module.Term.cdr(t#0)))
                    {
                        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(229,9)
                        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(229,9)
                        assume true;
                        assume true;
                        assume true;
                        assert {:id "id318"} _module.Term.Apply_q(t#0);
                        assume true;
                        $rhs#1_1_1_0_0_0 := #_module.Term.Apply(_module.Term.car(t#0), r#0);
                        assert {:id "id320"} _module.Term.Apply_q(t#0);
                        assume true;
                        $rhs#1_1_1_0_0_1 := #_module.Context.value_C(_module.Term.car(t#0), C#0);
                        assume true;
                        $rhs#1_1_1_0_0_2 := u#0;
                        r#0 := $rhs#1_1_1_0_0_0;
                        C#0 := $rhs#1_1_1_0_0_1;
                        u#0 := $rhs#1_1_1_0_0_2;
                        return;
                    }
                    else
                    {
                        // ----- forall statement (proof) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(231,9)
                        if (*)
                        {
                            // Assume Fuel Constant
                            havoc C#1_1_1_0_1_0_0, u#1_1_1_0_1_0_0;
                            assume $Is(C#1_1_1_0_1_0_0, Tclass._module.Context())
                               && $Is(u#1_1_1_0_1_0_0, Tclass._module.Term());
                            ##C#1_1_1_0_1_0_0 := C#1_1_1_0_1_0_0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##C#1_1_1_0_1_0_0, Tclass._module.Context(), $Heap);
                            assume _module.__default.IsContext#canCall(C#1_1_1_0_1_0_0);
                            if (_module.__default.IsContext($LS($LZ), C#1_1_1_0_1_0_0))
                            {
                                ##C#1_1_1_0_1_0_1 := C#1_1_1_0_1_0_0;
                                // assume allocatedness for argument to function
                                assume $IsAlloc(##C#1_1_1_0_1_0_1, Tclass._module.Context(), $Heap);
                                ##t#1_1_1_0_1_0_0 := u#1_1_1_0_1_0_0;
                                // assume allocatedness for argument to function
                                assume $IsAlloc(##t#1_1_1_0_1_0_0, Tclass._module.Term(), $Heap);
                                assert {:id "id326"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1)
                                   ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1)
                                     || (_module.Context.Hole_q(##C#1_1_1_0_1_0_1) ==> Lit(true));
                                assert {:id "id327"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1)
                                   ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1)
                                     || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1)
                                       ==> 
                                      _module.Context.C__term_q(##C#1_1_1_0_1_0_1)
                                       ==> (var t#1_1_1_0_1_0_0 := _module.Context._h1(##C#1_1_1_0_1_0_1); 
                                        (var D#1_1_1_0_1_0_0 := _module.Context._h0(##C#1_1_1_0_1_0_1); 
                                          _module.__default.IsContext($LS($LS($LZ)), D#1_1_1_0_1_0_0))));
                                assert {:id "id328"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1)
                                   ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1)
                                     || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1)
                                       ==> 
                                      !_module.Context.C__term_q(##C#1_1_1_0_1_0_1)
                                       ==> (var D#1_1_1_0_1_0_1 := _module.Context._h3(##C#1_1_1_0_1_0_1); 
                                        (var v#1_1_1_0_1_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_1); 
                                          _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0)
                                             ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0)
                                               || (_module.Term.S_q(v#1_1_1_0_1_0_0) ==> Lit(true)))));
                                assert {:id "id329"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1)
                                   ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1)
                                     || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1)
                                       ==> 
                                      !_module.Context.C__term_q(##C#1_1_1_0_1_0_1)
                                       ==> (var D#1_1_1_0_1_0_1 := _module.Context._h3(##C#1_1_1_0_1_0_1); 
                                        (var v#1_1_1_0_1_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_1); 
                                          _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0)
                                             ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0)
                                               || (!_module.Term.S_q(v#1_1_1_0_1_0_0)
                                                 ==> 
                                                _module.Term.K_q(v#1_1_1_0_1_0_0)
                                                 ==> Lit(true)))));
                                assert {:id "id330"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1)
                                   ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1)
                                     || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1)
                                       ==> 
                                      !_module.Context.C__term_q(##C#1_1_1_0_1_0_1)
                                       ==> (var D#1_1_1_0_1_0_1 := _module.Context._h3(##C#1_1_1_0_1_0_1); 
                                        (var v#1_1_1_0_1_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_1); 
                                          _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0)
                                             ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0)
                                               || (!_module.Term.S_q(v#1_1_1_0_1_0_0)
                                                 ==> 
                                                !_module.Term.K_q(v#1_1_1_0_1_0_0)
                                                 ==> (var b#1_1_1_0_1_0_0 := _module.Term.cdr(v#1_1_1_0_1_0_0); 
                                                  (var a#1_1_1_0_1_0_0 := _module.Term.car(v#1_1_1_0_1_0_0); 
                                                    _module.Term.S_q(a#1_1_1_0_1_0_0)
                                                       ==> 
                                                      _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_0)
                                                       ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_0)))))));
                                assert {:id "id331"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1)
                                   ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1)
                                     || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1)
                                       ==> 
                                      !_module.Context.C__term_q(##C#1_1_1_0_1_0_1)
                                       ==> (var D#1_1_1_0_1_0_1 := _module.Context._h3(##C#1_1_1_0_1_0_1); 
                                        (var v#1_1_1_0_1_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_1); 
                                          _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0)
                                             ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0)
                                               || (!_module.Term.S_q(v#1_1_1_0_1_0_0)
                                                 ==> 
                                                !_module.Term.K_q(v#1_1_1_0_1_0_0)
                                                 ==> (var b#1_1_1_0_1_0_0 := _module.Term.cdr(v#1_1_1_0_1_0_0); 
                                                  (var a#1_1_1_0_1_0_0 := _module.Term.car(v#1_1_1_0_1_0_0); 
                                                    !_module.Term.S_q(a#1_1_1_0_1_0_0)
                                                       ==> 
                                                      _module.Term.K_q(a#1_1_1_0_1_0_0)
                                                       ==> 
                                                      _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_0)
                                                       ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_0)))))));
                                assert {:id "id332"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1)
                                   ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1)
                                     || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1)
                                       ==> 
                                      !_module.Context.C__term_q(##C#1_1_1_0_1_0_1)
                                       ==> (var D#1_1_1_0_1_0_1 := _module.Context._h3(##C#1_1_1_0_1_0_1); 
                                        (var v#1_1_1_0_1_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_1); 
                                          _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0)
                                             ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0)
                                               || (!_module.Term.S_q(v#1_1_1_0_1_0_0)
                                                 ==> 
                                                !_module.Term.K_q(v#1_1_1_0_1_0_0)
                                                 ==> (var b#1_1_1_0_1_0_0 := _module.Term.cdr(v#1_1_1_0_1_0_0); 
                                                  (var a#1_1_1_0_1_0_0 := _module.Term.car(v#1_1_1_0_1_0_0); 
                                                    !_module.Term.S_q(a#1_1_1_0_1_0_0)
                                                       ==> 
                                                      !_module.Term.K_q(a#1_1_1_0_1_0_0)
                                                       ==> (var y#1_1_1_0_1_0_0 := _module.Term.cdr(a#1_1_1_0_1_0_0); 
                                                        (var x#1_1_1_0_1_0_0 := _module.Term.car(a#1_1_1_0_1_0_0); 
                                                          (_module.Term#Equal(x#1_1_1_0_1_0_0, #_module.Term.S())
                                                               && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_0)
                                                               && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_0)
                                                             ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_0))
                                                             ==> _module.Term#Equal(x#1_1_1_0_1_0_0, #_module.Term.S())))))))));
                                assert {:id "id333"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1)
                                   ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1)
                                     || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1)
                                       ==> 
                                      !_module.Context.C__term_q(##C#1_1_1_0_1_0_1)
                                       ==> (var D#1_1_1_0_1_0_1 := _module.Context._h3(##C#1_1_1_0_1_0_1); 
                                        (var v#1_1_1_0_1_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_1); 
                                          _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0)
                                             ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0)
                                               || (!_module.Term.S_q(v#1_1_1_0_1_0_0)
                                                 ==> 
                                                !_module.Term.K_q(v#1_1_1_0_1_0_0)
                                                 ==> (var b#1_1_1_0_1_0_0 := _module.Term.cdr(v#1_1_1_0_1_0_0); 
                                                  (var a#1_1_1_0_1_0_0 := _module.Term.car(v#1_1_1_0_1_0_0); 
                                                    !_module.Term.S_q(a#1_1_1_0_1_0_0)
                                                       ==> 
                                                      !_module.Term.K_q(a#1_1_1_0_1_0_0)
                                                       ==> (var y#1_1_1_0_1_0_0 := _module.Term.cdr(a#1_1_1_0_1_0_0); 
                                                        (var x#1_1_1_0_1_0_0 := _module.Term.car(a#1_1_1_0_1_0_0); 
                                                          (_module.Term#Equal(x#1_1_1_0_1_0_0, #_module.Term.S())
                                                               && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_0)
                                                               && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_0)
                                                             ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_0))
                                                             ==> _module.__default.IsValue($LS($LS($LZ)), y#1_1_1_0_1_0_0)))))))));
                                assert {:id "id334"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1)
                                   ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1)
                                     || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1)
                                       ==> 
                                      !_module.Context.C__term_q(##C#1_1_1_0_1_0_1)
                                       ==> (var D#1_1_1_0_1_0_1 := _module.Context._h3(##C#1_1_1_0_1_0_1); 
                                        (var v#1_1_1_0_1_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_1); 
                                          _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0)
                                             ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0)
                                               || (!_module.Term.S_q(v#1_1_1_0_1_0_0)
                                                 ==> 
                                                !_module.Term.K_q(v#1_1_1_0_1_0_0)
                                                 ==> (var b#1_1_1_0_1_0_0 := _module.Term.cdr(v#1_1_1_0_1_0_0); 
                                                  (var a#1_1_1_0_1_0_0 := _module.Term.car(v#1_1_1_0_1_0_0); 
                                                    !_module.Term.S_q(a#1_1_1_0_1_0_0)
                                                       ==> 
                                                      !_module.Term.K_q(a#1_1_1_0_1_0_0)
                                                       ==> (var y#1_1_1_0_1_0_0 := _module.Term.cdr(a#1_1_1_0_1_0_0); 
                                                        (var x#1_1_1_0_1_0_0 := _module.Term.car(a#1_1_1_0_1_0_0); 
                                                          (_module.Term#Equal(x#1_1_1_0_1_0_0, #_module.Term.S())
                                                               && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_0)
                                                               && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_0)
                                                             ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_0))
                                                             ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_0)))))))));
                                assert {:id "id335"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1)
                                   ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1)
                                     || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1)
                                       ==> 
                                      !_module.Context.C__term_q(##C#1_1_1_0_1_0_1)
                                       ==> (var D#1_1_1_0_1_0_1 := _module.Context._h3(##C#1_1_1_0_1_0_1); 
                                        (var v#1_1_1_0_1_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_1); 
                                          _module.__default.IsContext($LS($LS($LZ)), D#1_1_1_0_1_0_1))));
                                assume _module.__default.EvalExpr#canCall(C#1_1_1_0_1_0_0, u#1_1_1_0_1_0_0);
                            }

                            assume _module.__default.IsContext#canCall(C#1_1_1_0_1_0_0)
                               && (_module.__default.IsContext($LS($LZ), C#1_1_1_0_1_0_0)
                                 ==> $IsA#_module.Term(t#0)
                                   && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#1_1_1_0_1_0_0, u#1_1_1_0_1_0_0))
                                   && _module.__default.EvalExpr#canCall(C#1_1_1_0_1_0_0, u#1_1_1_0_1_0_0));
                            assume {:id "id336"} _module.__default.IsContext($LS($LZ), C#1_1_1_0_1_0_0)
                               && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1_1_1_0_1_0_0, u#1_1_1_0_1_0_0));
                            if (*)
                            {
                                ##t#1_1_1_0_1_0_1 := u#1_1_1_0_1_0_0;
                                // assume allocatedness for argument to function
                                assume $IsAlloc(##t#1_1_1_0_1_0_1, Tclass._module.Term(), $Heap);
                                assume _module.__default.Step#canCall(u#1_1_1_0_1_0_0);
                                assume $IsA#_module.Term(_module.__default.Step(u#1_1_1_0_1_0_0))
                                   && $IsA#_module.Term(u#1_1_1_0_1_0_0)
                                   && _module.__default.Step#canCall(u#1_1_1_0_1_0_0);
                                assume {:id "id337"} _module.Term#Equal(_module.__default.Step(u#1_1_1_0_1_0_0), u#1_1_1_0_1_0_0);
                                assume false;
                            }

                            push;
                            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(237,11)
                            if (_module.Term.Apply_q(t#0))
                            {
                                assert {:id "id338"} _module.Term.Apply_q(t#0);
                                ##t#1_1_1_0_1_0_2 := _module.Term.car(t#0);
                                // assume allocatedness for argument to function
                                assume $IsAlloc(##t#1_1_1_0_1_0_2, Tclass._module.Term(), $Heap);
                                assume _module.__default.IsValue#canCall(_module.Term.car(t#0));
                            }

                            assume _module.Term.Apply_q(t#0)
                               ==> _module.__default.IsValue#canCall(_module.Term.car(t#0));
                            assert {:id "id339"} {:subsumption 0} _module.Term.Apply_q(t#0);
                            assert {:id "id340"} {:subsumption 0} _module.__default.IsValue#canCall(_module.Term.car(t#0))
                               ==> _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                                 || (_module.Term.S_q(_module.Term.car(t#0)) ==> Lit(true));
                            assert {:id "id341"} {:subsumption 0} _module.__default.IsValue#canCall(_module.Term.car(t#0))
                               ==> _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                                 || (!_module.Term.S_q(_module.Term.car(t#0))
                                   ==> 
                                  _module.Term.K_q(_module.Term.car(t#0))
                                   ==> Lit(true));
                            assert {:id "id342"} {:subsumption 0} _module.__default.IsValue#canCall(_module.Term.car(t#0))
                               ==> _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                                 || (!_module.Term.S_q(_module.Term.car(t#0))
                                   ==> 
                                  !_module.Term.K_q(_module.Term.car(t#0))
                                   ==> (var b#1_1_1_0_1_0_2 := _module.Term.cdr(_module.Term.car(t#0)); 
                                    (var a#1_1_1_0_1_0_2 := _module.Term.car(_module.Term.car(t#0)); 
                                      _module.Term.S_q(a#1_1_1_0_1_0_2)
                                         ==> 
                                        _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_2)
                                         ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_2))));
                            assert {:id "id343"} {:subsumption 0} _module.__default.IsValue#canCall(_module.Term.car(t#0))
                               ==> _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                                 || (!_module.Term.S_q(_module.Term.car(t#0))
                                   ==> 
                                  !_module.Term.K_q(_module.Term.car(t#0))
                                   ==> (var b#1_1_1_0_1_0_2 := _module.Term.cdr(_module.Term.car(t#0)); 
                                    (var a#1_1_1_0_1_0_2 := _module.Term.car(_module.Term.car(t#0)); 
                                      !_module.Term.S_q(a#1_1_1_0_1_0_2)
                                         ==> 
                                        _module.Term.K_q(a#1_1_1_0_1_0_2)
                                         ==> 
                                        _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_2)
                                         ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_2))));
                            assert {:id "id344"} {:subsumption 0} _module.__default.IsValue#canCall(_module.Term.car(t#0))
                               ==> _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                                 || (!_module.Term.S_q(_module.Term.car(t#0))
                                   ==> 
                                  !_module.Term.K_q(_module.Term.car(t#0))
                                   ==> (var b#1_1_1_0_1_0_2 := _module.Term.cdr(_module.Term.car(t#0)); 
                                    (var a#1_1_1_0_1_0_2 := _module.Term.car(_module.Term.car(t#0)); 
                                      !_module.Term.S_q(a#1_1_1_0_1_0_2)
                                         ==> 
                                        !_module.Term.K_q(a#1_1_1_0_1_0_2)
                                         ==> (var y#1_1_1_0_1_0_2 := _module.Term.cdr(a#1_1_1_0_1_0_2); 
                                          (var x#1_1_1_0_1_0_2 := _module.Term.car(a#1_1_1_0_1_0_2); 
                                            (_module.Term#Equal(x#1_1_1_0_1_0_2, #_module.Term.S())
                                                 && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_2)
                                                 && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_2)
                                               ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_2))
                                               ==> _module.Term#Equal(x#1_1_1_0_1_0_2, #_module.Term.S()))))));
                            assert {:id "id345"} {:subsumption 0} _module.__default.IsValue#canCall(_module.Term.car(t#0))
                               ==> _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                                 || (!_module.Term.S_q(_module.Term.car(t#0))
                                   ==> 
                                  !_module.Term.K_q(_module.Term.car(t#0))
                                   ==> (var b#1_1_1_0_1_0_2 := _module.Term.cdr(_module.Term.car(t#0)); 
                                    (var a#1_1_1_0_1_0_2 := _module.Term.car(_module.Term.car(t#0)); 
                                      !_module.Term.S_q(a#1_1_1_0_1_0_2)
                                         ==> 
                                        !_module.Term.K_q(a#1_1_1_0_1_0_2)
                                         ==> (var y#1_1_1_0_1_0_2 := _module.Term.cdr(a#1_1_1_0_1_0_2); 
                                          (var x#1_1_1_0_1_0_2 := _module.Term.car(a#1_1_1_0_1_0_2); 
                                            (_module.Term#Equal(x#1_1_1_0_1_0_2, #_module.Term.S())
                                                 && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_2)
                                                 && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_2)
                                               ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_2))
                                               ==> _module.__default.IsValue($LS($LS($LZ)), y#1_1_1_0_1_0_2))))));
                            assert {:id "id346"} {:subsumption 0} _module.__default.IsValue#canCall(_module.Term.car(t#0))
                               ==> _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                                 || (!_module.Term.S_q(_module.Term.car(t#0))
                                   ==> 
                                  !_module.Term.K_q(_module.Term.car(t#0))
                                   ==> (var b#1_1_1_0_1_0_2 := _module.Term.cdr(_module.Term.car(t#0)); 
                                    (var a#1_1_1_0_1_0_2 := _module.Term.car(_module.Term.car(t#0)); 
                                      !_module.Term.S_q(a#1_1_1_0_1_0_2)
                                         ==> 
                                        !_module.Term.K_q(a#1_1_1_0_1_0_2)
                                         ==> (var y#1_1_1_0_1_0_2 := _module.Term.cdr(a#1_1_1_0_1_0_2); 
                                          (var x#1_1_1_0_1_0_2 := _module.Term.car(a#1_1_1_0_1_0_2); 
                                            (_module.Term#Equal(x#1_1_1_0_1_0_2, #_module.Term.S())
                                                 && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_2)
                                                 && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_2)
                                               ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_2))
                                               ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_2))))));
                            assume {:id "id347"} _module.Term.Apply_q(t#0)
                               && _module.__default.IsValue($LS($LZ), _module.Term.car(t#0));
                            assume true;
                            havoc _mcc#2#1_1_1_0_1_0_0_0, _mcc#3#1_1_1_0_1_0_0_0;
                            havoc _mcc#0#1_1_1_0_1_0_1_0, _mcc#1#1_1_1_0_1_0_1_0;
                            if (C#1_1_1_0_1_0_0 == #_module.Context.Hole())
                            {
                                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(240,15)
                                assume $IsA#_module.Term(t#0) && $IsA#_module.Term(u#1_1_1_0_1_0_0);
                                assert {:id "id386"} _module.Term#Equal(t#0, u#1_1_1_0_1_0_0);
                            }
                            else if (C#1_1_1_0_1_0_0
                               == #_module.Context.C_term(_mcc#0#1_1_1_0_1_0_1_0, _mcc#1#1_1_1_0_1_0_1_0))
                            {
                                assume $Is(_mcc#0#1_1_1_0_1_0_1_0, Tclass._module.Context());
                                assume $Is(_mcc#1#1_1_1_0_1_0_1_0, Tclass._module.Term());
                                havoc bt#1_1_1_0_1_0_1_0;
                                assume $Is(bt#1_1_1_0_1_0_1_0, Tclass._module.Term())
                                   && $IsAlloc(bt#1_1_1_0_1_0_1_0, Tclass._module.Term(), $Heap);
                                assume {:id "id367"} let#1_1_1_0_1_0_1_0#0#0 == _mcc#1#1_1_1_0_1_0_1_0;
                                assume true;
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(let#1_1_1_0_1_0_1_0#0#0, Tclass._module.Term());
                                assume {:id "id368"} bt#1_1_1_0_1_0_1_0 == let#1_1_1_0_1_0_1_0#0#0;
                                havoc D#1_1_1_0_1_0_1_0;
                                assume $Is(D#1_1_1_0_1_0_1_0, Tclass._module.Context())
                                   && $IsAlloc(D#1_1_1_0_1_0_1_0, Tclass._module.Context(), $Heap);
                                assume {:id "id369"} let#1_1_1_0_1_0_1_1#0#0 == _mcc#0#1_1_1_0_1_0_1_0;
                                assume true;
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(let#1_1_1_0_1_0_1_1#0#0, Tclass._module.Context());
                                assume {:id "id370"} D#1_1_1_0_1_0_1_0 == let#1_1_1_0_1_0_1_1#0#0;
                                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(242,15)
                                assert {:id "id371"} _module.Term.Apply_q(t#0);
                                if (_module.Term#Equal(bt#1_1_1_0_1_0_1_0, _module.Term.cdr(t#0)))
                                {
                                    assert {:id "id372"} _module.Term.Apply_q(t#0);
                                    ##C#1_1_1_0_1_0_1_0 := D#1_1_1_0_1_0_1_0;
                                    // assume allocatedness for argument to function
                                    assume $IsAlloc(##C#1_1_1_0_1_0_1_0, Tclass._module.Context(), $Heap);
                                    ##t#1_1_1_0_1_0_1_0 := u#1_1_1_0_1_0_0;
                                    // assume allocatedness for argument to function
                                    assume $IsAlloc(##t#1_1_1_0_1_0_1_0, Tclass._module.Term(), $Heap);
                                    assert {:id "id373"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1_0)
                                         || (_module.Context.Hole_q(##C#1_1_1_0_1_0_1_0) ==> Lit(true));
                                    assert {:id "id374"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1_0)
                                           ==> 
                                          _module.Context.C__term_q(##C#1_1_1_0_1_0_1_0)
                                           ==> (var t#1_1_1_0_1_0_1_0 := _module.Context._h1(##C#1_1_1_0_1_0_1_0); 
                                            (var D#1_1_1_0_1_0_1_1 := _module.Context._h0(##C#1_1_1_0_1_0_1_0); 
                                              _module.__default.IsContext($LS($LS($LZ)), D#1_1_1_0_1_0_1_1))));
                                    assert {:id "id375"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_1_0)
                                           ==> (var D#1_1_1_0_1_0_1_2 := _module.Context._h3(##C#1_1_1_0_1_0_1_0); 
                                            (var v#1_1_1_0_1_0_1_0 := _module.Context._h2(##C#1_1_1_0_1_0_1_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_1_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_1_0)
                                                   || (_module.Term.S_q(v#1_1_1_0_1_0_1_0) ==> Lit(true)))));
                                    assert {:id "id376"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_1_0)
                                           ==> (var D#1_1_1_0_1_0_1_2 := _module.Context._h3(##C#1_1_1_0_1_0_1_0); 
                                            (var v#1_1_1_0_1_0_1_0 := _module.Context._h2(##C#1_1_1_0_1_0_1_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_1_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_1_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_1_0)
                                                     ==> 
                                                    _module.Term.K_q(v#1_1_1_0_1_0_1_0)
                                                     ==> Lit(true)))));
                                    assert {:id "id377"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_1_0)
                                           ==> (var D#1_1_1_0_1_0_1_2 := _module.Context._h3(##C#1_1_1_0_1_0_1_0); 
                                            (var v#1_1_1_0_1_0_1_0 := _module.Context._h2(##C#1_1_1_0_1_0_1_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_1_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_1_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_1_0)
                                                     ==> 
                                                    !_module.Term.K_q(v#1_1_1_0_1_0_1_0)
                                                     ==> (var b#1_1_1_0_1_0_1_0 := _module.Term.cdr(v#1_1_1_0_1_0_1_0); 
                                                      (var a#1_1_1_0_1_0_1_0 := _module.Term.car(v#1_1_1_0_1_0_1_0); 
                                                        _module.Term.S_q(a#1_1_1_0_1_0_1_0)
                                                           ==> 
                                                          _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_1_0)
                                                           ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_1_0)))))));
                                    assert {:id "id378"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_1_0)
                                           ==> (var D#1_1_1_0_1_0_1_2 := _module.Context._h3(##C#1_1_1_0_1_0_1_0); 
                                            (var v#1_1_1_0_1_0_1_0 := _module.Context._h2(##C#1_1_1_0_1_0_1_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_1_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_1_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_1_0)
                                                     ==> 
                                                    !_module.Term.K_q(v#1_1_1_0_1_0_1_0)
                                                     ==> (var b#1_1_1_0_1_0_1_0 := _module.Term.cdr(v#1_1_1_0_1_0_1_0); 
                                                      (var a#1_1_1_0_1_0_1_0 := _module.Term.car(v#1_1_1_0_1_0_1_0); 
                                                        !_module.Term.S_q(a#1_1_1_0_1_0_1_0)
                                                           ==> 
                                                          _module.Term.K_q(a#1_1_1_0_1_0_1_0)
                                                           ==> 
                                                          _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_1_0)
                                                           ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_1_0)))))));
                                    assert {:id "id379"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_1_0)
                                           ==> (var D#1_1_1_0_1_0_1_2 := _module.Context._h3(##C#1_1_1_0_1_0_1_0); 
                                            (var v#1_1_1_0_1_0_1_0 := _module.Context._h2(##C#1_1_1_0_1_0_1_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_1_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_1_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_1_0)
                                                     ==> 
                                                    !_module.Term.K_q(v#1_1_1_0_1_0_1_0)
                                                     ==> (var b#1_1_1_0_1_0_1_0 := _module.Term.cdr(v#1_1_1_0_1_0_1_0); 
                                                      (var a#1_1_1_0_1_0_1_0 := _module.Term.car(v#1_1_1_0_1_0_1_0); 
                                                        !_module.Term.S_q(a#1_1_1_0_1_0_1_0)
                                                           ==> 
                                                          !_module.Term.K_q(a#1_1_1_0_1_0_1_0)
                                                           ==> (var y#1_1_1_0_1_0_1_0 := _module.Term.cdr(a#1_1_1_0_1_0_1_0); 
                                                            (var x#1_1_1_0_1_0_1_0 := _module.Term.car(a#1_1_1_0_1_0_1_0); 
                                                              (_module.Term#Equal(x#1_1_1_0_1_0_1_0, #_module.Term.S())
                                                                   && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_1_0)
                                                                   && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_1_0)
                                                                 ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_1_0))
                                                                 ==> _module.Term#Equal(x#1_1_1_0_1_0_1_0, #_module.Term.S())))))))));
                                    assert {:id "id380"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_1_0)
                                           ==> (var D#1_1_1_0_1_0_1_2 := _module.Context._h3(##C#1_1_1_0_1_0_1_0); 
                                            (var v#1_1_1_0_1_0_1_0 := _module.Context._h2(##C#1_1_1_0_1_0_1_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_1_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_1_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_1_0)
                                                     ==> 
                                                    !_module.Term.K_q(v#1_1_1_0_1_0_1_0)
                                                     ==> (var b#1_1_1_0_1_0_1_0 := _module.Term.cdr(v#1_1_1_0_1_0_1_0); 
                                                      (var a#1_1_1_0_1_0_1_0 := _module.Term.car(v#1_1_1_0_1_0_1_0); 
                                                        !_module.Term.S_q(a#1_1_1_0_1_0_1_0)
                                                           ==> 
                                                          !_module.Term.K_q(a#1_1_1_0_1_0_1_0)
                                                           ==> (var y#1_1_1_0_1_0_1_0 := _module.Term.cdr(a#1_1_1_0_1_0_1_0); 
                                                            (var x#1_1_1_0_1_0_1_0 := _module.Term.car(a#1_1_1_0_1_0_1_0); 
                                                              (_module.Term#Equal(x#1_1_1_0_1_0_1_0, #_module.Term.S())
                                                                   && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_1_0)
                                                                   && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_1_0)
                                                                 ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_1_0))
                                                                 ==> _module.__default.IsValue($LS($LS($LZ)), y#1_1_1_0_1_0_1_0)))))))));
                                    assert {:id "id381"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_1_0)
                                           ==> (var D#1_1_1_0_1_0_1_2 := _module.Context._h3(##C#1_1_1_0_1_0_1_0); 
                                            (var v#1_1_1_0_1_0_1_0 := _module.Context._h2(##C#1_1_1_0_1_0_1_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_1_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_1_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_1_0)
                                                     ==> 
                                                    !_module.Term.K_q(v#1_1_1_0_1_0_1_0)
                                                     ==> (var b#1_1_1_0_1_0_1_0 := _module.Term.cdr(v#1_1_1_0_1_0_1_0); 
                                                      (var a#1_1_1_0_1_0_1_0 := _module.Term.car(v#1_1_1_0_1_0_1_0); 
                                                        !_module.Term.S_q(a#1_1_1_0_1_0_1_0)
                                                           ==> 
                                                          !_module.Term.K_q(a#1_1_1_0_1_0_1_0)
                                                           ==> (var y#1_1_1_0_1_0_1_0 := _module.Term.cdr(a#1_1_1_0_1_0_1_0); 
                                                            (var x#1_1_1_0_1_0_1_0 := _module.Term.car(a#1_1_1_0_1_0_1_0); 
                                                              (_module.Term#Equal(x#1_1_1_0_1_0_1_0, #_module.Term.S())
                                                                   && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_1_0)
                                                                   && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_1_0)
                                                                 ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_1_0))
                                                                 ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_1_0)))))))));
                                    assert {:id "id382"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_1_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_1_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_1_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_1_0)
                                           ==> (var D#1_1_1_0_1_0_1_2 := _module.Context._h3(##C#1_1_1_0_1_0_1_0); 
                                            (var v#1_1_1_0_1_0_1_0 := _module.Context._h2(##C#1_1_1_0_1_0_1_0); 
                                              _module.__default.IsContext($LS($LS($LZ)), D#1_1_1_0_1_0_1_2))));
                                    assume _module.__default.EvalExpr#canCall(D#1_1_1_0_1_0_1_0, u#1_1_1_0_1_0_0);
                                }

                                assume $IsA#_module.Term(bt#1_1_1_0_1_0_1_0)
                                   && $IsA#_module.Term(_module.Term.cdr(t#0))
                                   && (_module.Term#Equal(bt#1_1_1_0_1_0_1_0, _module.Term.cdr(t#0))
                                     ==> $IsA#_module.Term(_module.Term.car(t#0))
                                       && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), D#1_1_1_0_1_0_1_0, u#1_1_1_0_1_0_0))
                                       && _module.__default.EvalExpr#canCall(D#1_1_1_0_1_0_1_0, u#1_1_1_0_1_0_0));
                                assert {:id "id383"} {:subsumption 0} _module.Term#Equal(bt#1_1_1_0_1_0_1_0, _module.Term.cdr(t#0));
                                assert {:id "id384"} {:subsumption 0} _module.Term#Equal(_module.Term.car(t#0), 
                                  _module.__default.EvalExpr($LS($LS($LZ)), D#1_1_1_0_1_0_1_0, u#1_1_1_0_1_0_0));
                                assume {:id "id385"} _module.Term#Equal(bt#1_1_1_0_1_0_1_0, _module.Term.cdr(t#0))
                                   && _module.Term#Equal(_module.Term.car(t#0), 
                                    _module.__default.EvalExpr($LS($LZ), D#1_1_1_0_1_0_1_0, u#1_1_1_0_1_0_0));
                            }
                            else if (C#1_1_1_0_1_0_0
                               == #_module.Context.value_C(_mcc#2#1_1_1_0_1_0_0_0, _mcc#3#1_1_1_0_1_0_0_0))
                            {
                                assume $Is(_mcc#2#1_1_1_0_1_0_0_0, Tclass._module.Term());
                                assume $Is(_mcc#3#1_1_1_0_1_0_0_0, Tclass._module.Context());
                                havoc D#1_1_1_0_1_0_0_0;
                                assume $Is(D#1_1_1_0_1_0_0_0, Tclass._module.Context())
                                   && $IsAlloc(D#1_1_1_0_1_0_0_0, Tclass._module.Context(), $Heap);
                                assume {:id "id348"} let#1_1_1_0_1_0_0_0#0#0 == _mcc#3#1_1_1_0_1_0_0_0;
                                assume true;
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(let#1_1_1_0_1_0_0_0#0#0, Tclass._module.Context());
                                assume {:id "id349"} D#1_1_1_0_1_0_0_0 == let#1_1_1_0_1_0_0_0#0#0;
                                havoc at#1_1_1_0_1_0_0_0;
                                assume $Is(at#1_1_1_0_1_0_0_0, Tclass._module.Term())
                                   && $IsAlloc(at#1_1_1_0_1_0_0_0, Tclass._module.Term(), $Heap);
                                assume {:id "id350"} let#1_1_1_0_1_0_0_1#0#0 == _mcc#2#1_1_1_0_1_0_0_0;
                                assume true;
                                assume true;
                                // CheckWellformedWithResult: any expression
                                assume $Is(let#1_1_1_0_1_0_0_1#0#0, Tclass._module.Term());
                                assume {:id "id351"} at#1_1_1_0_1_0_0_0 == let#1_1_1_0_1_0_0_1#0#0;
                                // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(244,15)
                                assert {:id "id352"} _module.Term.Apply_q(t#0);
                                if (_module.Term#Equal(at#1_1_1_0_1_0_0_0, _module.Term.car(t#0)))
                                {
                                    assert {:id "id353"} _module.Term.Apply_q(t#0);
                                    ##C#1_1_1_0_1_0_0_0 := D#1_1_1_0_1_0_0_0;
                                    // assume allocatedness for argument to function
                                    assume $IsAlloc(##C#1_1_1_0_1_0_0_0, Tclass._module.Context(), $Heap);
                                    ##t#1_1_1_0_1_0_0_0 := u#1_1_1_0_1_0_0;
                                    // assume allocatedness for argument to function
                                    assume $IsAlloc(##t#1_1_1_0_1_0_0_0, Tclass._module.Term(), $Heap);
                                    assert {:id "id354"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_0_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_0_0)
                                         || (_module.Context.Hole_q(##C#1_1_1_0_1_0_0_0) ==> Lit(true));
                                    assert {:id "id355"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_0_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_0_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_0_0)
                                           ==> 
                                          _module.Context.C__term_q(##C#1_1_1_0_1_0_0_0)
                                           ==> (var t#1_1_1_0_1_0_0_0 := _module.Context._h1(##C#1_1_1_0_1_0_0_0); 
                                            (var D#1_1_1_0_1_0_0_1 := _module.Context._h0(##C#1_1_1_0_1_0_0_0); 
                                              _module.__default.IsContext($LS($LS($LZ)), D#1_1_1_0_1_0_0_1))));
                                    assert {:id "id356"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_0_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_0_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_0_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_0_0)
                                           ==> (var D#1_1_1_0_1_0_0_2 := _module.Context._h3(##C#1_1_1_0_1_0_0_0); 
                                            (var v#1_1_1_0_1_0_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_0_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0_0)
                                                   || (_module.Term.S_q(v#1_1_1_0_1_0_0_0) ==> Lit(true)))));
                                    assert {:id "id357"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_0_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_0_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_0_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_0_0)
                                           ==> (var D#1_1_1_0_1_0_0_2 := _module.Context._h3(##C#1_1_1_0_1_0_0_0); 
                                            (var v#1_1_1_0_1_0_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_0_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_0_0)
                                                     ==> 
                                                    _module.Term.K_q(v#1_1_1_0_1_0_0_0)
                                                     ==> Lit(true)))));
                                    assert {:id "id358"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_0_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_0_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_0_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_0_0)
                                           ==> (var D#1_1_1_0_1_0_0_2 := _module.Context._h3(##C#1_1_1_0_1_0_0_0); 
                                            (var v#1_1_1_0_1_0_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_0_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_0_0)
                                                     ==> 
                                                    !_module.Term.K_q(v#1_1_1_0_1_0_0_0)
                                                     ==> (var b#1_1_1_0_1_0_0_0 := _module.Term.cdr(v#1_1_1_0_1_0_0_0); 
                                                      (var a#1_1_1_0_1_0_0_0 := _module.Term.car(v#1_1_1_0_1_0_0_0); 
                                                        _module.Term.S_q(a#1_1_1_0_1_0_0_0)
                                                           ==> 
                                                          _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_0_0)
                                                           ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_0_0)))))));
                                    assert {:id "id359"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_0_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_0_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_0_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_0_0)
                                           ==> (var D#1_1_1_0_1_0_0_2 := _module.Context._h3(##C#1_1_1_0_1_0_0_0); 
                                            (var v#1_1_1_0_1_0_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_0_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_0_0)
                                                     ==> 
                                                    !_module.Term.K_q(v#1_1_1_0_1_0_0_0)
                                                     ==> (var b#1_1_1_0_1_0_0_0 := _module.Term.cdr(v#1_1_1_0_1_0_0_0); 
                                                      (var a#1_1_1_0_1_0_0_0 := _module.Term.car(v#1_1_1_0_1_0_0_0); 
                                                        !_module.Term.S_q(a#1_1_1_0_1_0_0_0)
                                                           ==> 
                                                          _module.Term.K_q(a#1_1_1_0_1_0_0_0)
                                                           ==> 
                                                          _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_0_0)
                                                           ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_0_0)))))));
                                    assert {:id "id360"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_0_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_0_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_0_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_0_0)
                                           ==> (var D#1_1_1_0_1_0_0_2 := _module.Context._h3(##C#1_1_1_0_1_0_0_0); 
                                            (var v#1_1_1_0_1_0_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_0_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_0_0)
                                                     ==> 
                                                    !_module.Term.K_q(v#1_1_1_0_1_0_0_0)
                                                     ==> (var b#1_1_1_0_1_0_0_0 := _module.Term.cdr(v#1_1_1_0_1_0_0_0); 
                                                      (var a#1_1_1_0_1_0_0_0 := _module.Term.car(v#1_1_1_0_1_0_0_0); 
                                                        !_module.Term.S_q(a#1_1_1_0_1_0_0_0)
                                                           ==> 
                                                          !_module.Term.K_q(a#1_1_1_0_1_0_0_0)
                                                           ==> (var y#1_1_1_0_1_0_0_0 := _module.Term.cdr(a#1_1_1_0_1_0_0_0); 
                                                            (var x#1_1_1_0_1_0_0_0 := _module.Term.car(a#1_1_1_0_1_0_0_0); 
                                                              (_module.Term#Equal(x#1_1_1_0_1_0_0_0, #_module.Term.S())
                                                                   && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_0_0)
                                                                   && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_0_0)
                                                                 ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_0_0))
                                                                 ==> _module.Term#Equal(x#1_1_1_0_1_0_0_0, #_module.Term.S())))))))));
                                    assert {:id "id361"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_0_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_0_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_0_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_0_0)
                                           ==> (var D#1_1_1_0_1_0_0_2 := _module.Context._h3(##C#1_1_1_0_1_0_0_0); 
                                            (var v#1_1_1_0_1_0_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_0_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_0_0)
                                                     ==> 
                                                    !_module.Term.K_q(v#1_1_1_0_1_0_0_0)
                                                     ==> (var b#1_1_1_0_1_0_0_0 := _module.Term.cdr(v#1_1_1_0_1_0_0_0); 
                                                      (var a#1_1_1_0_1_0_0_0 := _module.Term.car(v#1_1_1_0_1_0_0_0); 
                                                        !_module.Term.S_q(a#1_1_1_0_1_0_0_0)
                                                           ==> 
                                                          !_module.Term.K_q(a#1_1_1_0_1_0_0_0)
                                                           ==> (var y#1_1_1_0_1_0_0_0 := _module.Term.cdr(a#1_1_1_0_1_0_0_0); 
                                                            (var x#1_1_1_0_1_0_0_0 := _module.Term.car(a#1_1_1_0_1_0_0_0); 
                                                              (_module.Term#Equal(x#1_1_1_0_1_0_0_0, #_module.Term.S())
                                                                   && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_0_0)
                                                                   && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_0_0)
                                                                 ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_0_0))
                                                                 ==> _module.__default.IsValue($LS($LS($LZ)), y#1_1_1_0_1_0_0_0)))))))));
                                    assert {:id "id362"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_0_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_0_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_0_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_0_0)
                                           ==> (var D#1_1_1_0_1_0_0_2 := _module.Context._h3(##C#1_1_1_0_1_0_0_0); 
                                            (var v#1_1_1_0_1_0_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_0_0); 
                                              _module.__default.IsValue#canCall(v#1_1_1_0_1_0_0_0)
                                                 ==> _module.__default.IsValue($LS($LZ), v#1_1_1_0_1_0_0_0)
                                                   || (!_module.Term.S_q(v#1_1_1_0_1_0_0_0)
                                                     ==> 
                                                    !_module.Term.K_q(v#1_1_1_0_1_0_0_0)
                                                     ==> (var b#1_1_1_0_1_0_0_0 := _module.Term.cdr(v#1_1_1_0_1_0_0_0); 
                                                      (var a#1_1_1_0_1_0_0_0 := _module.Term.car(v#1_1_1_0_1_0_0_0); 
                                                        !_module.Term.S_q(a#1_1_1_0_1_0_0_0)
                                                           ==> 
                                                          !_module.Term.K_q(a#1_1_1_0_1_0_0_0)
                                                           ==> (var y#1_1_1_0_1_0_0_0 := _module.Term.cdr(a#1_1_1_0_1_0_0_0); 
                                                            (var x#1_1_1_0_1_0_0_0 := _module.Term.car(a#1_1_1_0_1_0_0_0); 
                                                              (_module.Term#Equal(x#1_1_1_0_1_0_0_0, #_module.Term.S())
                                                                   && _module.__default.IsValue($LS($LZ), y#1_1_1_0_1_0_0_0)
                                                                   && _module.__default.IsValue($LS($LZ), b#1_1_1_0_1_0_0_0)
                                                                 ==> _module.__default.IsValue($LS($LZ), a#1_1_1_0_1_0_0_0))
                                                                 ==> _module.__default.IsValue($LS($LS($LZ)), b#1_1_1_0_1_0_0_0)))))))));
                                    assert {:id "id363"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1_1_1_0_1_0_0_0)
                                       ==> _module.__default.IsContext($LS($LZ), ##C#1_1_1_0_1_0_0_0)
                                         || (!_module.Context.Hole_q(##C#1_1_1_0_1_0_0_0)
                                           ==> 
                                          !_module.Context.C__term_q(##C#1_1_1_0_1_0_0_0)
                                           ==> (var D#1_1_1_0_1_0_0_2 := _module.Context._h3(##C#1_1_1_0_1_0_0_0); 
                                            (var v#1_1_1_0_1_0_0_0 := _module.Context._h2(##C#1_1_1_0_1_0_0_0); 
                                              _module.__default.IsContext($LS($LS($LZ)), D#1_1_1_0_1_0_0_2))));
                                    assume _module.__default.EvalExpr#canCall(D#1_1_1_0_1_0_0_0, u#1_1_1_0_1_0_0);
                                }

                                assume $IsA#_module.Term(at#1_1_1_0_1_0_0_0)
                                   && $IsA#_module.Term(_module.Term.car(t#0))
                                   && (_module.Term#Equal(at#1_1_1_0_1_0_0_0, _module.Term.car(t#0))
                                     ==> $IsA#_module.Term(_module.Term.cdr(t#0))
                                       && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), D#1_1_1_0_1_0_0_0, u#1_1_1_0_1_0_0))
                                       && _module.__default.EvalExpr#canCall(D#1_1_1_0_1_0_0_0, u#1_1_1_0_1_0_0));
                                assert {:id "id364"} {:subsumption 0} _module.Term#Equal(at#1_1_1_0_1_0_0_0, _module.Term.car(t#0));
                                assert {:id "id365"} {:subsumption 0} _module.Term#Equal(_module.Term.cdr(t#0), 
                                  _module.__default.EvalExpr($LS($LS($LZ)), D#1_1_1_0_1_0_0_0, u#1_1_1_0_1_0_0));
                                assume {:id "id366"} _module.Term#Equal(at#1_1_1_0_1_0_0_0, _module.Term.car(t#0))
                                   && _module.Term#Equal(_module.Term.cdr(t#0), 
                                    _module.__default.EvalExpr($LS($LZ), D#1_1_1_0_1_0_0_0, u#1_1_1_0_1_0_0));
                            }
                            else
                            {
                                assume false;
                            }

                            pop;
                            assert {:id "id387"} _module.Term#Equal(_module.__default.Step(u#1_1_1_0_1_0_0), u#1_1_1_0_1_0_0);
                            assume false;
                        }
                        else
                        {
                            assume (forall C#1_1_1_0_1_0_1: DatatypeType, u#1_1_1_0_1_0_1: DatatypeType :: 
                              { _module.__default.Step(u#1_1_1_0_1_0_1), _module.__default.IsContext($LS($LZ), C#1_1_1_0_1_0_1) } 
                                { _module.__default.EvalExpr($LS($LZ), C#1_1_1_0_1_0_1, u#1_1_1_0_1_0_1) } 
                              $Is(C#1_1_1_0_1_0_1, Tclass._module.Context())
                                   && $Is(u#1_1_1_0_1_0_1, Tclass._module.Term())
                                   && 
                                  _module.__default.IsContext($LS($LZ), C#1_1_1_0_1_0_1)
                                   && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1_1_1_0_1_0_1, u#1_1_1_0_1_0_1))
                                 ==> _module.Term#Equal(_module.__default.Step(u#1_1_1_0_1_0_1), u#1_1_1_0_1_0_1));
                        }

                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(247,11)
                        assume true;
                        assume true;
                        r#0 := t#0;
                    }
                }
                else
                {
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(250,9)
                    assume true;
                    assume true;
                    r#0 := t#0;
                }
            }
        }
    }
}



procedure {:verboseName "Lemma_ContextPossibilities (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__ContextPossibilities(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_ContextPossibilities (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__ContextPossibilities(t#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var C#0: DatatypeType;
  var u#0: DatatypeType;
  var ##C#0: DatatypeType;
  var ##C#1: DatatypeType;
  var ##t#0: DatatypeType;
  var D#4: DatatypeType;
  var ##C#2: DatatypeType;
  var ##t#1: DatatypeType;
  var ##t#2: DatatypeType;
  var D#10: DatatypeType;
  var ##C#3: DatatypeType;
  var ##t#3: DatatypeType;


    // AddMethodImpl: Lemma_ContextPossibilities, CheckWellFormed$$_module.__default.Lemma__ContextPossibilities
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc C#0;
    havoc u#0;
    assume $Is(C#0, Tclass._module.Context())
       && $IsAlloc(C#0, Tclass._module.Context(), $Heap)
       && 
      $Is(u#0, Tclass._module.Term())
       && $IsAlloc(u#0, Tclass._module.Term(), $Heap);
    if (*)
    {
        ##C#0 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#0, Tclass._module.Context(), $Heap);
        assume _module.__default.IsContext#canCall(C#0);
        assume {:id "id390"} _module.__default.IsContext($LS($LZ), C#0);
        ##C#1 := C#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##C#1, Tclass._module.Context(), $Heap);
        ##t#0 := u#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
        assert {:id "id391"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (_module.Context.Hole_q(##C#1) ==> Lit(true));
        assert {:id "id392"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              _module.Context.C__term_q(##C#1)
               ==> (var t#1 := _module.Context._h1(##C#1); 
                (var D#0 := _module.Context._h0(##C#1); 
                  _module.__default.IsContext($LS($LS($LZ)), D#0))));
        assert {:id "id393"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (_module.Term.S_q(v#0) ==> Lit(true)))));
        assert {:id "id394"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0) ==> _module.Term.K_q(v#0) ==> Lit(true)))));
        assert {:id "id395"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            _module.Term.S_q(a#0)
                               ==> 
                              _module.__default.IsValue($LS($LZ), a#0)
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))));
        assert {:id "id396"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              _module.Term.K_q(a#0)
                               ==> 
                              _module.__default.IsValue($LS($LZ), a#0)
                               ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))));
        assert {:id "id397"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              !_module.Term.K_q(a#0)
                               ==> (var y#0 := _module.Term.cdr(a#0); 
                                (var x#0 := _module.Term.car(a#0); 
                                  (_module.Term#Equal(x#0, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#0)
                                       && _module.__default.IsValue($LS($LZ), b#0)
                                     ==> _module.__default.IsValue($LS($LZ), a#0))
                                     ==> _module.Term#Equal(x#0, #_module.Term.S())))))))));
        assert {:id "id398"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              !_module.Term.K_q(a#0)
                               ==> (var y#0 := _module.Term.cdr(a#0); 
                                (var x#0 := _module.Term.car(a#0); 
                                  (_module.Term#Equal(x#0, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#0)
                                       && _module.__default.IsValue($LS($LZ), b#0)
                                     ==> _module.__default.IsValue($LS($LZ), a#0))
                                     ==> _module.__default.IsValue($LS($LS($LZ)), y#0)))))))));
        assert {:id "id399"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsValue#canCall(v#0)
                     ==> _module.__default.IsValue($LS($LZ), v#0)
                       || (!_module.Term.S_q(v#0)
                         ==> 
                        !_module.Term.K_q(v#0)
                         ==> (var b#0 := _module.Term.cdr(v#0); 
                          (var a#0 := _module.Term.car(v#0); 
                            !_module.Term.S_q(a#0)
                               ==> 
                              !_module.Term.K_q(a#0)
                               ==> (var y#0 := _module.Term.cdr(a#0); 
                                (var x#0 := _module.Term.car(a#0); 
                                  (_module.Term#Equal(x#0, #_module.Term.S())
                                       && _module.__default.IsValue($LS($LZ), y#0)
                                       && _module.__default.IsValue($LS($LZ), b#0)
                                     ==> _module.__default.IsValue($LS($LZ), a#0))
                                     ==> _module.__default.IsValue($LS($LS($LZ)), b#0)))))))));
        assert {:id "id400"} {:subsumption 0} _module.__default.IsContext#canCall(##C#1)
           ==> _module.__default.IsContext($LS($LZ), ##C#1)
             || (!_module.Context.Hole_q(##C#1)
               ==> 
              !_module.Context.C__term_q(##C#1)
               ==> (var D#1 := _module.Context._h3(##C#1); 
                (var v#0 := _module.Context._h2(##C#1); 
                  _module.__default.IsContext($LS($LS($LZ)), D#1))));
        assume _module.__default.IsContext($LS($LZ), ##C#1);
        assume _module.__default.EvalExpr#canCall(C#0, u#0);
        assume {:id "id401"} _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0));
        if (*)
        {
            if (*)
            {
                if (_module.Context#Equal(C#0, #_module.Context.Hole()))
                {
                }

                assume {:id "id402"} _module.Context#Equal(C#0, #_module.Context.Hole())
                   && _module.Term#Equal(t#0, u#0);
            }
            else
            {
                assume {:id "id403"} !(_module.Context#Equal(C#0, #_module.Context.Hole())
                   && _module.Term#Equal(t#0, u#0));
                if (_module.Term.Apply_q(t#0))
                {
                    // Begin Comprehension WF check
                    havoc D#4;
                    if ($Is(D#4, Tclass._module.Context())
                       && $IsAlloc(D#4, Tclass._module.Context(), $Heap))
                    {
                        assert {:id "id404"} _module.Term.Apply_q(t#0);
                        if (_module.Context#Equal(C#0, #_module.Context.C_term(D#4, _module.Term.cdr(t#0))))
                        {
                            assert {:id "id405"} _module.Term.Apply_q(t#0);
                            ##C#2 := D#4;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##C#2, Tclass._module.Context(), $Heap);
                            ##t#1 := u#0;
                            // assume allocatedness for argument to function
                            assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
                            assert {:id "id406"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
                               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                                 || (_module.Context.Hole_q(##C#2) ==> Lit(true));
                            assert {:id "id407"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
                               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                                 || (!_module.Context.Hole_q(##C#2)
                                   ==> 
                                  _module.Context.C__term_q(##C#2)
                                   ==> (var t#3 := _module.Context._h1(##C#2); 
                                    (var D#5 := _module.Context._h0(##C#2); 
                                      _module.__default.IsContext($LS($LS($LZ)), D#5))));
                            assert {:id "id408"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
                               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                                 || (!_module.Context.Hole_q(##C#2)
                                   ==> 
                                  !_module.Context.C__term_q(##C#2)
                                   ==> (var D#6 := _module.Context._h3(##C#2); 
                                    (var v#2 := _module.Context._h2(##C#2); 
                                      _module.__default.IsValue#canCall(v#2)
                                         ==> _module.__default.IsValue($LS($LZ), v#2)
                                           || (_module.Term.S_q(v#2) ==> Lit(true)))));
                            assert {:id "id409"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
                               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                                 || (!_module.Context.Hole_q(##C#2)
                                   ==> 
                                  !_module.Context.C__term_q(##C#2)
                                   ==> (var D#6 := _module.Context._h3(##C#2); 
                                    (var v#2 := _module.Context._h2(##C#2); 
                                      _module.__default.IsValue#canCall(v#2)
                                         ==> _module.__default.IsValue($LS($LZ), v#2)
                                           || (!_module.Term.S_q(v#2) ==> _module.Term.K_q(v#2) ==> Lit(true)))));
                            assert {:id "id410"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
                               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                                 || (!_module.Context.Hole_q(##C#2)
                                   ==> 
                                  !_module.Context.C__term_q(##C#2)
                                   ==> (var D#6 := _module.Context._h3(##C#2); 
                                    (var v#2 := _module.Context._h2(##C#2); 
                                      _module.__default.IsValue#canCall(v#2)
                                         ==> _module.__default.IsValue($LS($LZ), v#2)
                                           || (!_module.Term.S_q(v#2)
                                             ==> 
                                            !_module.Term.K_q(v#2)
                                             ==> (var b#2 := _module.Term.cdr(v#2); 
                                              (var a#2 := _module.Term.car(v#2); 
                                                _module.Term.S_q(a#2)
                                                   ==> 
                                                  _module.__default.IsValue($LS($LZ), a#2)
                                                   ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))));
                            assert {:id "id411"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
                               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                                 || (!_module.Context.Hole_q(##C#2)
                                   ==> 
                                  !_module.Context.C__term_q(##C#2)
                                   ==> (var D#6 := _module.Context._h3(##C#2); 
                                    (var v#2 := _module.Context._h2(##C#2); 
                                      _module.__default.IsValue#canCall(v#2)
                                         ==> _module.__default.IsValue($LS($LZ), v#2)
                                           || (!_module.Term.S_q(v#2)
                                             ==> 
                                            !_module.Term.K_q(v#2)
                                             ==> (var b#2 := _module.Term.cdr(v#2); 
                                              (var a#2 := _module.Term.car(v#2); 
                                                !_module.Term.S_q(a#2)
                                                   ==> 
                                                  _module.Term.K_q(a#2)
                                                   ==> 
                                                  _module.__default.IsValue($LS($LZ), a#2)
                                                   ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))));
                            assert {:id "id412"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
                               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                                 || (!_module.Context.Hole_q(##C#2)
                                   ==> 
                                  !_module.Context.C__term_q(##C#2)
                                   ==> (var D#6 := _module.Context._h3(##C#2); 
                                    (var v#2 := _module.Context._h2(##C#2); 
                                      _module.__default.IsValue#canCall(v#2)
                                         ==> _module.__default.IsValue($LS($LZ), v#2)
                                           || (!_module.Term.S_q(v#2)
                                             ==> 
                                            !_module.Term.K_q(v#2)
                                             ==> (var b#2 := _module.Term.cdr(v#2); 
                                              (var a#2 := _module.Term.car(v#2); 
                                                !_module.Term.S_q(a#2)
                                                   ==> 
                                                  !_module.Term.K_q(a#2)
                                                   ==> (var y#2 := _module.Term.cdr(a#2); 
                                                    (var x#2 := _module.Term.car(a#2); 
                                                      (_module.Term#Equal(x#2, #_module.Term.S())
                                                           && _module.__default.IsValue($LS($LZ), y#2)
                                                           && _module.__default.IsValue($LS($LZ), b#2)
                                                         ==> _module.__default.IsValue($LS($LZ), a#2))
                                                         ==> _module.Term#Equal(x#2, #_module.Term.S())))))))));
                            assert {:id "id413"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
                               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                                 || (!_module.Context.Hole_q(##C#2)
                                   ==> 
                                  !_module.Context.C__term_q(##C#2)
                                   ==> (var D#6 := _module.Context._h3(##C#2); 
                                    (var v#2 := _module.Context._h2(##C#2); 
                                      _module.__default.IsValue#canCall(v#2)
                                         ==> _module.__default.IsValue($LS($LZ), v#2)
                                           || (!_module.Term.S_q(v#2)
                                             ==> 
                                            !_module.Term.K_q(v#2)
                                             ==> (var b#2 := _module.Term.cdr(v#2); 
                                              (var a#2 := _module.Term.car(v#2); 
                                                !_module.Term.S_q(a#2)
                                                   ==> 
                                                  !_module.Term.K_q(a#2)
                                                   ==> (var y#2 := _module.Term.cdr(a#2); 
                                                    (var x#2 := _module.Term.car(a#2); 
                                                      (_module.Term#Equal(x#2, #_module.Term.S())
                                                           && _module.__default.IsValue($LS($LZ), y#2)
                                                           && _module.__default.IsValue($LS($LZ), b#2)
                                                         ==> _module.__default.IsValue($LS($LZ), a#2))
                                                         ==> _module.__default.IsValue($LS($LS($LZ)), y#2)))))))));
                            assert {:id "id414"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
                               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                                 || (!_module.Context.Hole_q(##C#2)
                                   ==> 
                                  !_module.Context.C__term_q(##C#2)
                                   ==> (var D#6 := _module.Context._h3(##C#2); 
                                    (var v#2 := _module.Context._h2(##C#2); 
                                      _module.__default.IsValue#canCall(v#2)
                                         ==> _module.__default.IsValue($LS($LZ), v#2)
                                           || (!_module.Term.S_q(v#2)
                                             ==> 
                                            !_module.Term.K_q(v#2)
                                             ==> (var b#2 := _module.Term.cdr(v#2); 
                                              (var a#2 := _module.Term.car(v#2); 
                                                !_module.Term.S_q(a#2)
                                                   ==> 
                                                  !_module.Term.K_q(a#2)
                                                   ==> (var y#2 := _module.Term.cdr(a#2); 
                                                    (var x#2 := _module.Term.car(a#2); 
                                                      (_module.Term#Equal(x#2, #_module.Term.S())
                                                           && _module.__default.IsValue($LS($LZ), y#2)
                                                           && _module.__default.IsValue($LS($LZ), b#2)
                                                         ==> _module.__default.IsValue($LS($LZ), a#2))
                                                         ==> _module.__default.IsValue($LS($LS($LZ)), b#2)))))))));
                            assert {:id "id415"} {:subsumption 0} _module.__default.IsContext#canCall(##C#2)
                               ==> _module.__default.IsContext($LS($LZ), ##C#2)
                                 || (!_module.Context.Hole_q(##C#2)
                                   ==> 
                                  !_module.Context.C__term_q(##C#2)
                                   ==> (var D#6 := _module.Context._h3(##C#2); 
                                    (var v#2 := _module.Context._h2(##C#2); 
                                      _module.__default.IsContext($LS($LS($LZ)), D#6))));
                            assume _module.__default.IsContext($LS($LZ), ##C#2);
                            assume _module.__default.EvalExpr#canCall(D#4, u#0);
                        }
                    }

                    // End Comprehension WF check
                }

                assume {:id "id416"} _module.Term.Apply_q(t#0)
                   && (exists D#9: DatatypeType :: 
                    { _module.__default.EvalExpr($LS($LZ), D#9, u#0) } 
                      { #_module.Context.C_term(D#9, _module.Term.cdr(t#0)) } 
                    $Is(D#9, Tclass._module.Context())
                       && 
                      _module.Context#Equal(C#0, #_module.Context.C_term(D#9, _module.Term.cdr(t#0)))
                       && _module.Term#Equal(_module.Term.car(t#0), _module.__default.EvalExpr($LS($LZ), D#9, u#0)));
            }
        }
        else
        {
            assume {:id "id417"} !((_module.Context#Equal(C#0, #_module.Context.Hole())
                 && _module.Term#Equal(t#0, u#0))
               || (_module.Term.Apply_q(t#0)
                 && (exists D#9: DatatypeType :: 
                  { _module.__default.EvalExpr($LS($LZ), D#9, u#0) } 
                    { #_module.Context.C_term(D#9, _module.Term.cdr(t#0)) } 
                  $Is(D#9, Tclass._module.Context())
                     && 
                    _module.Context#Equal(C#0, #_module.Context.C_term(D#9, _module.Term.cdr(t#0)))
                     && _module.Term#Equal(_module.Term.car(t#0), _module.__default.EvalExpr($LS($LZ), D#9, u#0)))));
            if (_module.Term.Apply_q(t#0))
            {
                assert {:id "id418"} _module.Term.Apply_q(t#0);
                ##t#2 := _module.Term.car(t#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#2, Tclass._module.Term(), $Heap);
                assume _module.__default.IsValue#canCall(_module.Term.car(t#0));
            }

            if (_module.Term.Apply_q(t#0)
               && _module.__default.IsValue($LS($LZ), _module.Term.car(t#0)))
            {
                // Begin Comprehension WF check
                havoc D#10;
                if ($Is(D#10, Tclass._module.Context())
                   && $IsAlloc(D#10, Tclass._module.Context(), $Heap))
                {
                    assert {:id "id419"} _module.Term.Apply_q(t#0);
                    if (_module.Context#Equal(C#0, #_module.Context.value_C(_module.Term.car(t#0), D#10)))
                    {
                        assert {:id "id420"} _module.Term.Apply_q(t#0);
                        ##C#3 := D#10;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##C#3, Tclass._module.Context(), $Heap);
                        ##t#3 := u#0;
                        // assume allocatedness for argument to function
                        assume $IsAlloc(##t#3, Tclass._module.Term(), $Heap);
                        assert {:id "id421"} {:subsumption 0} _module.__default.IsContext#canCall(##C#3)
                           ==> _module.__default.IsContext($LS($LZ), ##C#3)
                             || (_module.Context.Hole_q(##C#3) ==> Lit(true));
                        assert {:id "id422"} {:subsumption 0} _module.__default.IsContext#canCall(##C#3)
                           ==> _module.__default.IsContext($LS($LZ), ##C#3)
                             || (!_module.Context.Hole_q(##C#3)
                               ==> 
                              _module.Context.C__term_q(##C#3)
                               ==> (var t#5 := _module.Context._h1(##C#3); 
                                (var D#11 := _module.Context._h0(##C#3); 
                                  _module.__default.IsContext($LS($LS($LZ)), D#11))));
                        assert {:id "id423"} {:subsumption 0} _module.__default.IsContext#canCall(##C#3)
                           ==> _module.__default.IsContext($LS($LZ), ##C#3)
                             || (!_module.Context.Hole_q(##C#3)
                               ==> 
                              !_module.Context.C__term_q(##C#3)
                               ==> (var D#12 := _module.Context._h3(##C#3); 
                                (var v#4 := _module.Context._h2(##C#3); 
                                  _module.__default.IsValue#canCall(v#4)
                                     ==> _module.__default.IsValue($LS($LZ), v#4)
                                       || (_module.Term.S_q(v#4) ==> Lit(true)))));
                        assert {:id "id424"} {:subsumption 0} _module.__default.IsContext#canCall(##C#3)
                           ==> _module.__default.IsContext($LS($LZ), ##C#3)
                             || (!_module.Context.Hole_q(##C#3)
                               ==> 
                              !_module.Context.C__term_q(##C#3)
                               ==> (var D#12 := _module.Context._h3(##C#3); 
                                (var v#4 := _module.Context._h2(##C#3); 
                                  _module.__default.IsValue#canCall(v#4)
                                     ==> _module.__default.IsValue($LS($LZ), v#4)
                                       || (!_module.Term.S_q(v#4) ==> _module.Term.K_q(v#4) ==> Lit(true)))));
                        assert {:id "id425"} {:subsumption 0} _module.__default.IsContext#canCall(##C#3)
                           ==> _module.__default.IsContext($LS($LZ), ##C#3)
                             || (!_module.Context.Hole_q(##C#3)
                               ==> 
                              !_module.Context.C__term_q(##C#3)
                               ==> (var D#12 := _module.Context._h3(##C#3); 
                                (var v#4 := _module.Context._h2(##C#3); 
                                  _module.__default.IsValue#canCall(v#4)
                                     ==> _module.__default.IsValue($LS($LZ), v#4)
                                       || (!_module.Term.S_q(v#4)
                                         ==> 
                                        !_module.Term.K_q(v#4)
                                         ==> (var b#4 := _module.Term.cdr(v#4); 
                                          (var a#4 := _module.Term.car(v#4); 
                                            _module.Term.S_q(a#4)
                                               ==> 
                                              _module.__default.IsValue($LS($LZ), a#4)
                                               ==> _module.__default.IsValue($LS($LS($LZ)), b#4)))))));
                        assert {:id "id426"} {:subsumption 0} _module.__default.IsContext#canCall(##C#3)
                           ==> _module.__default.IsContext($LS($LZ), ##C#3)
                             || (!_module.Context.Hole_q(##C#3)
                               ==> 
                              !_module.Context.C__term_q(##C#3)
                               ==> (var D#12 := _module.Context._h3(##C#3); 
                                (var v#4 := _module.Context._h2(##C#3); 
                                  _module.__default.IsValue#canCall(v#4)
                                     ==> _module.__default.IsValue($LS($LZ), v#4)
                                       || (!_module.Term.S_q(v#4)
                                         ==> 
                                        !_module.Term.K_q(v#4)
                                         ==> (var b#4 := _module.Term.cdr(v#4); 
                                          (var a#4 := _module.Term.car(v#4); 
                                            !_module.Term.S_q(a#4)
                                               ==> 
                                              _module.Term.K_q(a#4)
                                               ==> 
                                              _module.__default.IsValue($LS($LZ), a#4)
                                               ==> _module.__default.IsValue($LS($LS($LZ)), b#4)))))));
                        assert {:id "id427"} {:subsumption 0} _module.__default.IsContext#canCall(##C#3)
                           ==> _module.__default.IsContext($LS($LZ), ##C#3)
                             || (!_module.Context.Hole_q(##C#3)
                               ==> 
                              !_module.Context.C__term_q(##C#3)
                               ==> (var D#12 := _module.Context._h3(##C#3); 
                                (var v#4 := _module.Context._h2(##C#3); 
                                  _module.__default.IsValue#canCall(v#4)
                                     ==> _module.__default.IsValue($LS($LZ), v#4)
                                       || (!_module.Term.S_q(v#4)
                                         ==> 
                                        !_module.Term.K_q(v#4)
                                         ==> (var b#4 := _module.Term.cdr(v#4); 
                                          (var a#4 := _module.Term.car(v#4); 
                                            !_module.Term.S_q(a#4)
                                               ==> 
                                              !_module.Term.K_q(a#4)
                                               ==> (var y#4 := _module.Term.cdr(a#4); 
                                                (var x#4 := _module.Term.car(a#4); 
                                                  (_module.Term#Equal(x#4, #_module.Term.S())
                                                       && _module.__default.IsValue($LS($LZ), y#4)
                                                       && _module.__default.IsValue($LS($LZ), b#4)
                                                     ==> _module.__default.IsValue($LS($LZ), a#4))
                                                     ==> _module.Term#Equal(x#4, #_module.Term.S())))))))));
                        assert {:id "id428"} {:subsumption 0} _module.__default.IsContext#canCall(##C#3)
                           ==> _module.__default.IsContext($LS($LZ), ##C#3)
                             || (!_module.Context.Hole_q(##C#3)
                               ==> 
                              !_module.Context.C__term_q(##C#3)
                               ==> (var D#12 := _module.Context._h3(##C#3); 
                                (var v#4 := _module.Context._h2(##C#3); 
                                  _module.__default.IsValue#canCall(v#4)
                                     ==> _module.__default.IsValue($LS($LZ), v#4)
                                       || (!_module.Term.S_q(v#4)
                                         ==> 
                                        !_module.Term.K_q(v#4)
                                         ==> (var b#4 := _module.Term.cdr(v#4); 
                                          (var a#4 := _module.Term.car(v#4); 
                                            !_module.Term.S_q(a#4)
                                               ==> 
                                              !_module.Term.K_q(a#4)
                                               ==> (var y#4 := _module.Term.cdr(a#4); 
                                                (var x#4 := _module.Term.car(a#4); 
                                                  (_module.Term#Equal(x#4, #_module.Term.S())
                                                       && _module.__default.IsValue($LS($LZ), y#4)
                                                       && _module.__default.IsValue($LS($LZ), b#4)
                                                     ==> _module.__default.IsValue($LS($LZ), a#4))
                                                     ==> _module.__default.IsValue($LS($LS($LZ)), y#4)))))))));
                        assert {:id "id429"} {:subsumption 0} _module.__default.IsContext#canCall(##C#3)
                           ==> _module.__default.IsContext($LS($LZ), ##C#3)
                             || (!_module.Context.Hole_q(##C#3)
                               ==> 
                              !_module.Context.C__term_q(##C#3)
                               ==> (var D#12 := _module.Context._h3(##C#3); 
                                (var v#4 := _module.Context._h2(##C#3); 
                                  _module.__default.IsValue#canCall(v#4)
                                     ==> _module.__default.IsValue($LS($LZ), v#4)
                                       || (!_module.Term.S_q(v#4)
                                         ==> 
                                        !_module.Term.K_q(v#4)
                                         ==> (var b#4 := _module.Term.cdr(v#4); 
                                          (var a#4 := _module.Term.car(v#4); 
                                            !_module.Term.S_q(a#4)
                                               ==> 
                                              !_module.Term.K_q(a#4)
                                               ==> (var y#4 := _module.Term.cdr(a#4); 
                                                (var x#4 := _module.Term.car(a#4); 
                                                  (_module.Term#Equal(x#4, #_module.Term.S())
                                                       && _module.__default.IsValue($LS($LZ), y#4)
                                                       && _module.__default.IsValue($LS($LZ), b#4)
                                                     ==> _module.__default.IsValue($LS($LZ), a#4))
                                                     ==> _module.__default.IsValue($LS($LS($LZ)), b#4)))))))));
                        assert {:id "id430"} {:subsumption 0} _module.__default.IsContext#canCall(##C#3)
                           ==> _module.__default.IsContext($LS($LZ), ##C#3)
                             || (!_module.Context.Hole_q(##C#3)
                               ==> 
                              !_module.Context.C__term_q(##C#3)
                               ==> (var D#12 := _module.Context._h3(##C#3); 
                                (var v#4 := _module.Context._h2(##C#3); 
                                  _module.__default.IsContext($LS($LS($LZ)), D#12))));
                        assume _module.__default.IsContext($LS($LZ), ##C#3);
                        assume _module.__default.EvalExpr#canCall(D#10, u#0);
                    }
                }

                // End Comprehension WF check
            }

            assume {:id "id431"} _module.Term.Apply_q(t#0)
               && _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
               && (exists D#15: DatatypeType :: 
                { _module.__default.EvalExpr($LS($LZ), D#15, u#0) } 
                  { #_module.Context.value_C(_module.Term.car(t#0), D#15) } 
                $Is(D#15, Tclass._module.Context())
                   && 
                  _module.Context#Equal(C#0, #_module.Context.value_C(_module.Term.car(t#0), D#15))
                   && _module.Term#Equal(_module.Term.cdr(t#0), _module.__default.EvalExpr($LS($LZ), D#15, u#0)));
        }
    }
    else
    {
        assume {:id "id432"} _module.__default.IsContext($LS($LZ), C#0)
             && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0))
           ==> (_module.Context#Equal(C#0, #_module.Context.Hole())
               && _module.Term#Equal(t#0, u#0))
             || (_module.Term.Apply_q(t#0)
               && (exists D#9: DatatypeType :: 
                { _module.__default.EvalExpr($LS($LZ), D#9, u#0) } 
                  { #_module.Context.C_term(D#9, _module.Term.cdr(t#0)) } 
                $Is(D#9, Tclass._module.Context())
                   && 
                  _module.Context#Equal(C#0, #_module.Context.C_term(D#9, _module.Term.cdr(t#0)))
                   && _module.Term#Equal(_module.Term.car(t#0), _module.__default.EvalExpr($LS($LZ), D#9, u#0))))
             || (
              _module.Term.Apply_q(t#0)
               && _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
               && (exists D#15: DatatypeType :: 
                { _module.__default.EvalExpr($LS($LZ), D#15, u#0) } 
                  { #_module.Context.value_C(_module.Term.car(t#0), D#15) } 
                $Is(D#15, Tclass._module.Context())
                   && 
                  _module.Context#Equal(C#0, #_module.Context.value_C(_module.Term.car(t#0), D#15))
                   && _module.Term#Equal(_module.Term.cdr(t#0), _module.__default.EvalExpr($LS($LZ), D#15, u#0))));
    }

    assume {:id "id433"} (forall C#1: DatatypeType, u#1: DatatypeType :: 
      { _module.__default.EvalExpr($LS($LZ), C#1, u#1) } 
      $Is(C#1, Tclass._module.Context()) && $Is(u#1, Tclass._module.Term())
         ==> 
        _module.__default.IsContext($LS($LZ), C#1)
           && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
         ==> (_module.Context#Equal(C#1, #_module.Context.Hole())
             && _module.Term#Equal(t#0, u#1))
           || (_module.Term.Apply_q(t#0)
             && (exists D#16: DatatypeType :: 
              { _module.__default.EvalExpr($LS($LZ), D#16, u#1) } 
                { #_module.Context.C_term(D#16, _module.Term.cdr(t#0)) } 
              $Is(D#16, Tclass._module.Context())
                 && 
                _module.Context#Equal(C#1, #_module.Context.C_term(D#16, _module.Term.cdr(t#0)))
                 && _module.Term#Equal(_module.Term.car(t#0), _module.__default.EvalExpr($LS($LZ), D#16, u#1))))
           || (
            _module.Term.Apply_q(t#0)
             && _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
             && (exists D#17: DatatypeType :: 
              { _module.__default.EvalExpr($LS($LZ), D#17, u#1) } 
                { #_module.Context.value_C(_module.Term.car(t#0), D#17) } 
              $Is(D#17, Tclass._module.Context())
                 && 
                _module.Context#Equal(C#1, #_module.Context.value_C(_module.Term.car(t#0), D#17))
                 && _module.Term#Equal(_module.Term.cdr(t#0), _module.__default.EvalExpr($LS($LZ), D#17, u#1)))));
}



procedure {:verboseName "Lemma_ContextPossibilities (call)"} Call$$_module.__default.Lemma__ContextPossibilities(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall C#1: DatatypeType, u#1: DatatypeType :: 
    { _module.__default.EvalExpr($LS($LZ), C#1, u#1) } 
    $Is(C#1, Tclass._module.Context()) && $Is(u#1, Tclass._module.Term())
       ==> _module.__default.IsContext#canCall(C#1)
         && (_module.__default.IsContext($LS($LZ), C#1)
           ==> $IsA#_module.Term(t#0)
             && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#1, u#1))
             && _module.__default.EvalExpr#canCall(C#1, u#1)
             && (_module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
               ==> $IsA#_module.Context(C#1)
                 && (_module.Context#Equal(C#1, #_module.Context.Hole())
                   ==> $IsA#_module.Term(t#0) && $IsA#_module.Term(u#1))
                 && (!(_module.Context#Equal(C#1, #_module.Context.Hole())
                     && _module.Term#Equal(t#0, u#1))
                   ==> (_module.Term.Apply_q(t#0)
                       ==> (forall D#16: DatatypeType :: 
                        { _module.__default.EvalExpr($LS($LZ), D#16, u#1) } 
                          { #_module.Context.C_term(D#16, _module.Term.cdr(t#0)) } 
                        $Is(D#16, Tclass._module.Context())
                           ==> $IsA#_module.Context(C#1)
                             && (_module.Context#Equal(C#1, #_module.Context.C_term(D#16, _module.Term.cdr(t#0)))
                               ==> $IsA#_module.Term(_module.Term.car(t#0))
                                 && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), D#16, u#1))
                                 && _module.__default.EvalExpr#canCall(D#16, u#1))))
                     && (!(_module.Term.Apply_q(t#0)
                         && (exists D#16: DatatypeType :: 
                          { _module.__default.EvalExpr($LS($LZ), D#16, u#1) } 
                            { #_module.Context.C_term(D#16, _module.Term.cdr(t#0)) } 
                          $Is(D#16, Tclass._module.Context())
                             && 
                            _module.Context#Equal(C#1, #_module.Context.C_term(D#16, _module.Term.cdr(t#0)))
                             && _module.Term#Equal(_module.Term.car(t#0), _module.__default.EvalExpr($LS($LZ), D#16, u#1))))
                       ==> 
                      _module.Term.Apply_q(t#0)
                       ==> _module.__default.IsValue#canCall(_module.Term.car(t#0))
                         && (_module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                           ==> (forall D#17: DatatypeType :: 
                            { _module.__default.EvalExpr($LS($LZ), D#17, u#1) } 
                              { #_module.Context.value_C(_module.Term.car(t#0), D#17) } 
                            $Is(D#17, Tclass._module.Context())
                               ==> $IsA#_module.Context(C#1)
                                 && (_module.Context#Equal(C#1, #_module.Context.value_C(_module.Term.car(t#0), D#17))
                                   ==> $IsA#_module.Term(_module.Term.cdr(t#0))
                                     && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), D#17, u#1))
                                     && _module.__default.EvalExpr#canCall(D#17, u#1)))))))));
  free ensures {:id "id434"} (forall C#1: DatatypeType, u#1: DatatypeType :: 
    { _module.__default.EvalExpr($LS($LZ), C#1, u#1) } 
    $Is(C#1, Tclass._module.Context()) && $Is(u#1, Tclass._module.Term())
       ==> 
      _module.__default.IsContext($LS($LZ), C#1)
         && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
       ==> (_module.Context#Equal(C#1, #_module.Context.Hole())
           && _module.Term#Equal(t#0, u#1))
         || (_module.Term.Apply_q(t#0)
           && (exists D#16: DatatypeType :: 
            { _module.__default.EvalExpr($LS($LZ), D#16, u#1) } 
              { #_module.Context.C_term(D#16, _module.Term.cdr(t#0)) } 
            $Is(D#16, Tclass._module.Context())
               && 
              _module.Context#Equal(C#1, #_module.Context.C_term(D#16, _module.Term.cdr(t#0)))
               && _module.Term#Equal(_module.Term.car(t#0), _module.__default.EvalExpr($LS($LZ), D#16, u#1))))
         || (
          _module.Term.Apply_q(t#0)
           && _module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
           && (exists D#17: DatatypeType :: 
            { _module.__default.EvalExpr($LS($LZ), D#17, u#1) } 
              { #_module.Context.value_C(_module.Term.car(t#0), D#17) } 
            $Is(D#17, Tclass._module.Context())
               && 
              _module.Context#Equal(C#1, #_module.Context.value_C(_module.Term.car(t#0), D#17))
               && _module.Term#Equal(_module.Term.cdr(t#0), _module.__default.EvalExpr($LS($LZ), D#17, u#1)))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Lemma_ContextPossibilities (correctness)"} Impl$$_module.__default.Lemma__ContextPossibilities(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall C#1: DatatypeType, u#1: DatatypeType :: 
    { _module.__default.EvalExpr($LS($LZ), C#1, u#1) } 
    $Is(C#1, Tclass._module.Context()) && $Is(u#1, Tclass._module.Term())
       ==> _module.__default.IsContext#canCall(C#1)
         && (_module.__default.IsContext($LS($LZ), C#1)
           ==> $IsA#_module.Term(t#0)
             && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), C#1, u#1))
             && _module.__default.EvalExpr#canCall(C#1, u#1)
             && (_module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LZ), C#1, u#1))
               ==> $IsA#_module.Context(C#1)
                 && (_module.Context#Equal(C#1, #_module.Context.Hole())
                   ==> $IsA#_module.Term(t#0) && $IsA#_module.Term(u#1))
                 && (!(_module.Context#Equal(C#1, #_module.Context.Hole())
                     && _module.Term#Equal(t#0, u#1))
                   ==> (_module.Term.Apply_q(t#0)
                       ==> (forall D#16: DatatypeType :: 
                        { _module.__default.EvalExpr($LS($LZ), D#16, u#1) } 
                          { #_module.Context.C_term(D#16, _module.Term.cdr(t#0)) } 
                        $Is(D#16, Tclass._module.Context())
                           ==> $IsA#_module.Context(C#1)
                             && (_module.Context#Equal(C#1, #_module.Context.C_term(D#16, _module.Term.cdr(t#0)))
                               ==> $IsA#_module.Term(_module.Term.car(t#0))
                                 && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), D#16, u#1))
                                 && _module.__default.EvalExpr#canCall(D#16, u#1))))
                     && (!(_module.Term.Apply_q(t#0)
                         && (exists D#16: DatatypeType :: 
                          { _module.__default.EvalExpr($LS($LZ), D#16, u#1) } 
                            { #_module.Context.C_term(D#16, _module.Term.cdr(t#0)) } 
                          $Is(D#16, Tclass._module.Context())
                             && 
                            _module.Context#Equal(C#1, #_module.Context.C_term(D#16, _module.Term.cdr(t#0)))
                             && _module.Term#Equal(_module.Term.car(t#0), _module.__default.EvalExpr($LS($LZ), D#16, u#1))))
                       ==> 
                      _module.Term.Apply_q(t#0)
                       ==> _module.__default.IsValue#canCall(_module.Term.car(t#0))
                         && (_module.__default.IsValue($LS($LZ), _module.Term.car(t#0))
                           ==> (forall D#17: DatatypeType :: 
                            { _module.__default.EvalExpr($LS($LZ), D#17, u#1) } 
                              { #_module.Context.value_C(_module.Term.car(t#0), D#17) } 
                            $Is(D#17, Tclass._module.Context())
                               ==> $IsA#_module.Context(C#1)
                                 && (_module.Context#Equal(C#1, #_module.Context.value_C(_module.Term.car(t#0), D#17))
                                   ==> $IsA#_module.Term(_module.Term.cdr(t#0))
                                     && $IsA#_module.Term(_module.__default.EvalExpr($LS($LZ), D#17, u#1))
                                     && _module.__default.EvalExpr#canCall(D#17, u#1)))))))));
  ensures {:id "id435"} (forall C#1: DatatypeType, u#1: DatatypeType :: 
    { _module.__default.EvalExpr($LS($LS($LZ)), C#1, u#1) } 
    $Is(C#1, Tclass._module.Context()) && $Is(u#1, Tclass._module.Term())
       ==> 
      _module.__default.IsContext($LS($LS($LZ)), C#1)
         && _module.Term#Equal(t#0, _module.__default.EvalExpr($LS($LS($LZ)), C#1, u#1))
       ==> (_module.Context#Equal(C#1, #_module.Context.Hole())
           && _module.Term#Equal(t#0, u#1))
         || (_module.Term.Apply_q(t#0)
           && (exists D#16: DatatypeType :: 
            { _module.__default.EvalExpr($LS($LS($LZ)), D#16, u#1) } 
              { #_module.Context.C_term(D#16, _module.Term.cdr(t#0)) } 
            $Is(D#16, Tclass._module.Context())
               && 
              _module.Context#Equal(C#1, #_module.Context.C_term(D#16, _module.Term.cdr(t#0)))
               && _module.Term#Equal(_module.Term.car(t#0), _module.__default.EvalExpr($LS($LS($LZ)), D#16, u#1))))
         || (
          _module.Term.Apply_q(t#0)
           && _module.__default.IsValue($LS($LS($LZ)), _module.Term.car(t#0))
           && (exists D#17: DatatypeType :: 
            { _module.__default.EvalExpr($LS($LS($LZ)), D#17, u#1) } 
              { #_module.Context.value_C(_module.Term.car(t#0), D#17) } 
            $Is(D#17, Tclass._module.Context())
               && 
              _module.Context#Equal(C#1, #_module.Context.value_C(_module.Term.car(t#0), D#17))
               && _module.Term#Equal(_module.Term.cdr(t#0), _module.__default.EvalExpr($LS($LS($LZ)), D#17, u#1)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_ContextPossibilities (correctness)"} Impl$$_module.__default.Lemma__ContextPossibilities(t#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Lemma_ContextPossibilities, Impl$$_module.__default.Lemma__ContextPossibilities
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



// function declaration for _module._default.IsTrace
function _module.__default.IsTrace($ly: LayerType, trace#0: DatatypeType, t#0: DatatypeType, r#0: DatatypeType)
   : bool
uses {
// definition axiom for _module.__default.IsTrace (revealed)
axiom {:id "id436"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, trace#0: DatatypeType, t#0: DatatypeType, r#0: DatatypeType :: 
    { _module.__default.IsTrace($LS($ly), trace#0, t#0, r#0) } 
    _module.__default.IsTrace#canCall(trace#0, t#0, r#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(trace#0, Tclass._module.Trace())
           && $Is(t#0, Tclass._module.Term())
           && $Is(r#0, Tclass._module.Term()))
       ==> (_module.Trace.EmptyTrace_q(trace#0)
           ==> $IsA#_module.Term(t#0) && $IsA#_module.Term(r#0))
         && (!_module.Trace.EmptyTrace_q(trace#0)
           ==> (var u#1 := _module.Trace._h5(trace#0); 
            (var tr#1 := _module.Trace._h4(trace#0); 
              _module.__default.IsTrace#canCall(tr#1, t#0, u#1)
                 && (_module.__default.IsTrace($ly, tr#1, t#0, u#1)
                   ==> $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), u#1))
                     && $IsA#_module.Term(r#0)
                     && _module.__default.FindAndStep#canCall(u#1)))))
         && _module.__default.IsTrace($LS($ly), trace#0, t#0, r#0)
           == (if _module.Trace.EmptyTrace_q(trace#0)
             then _module.Term#Equal(t#0, r#0)
             else (var u#0 := _module.Trace._h5(trace#0); 
              (var tr#0 := _module.Trace._h4(trace#0); 
                _module.__default.IsTrace($ly, tr#0, t#0, u#0)
                   && _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), u#0), r#0)))));
// definition axiom for _module.__default.IsTrace for all literals (revealed)
axiom {:id "id437"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, trace#0: DatatypeType, t#0: DatatypeType, r#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsTrace($LS($ly), Lit(trace#0), Lit(t#0), Lit(r#0)) } 
    _module.__default.IsTrace#canCall(Lit(trace#0), Lit(t#0), Lit(r#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(trace#0, Tclass._module.Trace())
           && $Is(t#0, Tclass._module.Term())
           && $Is(r#0, Tclass._module.Term()))
       ==> (Lit(_module.Trace.EmptyTrace_q(Lit(trace#0)))
           ==> $IsA#_module.Term(Lit(t#0)) && $IsA#_module.Term(Lit(r#0)))
         && (!Lit(_module.Trace.EmptyTrace_q(Lit(trace#0)))
           ==> (var u#3 := Lit(_module.Trace._h5(Lit(trace#0))); 
            (var tr#3 := Lit(_module.Trace._h4(Lit(trace#0))); 
              _module.__default.IsTrace#canCall(tr#3, Lit(t#0), u#3)
                 && (_module.__default.IsTrace($LS($ly), tr#3, Lit(t#0), u#3)
                   ==> $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), u#3))
                     && $IsA#_module.Term(Lit(r#0))
                     && _module.__default.FindAndStep#canCall(u#3)))))
         && _module.__default.IsTrace($LS($ly), Lit(trace#0), Lit(t#0), Lit(r#0))
           == (if _module.Trace.EmptyTrace_q(Lit(trace#0))
             then _module.Term#Equal(t#0, r#0)
             else (var u#2 := Lit(_module.Trace._h5(Lit(trace#0))); 
              (var tr#2 := Lit(_module.Trace._h4(Lit(trace#0))); 
                _module.__default.IsTrace($LS($ly), tr#2, Lit(t#0), u#2)
                   && _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), u#2), r#0)))));
}

function _module.__default.IsTrace#canCall(trace#0: DatatypeType, t#0: DatatypeType, r#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, trace#0: DatatypeType, t#0: DatatypeType, r#0: DatatypeType :: 
  { _module.__default.IsTrace($LS($ly), trace#0, t#0, r#0) } 
  _module.__default.IsTrace($LS($ly), trace#0, t#0, r#0)
     == _module.__default.IsTrace($ly, trace#0, t#0, r#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, trace#0: DatatypeType, t#0: DatatypeType, r#0: DatatypeType :: 
  { _module.__default.IsTrace(AsFuelBottom($ly), trace#0, t#0, r#0) } 
  _module.__default.IsTrace($ly, trace#0, t#0, r#0)
     == _module.__default.IsTrace($LZ, trace#0, t#0, r#0));

function Tclass._module.Trace() : Ty
uses {
// Tclass._module.Trace Tag
axiom Tag(Tclass._module.Trace()) == Tagclass._module.Trace
   && TagFamily(Tclass._module.Trace()) == tytagFamily$Trace;
}

const unique Tagclass._module.Trace: TyTag;

// Box/unbox axiom for Tclass._module.Trace
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Trace()) } 
  $IsBox(bx, Tclass._module.Trace())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Trace()));

function _module.__default.IsTrace#requires(LayerType, DatatypeType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.IsTrace
axiom (forall $ly: LayerType, trace#0: DatatypeType, t#0: DatatypeType, r#0: DatatypeType :: 
  { _module.__default.IsTrace#requires($ly, trace#0, t#0, r#0) } 
  $Is(trace#0, Tclass._module.Trace())
       && $Is(t#0, Tclass._module.Term())
       && $Is(r#0, Tclass._module.Term())
     ==> _module.__default.IsTrace#requires($ly, trace#0, t#0, r#0) == true);

procedure {:verboseName "IsTrace (well-formedness)"} CheckWellformed$$_module.__default.IsTrace(trace#0: DatatypeType where $Is(trace#0, Tclass._module.Trace()), 
    t#0: DatatypeType where $Is(t#0, Tclass._module.Term()), 
    r#0: DatatypeType where $Is(r#0, Tclass._module.Term()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "IsTrace (well-formedness)"} CheckWellformed$$_module.__default.IsTrace(trace#0: DatatypeType, t#0: DatatypeType, r#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var u#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var tr#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##trace#0: DatatypeType;
  var ##t#0: DatatypeType;
  var ##r#0: DatatypeType;
  var ##t#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
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
        if (trace#0 == #_module.Trace.EmptyTrace())
        {
            assume {:id "id444"} _module.__default.IsTrace($LS($LZ), trace#0, t#0, r#0)
               == _module.Term#Equal(t#0, r#0);
            assume $IsA#_module.Term(t#0) && $IsA#_module.Term(r#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.IsTrace($LS($LZ), trace#0, t#0, r#0), TBool);
            return;
        }
        else if (trace#0 == #_module.Trace.ReductionStep(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Trace());
            assume $Is(_mcc#1#0, Tclass._module.Term());
            havoc u#Z#0;
            assume {:id "id438"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Term());
            assume {:id "id439"} u#Z#0 == let#0#0#0;
            havoc tr#Z#0;
            assume {:id "id440"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Trace());
            assume {:id "id441"} tr#Z#0 == let#1#0#0;
            ##trace#0 := tr#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##trace#0, Tclass._module.Trace(), $Heap);
            ##t#0 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
            ##r#0 := u#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#0, Tclass._module.Term(), $Heap);
            assert {:id "id442"} DtRank(##trace#0) < DtRank(trace#0)
               || (DtRank(##trace#0) == DtRank(trace#0)
                 && (DtRank(##t#0) < DtRank(t#0)
                   || (DtRank(##t#0) == DtRank(t#0) && DtRank(##r#0) < DtRank(r#0))));
            assume _module.__default.IsTrace#canCall(tr#Z#0, t#0, u#Z#0);
            if (_module.__default.IsTrace($LS($LZ), tr#Z#0, t#0, u#Z#0))
            {
                ##t#1 := u#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
                assume _module.__default.FindAndStep#canCall(u#Z#0);
            }

            assume {:id "id443"} _module.__default.IsTrace($LS($LZ), trace#0, t#0, r#0)
               == (_module.__default.IsTrace($LS($LZ), tr#Z#0, t#0, u#Z#0)
                 && _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), u#Z#0), r#0));
            assume _module.__default.IsTrace#canCall(tr#Z#0, t#0, u#Z#0)
               && (_module.__default.IsTrace($LS($LZ), tr#Z#0, t#0, u#Z#0)
                 ==> $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), u#Z#0))
                   && $IsA#_module.Term(r#0)
                   && _module.__default.FindAndStep#canCall(u#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.IsTrace($LS($LZ), trace#0, t#0, r#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "reduction (well-formedness)"} CheckWellFormed$$_module.__default.reduction(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Term()) && $IsAlloc(r#0, Tclass._module.Term(), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reduction (call)"} Call$$_module.__default.reduction(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Term()) && $IsAlloc(r#0, Tclass._module.Term(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall trace#1: DatatypeType :: 
    { _module.__default.IsTrace($LS($LZ), trace#1, t#0, r#0) } 
    $Is(trace#1, Tclass._module.Trace())
       ==> _module.__default.IsTrace#canCall(trace#1, t#0, r#0));
  free ensures {:id "id447"} (exists trace#1: DatatypeType :: 
    { _module.__default.IsTrace($LS($LS($LZ)), trace#1, t#0, r#0) } 
    $Is(trace#1, Tclass._module.Trace())
       && _module.__default.IsTrace($LS($LS($LZ)), trace#1, t#0, r#0));
  free ensures _module.__default.IsTerminal#canCall(r#0);
  free ensures {:id "id448"} _module.__default.IsTerminal#canCall(r#0)
     && 
    _module.__default.IsTerminal(r#0)
     && !(exists C#0: DatatypeType, u#0: DatatypeType :: 
      { _module.__default.Step(u#0), _module.__default.IsContext($LS($LZ), C#0) } 
        { _module.__default.EvalExpr($LS($LZ), C#0, u#0) } 
      $Is(C#0, Tclass._module.Context())
         && $Is(u#0, Tclass._module.Term())
         && 
        _module.__default.IsContext($LS($LZ), C#0)
         && _module.Term#Equal(r#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0))
         && !_module.Term#Equal(_module.__default.Step(u#0), u#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "reduction (correctness)"} Impl$$_module.__default.reduction(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Term()) && $IsAlloc(r#0, Tclass._module.Term(), $Heap), 
    $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall trace#1: DatatypeType :: 
    { _module.__default.IsTrace($LS($LZ), trace#1, t#0, r#0) } 
    $Is(trace#1, Tclass._module.Trace())
       ==> _module.__default.IsTrace#canCall(trace#1, t#0, r#0));
  ensures {:id "id449"} (exists trace#1: DatatypeType :: 
    { _module.__default.IsTrace($LS($LZ), trace#1, t#0, r#0) } 
    $Is(trace#1, Tclass._module.Trace())
       && _module.__default.IsTrace($LS($LZ), trace#1, t#0, r#0));
  free ensures _module.__default.IsTerminal#canCall(r#0);
  ensures {:id "id450"} _module.__default.IsTerminal#canCall(r#0)
     ==> _module.__default.IsTerminal(r#0)
       || !(exists C#1: DatatypeType, u#1: DatatypeType :: 
        { _module.__default.Step(u#1), _module.__default.IsContext($LS($LS($LZ)), C#1) } 
          { _module.__default.EvalExpr($LS($LS($LZ)), C#1, u#1) } 
        $Is(C#1, Tclass._module.Context())
           && $Is(u#1, Tclass._module.Term())
           && 
          _module.__default.IsContext($LS($LS($LZ)), C#1)
           && _module.Term#Equal(r#0, _module.__default.EvalExpr($LS($LS($LZ)), C#1, u#1))
           && !_module.Term#Equal(_module.__default.Step(u#1), u#1));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "reduction (correctness)"} Impl$$_module.__default.reduction(t#0: DatatypeType) returns (r#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var trace#2: DatatypeType
     where $Is(trace#2, Tclass._module.Trace())
       && $IsAlloc(trace#2, Tclass._module.Trace(), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var ##trace#1: DatatypeType;
  var ##t#2: DatatypeType;
  var ##r#1: DatatypeType;
  var u#0_0: DatatypeType
     where $Is(u#0_0, Tclass._module.Term())
       && $IsAlloc(u#0_0, Tclass._module.Term(), $Heap);
  var ##t#0_0: DatatypeType;
  var t##0_0_0: DatatypeType;
  var $rhs#0_0: DatatypeType;
  var $rhs#0_1: DatatypeType;

    // AddMethodImpl: reduction, Impl$$_module.__default.reduction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(310,5)
    assume true;
    assume true;
    r#0 := t#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(311,19)
    assume true;
    assume true;
    trace#2 := Lit(#_module.Trace.EmptyTrace());
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(312,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0 ==> _module.__default.IsTrace#canCall(trace#2, t#0, r#0);
      invariant {:id "id454"} $w$loop#0
         ==> 
        _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
         ==> _module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
           || (_module.Trace.EmptyTrace_q(trace#2) ==> _module.Term#Equal(t#0, r#0));
      invariant {:id "id455"} $w$loop#0
         ==> 
        _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
         ==> _module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
           || (!_module.Trace.EmptyTrace_q(trace#2)
             ==> (var u#2 := _module.Trace._h5(trace#2); 
              (var tr#0 := _module.Trace._h4(trace#2); 
                _module.__default.IsTrace($LS($LS($LZ)), tr#0, t#0, u#2))));
      invariant {:id "id456"} $w$loop#0
         ==> 
        _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
         ==> _module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
           || (!_module.Trace.EmptyTrace_q(trace#2)
             ==> (var u#2 := _module.Trace._h5(trace#2); 
              (var tr#0 := _module.Trace._h4(trace#2); 
                _module.Term#Equal(_module.__default.FindAndStep($LS($LS($LZ)), u#2), r#0))));
      free invariant {:id "id457"} $w$loop#0
         ==> _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
           && 
          _module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
           && (if _module.Trace.EmptyTrace_q(trace#2)
             then _module.Term#Equal(t#0, r#0)
             else (var u#3 := _module.Trace._h5(trace#2); 
              (var tr#1 := _module.Trace._h4(trace#2); 
                _module.__default.IsTrace($LS($LZ), tr#1, t#0, u#3)
                   && _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), u#3), r#0))));
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
    {
        if (!$w$loop#0)
        {
            ##trace#1 := trace#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##trace#1, Tclass._module.Trace(), $Heap);
            ##t#2 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#2, Tclass._module.Term(), $Heap);
            ##r#1 := r#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#1, Tclass._module.Term(), $Heap);
            assume _module.__default.IsTrace#canCall(trace#2, t#0, r#0);
            assume _module.__default.IsTrace#canCall(trace#2, t#0, r#0);
            assume {:id "id453"} _module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0);
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(316,11)
        assume true;
        ##t#0_0 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0_0, Tclass._module.Term(), $Heap);
        assume _module.__default.FindAndStep#canCall(r#0);
        assume _module.__default.FindAndStep#canCall(r#0);
        u#0_0 := _module.__default.FindAndStep($LS($LZ), r#0);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(317,5)
        assume $IsA#_module.Term(u#0_0) && $IsA#_module.Term(r#0);
        if (_module.Term#Equal(u#0_0, r#0))
        {
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(319,26)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##0_0_0 := r#0;
            call {:id "id459"} Call$$_module.__default.Theorem__FindAndStep(t##0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(320,7)
            pop;
            return;

            pop;
        }
        else
        {
        }

        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(322,14)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := u#0_0;
        assume true;
        $rhs#0_1 := #_module.Trace.ReductionStep(trace#2, r#0);
        r#0 := $rhs#0_0;
        trace#2 := $rhs#0_1;
        assume _module.__default.IsTrace#canCall(trace#2, t#0, r#0);
    }
}



// function declaration for _module._default.ContainsS
function _module.__default.ContainsS($ly: LayerType, t#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.ContainsS (revealed)
axiom {:id "id464"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.ContainsS($LS($ly), t#0) } 
    _module.__default.ContainsS#canCall(t#0)
         || (1 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (!_module.Term.S_q(t#0)
           ==> 
          !_module.Term.K_q(t#0)
           ==> (var y#1 := _module.Term.cdr(t#0); 
            (var x#1 := _module.Term.car(t#0); 
              _module.__default.ContainsS#canCall(x#1)
                 && (!_module.__default.ContainsS($ly, x#1)
                   ==> _module.__default.ContainsS#canCall(y#1)))))
         && _module.__default.ContainsS($LS($ly), t#0)
           == (if _module.Term.S_q(t#0)
             then true
             else (if _module.Term.K_q(t#0)
               then false
               else (var y#0 := _module.Term.cdr(t#0); 
                (var x#0 := _module.Term.car(t#0); 
                  _module.__default.ContainsS($ly, x#0) || _module.__default.ContainsS($ly, y#0))))));
// definition axiom for _module.__default.ContainsS for all literals (revealed)
axiom {:id "id465"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    {:weight 3} { _module.__default.ContainsS($LS($ly), Lit(t#0)) } 
    _module.__default.ContainsS#canCall(Lit(t#0))
         || (1 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (!Lit(_module.Term.S_q(Lit(t#0)))
           ==> 
          !Lit(_module.Term.K_q(Lit(t#0)))
           ==> (var y#3 := Lit(_module.Term.cdr(Lit(t#0))); 
            (var x#3 := Lit(_module.Term.car(Lit(t#0))); 
              _module.__default.ContainsS#canCall(x#3)
                 && (!_module.__default.ContainsS($LS($ly), x#3)
                   ==> _module.__default.ContainsS#canCall(y#3)))))
         && _module.__default.ContainsS($LS($ly), Lit(t#0))
           == (if _module.Term.S_q(Lit(t#0))
             then true
             else (if _module.Term.K_q(Lit(t#0))
               then false
               else (var y#2 := Lit(_module.Term.cdr(Lit(t#0))); 
                (var x#2 := Lit(_module.Term.car(Lit(t#0))); 
                  Lit(_module.__default.ContainsS($LS($ly), x#2)
                       || _module.__default.ContainsS($LS($ly), y#2)))))));
}

function _module.__default.ContainsS#canCall(t#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.ContainsS($LS($ly), t#0) } 
  _module.__default.ContainsS($LS($ly), t#0)
     == _module.__default.ContainsS($ly, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.ContainsS(AsFuelBottom($ly), t#0) } 
  _module.__default.ContainsS($ly, t#0) == _module.__default.ContainsS($LZ, t#0));

function _module.__default.ContainsS#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.ContainsS
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.ContainsS#requires($ly, t#0) } 
  $Is(t#0, Tclass._module.Term())
     ==> _module.__default.ContainsS#requires($ly, t#0) == true);

procedure {:verboseName "ContainsS (well-formedness)"} CheckWellformed$$_module.__default.ContainsS(t#0: DatatypeType where $Is(t#0, Tclass._module.Term()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContainsS (well-formedness)"} CheckWellformed$$_module.__default.ContainsS(t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##t#0: DatatypeType;
  var ##t#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
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
        if (t#0 == #_module.Term.S())
        {
            assume {:id "id474"} _module.__default.ContainsS($LS($LZ), t#0) == Lit(true);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ContainsS($LS($LZ), t#0), TBool);
            return;
        }
        else if (t#0 == #_module.Term.K())
        {
            assume {:id "id473"} _module.__default.ContainsS($LS($LZ), t#0) == Lit(false);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ContainsS($LS($LZ), t#0), TBool);
            return;
        }
        else if (t#0 == #_module.Term.Apply(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Term());
            assume $Is(_mcc#1#0, Tclass._module.Term());
            havoc y#Z#0;
            assume {:id "id466"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Term());
            assume {:id "id467"} y#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id468"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Term());
            assume {:id "id469"} x#Z#0 == let#1#0#0;
            ##t#0 := x#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
            assert {:id "id470"} DtRank(##t#0) < DtRank(t#0);
            assume _module.__default.ContainsS#canCall(x#Z#0);
            if (!_module.__default.ContainsS($LS($LZ), x#Z#0))
            {
                ##t#1 := y#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
                assert {:id "id471"} DtRank(##t#1) < DtRank(t#0);
                assume _module.__default.ContainsS#canCall(y#Z#0);
            }

            assume {:id "id472"} _module.__default.ContainsS($LS($LZ), t#0)
               == (_module.__default.ContainsS($LS($LZ), x#Z#0)
                 || _module.__default.ContainsS($LS($LZ), y#Z#0));
            assume _module.__default.ContainsS#canCall(x#Z#0)
               && (!_module.__default.ContainsS($LS($LZ), x#Z#0)
                 ==> _module.__default.ContainsS#canCall(y#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ContainsS($LS($LZ), t#0), TBool);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "VerificationTask2 (well-formedness)"} CheckWellFormed$$_module.__default.VerificationTask2(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Term()) && $IsAlloc(r#0, Tclass._module.Term(), $Heap));
  free requires 7 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "VerificationTask2 (well-formedness)"} CheckWellFormed$$_module.__default.VerificationTask2(t#0: DatatypeType) returns (r#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##t#0: DatatypeType;
  var trace#0: DatatypeType;
  var ##trace#0: DatatypeType;
  var ##t#1: DatatypeType;
  var ##r#0: DatatypeType;
  var ##t#2: DatatypeType;
  var ##t#3: DatatypeType;


    // AddMethodImpl: VerificationTask2, CheckWellFormed$$_module.__default.VerificationTask2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    ##t#0 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
    assume _module.__default.ContainsS#canCall(t#0);
    assume {:id "id475"} !_module.__default.ContainsS($LS($LZ), t#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
    havoc r#0;
    havoc trace#0;
    assume $Is(trace#0, Tclass._module.Trace())
       && $IsAlloc(trace#0, Tclass._module.Trace(), $Heap);
    ##trace#0 := trace#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##trace#0, Tclass._module.Trace(), $Heap);
    ##t#1 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
    ##r#0 := r#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##r#0, Tclass._module.Term(), $Heap);
    assume _module.__default.IsTrace#canCall(trace#0, t#0, r#0);
    assume {:id "id476"} _module.__default.IsTrace($LS($LZ), trace#0, t#0, r#0);
    ##t#2 := r#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#2, Tclass._module.Term(), $Heap);
    assume _module.__default.IsTerminal#canCall(r#0);
    assume {:id "id477"} _module.__default.IsTerminal(r#0);
    ##t#3 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#3, Tclass._module.Term(), $Heap);
    assert {:id "id478"} {:subsumption 0} !_module.__default.ContainsS($LS($LS($LZ)), ##t#3);
    assume !_module.__default.ContainsS($LS($LZ), ##t#3);
    assume _module.__default.TerminatingReduction#canCall(t#0);
    assume {:id "id479"} _module.Term#Equal(r#0, _module.__default.TerminatingReduction($LS($LZ), t#0));
}



procedure {:verboseName "VerificationTask2 (call)"} Call$$_module.__default.VerificationTask2(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Term()) && $IsAlloc(r#0, Tclass._module.Term(), $Heap));
  // user-defined preconditions
  requires {:id "id480"} !_module.__default.ContainsS($LS($LS($LZ)), t#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall trace#1: DatatypeType :: 
    { _module.__default.IsTrace($LS($LZ), trace#1, t#0, r#0) } 
    $Is(trace#1, Tclass._module.Trace())
       ==> _module.__default.IsTrace#canCall(trace#1, t#0, r#0));
  free ensures {:id "id481"} (exists trace#1: DatatypeType :: 
    { _module.__default.IsTrace($LS($LS($LZ)), trace#1, t#0, r#0) } 
    $Is(trace#1, Tclass._module.Trace())
       && _module.__default.IsTrace($LS($LS($LZ)), trace#1, t#0, r#0));
  free ensures _module.__default.IsTerminal#canCall(r#0);
  free ensures {:id "id482"} _module.__default.IsTerminal#canCall(r#0)
     && 
    _module.__default.IsTerminal(r#0)
     && !(exists C#0: DatatypeType, u#0: DatatypeType :: 
      { _module.__default.Step(u#0), _module.__default.IsContext($LS($LZ), C#0) } 
        { _module.__default.EvalExpr($LS($LZ), C#0, u#0) } 
      $Is(C#0, Tclass._module.Context())
         && $Is(u#0, Tclass._module.Term())
         && 
        _module.__default.IsContext($LS($LZ), C#0)
         && _module.Term#Equal(r#0, _module.__default.EvalExpr($LS($LZ), C#0, u#0))
         && !_module.Term#Equal(_module.__default.Step(u#0), u#0));
  free ensures $IsA#_module.Term(r#0)
     && $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), t#0))
     && _module.__default.TerminatingReduction#canCall(t#0);
  ensures {:id "id483"} _module.Term#Equal(r#0, _module.__default.TerminatingReduction($LS($LS($LZ)), t#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "VerificationTask2 (correctness)"} Impl$$_module.__default.VerificationTask2(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Term())
         && $IsAlloc(t#0, Tclass._module.Term(), $Heap)
         && $IsA#_module.Term(t#0))
   returns (r#0: DatatypeType
       where $Is(r#0, Tclass._module.Term()) && $IsAlloc(r#0, Tclass._module.Term(), $Heap), 
    $_reverifyPost: bool);
  free requires 7 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id484"} !_module.__default.ContainsS($LS($LS($LZ)), t#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall trace#1: DatatypeType :: 
    { _module.__default.IsTrace($LS($LZ), trace#1, t#0, r#0) } 
    $Is(trace#1, Tclass._module.Trace())
       ==> _module.__default.IsTrace#canCall(trace#1, t#0, r#0));
  ensures {:id "id485"} (exists trace#1: DatatypeType :: 
    { _module.__default.IsTrace($LS($LZ), trace#1, t#0, r#0) } 
    $Is(trace#1, Tclass._module.Trace())
       && _module.__default.IsTrace($LS($LZ), trace#1, t#0, r#0));
  free ensures _module.__default.IsTerminal#canCall(r#0);
  ensures {:id "id486"} _module.__default.IsTerminal#canCall(r#0)
     ==> _module.__default.IsTerminal(r#0)
       || !(exists C#1: DatatypeType, u#1: DatatypeType :: 
        { _module.__default.Step(u#1), _module.__default.IsContext($LS($LS($LZ)), C#1) } 
          { _module.__default.EvalExpr($LS($LS($LZ)), C#1, u#1) } 
        $Is(C#1, Tclass._module.Context())
           && $Is(u#1, Tclass._module.Term())
           && 
          _module.__default.IsContext($LS($LS($LZ)), C#1)
           && _module.Term#Equal(r#0, _module.__default.EvalExpr($LS($LS($LZ)), C#1, u#1))
           && !_module.Term#Equal(_module.__default.Step(u#1), u#1));
  free ensures $IsA#_module.Term(r#0)
     && $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), t#0))
     && _module.__default.TerminatingReduction#canCall(t#0);
  ensures {:id "id487"} _module.Term#Equal(r#0, _module.__default.TerminatingReduction($LS($LS($LZ)), t#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "VerificationTask2 (correctness)"} Impl$$_module.__default.VerificationTask2(t#0: DatatypeType) returns (r#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var trace#2: DatatypeType
     where $Is(trace#2, Tclass._module.Trace())
       && $IsAlloc(trace#2, Tclass._module.Trace(), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var ##trace#1: DatatypeType;
  var ##t#4: DatatypeType;
  var ##r#1: DatatypeType;
  var ##t#5: DatatypeType;
  var ##t#6: DatatypeType;
  var ##t#7: DatatypeType;
  var ##t#8: DatatypeType;
  var $decr$loop#00: int;
  var u#0_0: DatatypeType
     where $Is(u#0_0, Tclass._module.Term())
       && $IsAlloc(u#0_0, Tclass._module.Term(), $Heap);
  var ##t#0_0: DatatypeType;
  var t##0_0_0: DatatypeType;
  var $rhs#0_0: DatatypeType;
  var $rhs#0_1: DatatypeType;

    // AddMethodImpl: VerificationTask2, Impl$$_module.__default.VerificationTask2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(367,5)
    assume true;
    assume true;
    r#0 := t#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(368,19)
    assume true;
    assume true;
    trace#2 := Lit(#_module.Trace.EmptyTrace());
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(369,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := _module.__default.TermSize($LS($LZ), r#0);
    havoc $w$loop#0;
    while (true)
      free invariant $w$loop#0
         ==> _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
           && (_module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
             ==> _module.__default.ContainsS#canCall(r#0));
      invariant {:id "id491"} $w$loop#0
         ==> 
        _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
         ==> _module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
           || (_module.Trace.EmptyTrace_q(trace#2) ==> _module.Term#Equal(t#0, r#0));
      invariant {:id "id492"} $w$loop#0
         ==> 
        _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
         ==> _module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
           || (!_module.Trace.EmptyTrace_q(trace#2)
             ==> (var u#2 := _module.Trace._h5(trace#2); 
              (var tr#0 := _module.Trace._h4(trace#2); 
                _module.__default.IsTrace($LS($LS($LZ)), tr#0, t#0, u#2))));
      invariant {:id "id493"} $w$loop#0
         ==> 
        _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
         ==> _module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
           || (!_module.Trace.EmptyTrace_q(trace#2)
             ==> (var u#2 := _module.Trace._h5(trace#2); 
              (var tr#0 := _module.Trace._h4(trace#2); 
                _module.Term#Equal(_module.__default.FindAndStep($LS($LS($LZ)), u#2), r#0))));
      free invariant {:id "id494"} $w$loop#0
         ==> _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
           && 
          _module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
           && (if _module.Trace.EmptyTrace_q(trace#2)
             then _module.Term#Equal(t#0, r#0)
             else (var u#3 := _module.Trace._h5(trace#2); 
              (var tr#1 := _module.Trace._h4(trace#2); 
                _module.__default.IsTrace($LS($LZ), tr#1, t#0, u#3)
                   && _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), u#3), r#0))));
      invariant {:id "id495"} $w$loop#0 ==> !_module.__default.ContainsS($LS($LS($LZ)), r#0);
      free invariant $w$loop#0
         ==> $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), t#0))
           && $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), r#0))
           && 
          _module.__default.TerminatingReduction#canCall(t#0)
           && _module.__default.TerminatingReduction#canCall(r#0);
      invariant {:id "id499"} $w$loop#0
         ==> _module.Term#Equal(_module.__default.TerminatingReduction($LS($LS($LZ)), t#0), 
          _module.__default.TerminatingReduction($LS($LS($LZ)), r#0));
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
      free invariant _module.__default.TermSize($LS($LZ), r#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            ##trace#1 := trace#2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##trace#1, Tclass._module.Trace(), $Heap);
            ##t#4 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#4, Tclass._module.Term(), $Heap);
            ##r#1 := r#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##r#1, Tclass._module.Term(), $Heap);
            assume _module.__default.IsTrace#canCall(trace#2, t#0, r#0);
            if (_module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0))
            {
                ##t#5 := r#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##t#5, Tclass._module.Term(), $Heap);
                assume _module.__default.ContainsS#canCall(r#0);
            }

            assume _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
               && (_module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
                 ==> _module.__default.ContainsS#canCall(r#0));
            assume {:id "id490"} _module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
               && !_module.__default.ContainsS($LS($LZ), r#0);
            ##t#6 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#6, Tclass._module.Term(), $Heap);
            assert {:id "id496"} {:subsumption 0} !_module.__default.ContainsS($LS($LS($LZ)), ##t#6);
            assume _module.__default.TerminatingReduction#canCall(t#0);
            ##t#7 := r#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#7, Tclass._module.Term(), $Heap);
            assert {:id "id497"} {:subsumption 0} !_module.__default.ContainsS($LS($LS($LZ)), ##t#7);
            assume _module.__default.TerminatingReduction#canCall(r#0);
            assume $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), t#0))
               && $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), r#0))
               && 
              _module.__default.TerminatingReduction#canCall(t#0)
               && _module.__default.TerminatingReduction#canCall(r#0);
            assume {:id "id498"} _module.Term#Equal(_module.__default.TerminatingReduction($LS($LZ), t#0), 
              _module.__default.TerminatingReduction($LS($LZ), r#0));
            ##t#8 := r#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#8, Tclass._module.Term(), $Heap);
            assume _module.__default.TermSize#canCall(r#0);
            assume _module.__default.TermSize#canCall(r#0);
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := _module.__default.TermSize($LS($LZ), r#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(374,11)
        assume true;
        ##t#0_0 := r#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0_0, Tclass._module.Term(), $Heap);
        assume _module.__default.FindAndStep#canCall(r#0);
        assume _module.__default.FindAndStep#canCall(r#0);
        u#0_0 := _module.__default.FindAndStep($LS($LZ), r#0);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(375,5)
        assume $IsA#_module.Term(u#0_0) && $IsA#_module.Term(r#0);
        if (_module.Term#Equal(u#0_0, r#0))
        {
            push;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(377,26)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            // ProcessCallStmt: CheckSubrange
            t##0_0_0 := r#0;
            call {:id "id501"} Call$$_module.__default.Theorem__FindAndStep(t##0_0_0);
            // TrCallStmt: After ProcessCallStmt
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(378,7)
            pop;
            return;

            pop;
        }
        else
        {
        }

        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(380,14)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := u#0_0;
        assume true;
        $rhs#0_1 := #_module.Trace.ReductionStep(trace#2, r#0);
        r#0 := $rhs#0_0;
        trace#2 := $rhs#0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(369,3)
        assert {:id "id506"} 0 <= $decr$loop#00 || _module.__default.TermSize($LS($LZ), r#0) == $decr$loop#00;
        assert {:id "id507"} _module.__default.TermSize($LS($LZ), r#0) < $decr$loop#00;
        assume _module.__default.IsTrace#canCall(trace#2, t#0, r#0)
           && (_module.__default.IsTrace($LS($LZ), trace#2, t#0, r#0)
             ==> _module.__default.ContainsS#canCall(r#0)
               && (!_module.__default.ContainsS($LS($LZ), r#0)
                 ==> $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), t#0))
                   && $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), r#0))
                   && 
                  _module.__default.TerminatingReduction#canCall(t#0)
                   && _module.__default.TerminatingReduction#canCall(r#0)));
    }
}



// function declaration for _module._default.TermSize
function _module.__default.TermSize($ly: LayerType, t#0: DatatypeType) : int
uses {
// consequence axiom for _module.__default.TermSize
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.TermSize($ly, t#0) } 
    _module.__default.TermSize#canCall(t#0)
         || (1 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> LitInt(0) <= _module.__default.TermSize($ly, t#0));
// definition axiom for _module.__default.TermSize (revealed)
axiom {:id "id508"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.TermSize($LS($ly), t#0) } 
    _module.__default.TermSize#canCall(t#0)
         || (1 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (!_module.Term.S_q(t#0)
           ==> 
          !_module.Term.K_q(t#0)
           ==> (var y#1 := _module.Term.cdr(t#0); 
            (var x#1 := _module.Term.car(t#0); 
              _module.__default.TermSize#canCall(x#1)
                 && _module.__default.TermSize#canCall(y#1))))
         && _module.__default.TermSize($LS($ly), t#0)
           == (if _module.Term.S_q(t#0)
             then 1
             else (if _module.Term.K_q(t#0)
               then 1
               else (var y#0 := _module.Term.cdr(t#0); 
                (var x#0 := _module.Term.car(t#0); 
                  1 + _module.__default.TermSize($ly, x#0) + _module.__default.TermSize($ly, y#0))))));
// definition axiom for _module.__default.TermSize for all literals (revealed)
axiom {:id "id509"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    {:weight 3} { _module.__default.TermSize($LS($ly), Lit(t#0)) } 
    _module.__default.TermSize#canCall(Lit(t#0))
         || (1 < $FunctionContextHeight && $Is(t#0, Tclass._module.Term()))
       ==> (!Lit(_module.Term.S_q(Lit(t#0)))
           ==> 
          !Lit(_module.Term.K_q(Lit(t#0)))
           ==> (var y#3 := Lit(_module.Term.cdr(Lit(t#0))); 
            (var x#3 := Lit(_module.Term.car(Lit(t#0))); 
              _module.__default.TermSize#canCall(x#3)
                 && _module.__default.TermSize#canCall(y#3))))
         && _module.__default.TermSize($LS($ly), Lit(t#0))
           == (if _module.Term.S_q(Lit(t#0))
             then 1
             else (if _module.Term.K_q(Lit(t#0))
               then 1
               else (var y#2 := Lit(_module.Term.cdr(Lit(t#0))); 
                (var x#2 := Lit(_module.Term.car(Lit(t#0))); 
                  LitInt(1
                       + _module.__default.TermSize($LS($ly), x#2)
                       + _module.__default.TermSize($LS($ly), y#2)))))));
}

function _module.__default.TermSize#canCall(t#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.TermSize($LS($ly), t#0) } 
  _module.__default.TermSize($LS($ly), t#0)
     == _module.__default.TermSize($ly, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.TermSize(AsFuelBottom($ly), t#0) } 
  _module.__default.TermSize($ly, t#0) == _module.__default.TermSize($LZ, t#0));

function _module.__default.TermSize#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.TermSize
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.TermSize#requires($ly, t#0) } 
  $Is(t#0, Tclass._module.Term())
     ==> _module.__default.TermSize#requires($ly, t#0) == true);

procedure {:verboseName "TermSize (well-formedness)"} CheckWellformed$$_module.__default.TermSize(t#0: DatatypeType where $Is(t#0, Tclass._module.Term()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TermSize (well-formedness)"} CheckWellformed$$_module.__default.TermSize(t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: DatatypeType;
  var _mcc#1#0: DatatypeType;
  var y#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##t#0: DatatypeType;
  var ##t#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.__default.TermSize($LS($LZ), t#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (t#0 == #_module.Term.S())
        {
            assert {:id "id520"} $Is(LitInt(1), Tclass._System.nat());
            assume {:id "id521"} _module.__default.TermSize($LS($LZ), t#0) == LitInt(1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TermSize($LS($LZ), t#0), Tclass._System.nat());
            return;
        }
        else if (t#0 == #_module.Term.K())
        {
            assert {:id "id518"} $Is(LitInt(1), Tclass._System.nat());
            assume {:id "id519"} _module.__default.TermSize($LS($LZ), t#0) == LitInt(1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TermSize($LS($LZ), t#0), Tclass._System.nat());
            return;
        }
        else if (t#0 == #_module.Term.Apply(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#0#0, Tclass._module.Term());
            assume $Is(_mcc#1#0, Tclass._module.Term());
            havoc y#Z#0;
            assume {:id "id510"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Term());
            assume {:id "id511"} y#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id512"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Term());
            assume {:id "id513"} x#Z#0 == let#1#0#0;
            ##t#0 := x#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
            assert {:id "id514"} DtRank(##t#0) < DtRank(t#0);
            assume _module.__default.TermSize#canCall(x#Z#0);
            ##t#1 := y#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
            assert {:id "id515"} DtRank(##t#1) < DtRank(t#0);
            assume _module.__default.TermSize#canCall(y#Z#0);
            assert {:id "id516"} $Is(1
                 + _module.__default.TermSize($LS($LZ), x#Z#0)
                 + _module.__default.TermSize($LS($LZ), y#Z#0), 
              Tclass._System.nat());
            assume {:id "id517"} _module.__default.TermSize($LS($LZ), t#0)
               == 1
                 + _module.__default.TermSize($LS($LZ), x#Z#0)
                 + _module.__default.TermSize($LS($LZ), y#Z#0);
            assume _module.__default.TermSize#canCall(x#Z#0)
               && _module.__default.TermSize#canCall(y#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TermSize($LS($LZ), t#0), Tclass._System.nat());
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.TerminatingReduction
function _module.__default.TerminatingReduction($ly: LayerType, t#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for _module.__default.TerminatingReduction
axiom 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.TerminatingReduction($ly, t#0) } 
    _module.__default.TerminatingReduction#canCall(t#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Term())
           && !_module.__default.ContainsS($LS($LZ), t#0))
       ==> $Is(_module.__default.TerminatingReduction($ly, t#0), Tclass._module.Term()));
// definition axiom for _module.__default.TerminatingReduction (revealed)
axiom {:id "id522"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    { _module.__default.TerminatingReduction($LS($ly), t#0) } 
    _module.__default.TerminatingReduction#canCall(t#0)
         || (4 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Term())
           && !_module.__default.ContainsS($LS($LZ), t#0))
       ==> $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), t#0))
         && $IsA#_module.Term(t#0)
         && _module.__default.FindAndStep#canCall(t#0)
         && (!_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
           ==> _module.__default.FindAndStep#canCall(t#0)
             && _module.__default.TerminatingReduction#canCall(_module.__default.FindAndStep($LS($LZ), t#0)))
         && _module.__default.TerminatingReduction($LS($ly), t#0)
           == (if _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0)
             then t#0
             else _module.__default.TerminatingReduction($ly, _module.__default.FindAndStep($LS($LZ), t#0))));
// definition axiom for _module.__default.TerminatingReduction for all literals (revealed)
axiom {:id "id523"} 4 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, t#0: DatatypeType :: 
    {:weight 3} { _module.__default.TerminatingReduction($LS($ly), Lit(t#0)) } 
    _module.__default.TerminatingReduction#canCall(Lit(t#0))
         || (4 < $FunctionContextHeight
           && 
          $Is(t#0, Tclass._module.Term())
           && !Lit(_module.__default.ContainsS($LS($LZ), Lit(t#0))))
       ==> $IsA#_module.Term(Lit(_module.__default.FindAndStep($LS($LZ), Lit(t#0))))
         && $IsA#_module.Term(Lit(t#0))
         && _module.__default.FindAndStep#canCall(Lit(t#0))
         && (!_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), Lit(t#0)), t#0)
           ==> _module.__default.FindAndStep#canCall(Lit(t#0))
             && _module.__default.TerminatingReduction#canCall(Lit(_module.__default.FindAndStep($LS($LZ), Lit(t#0)))))
         && _module.__default.TerminatingReduction($LS($ly), Lit(t#0))
           == (if _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), Lit(t#0)), t#0)
             then t#0
             else _module.__default.TerminatingReduction($LS($ly), Lit(_module.__default.FindAndStep($LS($LZ), Lit(t#0))))));
}

function _module.__default.TerminatingReduction#canCall(t#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.TerminatingReduction($LS($ly), t#0) } 
  _module.__default.TerminatingReduction($LS($ly), t#0)
     == _module.__default.TerminatingReduction($ly, t#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.TerminatingReduction(AsFuelBottom($ly), t#0) } 
  _module.__default.TerminatingReduction($ly, t#0)
     == _module.__default.TerminatingReduction($LZ, t#0));

function _module.__default.TerminatingReduction#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.TerminatingReduction
axiom (forall $ly: LayerType, t#0: DatatypeType :: 
  { _module.__default.TerminatingReduction#requires($ly, t#0) } 
  $Is(t#0, Tclass._module.Term())
     ==> _module.__default.TerminatingReduction#requires($ly, t#0)
       == !_module.__default.ContainsS($LS($LZ), t#0));

procedure {:verboseName "TerminatingReduction (well-formedness)"} CheckWellformed$$_module.__default.TerminatingReduction(t#0: DatatypeType where $Is(t#0, Tclass._module.Term()));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TerminatingReduction (well-formedness)"} CheckWellformed$$_module.__default.TerminatingReduction(t#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##t#0: DatatypeType;
  var ##t#1: DatatypeType;
  var ##t#2: DatatypeType;
  var ##t#3: DatatypeType;
  var ##t#4: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    ##t#0 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
    assume _module.__default.ContainsS#canCall(t#0);
    assume {:id "id524"} !_module.__default.ContainsS($LS($LZ), t#0);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    ##t#1 := t#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
    assume _module.__default.TermSize#canCall(t#0);
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.TerminatingReduction($LS($LZ), t#0), Tclass._module.Term());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        ##t#2 := t#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#2, Tclass._module.Term(), $Heap);
        assume _module.__default.FindAndStep#canCall(t#0);
        if (_module.Term#Equal(_module.__default.FindAndStep($LS($LZ), t#0), t#0))
        {
            assume {:id "id525"} _module.__default.TerminatingReduction($LS($LZ), t#0) == t#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TerminatingReduction($LS($LZ), t#0), Tclass._module.Term());
            return;
        }
        else
        {
            ##t#4 := t#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#4, Tclass._module.Term(), $Heap);
            assume _module.__default.FindAndStep#canCall(t#0);
            ##t#3 := _module.__default.FindAndStep($LS($LZ), t#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#3, Tclass._module.Term(), $Heap);
            assert {:id "id526"} {:subsumption 0} !_module.__default.ContainsS($LS($LS($LZ)), ##t#3);
            assume !_module.__default.ContainsS($LS($LZ), ##t#3);
            assert {:id "id527"} 0 <= _module.__default.TermSize($LS($LZ), t#0)
               || _module.__default.TermSize($LS($LZ), ##t#3)
                 == _module.__default.TermSize($LS($LZ), t#0);
            assert {:id "id528"} _module.__default.TermSize($LS($LZ), ##t#3)
               < _module.__default.TermSize($LS($LZ), t#0);
            assume _module.__default.TerminatingReduction#canCall(_module.__default.FindAndStep($LS($LZ), t#0));
            assume {:id "id529"} _module.__default.TerminatingReduction($LS($LZ), t#0)
               == _module.__default.TerminatingReduction($LS($LZ), _module.__default.FindAndStep($LS($LZ), t#0));
            assume _module.__default.FindAndStep#canCall(t#0)
               && _module.__default.TerminatingReduction#canCall(_module.__default.FindAndStep($LS($LZ), t#0));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TerminatingReduction($LS($LZ), t#0), Tclass._module.Term());
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.ks
function _module.__default.ks($ly: LayerType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.ks
axiom 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.ks($ly, n#0) } 
    _module.__default.ks#canCall(n#0)
         || (2 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> !_module.__default.ContainsS($LS($LZ), _module.__default.ks($ly, n#0))
         && $Is(_module.__default.ks($ly, n#0), Tclass._module.Term()));
// definition axiom for _module.__default.ks (revealed)
axiom {:id "id530"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.ks($LS($ly), n#0) } 
    _module.__default.ks#canCall(n#0)
         || (2 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0) ==> _module.__default.ks#canCall(n#0 - 1))
         && _module.__default.ks($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then #_module.Term.K()
             else #_module.Term.Apply(_module.__default.ks($ly, n#0 - 1), Lit(#_module.Term.K()))));
// definition axiom for _module.__default.ks for all literals (revealed)
axiom {:id "id531"} 2 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.ks($LS($ly), LitInt(n#0)) } 
    _module.__default.ks#canCall(LitInt(n#0))
         || (2 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0) ==> _module.__default.ks#canCall(LitInt(n#0 - 1)))
         && _module.__default.ks($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then #_module.Term.K()
             else #_module.Term.Apply(Lit(_module.__default.ks($LS($ly), LitInt(n#0 - 1))), Lit(#_module.Term.K()))));
}

function _module.__default.ks#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.ks($LS($ly), n#0) } 
  _module.__default.ks($LS($ly), n#0) == _module.__default.ks($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.ks(AsFuelBottom($ly), n#0) } 
  _module.__default.ks($ly, n#0) == _module.__default.ks($LZ, n#0));

function _module.__default.ks#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.ks
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.ks#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.ks#requires($ly, n#0) == true);

procedure {:verboseName "ks (well-formedness)"} CheckWellformed$$_module.__default.ks(n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id532"} !_module.__default.ContainsS($LS($LS($LZ)), _module.__default.ks($LS($LS($LZ)), n#0));



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ks (well-formedness)"} CheckWellformed$$_module.__default.ks(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##t#0: DatatypeType;
  var ##n#0: int;
  var ##n#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.ks($LS($LZ), n#0), Tclass._module.Term());
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        assert {:id "id533"} 0 <= n#0 || ##n#0 == n#0;
        assert {:id "id534"} n#0 == n#0 || ##n#0 < n#0;
        assume n#0 == n#0 || _module.__default.ks#canCall(n#0);
        ##t#0 := _module.__default.ks($LS($LZ), n#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
        assume _module.__default.ContainsS#canCall(_module.__default.ks($LS($LZ), n#0));
        assume {:id "id535"} !_module.__default.ContainsS($LS($LZ), _module.__default.ks($LS($LZ), n#0));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id536"} _module.__default.ks($LS($LZ), n#0) == Lit(#_module.Term.K());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ks($LS($LZ), n#0), Tclass._module.Term());
            return;
        }
        else
        {
            assert {:id "id537"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
            assert {:id "id538"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id539"} ##n#1 < n#0;
            assume _module.__default.ks#canCall(n#0 - 1);
            assume {:id "id540"} _module.__default.ks($LS($LZ), n#0)
               == #_module.Term.Apply(_module.__default.ks($LS($LZ), n#0 - 1), Lit(#_module.Term.K()));
            assume _module.__default.ks#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ks($LS($LZ), n#0), Tclass._module.Term());
            return;
        }

        assume false;
    }
}



procedure {:verboseName "VerificationTask3 (well-formedness)"} CheckWellFormed$$_module.__default.VerificationTask3();
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "VerificationTask3 (well-formedness)"} CheckWellFormed$$_module.__default.VerificationTask3()
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var ##t#0: DatatypeType;
  var ##n#0: int;


    // AddMethodImpl: VerificationTask3, CheckWellFormed$$_module.__default.VerificationTask3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    havoc n#0;
    assume LitInt(0) <= n#0;
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.ks#canCall(n#0);
    ##t#0 := _module.__default.ks($LS($LZ), n#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
    assert {:id "id541"} {:subsumption 0} !_module.__default.ContainsS($LS($LS($LZ)), ##t#0);
    assume !_module.__default.ContainsS($LS($LZ), ##t#0);
    assume _module.__default.TerminatingReduction#canCall(_module.__default.ks($LS($LZ), n#0));
    assert {:id "id542"} LitInt(2) != 0;
    if (Mod(n#0, LitInt(2)) == LitInt(0))
    {
    }
    else
    {
    }

    assume {:id "id543"} _module.Term#Equal(_module.__default.TerminatingReduction($LS($LZ), _module.__default.ks($LS($LZ), n#0)), 
      (if Mod(n#0, LitInt(2)) == LitInt(0)
         then #_module.Term.K()
         else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K()))));
    assume {:id "id544"} (forall n#1: int :: 
      { _module.__default.ks($LS($LZ), n#1) } 
      LitInt(0) <= n#1
         ==> _module.Term#Equal(_module.__default.TerminatingReduction($LS($LZ), _module.__default.ks($LS($LZ), n#1)), 
          (if Mod(n#1, LitInt(2)) == LitInt(0)
             then #_module.Term.K()
             else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K())))));
}



procedure {:verboseName "VerificationTask3 (call)"} Call$$_module.__default.VerificationTask3();
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: int :: 
    { _module.__default.ks($LS($LZ), n#1) } 
    LitInt(0) <= n#1
       ==> $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), _module.__default.ks($LS($LZ), n#1)))
         && $IsA#_module.Term((if Mod(n#1, LitInt(2)) == LitInt(0)
             then #_module.Term.K()
             else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K()))))
         && 
        _module.__default.ks#canCall(n#1)
         && _module.__default.TerminatingReduction#canCall(_module.__default.ks($LS($LZ), n#1)));
  free ensures {:id "id545"} (forall n#1: int :: 
    { _module.__default.ks($LS($LZ), n#1) } 
    LitInt(0) <= n#1
       ==> _module.Term#Equal(_module.__default.TerminatingReduction($LS($LZ), _module.__default.ks($LS($LZ), n#1)), 
        (if Mod(n#1, LitInt(2)) == LitInt(0)
           then #_module.Term.K()
           else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K())))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "VerificationTask3 (correctness)"} Impl$$_module.__default.VerificationTask3() returns ($_reverifyPost: bool);
  free requires 6 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall n#1: int :: 
    { _module.__default.ks($LS($LZ), n#1) } 
    LitInt(0) <= n#1
       ==> $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), _module.__default.ks($LS($LZ), n#1)))
         && $IsA#_module.Term((if Mod(n#1, LitInt(2)) == LitInt(0)
             then #_module.Term.K()
             else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K()))))
         && 
        _module.__default.ks#canCall(n#1)
         && _module.__default.TerminatingReduction#canCall(_module.__default.ks($LS($LZ), n#1)));
  ensures {:id "id546"} (forall n#1: int :: 
    { _module.__default.ks($LS($LS($LZ)), n#1) } 
    LitInt(0) <= n#1
       ==> _module.Term#Equal(_module.__default.TerminatingReduction($LS($LS($LZ)), _module.__default.ks($LS($LS($LZ)), n#1)), 
        (if Mod(n#1, LitInt(2)) == LitInt(0)
           then #_module.Term.K()
           else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K())))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "VerificationTask3 (correctness)"} Impl$$_module.__default.VerificationTask3() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0_0: int;
  var n##0_0: int;
  var $initHeapForallStmt#0_0: Heap;

    // AddMethodImpl: VerificationTask3, Impl$$_module.__default.VerificationTask3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(449,3)
    if (*)
    {
        // Assume Fuel Constant
        havoc n#0_0;
        assume LitInt(0) <= n#0_0;
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(450,8)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        n##0_0 := n#0_0;
        call {:id "id547"} Call$$_module.__default.VT3(n##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume false;
    }
    else
    {
        $initHeapForallStmt#0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#0_0 == $Heap;
        assume (forall n#0_1: int :: 
          { _module.__default.ks($LS($LZ), n#0_1) } 
          LitInt(0) <= n#0_1 && Lit(true)
             ==> _module.Term#Equal(_module.__default.TerminatingReduction($LS($LZ), _module.__default.ks($LS($LZ), n#0_1)), 
              (if Mod(n#0_1, LitInt(2)) == LitInt(0)
                 then #_module.Term.K()
                 else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K())))));
    }
}



procedure {:verboseName "VT3 (well-formedness)"} CheckWellFormed$$_module.__default.VT3(n#0: int where LitInt(0) <= n#0);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "VT3 (well-formedness)"} CheckWellFormed$$_module.__default.VT3(n#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##t#0: DatatypeType;
  var ##n#0: int;


    // AddMethodImpl: VT3, CheckWellFormed$$_module.__default.VT3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc $Heap;
    assume old($Heap) == $Heap;
    ##n#0 := n#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.ks#canCall(n#0);
    ##t#0 := _module.__default.ks($LS($LZ), n#0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##t#0, Tclass._module.Term(), $Heap);
    assert {:id "id548"} {:subsumption 0} !_module.__default.ContainsS($LS($LS($LZ)), ##t#0);
    assume !_module.__default.ContainsS($LS($LZ), ##t#0);
    assume _module.__default.TerminatingReduction#canCall(_module.__default.ks($LS($LZ), n#0));
    assert {:id "id549"} LitInt(2) != 0;
    if (Mod(n#0, LitInt(2)) == LitInt(0))
    {
    }
    else
    {
    }

    assume {:id "id550"} _module.Term#Equal(_module.__default.TerminatingReduction($LS($LZ), _module.__default.ks($LS($LZ), n#0)), 
      (if Mod(n#0, LitInt(2)) == LitInt(0)
         then #_module.Term.K()
         else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K()))));
}



procedure {:verboseName "VT3 (call)"} Call$$_module.__default.VT3(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), _module.__default.ks($LS($LZ), n#0)))
     && $IsA#_module.Term((if Mod(n#0, LitInt(2)) == LitInt(0)
         then #_module.Term.K()
         else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K()))))
     && 
    _module.__default.ks#canCall(n#0)
     && _module.__default.TerminatingReduction#canCall(_module.__default.ks($LS($LZ), n#0));
  ensures {:id "id551"} _module.Term#Equal(_module.__default.TerminatingReduction($LS($LS($LZ)), _module.__default.ks($LS($LS($LZ)), n#0)), 
    (if Mod(n#0, LitInt(2)) == LitInt(0)
       then #_module.Term.K()
       else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K()))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "VT3 (correctness)"} Impl$$_module.__default.VT3(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 5 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.Term(_module.__default.TerminatingReduction($LS($LZ), _module.__default.ks($LS($LZ), n#0)))
     && $IsA#_module.Term((if Mod(n#0, LitInt(2)) == LitInt(0)
         then #_module.Term.K()
         else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K()))))
     && 
    _module.__default.ks#canCall(n#0)
     && _module.__default.TerminatingReduction#canCall(_module.__default.ks($LS($LZ), n#0));
  ensures {:id "id552"} _module.Term#Equal(_module.__default.TerminatingReduction($LS($LS($LZ)), _module.__default.ks($LS($LS($LZ)), n#0)), 
    (if Mod(n#0, LitInt(2)) == LitInt(0)
       then #_module.Term.K()
       else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K()))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "VT3 (correctness)"} Impl$$_module.__default.VT3(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var p#0: int;
  var ##t#1: DatatypeType;
  var ##n#1: int;
  var ##n#2: int;

    // AddMethodImpl: VT3, Impl$$_module.__default.VT3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#n0#0: int :: 
      { _module.__default.ks($LS($LZ), $ih#n0#0) } 
      LitInt(0) <= $ih#n0#0 && Lit(true) && 0 <= $ih#n0#0 && $ih#n0#0 < n#0
         ==> _module.Term#Equal(_module.__default.TerminatingReduction($LS($LZ), _module.__default.ks($LS($LZ), $ih#n0#0)), 
          (if Mod($ih#n0#0, LitInt(2)) == LitInt(0)
             then #_module.Term.K()
             else #_module.Term.Apply(Lit(#_module.Term.K()), Lit(#_module.Term.K())))));
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/vstte2012/Combinators.dfy(459,3)
    // Begin Comprehension WF check
    havoc p#0;
    if (true)
    {
        if (LitInt(2) <= p#0)
        {
            assert {:id "id553"} $Is(p#0, Tclass._System.nat());
            ##n#1 := p#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
            assume _module.__default.ks#canCall(p#0);
            ##t#1 := _module.__default.ks($LS($LZ), p#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##t#1, Tclass._module.Term(), $Heap);
            assume _module.__default.FindAndStep#canCall(_module.__default.ks($LS($LZ), p#0));
            assert {:id "id554"} $Is(p#0 - 2, Tclass._System.nat());
            ##n#2 := p#0 - 2;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
            assume _module.__default.ks#canCall(p#0 - 2);
        }
    }

    // End Comprehension WF check
    assume (forall p#1: int :: 
      { _module.__default.FindAndStep($LS($LZ), _module.__default.ks($LS($LZ), p#1)) } 
      LitInt(2) <= p#1
         ==> $IsA#_module.Term(_module.__default.FindAndStep($LS($LZ), _module.__default.ks($LS($LZ), p#1)))
           && $IsA#_module.Term(_module.__default.ks($LS($LZ), p#1 - 2))
           && 
          _module.__default.ks#canCall(p#1)
           && _module.__default.FindAndStep#canCall(_module.__default.ks($LS($LZ), p#1))
           && _module.__default.ks#canCall(p#1 - 2));
    assert {:id "id555"} {:subsumption 0} (forall p#1: int :: 
      { _module.__default.FindAndStep($LS($LS($LZ)), _module.__default.ks($LS($LS($LZ)), p#1)) } 
      (forall p$ih#0#0: int :: 
            { _module.__default.FindAndStep($LS($LZ), _module.__default.ks($LS($LZ), p$ih#0#0)) } 
            0 <= p$ih#0#0 && p$ih#0#0 < p#1
               ==> 
              LitInt(2) <= p$ih#0#0
               ==> _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), _module.__default.ks($LS($LZ), p$ih#0#0)), 
                _module.__default.ks($LS($LZ), p$ih#0#0 - 2)))
           && true
         ==> 
        LitInt(2) <= p#1
         ==> _module.Term#Equal(_module.__default.FindAndStep($LS($LS($LZ)), _module.__default.ks($LS($LS($LZ)), p#1)), 
          _module.__default.ks($LS($LS($LZ)), p#1 - 2)));
    assume {:id "id556"} (forall p#1: int :: 
      { _module.__default.FindAndStep($LS($LZ), _module.__default.ks($LS($LZ), p#1)) } 
      LitInt(2) <= p#1
         ==> _module.Term#Equal(_module.__default.FindAndStep($LS($LZ), _module.__default.ks($LS($LZ), p#1)), 
          _module.__default.ks($LS($LZ), p#1 - 2)));
}



// Constructor function declaration
function #_module.Term.S() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Term.S()) == ##_module.Term.S;
// Constructor $Is
axiom $Is(#_module.Term.S(), Tclass._module.Term());
// Constructor literal
axiom #_module.Term.S() == Lit(#_module.Term.S());
}

const unique ##_module.Term.S: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Term.S()) == ##_module.Term.S;
}

function _module.Term.S_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Term.S_q(d) } 
  _module.Term.S_q(d) <==> DatatypeCtorId(d) == ##_module.Term.S);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Term.S_q(d) } 
  _module.Term.S_q(d) ==> d == #_module.Term.S());

// Constructor function declaration
function #_module.Term.K() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Term.K()) == ##_module.Term.K;
// Constructor $Is
axiom $Is(#_module.Term.K(), Tclass._module.Term());
// Constructor literal
axiom #_module.Term.K() == Lit(#_module.Term.K());
}

const unique ##_module.Term.K: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Term.K()) == ##_module.Term.K;
}

function _module.Term.K_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Term.K_q(d) } 
  _module.Term.K_q(d) <==> DatatypeCtorId(d) == ##_module.Term.K);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Term.K_q(d) } 
  _module.Term.K_q(d) ==> d == #_module.Term.K());

// Constructor function declaration
function #_module.Term.Apply(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.Term.Apply: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: DatatypeType, a#8#1#0: DatatypeType :: 
  { #_module.Term.Apply(a#8#0#0, a#8#1#0) } 
  DatatypeCtorId(#_module.Term.Apply(a#8#0#0, a#8#1#0)) == ##_module.Term.Apply);
}

function _module.Term.Apply_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Term.Apply_q(d) } 
  _module.Term.Apply_q(d) <==> DatatypeCtorId(d) == ##_module.Term.Apply);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Term.Apply_q(d) } 
  _module.Term.Apply_q(d)
     ==> (exists a#9#0#0: DatatypeType, a#9#1#0: DatatypeType :: 
      d == #_module.Term.Apply(a#9#0#0, a#9#1#0)));

// Constructor $Is
axiom (forall a#10#0#0: DatatypeType, a#10#1#0: DatatypeType :: 
  { $Is(#_module.Term.Apply(a#10#0#0, a#10#1#0), Tclass._module.Term()) } 
  $Is(#_module.Term.Apply(a#10#0#0, a#10#1#0), Tclass._module.Term())
     <==> $Is(a#10#0#0, Tclass._module.Term()) && $Is(a#10#1#0, Tclass._module.Term()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Term.car(d), Tclass._module.Term(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Term.Apply_q(d)
       && $IsAlloc(d, Tclass._module.Term(), $h)
     ==> $IsAlloc(_module.Term.car(d), Tclass._module.Term(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Term.cdr(d), Tclass._module.Term(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Term.Apply_q(d)
       && $IsAlloc(d, Tclass._module.Term(), $h)
     ==> $IsAlloc(_module.Term.cdr(d), Tclass._module.Term(), $h));

// Constructor literal
axiom (forall a#11#0#0: DatatypeType, a#11#1#0: DatatypeType :: 
  { #_module.Term.Apply(Lit(a#11#0#0), Lit(a#11#1#0)) } 
  #_module.Term.Apply(Lit(a#11#0#0), Lit(a#11#1#0))
     == Lit(#_module.Term.Apply(a#11#0#0, a#11#1#0)));

function _module.Term.car(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#12#0#0: DatatypeType, a#12#1#0: DatatypeType :: 
  { #_module.Term.Apply(a#12#0#0, a#12#1#0) } 
  _module.Term.car(#_module.Term.Apply(a#12#0#0, a#12#1#0)) == a#12#0#0);

// Inductive rank
axiom (forall a#13#0#0: DatatypeType, a#13#1#0: DatatypeType :: 
  { #_module.Term.Apply(a#13#0#0, a#13#1#0) } 
  DtRank(a#13#0#0) < DtRank(#_module.Term.Apply(a#13#0#0, a#13#1#0)));

function _module.Term.cdr(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#14#0#0: DatatypeType, a#14#1#0: DatatypeType :: 
  { #_module.Term.Apply(a#14#0#0, a#14#1#0) } 
  _module.Term.cdr(#_module.Term.Apply(a#14#0#0, a#14#1#0)) == a#14#1#0);

// Inductive rank
axiom (forall a#15#0#0: DatatypeType, a#15#1#0: DatatypeType :: 
  { #_module.Term.Apply(a#15#0#0, a#15#1#0) } 
  DtRank(a#15#1#0) < DtRank(#_module.Term.Apply(a#15#0#0, a#15#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Term(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Term())
     ==> $IsAlloc(d, Tclass._module.Term(), $h));

// Depth-one case-split function
function $IsA#_module.Term(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Term(d) } 
  $IsA#_module.Term(d)
     ==> _module.Term.S_q(d) || _module.Term.K_q(d) || _module.Term.Apply_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Term.Apply_q(d), $Is(d, Tclass._module.Term()) } 
    { _module.Term.K_q(d), $Is(d, Tclass._module.Term()) } 
    { _module.Term.S_q(d), $Is(d, Tclass._module.Term()) } 
  $Is(d, Tclass._module.Term())
     ==> _module.Term.S_q(d) || _module.Term.K_q(d) || _module.Term.Apply_q(d));

// Datatype extensional equality declaration
function _module.Term#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Term.S
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Term#Equal(a, b), _module.Term.S_q(a) } 
    { _module.Term#Equal(a, b), _module.Term.S_q(b) } 
  _module.Term.S_q(a) && _module.Term.S_q(b) ==> _module.Term#Equal(a, b));

// Datatype extensional equality definition: #_module.Term.K
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Term#Equal(a, b), _module.Term.K_q(a) } 
    { _module.Term#Equal(a, b), _module.Term.K_q(b) } 
  _module.Term.K_q(a) && _module.Term.K_q(b) ==> _module.Term#Equal(a, b));

// Datatype extensional equality definition: #_module.Term.Apply
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Term#Equal(a, b), _module.Term.Apply_q(a) } 
    { _module.Term#Equal(a, b), _module.Term.Apply_q(b) } 
  _module.Term.Apply_q(a) && _module.Term.Apply_q(b)
     ==> (_module.Term#Equal(a, b)
       <==> _module.Term#Equal(_module.Term.car(a), _module.Term.car(b))
         && _module.Term#Equal(_module.Term.cdr(a), _module.Term.cdr(b))));

// Datatype extensionality axiom: _module.Term
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Term#Equal(a, b) } 
  _module.Term#Equal(a, b) <==> a == b);

const unique class._module.Term: ClassName;

// Constructor function declaration
function #_module.Context.Hole() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Context.Hole()) == ##_module.Context.Hole;
// Constructor $Is
axiom $Is(#_module.Context.Hole(), Tclass._module.Context());
// Constructor literal
axiom #_module.Context.Hole() == Lit(#_module.Context.Hole());
}

const unique ##_module.Context.Hole: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Context.Hole()) == ##_module.Context.Hole;
}

function _module.Context.Hole_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Context.Hole_q(d) } 
  _module.Context.Hole_q(d) <==> DatatypeCtorId(d) == ##_module.Context.Hole);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Context.Hole_q(d) } 
  _module.Context.Hole_q(d) ==> d == #_module.Context.Hole());

// Constructor function declaration
function #_module.Context.C_term(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.Context.C_term: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: DatatypeType, a#20#1#0: DatatypeType :: 
  { #_module.Context.C_term(a#20#0#0, a#20#1#0) } 
  DatatypeCtorId(#_module.Context.C_term(a#20#0#0, a#20#1#0))
     == ##_module.Context.C_term);
}

function _module.Context.C__term_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Context.C__term_q(d) } 
  _module.Context.C__term_q(d) <==> DatatypeCtorId(d) == ##_module.Context.C_term);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Context.C__term_q(d) } 
  _module.Context.C__term_q(d)
     ==> (exists a#21#0#0: DatatypeType, a#21#1#0: DatatypeType :: 
      d == #_module.Context.C_term(a#21#0#0, a#21#1#0)));

// Constructor $Is
axiom (forall a#22#0#0: DatatypeType, a#22#1#0: DatatypeType :: 
  { $Is(#_module.Context.C_term(a#22#0#0, a#22#1#0), Tclass._module.Context()) } 
  $Is(#_module.Context.C_term(a#22#0#0, a#22#1#0), Tclass._module.Context())
     <==> $Is(a#22#0#0, Tclass._module.Context()) && $Is(a#22#1#0, Tclass._module.Term()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Context._h0(d), Tclass._module.Context(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Context.C__term_q(d)
       && $IsAlloc(d, Tclass._module.Context(), $h)
     ==> $IsAlloc(_module.Context._h0(d), Tclass._module.Context(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Context._h1(d), Tclass._module.Term(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Context.C__term_q(d)
       && $IsAlloc(d, Tclass._module.Context(), $h)
     ==> $IsAlloc(_module.Context._h1(d), Tclass._module.Term(), $h));

// Constructor literal
axiom (forall a#23#0#0: DatatypeType, a#23#1#0: DatatypeType :: 
  { #_module.Context.C_term(Lit(a#23#0#0), Lit(a#23#1#0)) } 
  #_module.Context.C_term(Lit(a#23#0#0), Lit(a#23#1#0))
     == Lit(#_module.Context.C_term(a#23#0#0, a#23#1#0)));

function _module.Context._h0(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#24#0#0: DatatypeType, a#24#1#0: DatatypeType :: 
  { #_module.Context.C_term(a#24#0#0, a#24#1#0) } 
  _module.Context._h0(#_module.Context.C_term(a#24#0#0, a#24#1#0)) == a#24#0#0);

// Inductive rank
axiom (forall a#25#0#0: DatatypeType, a#25#1#0: DatatypeType :: 
  { #_module.Context.C_term(a#25#0#0, a#25#1#0) } 
  DtRank(a#25#0#0) < DtRank(#_module.Context.C_term(a#25#0#0, a#25#1#0)));

function _module.Context._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#26#0#0: DatatypeType, a#26#1#0: DatatypeType :: 
  { #_module.Context.C_term(a#26#0#0, a#26#1#0) } 
  _module.Context._h1(#_module.Context.C_term(a#26#0#0, a#26#1#0)) == a#26#1#0);

// Inductive rank
axiom (forall a#27#0#0: DatatypeType, a#27#1#0: DatatypeType :: 
  { #_module.Context.C_term(a#27#0#0, a#27#1#0) } 
  DtRank(a#27#1#0) < DtRank(#_module.Context.C_term(a#27#0#0, a#27#1#0)));

// Constructor function declaration
function #_module.Context.value_C(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.Context.value_C: DtCtorId
uses {
// Constructor identifier
axiom (forall a#28#0#0: DatatypeType, a#28#1#0: DatatypeType :: 
  { #_module.Context.value_C(a#28#0#0, a#28#1#0) } 
  DatatypeCtorId(#_module.Context.value_C(a#28#0#0, a#28#1#0))
     == ##_module.Context.value_C);
}

function _module.Context.value__C_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Context.value__C_q(d) } 
  _module.Context.value__C_q(d)
     <==> DatatypeCtorId(d) == ##_module.Context.value_C);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Context.value__C_q(d) } 
  _module.Context.value__C_q(d)
     ==> (exists a#29#0#0: DatatypeType, a#29#1#0: DatatypeType :: 
      d == #_module.Context.value_C(a#29#0#0, a#29#1#0)));

// Constructor $Is
axiom (forall a#30#0#0: DatatypeType, a#30#1#0: DatatypeType :: 
  { $Is(#_module.Context.value_C(a#30#0#0, a#30#1#0), Tclass._module.Context()) } 
  $Is(#_module.Context.value_C(a#30#0#0, a#30#1#0), Tclass._module.Context())
     <==> $Is(a#30#0#0, Tclass._module.Term()) && $Is(a#30#1#0, Tclass._module.Context()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Context._h2(d), Tclass._module.Term(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Context.value__C_q(d)
       && $IsAlloc(d, Tclass._module.Context(), $h)
     ==> $IsAlloc(_module.Context._h2(d), Tclass._module.Term(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Context._h3(d), Tclass._module.Context(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Context.value__C_q(d)
       && $IsAlloc(d, Tclass._module.Context(), $h)
     ==> $IsAlloc(_module.Context._h3(d), Tclass._module.Context(), $h));

// Constructor literal
axiom (forall a#31#0#0: DatatypeType, a#31#1#0: DatatypeType :: 
  { #_module.Context.value_C(Lit(a#31#0#0), Lit(a#31#1#0)) } 
  #_module.Context.value_C(Lit(a#31#0#0), Lit(a#31#1#0))
     == Lit(#_module.Context.value_C(a#31#0#0, a#31#1#0)));

function _module.Context._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#32#0#0: DatatypeType, a#32#1#0: DatatypeType :: 
  { #_module.Context.value_C(a#32#0#0, a#32#1#0) } 
  _module.Context._h2(#_module.Context.value_C(a#32#0#0, a#32#1#0)) == a#32#0#0);

// Inductive rank
axiom (forall a#33#0#0: DatatypeType, a#33#1#0: DatatypeType :: 
  { #_module.Context.value_C(a#33#0#0, a#33#1#0) } 
  DtRank(a#33#0#0) < DtRank(#_module.Context.value_C(a#33#0#0, a#33#1#0)));

function _module.Context._h3(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#34#0#0: DatatypeType, a#34#1#0: DatatypeType :: 
  { #_module.Context.value_C(a#34#0#0, a#34#1#0) } 
  _module.Context._h3(#_module.Context.value_C(a#34#0#0, a#34#1#0)) == a#34#1#0);

// Inductive rank
axiom (forall a#35#0#0: DatatypeType, a#35#1#0: DatatypeType :: 
  { #_module.Context.value_C(a#35#0#0, a#35#1#0) } 
  DtRank(a#35#1#0) < DtRank(#_module.Context.value_C(a#35#0#0, a#35#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Context(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Context())
     ==> $IsAlloc(d, Tclass._module.Context(), $h));

// Depth-one case-split function
function $IsA#_module.Context(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Context(d) } 
  $IsA#_module.Context(d)
     ==> _module.Context.Hole_q(d)
       || _module.Context.C__term_q(d)
       || _module.Context.value__C_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Context.value__C_q(d), $Is(d, Tclass._module.Context()) } 
    { _module.Context.C__term_q(d), $Is(d, Tclass._module.Context()) } 
    { _module.Context.Hole_q(d), $Is(d, Tclass._module.Context()) } 
  $Is(d, Tclass._module.Context())
     ==> _module.Context.Hole_q(d)
       || _module.Context.C__term_q(d)
       || _module.Context.value__C_q(d));

// Datatype extensional equality declaration
function _module.Context#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Context.Hole
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Context#Equal(a, b), _module.Context.Hole_q(a) } 
    { _module.Context#Equal(a, b), _module.Context.Hole_q(b) } 
  _module.Context.Hole_q(a) && _module.Context.Hole_q(b)
     ==> _module.Context#Equal(a, b));

// Datatype extensional equality definition: #_module.Context.C_term
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Context#Equal(a, b), _module.Context.C__term_q(a) } 
    { _module.Context#Equal(a, b), _module.Context.C__term_q(b) } 
  _module.Context.C__term_q(a) && _module.Context.C__term_q(b)
     ==> (_module.Context#Equal(a, b)
       <==> _module.Context#Equal(_module.Context._h0(a), _module.Context._h0(b))
         && _module.Term#Equal(_module.Context._h1(a), _module.Context._h1(b))));

// Datatype extensional equality definition: #_module.Context.value_C
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Context#Equal(a, b), _module.Context.value__C_q(a) } 
    { _module.Context#Equal(a, b), _module.Context.value__C_q(b) } 
  _module.Context.value__C_q(a) && _module.Context.value__C_q(b)
     ==> (_module.Context#Equal(a, b)
       <==> _module.Term#Equal(_module.Context._h2(a), _module.Context._h2(b))
         && _module.Context#Equal(_module.Context._h3(a), _module.Context._h3(b))));

// Datatype extensionality axiom: _module.Context
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Context#Equal(a, b) } 
  _module.Context#Equal(a, b) <==> a == b);

const unique class._module.Context: ClassName;

// Constructor function declaration
function #_module.Trace.EmptyTrace() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Trace.EmptyTrace()) == ##_module.Trace.EmptyTrace;
// Constructor $Is
axiom $Is(#_module.Trace.EmptyTrace(), Tclass._module.Trace());
// Constructor literal
axiom #_module.Trace.EmptyTrace() == Lit(#_module.Trace.EmptyTrace());
}

const unique ##_module.Trace.EmptyTrace: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Trace.EmptyTrace()) == ##_module.Trace.EmptyTrace;
}

function _module.Trace.EmptyTrace_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Trace.EmptyTrace_q(d) } 
  _module.Trace.EmptyTrace_q(d)
     <==> DatatypeCtorId(d) == ##_module.Trace.EmptyTrace);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Trace.EmptyTrace_q(d) } 
  _module.Trace.EmptyTrace_q(d) ==> d == #_module.Trace.EmptyTrace());

// Constructor function declaration
function #_module.Trace.ReductionStep(DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.Trace.ReductionStep: DtCtorId
uses {
// Constructor identifier
axiom (forall a#40#0#0: DatatypeType, a#40#1#0: DatatypeType :: 
  { #_module.Trace.ReductionStep(a#40#0#0, a#40#1#0) } 
  DatatypeCtorId(#_module.Trace.ReductionStep(a#40#0#0, a#40#1#0))
     == ##_module.Trace.ReductionStep);
}

function _module.Trace.ReductionStep_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Trace.ReductionStep_q(d) } 
  _module.Trace.ReductionStep_q(d)
     <==> DatatypeCtorId(d) == ##_module.Trace.ReductionStep);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Trace.ReductionStep_q(d) } 
  _module.Trace.ReductionStep_q(d)
     ==> (exists a#41#0#0: DatatypeType, a#41#1#0: DatatypeType :: 
      d == #_module.Trace.ReductionStep(a#41#0#0, a#41#1#0)));

// Constructor $Is
axiom (forall a#42#0#0: DatatypeType, a#42#1#0: DatatypeType :: 
  { $Is(#_module.Trace.ReductionStep(a#42#0#0, a#42#1#0), Tclass._module.Trace()) } 
  $Is(#_module.Trace.ReductionStep(a#42#0#0, a#42#1#0), Tclass._module.Trace())
     <==> $Is(a#42#0#0, Tclass._module.Trace()) && $Is(a#42#1#0, Tclass._module.Term()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Trace._h4(d), Tclass._module.Trace(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Trace.ReductionStep_q(d)
       && $IsAlloc(d, Tclass._module.Trace(), $h)
     ==> $IsAlloc(_module.Trace._h4(d), Tclass._module.Trace(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Trace._h5(d), Tclass._module.Term(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Trace.ReductionStep_q(d)
       && $IsAlloc(d, Tclass._module.Trace(), $h)
     ==> $IsAlloc(_module.Trace._h5(d), Tclass._module.Term(), $h));

// Constructor literal
axiom (forall a#43#0#0: DatatypeType, a#43#1#0: DatatypeType :: 
  { #_module.Trace.ReductionStep(Lit(a#43#0#0), Lit(a#43#1#0)) } 
  #_module.Trace.ReductionStep(Lit(a#43#0#0), Lit(a#43#1#0))
     == Lit(#_module.Trace.ReductionStep(a#43#0#0, a#43#1#0)));

function _module.Trace._h4(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#44#0#0: DatatypeType, a#44#1#0: DatatypeType :: 
  { #_module.Trace.ReductionStep(a#44#0#0, a#44#1#0) } 
  _module.Trace._h4(#_module.Trace.ReductionStep(a#44#0#0, a#44#1#0)) == a#44#0#0);

// Inductive rank
axiom (forall a#45#0#0: DatatypeType, a#45#1#0: DatatypeType :: 
  { #_module.Trace.ReductionStep(a#45#0#0, a#45#1#0) } 
  DtRank(a#45#0#0) < DtRank(#_module.Trace.ReductionStep(a#45#0#0, a#45#1#0)));

function _module.Trace._h5(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#46#0#0: DatatypeType, a#46#1#0: DatatypeType :: 
  { #_module.Trace.ReductionStep(a#46#0#0, a#46#1#0) } 
  _module.Trace._h5(#_module.Trace.ReductionStep(a#46#0#0, a#46#1#0)) == a#46#1#0);

// Inductive rank
axiom (forall a#47#0#0: DatatypeType, a#47#1#0: DatatypeType :: 
  { #_module.Trace.ReductionStep(a#47#0#0, a#47#1#0) } 
  DtRank(a#47#1#0) < DtRank(#_module.Trace.ReductionStep(a#47#0#0, a#47#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Trace(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Trace())
     ==> $IsAlloc(d, Tclass._module.Trace(), $h));

// Depth-one case-split function
function $IsA#_module.Trace(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Trace(d) } 
  $IsA#_module.Trace(d)
     ==> _module.Trace.EmptyTrace_q(d) || _module.Trace.ReductionStep_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Trace.ReductionStep_q(d), $Is(d, Tclass._module.Trace()) } 
    { _module.Trace.EmptyTrace_q(d), $Is(d, Tclass._module.Trace()) } 
  $Is(d, Tclass._module.Trace())
     ==> _module.Trace.EmptyTrace_q(d) || _module.Trace.ReductionStep_q(d));

// Datatype extensional equality declaration
function _module.Trace#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Trace.EmptyTrace
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Trace#Equal(a, b), _module.Trace.EmptyTrace_q(a) } 
    { _module.Trace#Equal(a, b), _module.Trace.EmptyTrace_q(b) } 
  _module.Trace.EmptyTrace_q(a) && _module.Trace.EmptyTrace_q(b)
     ==> _module.Trace#Equal(a, b));

// Datatype extensional equality definition: #_module.Trace.ReductionStep
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Trace#Equal(a, b), _module.Trace.ReductionStep_q(a) } 
    { _module.Trace#Equal(a, b), _module.Trace.ReductionStep_q(b) } 
  _module.Trace.ReductionStep_q(a) && _module.Trace.ReductionStep_q(b)
     ==> (_module.Trace#Equal(a, b)
       <==> _module.Trace#Equal(_module.Trace._h4(a), _module.Trace._h4(b))
         && _module.Term#Equal(_module.Trace._h5(a), _module.Trace._h5(b))));

// Datatype extensionality axiom: _module.Trace
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Trace#Equal(a, b) } 
  _module.Trace#Equal(a, b) <==> a == b);

const unique class._module.Trace: ClassName;

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

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$Term: TyTagFamily;

const unique tytagFamily$Context: TyTagFamily;

const unique tytagFamily$Trace: TyTagFamily;
