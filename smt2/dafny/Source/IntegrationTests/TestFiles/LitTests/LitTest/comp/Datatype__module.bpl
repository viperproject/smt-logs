// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy

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
function #_System._tuple#20._#Make20(Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box, 
    Box)
   : DatatypeType;

const unique ##_System._tuple#20._#Make20: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, 
    a#12#1#0: Box, 
    a#12#2#0: Box, 
    a#12#3#0: Box, 
    a#12#4#0: Box, 
    a#12#5#0: Box, 
    a#12#6#0: Box, 
    a#12#7#0: Box, 
    a#12#8#0: Box, 
    a#12#9#0: Box, 
    a#12#10#0: Box, 
    a#12#11#0: Box, 
    a#12#12#0: Box, 
    a#12#13#0: Box, 
    a#12#14#0: Box, 
    a#12#15#0: Box, 
    a#12#16#0: Box, 
    a#12#17#0: Box, 
    a#12#18#0: Box, 
    a#12#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#12#0#0, 
      a#12#1#0, 
      a#12#2#0, 
      a#12#3#0, 
      a#12#4#0, 
      a#12#5#0, 
      a#12#6#0, 
      a#12#7#0, 
      a#12#8#0, 
      a#12#9#0, 
      a#12#10#0, 
      a#12#11#0, 
      a#12#12#0, 
      a#12#13#0, 
      a#12#14#0, 
      a#12#15#0, 
      a#12#16#0, 
      a#12#17#0, 
      a#12#18#0, 
      a#12#19#0) } 
  DatatypeCtorId(#_System._tuple#20._#Make20(a#12#0#0, 
        a#12#1#0, 
        a#12#2#0, 
        a#12#3#0, 
        a#12#4#0, 
        a#12#5#0, 
        a#12#6#0, 
        a#12#7#0, 
        a#12#8#0, 
        a#12#9#0, 
        a#12#10#0, 
        a#12#11#0, 
        a#12#12#0, 
        a#12#13#0, 
        a#12#14#0, 
        a#12#15#0, 
        a#12#16#0, 
        a#12#17#0, 
        a#12#18#0, 
        a#12#19#0))
     == ##_System._tuple#20._#Make20);
}

function _System.Tuple20.___hMake20_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple20.___hMake20_q(d) } 
  _System.Tuple20.___hMake20_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#20._#Make20);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple20.___hMake20_q(d) } 
  _System.Tuple20.___hMake20_q(d)
     ==> (exists a#13#0#0: Box, 
        a#13#1#0: Box, 
        a#13#2#0: Box, 
        a#13#3#0: Box, 
        a#13#4#0: Box, 
        a#13#5#0: Box, 
        a#13#6#0: Box, 
        a#13#7#0: Box, 
        a#13#8#0: Box, 
        a#13#9#0: Box, 
        a#13#10#0: Box, 
        a#13#11#0: Box, 
        a#13#12#0: Box, 
        a#13#13#0: Box, 
        a#13#14#0: Box, 
        a#13#15#0: Box, 
        a#13#16#0: Box, 
        a#13#17#0: Box, 
        a#13#18#0: Box, 
        a#13#19#0: Box :: 
      d
         == #_System._tuple#20._#Make20(a#13#0#0, 
          a#13#1#0, 
          a#13#2#0, 
          a#13#3#0, 
          a#13#4#0, 
          a#13#5#0, 
          a#13#6#0, 
          a#13#7#0, 
          a#13#8#0, 
          a#13#9#0, 
          a#13#10#0, 
          a#13#11#0, 
          a#13#12#0, 
          a#13#13#0, 
          a#13#14#0, 
          a#13#15#0, 
          a#13#16#0, 
          a#13#17#0, 
          a#13#18#0, 
          a#13#19#0)));

function Tclass._System.Tuple20(Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty, Ty)
   : Ty;

const unique Tagclass._System.Tuple20: TyTag;

// Tclass._System.Tuple20 Tag
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tag(Tclass._System.Tuple20(_System._tuple#20$T0, 
          _System._tuple#20$T1, 
          _System._tuple#20$T2, 
          _System._tuple#20$T3, 
          _System._tuple#20$T4, 
          _System._tuple#20$T5, 
          _System._tuple#20$T6, 
          _System._tuple#20$T7, 
          _System._tuple#20$T8, 
          _System._tuple#20$T9, 
          _System._tuple#20$T10, 
          _System._tuple#20$T11, 
          _System._tuple#20$T12, 
          _System._tuple#20$T13, 
          _System._tuple#20$T14, 
          _System._tuple#20$T15, 
          _System._tuple#20$T16, 
          _System._tuple#20$T17, 
          _System._tuple#20$T18, 
          _System._tuple#20$T19))
       == Tagclass._System.Tuple20
     && TagFamily(Tclass._System.Tuple20(_System._tuple#20$T0, 
          _System._tuple#20$T1, 
          _System._tuple#20$T2, 
          _System._tuple#20$T3, 
          _System._tuple#20$T4, 
          _System._tuple#20$T5, 
          _System._tuple#20$T6, 
          _System._tuple#20$T7, 
          _System._tuple#20$T8, 
          _System._tuple#20$T9, 
          _System._tuple#20$T10, 
          _System._tuple#20$T11, 
          _System._tuple#20$T12, 
          _System._tuple#20$T13, 
          _System._tuple#20$T14, 
          _System._tuple#20$T15, 
          _System._tuple#20$T16, 
          _System._tuple#20$T17, 
          _System._tuple#20$T18, 
          _System._tuple#20$T19))
       == tytagFamily$_tuple#20);

function Tclass._System.Tuple20_0(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 0
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_0(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T0);

function Tclass._System.Tuple20_1(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 1
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_1(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T1);

function Tclass._System.Tuple20_2(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 2
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_2(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T2);

function Tclass._System.Tuple20_3(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 3
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_3(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T3);

function Tclass._System.Tuple20_4(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 4
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_4(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T4);

function Tclass._System.Tuple20_5(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 5
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_5(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T5);

function Tclass._System.Tuple20_6(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 6
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_6(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T6);

function Tclass._System.Tuple20_7(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 7
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_7(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T7);

function Tclass._System.Tuple20_8(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 8
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_8(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T8);

function Tclass._System.Tuple20_9(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 9
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_9(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T9);

function Tclass._System.Tuple20_10(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 10
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_10(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T10);

function Tclass._System.Tuple20_11(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 11
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_11(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T11);

function Tclass._System.Tuple20_12(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 12
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_12(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T12);

function Tclass._System.Tuple20_13(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 13
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_13(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T13);

function Tclass._System.Tuple20_14(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 14
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_14(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T14);

function Tclass._System.Tuple20_15(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 15
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_15(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T15);

function Tclass._System.Tuple20_16(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 16
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_16(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T16);

function Tclass._System.Tuple20_17(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 17
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_17(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T17);

function Tclass._System.Tuple20_18(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 18
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_18(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T18);

function Tclass._System.Tuple20_19(Ty) : Ty;

// Tclass._System.Tuple20 injectivity 19
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty :: 
  { Tclass._System.Tuple20(_System._tuple#20$T0, 
      _System._tuple#20$T1, 
      _System._tuple#20$T2, 
      _System._tuple#20$T3, 
      _System._tuple#20$T4, 
      _System._tuple#20$T5, 
      _System._tuple#20$T6, 
      _System._tuple#20$T7, 
      _System._tuple#20$T8, 
      _System._tuple#20$T9, 
      _System._tuple#20$T10, 
      _System._tuple#20$T11, 
      _System._tuple#20$T12, 
      _System._tuple#20$T13, 
      _System._tuple#20$T14, 
      _System._tuple#20$T15, 
      _System._tuple#20$T16, 
      _System._tuple#20$T17, 
      _System._tuple#20$T18, 
      _System._tuple#20$T19) } 
  Tclass._System.Tuple20_19(Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     == _System._tuple#20$T19);

// Box/unbox axiom for Tclass._System.Tuple20
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19)) } 
  $IsBox(bx, 
      Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple20(_System._tuple#20$T0, 
          _System._tuple#20$T1, 
          _System._tuple#20$T2, 
          _System._tuple#20$T3, 
          _System._tuple#20$T4, 
          _System._tuple#20$T5, 
          _System._tuple#20$T6, 
          _System._tuple#20$T7, 
          _System._tuple#20$T8, 
          _System._tuple#20$T9, 
          _System._tuple#20$T10, 
          _System._tuple#20$T11, 
          _System._tuple#20$T12, 
          _System._tuple#20$T13, 
          _System._tuple#20$T14, 
          _System._tuple#20$T15, 
          _System._tuple#20$T16, 
          _System._tuple#20$T17, 
          _System._tuple#20$T18, 
          _System._tuple#20$T19)));

// Constructor $Is
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    a#14#3#0: Box, 
    a#14#4#0: Box, 
    a#14#5#0: Box, 
    a#14#6#0: Box, 
    a#14#7#0: Box, 
    a#14#8#0: Box, 
    a#14#9#0: Box, 
    a#14#10#0: Box, 
    a#14#11#0: Box, 
    a#14#12#0: Box, 
    a#14#13#0: Box, 
    a#14#14#0: Box, 
    a#14#15#0: Box, 
    a#14#16#0: Box, 
    a#14#17#0: Box, 
    a#14#18#0: Box, 
    a#14#19#0: Box :: 
  { $Is(#_System._tuple#20._#Make20(a#14#0#0, 
        a#14#1#0, 
        a#14#2#0, 
        a#14#3#0, 
        a#14#4#0, 
        a#14#5#0, 
        a#14#6#0, 
        a#14#7#0, 
        a#14#8#0, 
        a#14#9#0, 
        a#14#10#0, 
        a#14#11#0, 
        a#14#12#0, 
        a#14#13#0, 
        a#14#14#0, 
        a#14#15#0, 
        a#14#16#0, 
        a#14#17#0, 
        a#14#18#0, 
        a#14#19#0), 
      Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19)) } 
  $Is(#_System._tuple#20._#Make20(a#14#0#0, 
        a#14#1#0, 
        a#14#2#0, 
        a#14#3#0, 
        a#14#4#0, 
        a#14#5#0, 
        a#14#6#0, 
        a#14#7#0, 
        a#14#8#0, 
        a#14#9#0, 
        a#14#10#0, 
        a#14#11#0, 
        a#14#12#0, 
        a#14#13#0, 
        a#14#14#0, 
        a#14#15#0, 
        a#14#16#0, 
        a#14#17#0, 
        a#14#18#0, 
        a#14#19#0), 
      Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     <==> $IsBox(a#14#0#0, _System._tuple#20$T0)
       && $IsBox(a#14#1#0, _System._tuple#20$T1)
       && $IsBox(a#14#2#0, _System._tuple#20$T2)
       && $IsBox(a#14#3#0, _System._tuple#20$T3)
       && $IsBox(a#14#4#0, _System._tuple#20$T4)
       && $IsBox(a#14#5#0, _System._tuple#20$T5)
       && $IsBox(a#14#6#0, _System._tuple#20$T6)
       && $IsBox(a#14#7#0, _System._tuple#20$T7)
       && $IsBox(a#14#8#0, _System._tuple#20$T8)
       && $IsBox(a#14#9#0, _System._tuple#20$T9)
       && $IsBox(a#14#10#0, _System._tuple#20$T10)
       && $IsBox(a#14#11#0, _System._tuple#20$T11)
       && $IsBox(a#14#12#0, _System._tuple#20$T12)
       && $IsBox(a#14#13#0, _System._tuple#20$T13)
       && $IsBox(a#14#14#0, _System._tuple#20$T14)
       && $IsBox(a#14#15#0, _System._tuple#20$T15)
       && $IsBox(a#14#16#0, _System._tuple#20$T16)
       && $IsBox(a#14#17#0, _System._tuple#20$T17)
       && $IsBox(a#14#18#0, _System._tuple#20$T18)
       && $IsBox(a#14#19#0, _System._tuple#20$T19));

// Constructor $IsAlloc
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    a#14#3#0: Box, 
    a#14#4#0: Box, 
    a#14#5#0: Box, 
    a#14#6#0: Box, 
    a#14#7#0: Box, 
    a#14#8#0: Box, 
    a#14#9#0: Box, 
    a#14#10#0: Box, 
    a#14#11#0: Box, 
    a#14#12#0: Box, 
    a#14#13#0: Box, 
    a#14#14#0: Box, 
    a#14#15#0: Box, 
    a#14#16#0: Box, 
    a#14#17#0: Box, 
    a#14#18#0: Box, 
    a#14#19#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#20._#Make20(a#14#0#0, 
        a#14#1#0, 
        a#14#2#0, 
        a#14#3#0, 
        a#14#4#0, 
        a#14#5#0, 
        a#14#6#0, 
        a#14#7#0, 
        a#14#8#0, 
        a#14#9#0, 
        a#14#10#0, 
        a#14#11#0, 
        a#14#12#0, 
        a#14#13#0, 
        a#14#14#0, 
        a#14#15#0, 
        a#14#16#0, 
        a#14#17#0, 
        a#14#18#0, 
        a#14#19#0), 
      Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#20._#Make20(a#14#0#0, 
          a#14#1#0, 
          a#14#2#0, 
          a#14#3#0, 
          a#14#4#0, 
          a#14#5#0, 
          a#14#6#0, 
          a#14#7#0, 
          a#14#8#0, 
          a#14#9#0, 
          a#14#10#0, 
          a#14#11#0, 
          a#14#12#0, 
          a#14#13#0, 
          a#14#14#0, 
          a#14#15#0, 
          a#14#16#0, 
          a#14#17#0, 
          a#14#18#0, 
          a#14#19#0), 
        Tclass._System.Tuple20(_System._tuple#20$T0, 
          _System._tuple#20$T1, 
          _System._tuple#20$T2, 
          _System._tuple#20$T3, 
          _System._tuple#20$T4, 
          _System._tuple#20$T5, 
          _System._tuple#20$T6, 
          _System._tuple#20$T7, 
          _System._tuple#20$T8, 
          _System._tuple#20$T9, 
          _System._tuple#20$T10, 
          _System._tuple#20$T11, 
          _System._tuple#20$T12, 
          _System._tuple#20$T13, 
          _System._tuple#20$T14, 
          _System._tuple#20$T15, 
          _System._tuple#20$T16, 
          _System._tuple#20$T17, 
          _System._tuple#20$T18, 
          _System._tuple#20$T19), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _System._tuple#20$T0, $h)
         && $IsAllocBox(a#14#1#0, _System._tuple#20$T1, $h)
         && $IsAllocBox(a#14#2#0, _System._tuple#20$T2, $h)
         && $IsAllocBox(a#14#3#0, _System._tuple#20$T3, $h)
         && $IsAllocBox(a#14#4#0, _System._tuple#20$T4, $h)
         && $IsAllocBox(a#14#5#0, _System._tuple#20$T5, $h)
         && $IsAllocBox(a#14#6#0, _System._tuple#20$T6, $h)
         && $IsAllocBox(a#14#7#0, _System._tuple#20$T7, $h)
         && $IsAllocBox(a#14#8#0, _System._tuple#20$T8, $h)
         && $IsAllocBox(a#14#9#0, _System._tuple#20$T9, $h)
         && $IsAllocBox(a#14#10#0, _System._tuple#20$T10, $h)
         && $IsAllocBox(a#14#11#0, _System._tuple#20$T11, $h)
         && $IsAllocBox(a#14#12#0, _System._tuple#20$T12, $h)
         && $IsAllocBox(a#14#13#0, _System._tuple#20$T13, $h)
         && $IsAllocBox(a#14#14#0, _System._tuple#20$T14, $h)
         && $IsAllocBox(a#14#15#0, _System._tuple#20$T15, $h)
         && $IsAllocBox(a#14#16#0, _System._tuple#20$T16, $h)
         && $IsAllocBox(a#14#17#0, _System._tuple#20$T17, $h)
         && $IsAllocBox(a#14#18#0, _System._tuple#20$T18, $h)
         && $IsAllocBox(a#14#19#0, _System._tuple#20$T19, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._0(d), _System._tuple#20$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._0(d), _System._tuple#20$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._1(d), _System._tuple#20$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._1(d), _System._tuple#20$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._2(d), _System._tuple#20$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._2(d), _System._tuple#20$T2, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T3: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._3(d), _System._tuple#20$T3, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._3(d), _System._tuple#20$T3, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T4: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._4(d), _System._tuple#20$T4, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._4(d), _System._tuple#20$T4, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T5: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._5(d), _System._tuple#20$T5, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._5(d), _System._tuple#20$T5, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T6: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._6(d), _System._tuple#20$T6, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._6(d), _System._tuple#20$T6, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T7: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._7(d), _System._tuple#20$T7, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._7(d), _System._tuple#20$T7, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T8: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._8(d), _System._tuple#20$T8, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._8(d), _System._tuple#20$T8, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T9: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._9(d), _System._tuple#20$T9, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._9(d), _System._tuple#20$T9, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T10: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._10(d), _System._tuple#20$T10, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._10(d), _System._tuple#20$T10, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T11: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._11(d), _System._tuple#20$T11, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._11(d), _System._tuple#20$T11, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T12: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._12(d), _System._tuple#20$T12, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._12(d), _System._tuple#20$T12, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T13: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._13(d), _System._tuple#20$T13, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._13(d), _System._tuple#20$T13, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T14: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._14(d), _System._tuple#20$T14, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._14(d), _System._tuple#20$T14, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T15: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._15(d), _System._tuple#20$T15, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._15(d), _System._tuple#20$T15, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T16: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._16(d), _System._tuple#20$T16, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._16(d), _System._tuple#20$T16, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T17: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._17(d), _System._tuple#20$T17, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T18: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._17(d), _System._tuple#20$T17, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T18: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._18(d), _System._tuple#20$T18, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T19: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._18(d), _System._tuple#20$T18, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#20$T19: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple20._19(d), _System._tuple#20$T19, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple20.___hMake20_q(d)
       && (exists _System._tuple#20$T0: Ty, 
          _System._tuple#20$T1: Ty, 
          _System._tuple#20$T2: Ty, 
          _System._tuple#20$T3: Ty, 
          _System._tuple#20$T4: Ty, 
          _System._tuple#20$T5: Ty, 
          _System._tuple#20$T6: Ty, 
          _System._tuple#20$T7: Ty, 
          _System._tuple#20$T8: Ty, 
          _System._tuple#20$T9: Ty, 
          _System._tuple#20$T10: Ty, 
          _System._tuple#20$T11: Ty, 
          _System._tuple#20$T12: Ty, 
          _System._tuple#20$T13: Ty, 
          _System._tuple#20$T14: Ty, 
          _System._tuple#20$T15: Ty, 
          _System._tuple#20$T16: Ty, 
          _System._tuple#20$T17: Ty, 
          _System._tuple#20$T18: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple20(_System._tuple#20$T0, 
              _System._tuple#20$T1, 
              _System._tuple#20$T2, 
              _System._tuple#20$T3, 
              _System._tuple#20$T4, 
              _System._tuple#20$T5, 
              _System._tuple#20$T6, 
              _System._tuple#20$T7, 
              _System._tuple#20$T8, 
              _System._tuple#20$T9, 
              _System._tuple#20$T10, 
              _System._tuple#20$T11, 
              _System._tuple#20$T12, 
              _System._tuple#20$T13, 
              _System._tuple#20$T14, 
              _System._tuple#20$T15, 
              _System._tuple#20$T16, 
              _System._tuple#20$T17, 
              _System._tuple#20$T18, 
              _System._tuple#20$T19), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple20(_System._tuple#20$T0, 
            _System._tuple#20$T1, 
            _System._tuple#20$T2, 
            _System._tuple#20$T3, 
            _System._tuple#20$T4, 
            _System._tuple#20$T5, 
            _System._tuple#20$T6, 
            _System._tuple#20$T7, 
            _System._tuple#20$T8, 
            _System._tuple#20$T9, 
            _System._tuple#20$T10, 
            _System._tuple#20$T11, 
            _System._tuple#20$T12, 
            _System._tuple#20$T13, 
            _System._tuple#20$T14, 
            _System._tuple#20$T15, 
            _System._tuple#20$T16, 
            _System._tuple#20$T17, 
            _System._tuple#20$T18, 
            _System._tuple#20$T19), 
          $h))
     ==> $IsAllocBox(_System.Tuple20._19(d), _System._tuple#20$T19, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, 
    a#15#1#0: Box, 
    a#15#2#0: Box, 
    a#15#3#0: Box, 
    a#15#4#0: Box, 
    a#15#5#0: Box, 
    a#15#6#0: Box, 
    a#15#7#0: Box, 
    a#15#8#0: Box, 
    a#15#9#0: Box, 
    a#15#10#0: Box, 
    a#15#11#0: Box, 
    a#15#12#0: Box, 
    a#15#13#0: Box, 
    a#15#14#0: Box, 
    a#15#15#0: Box, 
    a#15#16#0: Box, 
    a#15#17#0: Box, 
    a#15#18#0: Box, 
    a#15#19#0: Box :: 
  { #_System._tuple#20._#Make20(Lit(a#15#0#0), 
      Lit(a#15#1#0), 
      Lit(a#15#2#0), 
      Lit(a#15#3#0), 
      Lit(a#15#4#0), 
      Lit(a#15#5#0), 
      Lit(a#15#6#0), 
      Lit(a#15#7#0), 
      Lit(a#15#8#0), 
      Lit(a#15#9#0), 
      Lit(a#15#10#0), 
      Lit(a#15#11#0), 
      Lit(a#15#12#0), 
      Lit(a#15#13#0), 
      Lit(a#15#14#0), 
      Lit(a#15#15#0), 
      Lit(a#15#16#0), 
      Lit(a#15#17#0), 
      Lit(a#15#18#0), 
      Lit(a#15#19#0)) } 
  #_System._tuple#20._#Make20(Lit(a#15#0#0), 
      Lit(a#15#1#0), 
      Lit(a#15#2#0), 
      Lit(a#15#3#0), 
      Lit(a#15#4#0), 
      Lit(a#15#5#0), 
      Lit(a#15#6#0), 
      Lit(a#15#7#0), 
      Lit(a#15#8#0), 
      Lit(a#15#9#0), 
      Lit(a#15#10#0), 
      Lit(a#15#11#0), 
      Lit(a#15#12#0), 
      Lit(a#15#13#0), 
      Lit(a#15#14#0), 
      Lit(a#15#15#0), 
      Lit(a#15#16#0), 
      Lit(a#15#17#0), 
      Lit(a#15#18#0), 
      Lit(a#15#19#0))
     == Lit(#_System._tuple#20._#Make20(a#15#0#0, 
        a#15#1#0, 
        a#15#2#0, 
        a#15#3#0, 
        a#15#4#0, 
        a#15#5#0, 
        a#15#6#0, 
        a#15#7#0, 
        a#15#8#0, 
        a#15#9#0, 
        a#15#10#0, 
        a#15#11#0, 
        a#15#12#0, 
        a#15#13#0, 
        a#15#14#0, 
        a#15#15#0, 
        a#15#16#0, 
        a#15#17#0, 
        a#15#18#0, 
        a#15#19#0)));

function _System.Tuple20._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, 
    a#16#1#0: Box, 
    a#16#2#0: Box, 
    a#16#3#0: Box, 
    a#16#4#0: Box, 
    a#16#5#0: Box, 
    a#16#6#0: Box, 
    a#16#7#0: Box, 
    a#16#8#0: Box, 
    a#16#9#0: Box, 
    a#16#10#0: Box, 
    a#16#11#0: Box, 
    a#16#12#0: Box, 
    a#16#13#0: Box, 
    a#16#14#0: Box, 
    a#16#15#0: Box, 
    a#16#16#0: Box, 
    a#16#17#0: Box, 
    a#16#18#0: Box, 
    a#16#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#16#0#0, 
      a#16#1#0, 
      a#16#2#0, 
      a#16#3#0, 
      a#16#4#0, 
      a#16#5#0, 
      a#16#6#0, 
      a#16#7#0, 
      a#16#8#0, 
      a#16#9#0, 
      a#16#10#0, 
      a#16#11#0, 
      a#16#12#0, 
      a#16#13#0, 
      a#16#14#0, 
      a#16#15#0, 
      a#16#16#0, 
      a#16#17#0, 
      a#16#18#0, 
      a#16#19#0) } 
  _System.Tuple20._0(#_System._tuple#20._#Make20(a#16#0#0, 
        a#16#1#0, 
        a#16#2#0, 
        a#16#3#0, 
        a#16#4#0, 
        a#16#5#0, 
        a#16#6#0, 
        a#16#7#0, 
        a#16#8#0, 
        a#16#9#0, 
        a#16#10#0, 
        a#16#11#0, 
        a#16#12#0, 
        a#16#13#0, 
        a#16#14#0, 
        a#16#15#0, 
        a#16#16#0, 
        a#16#17#0, 
        a#16#18#0, 
        a#16#19#0))
     == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, 
    a#17#1#0: Box, 
    a#17#2#0: Box, 
    a#17#3#0: Box, 
    a#17#4#0: Box, 
    a#17#5#0: Box, 
    a#17#6#0: Box, 
    a#17#7#0: Box, 
    a#17#8#0: Box, 
    a#17#9#0: Box, 
    a#17#10#0: Box, 
    a#17#11#0: Box, 
    a#17#12#0: Box, 
    a#17#13#0: Box, 
    a#17#14#0: Box, 
    a#17#15#0: Box, 
    a#17#16#0: Box, 
    a#17#17#0: Box, 
    a#17#18#0: Box, 
    a#17#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#17#0#0, 
      a#17#1#0, 
      a#17#2#0, 
      a#17#3#0, 
      a#17#4#0, 
      a#17#5#0, 
      a#17#6#0, 
      a#17#7#0, 
      a#17#8#0, 
      a#17#9#0, 
      a#17#10#0, 
      a#17#11#0, 
      a#17#12#0, 
      a#17#13#0, 
      a#17#14#0, 
      a#17#15#0, 
      a#17#16#0, 
      a#17#17#0, 
      a#17#18#0, 
      a#17#19#0) } 
  BoxRank(a#17#0#0)
     < DtRank(#_System._tuple#20._#Make20(a#17#0#0, 
        a#17#1#0, 
        a#17#2#0, 
        a#17#3#0, 
        a#17#4#0, 
        a#17#5#0, 
        a#17#6#0, 
        a#17#7#0, 
        a#17#8#0, 
        a#17#9#0, 
        a#17#10#0, 
        a#17#11#0, 
        a#17#12#0, 
        a#17#13#0, 
        a#17#14#0, 
        a#17#15#0, 
        a#17#16#0, 
        a#17#17#0, 
        a#17#18#0, 
        a#17#19#0)));

function _System.Tuple20._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, 
    a#18#1#0: Box, 
    a#18#2#0: Box, 
    a#18#3#0: Box, 
    a#18#4#0: Box, 
    a#18#5#0: Box, 
    a#18#6#0: Box, 
    a#18#7#0: Box, 
    a#18#8#0: Box, 
    a#18#9#0: Box, 
    a#18#10#0: Box, 
    a#18#11#0: Box, 
    a#18#12#0: Box, 
    a#18#13#0: Box, 
    a#18#14#0: Box, 
    a#18#15#0: Box, 
    a#18#16#0: Box, 
    a#18#17#0: Box, 
    a#18#18#0: Box, 
    a#18#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#18#0#0, 
      a#18#1#0, 
      a#18#2#0, 
      a#18#3#0, 
      a#18#4#0, 
      a#18#5#0, 
      a#18#6#0, 
      a#18#7#0, 
      a#18#8#0, 
      a#18#9#0, 
      a#18#10#0, 
      a#18#11#0, 
      a#18#12#0, 
      a#18#13#0, 
      a#18#14#0, 
      a#18#15#0, 
      a#18#16#0, 
      a#18#17#0, 
      a#18#18#0, 
      a#18#19#0) } 
  _System.Tuple20._1(#_System._tuple#20._#Make20(a#18#0#0, 
        a#18#1#0, 
        a#18#2#0, 
        a#18#3#0, 
        a#18#4#0, 
        a#18#5#0, 
        a#18#6#0, 
        a#18#7#0, 
        a#18#8#0, 
        a#18#9#0, 
        a#18#10#0, 
        a#18#11#0, 
        a#18#12#0, 
        a#18#13#0, 
        a#18#14#0, 
        a#18#15#0, 
        a#18#16#0, 
        a#18#17#0, 
        a#18#18#0, 
        a#18#19#0))
     == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, 
    a#19#1#0: Box, 
    a#19#2#0: Box, 
    a#19#3#0: Box, 
    a#19#4#0: Box, 
    a#19#5#0: Box, 
    a#19#6#0: Box, 
    a#19#7#0: Box, 
    a#19#8#0: Box, 
    a#19#9#0: Box, 
    a#19#10#0: Box, 
    a#19#11#0: Box, 
    a#19#12#0: Box, 
    a#19#13#0: Box, 
    a#19#14#0: Box, 
    a#19#15#0: Box, 
    a#19#16#0: Box, 
    a#19#17#0: Box, 
    a#19#18#0: Box, 
    a#19#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#19#0#0, 
      a#19#1#0, 
      a#19#2#0, 
      a#19#3#0, 
      a#19#4#0, 
      a#19#5#0, 
      a#19#6#0, 
      a#19#7#0, 
      a#19#8#0, 
      a#19#9#0, 
      a#19#10#0, 
      a#19#11#0, 
      a#19#12#0, 
      a#19#13#0, 
      a#19#14#0, 
      a#19#15#0, 
      a#19#16#0, 
      a#19#17#0, 
      a#19#18#0, 
      a#19#19#0) } 
  BoxRank(a#19#1#0)
     < DtRank(#_System._tuple#20._#Make20(a#19#0#0, 
        a#19#1#0, 
        a#19#2#0, 
        a#19#3#0, 
        a#19#4#0, 
        a#19#5#0, 
        a#19#6#0, 
        a#19#7#0, 
        a#19#8#0, 
        a#19#9#0, 
        a#19#10#0, 
        a#19#11#0, 
        a#19#12#0, 
        a#19#13#0, 
        a#19#14#0, 
        a#19#15#0, 
        a#19#16#0, 
        a#19#17#0, 
        a#19#18#0, 
        a#19#19#0)));

function _System.Tuple20._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box, 
    a#20#1#0: Box, 
    a#20#2#0: Box, 
    a#20#3#0: Box, 
    a#20#4#0: Box, 
    a#20#5#0: Box, 
    a#20#6#0: Box, 
    a#20#7#0: Box, 
    a#20#8#0: Box, 
    a#20#9#0: Box, 
    a#20#10#0: Box, 
    a#20#11#0: Box, 
    a#20#12#0: Box, 
    a#20#13#0: Box, 
    a#20#14#0: Box, 
    a#20#15#0: Box, 
    a#20#16#0: Box, 
    a#20#17#0: Box, 
    a#20#18#0: Box, 
    a#20#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#20#0#0, 
      a#20#1#0, 
      a#20#2#0, 
      a#20#3#0, 
      a#20#4#0, 
      a#20#5#0, 
      a#20#6#0, 
      a#20#7#0, 
      a#20#8#0, 
      a#20#9#0, 
      a#20#10#0, 
      a#20#11#0, 
      a#20#12#0, 
      a#20#13#0, 
      a#20#14#0, 
      a#20#15#0, 
      a#20#16#0, 
      a#20#17#0, 
      a#20#18#0, 
      a#20#19#0) } 
  _System.Tuple20._2(#_System._tuple#20._#Make20(a#20#0#0, 
        a#20#1#0, 
        a#20#2#0, 
        a#20#3#0, 
        a#20#4#0, 
        a#20#5#0, 
        a#20#6#0, 
        a#20#7#0, 
        a#20#8#0, 
        a#20#9#0, 
        a#20#10#0, 
        a#20#11#0, 
        a#20#12#0, 
        a#20#13#0, 
        a#20#14#0, 
        a#20#15#0, 
        a#20#16#0, 
        a#20#17#0, 
        a#20#18#0, 
        a#20#19#0))
     == a#20#2#0);

// Inductive rank
axiom (forall a#21#0#0: Box, 
    a#21#1#0: Box, 
    a#21#2#0: Box, 
    a#21#3#0: Box, 
    a#21#4#0: Box, 
    a#21#5#0: Box, 
    a#21#6#0: Box, 
    a#21#7#0: Box, 
    a#21#8#0: Box, 
    a#21#9#0: Box, 
    a#21#10#0: Box, 
    a#21#11#0: Box, 
    a#21#12#0: Box, 
    a#21#13#0: Box, 
    a#21#14#0: Box, 
    a#21#15#0: Box, 
    a#21#16#0: Box, 
    a#21#17#0: Box, 
    a#21#18#0: Box, 
    a#21#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#21#0#0, 
      a#21#1#0, 
      a#21#2#0, 
      a#21#3#0, 
      a#21#4#0, 
      a#21#5#0, 
      a#21#6#0, 
      a#21#7#0, 
      a#21#8#0, 
      a#21#9#0, 
      a#21#10#0, 
      a#21#11#0, 
      a#21#12#0, 
      a#21#13#0, 
      a#21#14#0, 
      a#21#15#0, 
      a#21#16#0, 
      a#21#17#0, 
      a#21#18#0, 
      a#21#19#0) } 
  BoxRank(a#21#2#0)
     < DtRank(#_System._tuple#20._#Make20(a#21#0#0, 
        a#21#1#0, 
        a#21#2#0, 
        a#21#3#0, 
        a#21#4#0, 
        a#21#5#0, 
        a#21#6#0, 
        a#21#7#0, 
        a#21#8#0, 
        a#21#9#0, 
        a#21#10#0, 
        a#21#11#0, 
        a#21#12#0, 
        a#21#13#0, 
        a#21#14#0, 
        a#21#15#0, 
        a#21#16#0, 
        a#21#17#0, 
        a#21#18#0, 
        a#21#19#0)));

function _System.Tuple20._3(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#22#0#0: Box, 
    a#22#1#0: Box, 
    a#22#2#0: Box, 
    a#22#3#0: Box, 
    a#22#4#0: Box, 
    a#22#5#0: Box, 
    a#22#6#0: Box, 
    a#22#7#0: Box, 
    a#22#8#0: Box, 
    a#22#9#0: Box, 
    a#22#10#0: Box, 
    a#22#11#0: Box, 
    a#22#12#0: Box, 
    a#22#13#0: Box, 
    a#22#14#0: Box, 
    a#22#15#0: Box, 
    a#22#16#0: Box, 
    a#22#17#0: Box, 
    a#22#18#0: Box, 
    a#22#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#22#0#0, 
      a#22#1#0, 
      a#22#2#0, 
      a#22#3#0, 
      a#22#4#0, 
      a#22#5#0, 
      a#22#6#0, 
      a#22#7#0, 
      a#22#8#0, 
      a#22#9#0, 
      a#22#10#0, 
      a#22#11#0, 
      a#22#12#0, 
      a#22#13#0, 
      a#22#14#0, 
      a#22#15#0, 
      a#22#16#0, 
      a#22#17#0, 
      a#22#18#0, 
      a#22#19#0) } 
  _System.Tuple20._3(#_System._tuple#20._#Make20(a#22#0#0, 
        a#22#1#0, 
        a#22#2#0, 
        a#22#3#0, 
        a#22#4#0, 
        a#22#5#0, 
        a#22#6#0, 
        a#22#7#0, 
        a#22#8#0, 
        a#22#9#0, 
        a#22#10#0, 
        a#22#11#0, 
        a#22#12#0, 
        a#22#13#0, 
        a#22#14#0, 
        a#22#15#0, 
        a#22#16#0, 
        a#22#17#0, 
        a#22#18#0, 
        a#22#19#0))
     == a#22#3#0);

// Inductive rank
axiom (forall a#23#0#0: Box, 
    a#23#1#0: Box, 
    a#23#2#0: Box, 
    a#23#3#0: Box, 
    a#23#4#0: Box, 
    a#23#5#0: Box, 
    a#23#6#0: Box, 
    a#23#7#0: Box, 
    a#23#8#0: Box, 
    a#23#9#0: Box, 
    a#23#10#0: Box, 
    a#23#11#0: Box, 
    a#23#12#0: Box, 
    a#23#13#0: Box, 
    a#23#14#0: Box, 
    a#23#15#0: Box, 
    a#23#16#0: Box, 
    a#23#17#0: Box, 
    a#23#18#0: Box, 
    a#23#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#23#0#0, 
      a#23#1#0, 
      a#23#2#0, 
      a#23#3#0, 
      a#23#4#0, 
      a#23#5#0, 
      a#23#6#0, 
      a#23#7#0, 
      a#23#8#0, 
      a#23#9#0, 
      a#23#10#0, 
      a#23#11#0, 
      a#23#12#0, 
      a#23#13#0, 
      a#23#14#0, 
      a#23#15#0, 
      a#23#16#0, 
      a#23#17#0, 
      a#23#18#0, 
      a#23#19#0) } 
  BoxRank(a#23#3#0)
     < DtRank(#_System._tuple#20._#Make20(a#23#0#0, 
        a#23#1#0, 
        a#23#2#0, 
        a#23#3#0, 
        a#23#4#0, 
        a#23#5#0, 
        a#23#6#0, 
        a#23#7#0, 
        a#23#8#0, 
        a#23#9#0, 
        a#23#10#0, 
        a#23#11#0, 
        a#23#12#0, 
        a#23#13#0, 
        a#23#14#0, 
        a#23#15#0, 
        a#23#16#0, 
        a#23#17#0, 
        a#23#18#0, 
        a#23#19#0)));

function _System.Tuple20._4(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#24#0#0: Box, 
    a#24#1#0: Box, 
    a#24#2#0: Box, 
    a#24#3#0: Box, 
    a#24#4#0: Box, 
    a#24#5#0: Box, 
    a#24#6#0: Box, 
    a#24#7#0: Box, 
    a#24#8#0: Box, 
    a#24#9#0: Box, 
    a#24#10#0: Box, 
    a#24#11#0: Box, 
    a#24#12#0: Box, 
    a#24#13#0: Box, 
    a#24#14#0: Box, 
    a#24#15#0: Box, 
    a#24#16#0: Box, 
    a#24#17#0: Box, 
    a#24#18#0: Box, 
    a#24#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#24#0#0, 
      a#24#1#0, 
      a#24#2#0, 
      a#24#3#0, 
      a#24#4#0, 
      a#24#5#0, 
      a#24#6#0, 
      a#24#7#0, 
      a#24#8#0, 
      a#24#9#0, 
      a#24#10#0, 
      a#24#11#0, 
      a#24#12#0, 
      a#24#13#0, 
      a#24#14#0, 
      a#24#15#0, 
      a#24#16#0, 
      a#24#17#0, 
      a#24#18#0, 
      a#24#19#0) } 
  _System.Tuple20._4(#_System._tuple#20._#Make20(a#24#0#0, 
        a#24#1#0, 
        a#24#2#0, 
        a#24#3#0, 
        a#24#4#0, 
        a#24#5#0, 
        a#24#6#0, 
        a#24#7#0, 
        a#24#8#0, 
        a#24#9#0, 
        a#24#10#0, 
        a#24#11#0, 
        a#24#12#0, 
        a#24#13#0, 
        a#24#14#0, 
        a#24#15#0, 
        a#24#16#0, 
        a#24#17#0, 
        a#24#18#0, 
        a#24#19#0))
     == a#24#4#0);

// Inductive rank
axiom (forall a#25#0#0: Box, 
    a#25#1#0: Box, 
    a#25#2#0: Box, 
    a#25#3#0: Box, 
    a#25#4#0: Box, 
    a#25#5#0: Box, 
    a#25#6#0: Box, 
    a#25#7#0: Box, 
    a#25#8#0: Box, 
    a#25#9#0: Box, 
    a#25#10#0: Box, 
    a#25#11#0: Box, 
    a#25#12#0: Box, 
    a#25#13#0: Box, 
    a#25#14#0: Box, 
    a#25#15#0: Box, 
    a#25#16#0: Box, 
    a#25#17#0: Box, 
    a#25#18#0: Box, 
    a#25#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#25#0#0, 
      a#25#1#0, 
      a#25#2#0, 
      a#25#3#0, 
      a#25#4#0, 
      a#25#5#0, 
      a#25#6#0, 
      a#25#7#0, 
      a#25#8#0, 
      a#25#9#0, 
      a#25#10#0, 
      a#25#11#0, 
      a#25#12#0, 
      a#25#13#0, 
      a#25#14#0, 
      a#25#15#0, 
      a#25#16#0, 
      a#25#17#0, 
      a#25#18#0, 
      a#25#19#0) } 
  BoxRank(a#25#4#0)
     < DtRank(#_System._tuple#20._#Make20(a#25#0#0, 
        a#25#1#0, 
        a#25#2#0, 
        a#25#3#0, 
        a#25#4#0, 
        a#25#5#0, 
        a#25#6#0, 
        a#25#7#0, 
        a#25#8#0, 
        a#25#9#0, 
        a#25#10#0, 
        a#25#11#0, 
        a#25#12#0, 
        a#25#13#0, 
        a#25#14#0, 
        a#25#15#0, 
        a#25#16#0, 
        a#25#17#0, 
        a#25#18#0, 
        a#25#19#0)));

function _System.Tuple20._5(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#26#0#0: Box, 
    a#26#1#0: Box, 
    a#26#2#0: Box, 
    a#26#3#0: Box, 
    a#26#4#0: Box, 
    a#26#5#0: Box, 
    a#26#6#0: Box, 
    a#26#7#0: Box, 
    a#26#8#0: Box, 
    a#26#9#0: Box, 
    a#26#10#0: Box, 
    a#26#11#0: Box, 
    a#26#12#0: Box, 
    a#26#13#0: Box, 
    a#26#14#0: Box, 
    a#26#15#0: Box, 
    a#26#16#0: Box, 
    a#26#17#0: Box, 
    a#26#18#0: Box, 
    a#26#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#26#0#0, 
      a#26#1#0, 
      a#26#2#0, 
      a#26#3#0, 
      a#26#4#0, 
      a#26#5#0, 
      a#26#6#0, 
      a#26#7#0, 
      a#26#8#0, 
      a#26#9#0, 
      a#26#10#0, 
      a#26#11#0, 
      a#26#12#0, 
      a#26#13#0, 
      a#26#14#0, 
      a#26#15#0, 
      a#26#16#0, 
      a#26#17#0, 
      a#26#18#0, 
      a#26#19#0) } 
  _System.Tuple20._5(#_System._tuple#20._#Make20(a#26#0#0, 
        a#26#1#0, 
        a#26#2#0, 
        a#26#3#0, 
        a#26#4#0, 
        a#26#5#0, 
        a#26#6#0, 
        a#26#7#0, 
        a#26#8#0, 
        a#26#9#0, 
        a#26#10#0, 
        a#26#11#0, 
        a#26#12#0, 
        a#26#13#0, 
        a#26#14#0, 
        a#26#15#0, 
        a#26#16#0, 
        a#26#17#0, 
        a#26#18#0, 
        a#26#19#0))
     == a#26#5#0);

// Inductive rank
axiom (forall a#27#0#0: Box, 
    a#27#1#0: Box, 
    a#27#2#0: Box, 
    a#27#3#0: Box, 
    a#27#4#0: Box, 
    a#27#5#0: Box, 
    a#27#6#0: Box, 
    a#27#7#0: Box, 
    a#27#8#0: Box, 
    a#27#9#0: Box, 
    a#27#10#0: Box, 
    a#27#11#0: Box, 
    a#27#12#0: Box, 
    a#27#13#0: Box, 
    a#27#14#0: Box, 
    a#27#15#0: Box, 
    a#27#16#0: Box, 
    a#27#17#0: Box, 
    a#27#18#0: Box, 
    a#27#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#27#0#0, 
      a#27#1#0, 
      a#27#2#0, 
      a#27#3#0, 
      a#27#4#0, 
      a#27#5#0, 
      a#27#6#0, 
      a#27#7#0, 
      a#27#8#0, 
      a#27#9#0, 
      a#27#10#0, 
      a#27#11#0, 
      a#27#12#0, 
      a#27#13#0, 
      a#27#14#0, 
      a#27#15#0, 
      a#27#16#0, 
      a#27#17#0, 
      a#27#18#0, 
      a#27#19#0) } 
  BoxRank(a#27#5#0)
     < DtRank(#_System._tuple#20._#Make20(a#27#0#0, 
        a#27#1#0, 
        a#27#2#0, 
        a#27#3#0, 
        a#27#4#0, 
        a#27#5#0, 
        a#27#6#0, 
        a#27#7#0, 
        a#27#8#0, 
        a#27#9#0, 
        a#27#10#0, 
        a#27#11#0, 
        a#27#12#0, 
        a#27#13#0, 
        a#27#14#0, 
        a#27#15#0, 
        a#27#16#0, 
        a#27#17#0, 
        a#27#18#0, 
        a#27#19#0)));

function _System.Tuple20._6(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#28#0#0: Box, 
    a#28#1#0: Box, 
    a#28#2#0: Box, 
    a#28#3#0: Box, 
    a#28#4#0: Box, 
    a#28#5#0: Box, 
    a#28#6#0: Box, 
    a#28#7#0: Box, 
    a#28#8#0: Box, 
    a#28#9#0: Box, 
    a#28#10#0: Box, 
    a#28#11#0: Box, 
    a#28#12#0: Box, 
    a#28#13#0: Box, 
    a#28#14#0: Box, 
    a#28#15#0: Box, 
    a#28#16#0: Box, 
    a#28#17#0: Box, 
    a#28#18#0: Box, 
    a#28#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#28#0#0, 
      a#28#1#0, 
      a#28#2#0, 
      a#28#3#0, 
      a#28#4#0, 
      a#28#5#0, 
      a#28#6#0, 
      a#28#7#0, 
      a#28#8#0, 
      a#28#9#0, 
      a#28#10#0, 
      a#28#11#0, 
      a#28#12#0, 
      a#28#13#0, 
      a#28#14#0, 
      a#28#15#0, 
      a#28#16#0, 
      a#28#17#0, 
      a#28#18#0, 
      a#28#19#0) } 
  _System.Tuple20._6(#_System._tuple#20._#Make20(a#28#0#0, 
        a#28#1#0, 
        a#28#2#0, 
        a#28#3#0, 
        a#28#4#0, 
        a#28#5#0, 
        a#28#6#0, 
        a#28#7#0, 
        a#28#8#0, 
        a#28#9#0, 
        a#28#10#0, 
        a#28#11#0, 
        a#28#12#0, 
        a#28#13#0, 
        a#28#14#0, 
        a#28#15#0, 
        a#28#16#0, 
        a#28#17#0, 
        a#28#18#0, 
        a#28#19#0))
     == a#28#6#0);

// Inductive rank
axiom (forall a#29#0#0: Box, 
    a#29#1#0: Box, 
    a#29#2#0: Box, 
    a#29#3#0: Box, 
    a#29#4#0: Box, 
    a#29#5#0: Box, 
    a#29#6#0: Box, 
    a#29#7#0: Box, 
    a#29#8#0: Box, 
    a#29#9#0: Box, 
    a#29#10#0: Box, 
    a#29#11#0: Box, 
    a#29#12#0: Box, 
    a#29#13#0: Box, 
    a#29#14#0: Box, 
    a#29#15#0: Box, 
    a#29#16#0: Box, 
    a#29#17#0: Box, 
    a#29#18#0: Box, 
    a#29#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#29#0#0, 
      a#29#1#0, 
      a#29#2#0, 
      a#29#3#0, 
      a#29#4#0, 
      a#29#5#0, 
      a#29#6#0, 
      a#29#7#0, 
      a#29#8#0, 
      a#29#9#0, 
      a#29#10#0, 
      a#29#11#0, 
      a#29#12#0, 
      a#29#13#0, 
      a#29#14#0, 
      a#29#15#0, 
      a#29#16#0, 
      a#29#17#0, 
      a#29#18#0, 
      a#29#19#0) } 
  BoxRank(a#29#6#0)
     < DtRank(#_System._tuple#20._#Make20(a#29#0#0, 
        a#29#1#0, 
        a#29#2#0, 
        a#29#3#0, 
        a#29#4#0, 
        a#29#5#0, 
        a#29#6#0, 
        a#29#7#0, 
        a#29#8#0, 
        a#29#9#0, 
        a#29#10#0, 
        a#29#11#0, 
        a#29#12#0, 
        a#29#13#0, 
        a#29#14#0, 
        a#29#15#0, 
        a#29#16#0, 
        a#29#17#0, 
        a#29#18#0, 
        a#29#19#0)));

function _System.Tuple20._7(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#30#0#0: Box, 
    a#30#1#0: Box, 
    a#30#2#0: Box, 
    a#30#3#0: Box, 
    a#30#4#0: Box, 
    a#30#5#0: Box, 
    a#30#6#0: Box, 
    a#30#7#0: Box, 
    a#30#8#0: Box, 
    a#30#9#0: Box, 
    a#30#10#0: Box, 
    a#30#11#0: Box, 
    a#30#12#0: Box, 
    a#30#13#0: Box, 
    a#30#14#0: Box, 
    a#30#15#0: Box, 
    a#30#16#0: Box, 
    a#30#17#0: Box, 
    a#30#18#0: Box, 
    a#30#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#30#0#0, 
      a#30#1#0, 
      a#30#2#0, 
      a#30#3#0, 
      a#30#4#0, 
      a#30#5#0, 
      a#30#6#0, 
      a#30#7#0, 
      a#30#8#0, 
      a#30#9#0, 
      a#30#10#0, 
      a#30#11#0, 
      a#30#12#0, 
      a#30#13#0, 
      a#30#14#0, 
      a#30#15#0, 
      a#30#16#0, 
      a#30#17#0, 
      a#30#18#0, 
      a#30#19#0) } 
  _System.Tuple20._7(#_System._tuple#20._#Make20(a#30#0#0, 
        a#30#1#0, 
        a#30#2#0, 
        a#30#3#0, 
        a#30#4#0, 
        a#30#5#0, 
        a#30#6#0, 
        a#30#7#0, 
        a#30#8#0, 
        a#30#9#0, 
        a#30#10#0, 
        a#30#11#0, 
        a#30#12#0, 
        a#30#13#0, 
        a#30#14#0, 
        a#30#15#0, 
        a#30#16#0, 
        a#30#17#0, 
        a#30#18#0, 
        a#30#19#0))
     == a#30#7#0);

// Inductive rank
axiom (forall a#31#0#0: Box, 
    a#31#1#0: Box, 
    a#31#2#0: Box, 
    a#31#3#0: Box, 
    a#31#4#0: Box, 
    a#31#5#0: Box, 
    a#31#6#0: Box, 
    a#31#7#0: Box, 
    a#31#8#0: Box, 
    a#31#9#0: Box, 
    a#31#10#0: Box, 
    a#31#11#0: Box, 
    a#31#12#0: Box, 
    a#31#13#0: Box, 
    a#31#14#0: Box, 
    a#31#15#0: Box, 
    a#31#16#0: Box, 
    a#31#17#0: Box, 
    a#31#18#0: Box, 
    a#31#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#31#0#0, 
      a#31#1#0, 
      a#31#2#0, 
      a#31#3#0, 
      a#31#4#0, 
      a#31#5#0, 
      a#31#6#0, 
      a#31#7#0, 
      a#31#8#0, 
      a#31#9#0, 
      a#31#10#0, 
      a#31#11#0, 
      a#31#12#0, 
      a#31#13#0, 
      a#31#14#0, 
      a#31#15#0, 
      a#31#16#0, 
      a#31#17#0, 
      a#31#18#0, 
      a#31#19#0) } 
  BoxRank(a#31#7#0)
     < DtRank(#_System._tuple#20._#Make20(a#31#0#0, 
        a#31#1#0, 
        a#31#2#0, 
        a#31#3#0, 
        a#31#4#0, 
        a#31#5#0, 
        a#31#6#0, 
        a#31#7#0, 
        a#31#8#0, 
        a#31#9#0, 
        a#31#10#0, 
        a#31#11#0, 
        a#31#12#0, 
        a#31#13#0, 
        a#31#14#0, 
        a#31#15#0, 
        a#31#16#0, 
        a#31#17#0, 
        a#31#18#0, 
        a#31#19#0)));

function _System.Tuple20._8(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#32#0#0: Box, 
    a#32#1#0: Box, 
    a#32#2#0: Box, 
    a#32#3#0: Box, 
    a#32#4#0: Box, 
    a#32#5#0: Box, 
    a#32#6#0: Box, 
    a#32#7#0: Box, 
    a#32#8#0: Box, 
    a#32#9#0: Box, 
    a#32#10#0: Box, 
    a#32#11#0: Box, 
    a#32#12#0: Box, 
    a#32#13#0: Box, 
    a#32#14#0: Box, 
    a#32#15#0: Box, 
    a#32#16#0: Box, 
    a#32#17#0: Box, 
    a#32#18#0: Box, 
    a#32#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#32#0#0, 
      a#32#1#0, 
      a#32#2#0, 
      a#32#3#0, 
      a#32#4#0, 
      a#32#5#0, 
      a#32#6#0, 
      a#32#7#0, 
      a#32#8#0, 
      a#32#9#0, 
      a#32#10#0, 
      a#32#11#0, 
      a#32#12#0, 
      a#32#13#0, 
      a#32#14#0, 
      a#32#15#0, 
      a#32#16#0, 
      a#32#17#0, 
      a#32#18#0, 
      a#32#19#0) } 
  _System.Tuple20._8(#_System._tuple#20._#Make20(a#32#0#0, 
        a#32#1#0, 
        a#32#2#0, 
        a#32#3#0, 
        a#32#4#0, 
        a#32#5#0, 
        a#32#6#0, 
        a#32#7#0, 
        a#32#8#0, 
        a#32#9#0, 
        a#32#10#0, 
        a#32#11#0, 
        a#32#12#0, 
        a#32#13#0, 
        a#32#14#0, 
        a#32#15#0, 
        a#32#16#0, 
        a#32#17#0, 
        a#32#18#0, 
        a#32#19#0))
     == a#32#8#0);

// Inductive rank
axiom (forall a#33#0#0: Box, 
    a#33#1#0: Box, 
    a#33#2#0: Box, 
    a#33#3#0: Box, 
    a#33#4#0: Box, 
    a#33#5#0: Box, 
    a#33#6#0: Box, 
    a#33#7#0: Box, 
    a#33#8#0: Box, 
    a#33#9#0: Box, 
    a#33#10#0: Box, 
    a#33#11#0: Box, 
    a#33#12#0: Box, 
    a#33#13#0: Box, 
    a#33#14#0: Box, 
    a#33#15#0: Box, 
    a#33#16#0: Box, 
    a#33#17#0: Box, 
    a#33#18#0: Box, 
    a#33#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#33#0#0, 
      a#33#1#0, 
      a#33#2#0, 
      a#33#3#0, 
      a#33#4#0, 
      a#33#5#0, 
      a#33#6#0, 
      a#33#7#0, 
      a#33#8#0, 
      a#33#9#0, 
      a#33#10#0, 
      a#33#11#0, 
      a#33#12#0, 
      a#33#13#0, 
      a#33#14#0, 
      a#33#15#0, 
      a#33#16#0, 
      a#33#17#0, 
      a#33#18#0, 
      a#33#19#0) } 
  BoxRank(a#33#8#0)
     < DtRank(#_System._tuple#20._#Make20(a#33#0#0, 
        a#33#1#0, 
        a#33#2#0, 
        a#33#3#0, 
        a#33#4#0, 
        a#33#5#0, 
        a#33#6#0, 
        a#33#7#0, 
        a#33#8#0, 
        a#33#9#0, 
        a#33#10#0, 
        a#33#11#0, 
        a#33#12#0, 
        a#33#13#0, 
        a#33#14#0, 
        a#33#15#0, 
        a#33#16#0, 
        a#33#17#0, 
        a#33#18#0, 
        a#33#19#0)));

function _System.Tuple20._9(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#34#0#0: Box, 
    a#34#1#0: Box, 
    a#34#2#0: Box, 
    a#34#3#0: Box, 
    a#34#4#0: Box, 
    a#34#5#0: Box, 
    a#34#6#0: Box, 
    a#34#7#0: Box, 
    a#34#8#0: Box, 
    a#34#9#0: Box, 
    a#34#10#0: Box, 
    a#34#11#0: Box, 
    a#34#12#0: Box, 
    a#34#13#0: Box, 
    a#34#14#0: Box, 
    a#34#15#0: Box, 
    a#34#16#0: Box, 
    a#34#17#0: Box, 
    a#34#18#0: Box, 
    a#34#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#34#0#0, 
      a#34#1#0, 
      a#34#2#0, 
      a#34#3#0, 
      a#34#4#0, 
      a#34#5#0, 
      a#34#6#0, 
      a#34#7#0, 
      a#34#8#0, 
      a#34#9#0, 
      a#34#10#0, 
      a#34#11#0, 
      a#34#12#0, 
      a#34#13#0, 
      a#34#14#0, 
      a#34#15#0, 
      a#34#16#0, 
      a#34#17#0, 
      a#34#18#0, 
      a#34#19#0) } 
  _System.Tuple20._9(#_System._tuple#20._#Make20(a#34#0#0, 
        a#34#1#0, 
        a#34#2#0, 
        a#34#3#0, 
        a#34#4#0, 
        a#34#5#0, 
        a#34#6#0, 
        a#34#7#0, 
        a#34#8#0, 
        a#34#9#0, 
        a#34#10#0, 
        a#34#11#0, 
        a#34#12#0, 
        a#34#13#0, 
        a#34#14#0, 
        a#34#15#0, 
        a#34#16#0, 
        a#34#17#0, 
        a#34#18#0, 
        a#34#19#0))
     == a#34#9#0);

// Inductive rank
axiom (forall a#35#0#0: Box, 
    a#35#1#0: Box, 
    a#35#2#0: Box, 
    a#35#3#0: Box, 
    a#35#4#0: Box, 
    a#35#5#0: Box, 
    a#35#6#0: Box, 
    a#35#7#0: Box, 
    a#35#8#0: Box, 
    a#35#9#0: Box, 
    a#35#10#0: Box, 
    a#35#11#0: Box, 
    a#35#12#0: Box, 
    a#35#13#0: Box, 
    a#35#14#0: Box, 
    a#35#15#0: Box, 
    a#35#16#0: Box, 
    a#35#17#0: Box, 
    a#35#18#0: Box, 
    a#35#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#35#0#0, 
      a#35#1#0, 
      a#35#2#0, 
      a#35#3#0, 
      a#35#4#0, 
      a#35#5#0, 
      a#35#6#0, 
      a#35#7#0, 
      a#35#8#0, 
      a#35#9#0, 
      a#35#10#0, 
      a#35#11#0, 
      a#35#12#0, 
      a#35#13#0, 
      a#35#14#0, 
      a#35#15#0, 
      a#35#16#0, 
      a#35#17#0, 
      a#35#18#0, 
      a#35#19#0) } 
  BoxRank(a#35#9#0)
     < DtRank(#_System._tuple#20._#Make20(a#35#0#0, 
        a#35#1#0, 
        a#35#2#0, 
        a#35#3#0, 
        a#35#4#0, 
        a#35#5#0, 
        a#35#6#0, 
        a#35#7#0, 
        a#35#8#0, 
        a#35#9#0, 
        a#35#10#0, 
        a#35#11#0, 
        a#35#12#0, 
        a#35#13#0, 
        a#35#14#0, 
        a#35#15#0, 
        a#35#16#0, 
        a#35#17#0, 
        a#35#18#0, 
        a#35#19#0)));

function _System.Tuple20._10(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#36#0#0: Box, 
    a#36#1#0: Box, 
    a#36#2#0: Box, 
    a#36#3#0: Box, 
    a#36#4#0: Box, 
    a#36#5#0: Box, 
    a#36#6#0: Box, 
    a#36#7#0: Box, 
    a#36#8#0: Box, 
    a#36#9#0: Box, 
    a#36#10#0: Box, 
    a#36#11#0: Box, 
    a#36#12#0: Box, 
    a#36#13#0: Box, 
    a#36#14#0: Box, 
    a#36#15#0: Box, 
    a#36#16#0: Box, 
    a#36#17#0: Box, 
    a#36#18#0: Box, 
    a#36#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#36#0#0, 
      a#36#1#0, 
      a#36#2#0, 
      a#36#3#0, 
      a#36#4#0, 
      a#36#5#0, 
      a#36#6#0, 
      a#36#7#0, 
      a#36#8#0, 
      a#36#9#0, 
      a#36#10#0, 
      a#36#11#0, 
      a#36#12#0, 
      a#36#13#0, 
      a#36#14#0, 
      a#36#15#0, 
      a#36#16#0, 
      a#36#17#0, 
      a#36#18#0, 
      a#36#19#0) } 
  _System.Tuple20._10(#_System._tuple#20._#Make20(a#36#0#0, 
        a#36#1#0, 
        a#36#2#0, 
        a#36#3#0, 
        a#36#4#0, 
        a#36#5#0, 
        a#36#6#0, 
        a#36#7#0, 
        a#36#8#0, 
        a#36#9#0, 
        a#36#10#0, 
        a#36#11#0, 
        a#36#12#0, 
        a#36#13#0, 
        a#36#14#0, 
        a#36#15#0, 
        a#36#16#0, 
        a#36#17#0, 
        a#36#18#0, 
        a#36#19#0))
     == a#36#10#0);

// Inductive rank
axiom (forall a#37#0#0: Box, 
    a#37#1#0: Box, 
    a#37#2#0: Box, 
    a#37#3#0: Box, 
    a#37#4#0: Box, 
    a#37#5#0: Box, 
    a#37#6#0: Box, 
    a#37#7#0: Box, 
    a#37#8#0: Box, 
    a#37#9#0: Box, 
    a#37#10#0: Box, 
    a#37#11#0: Box, 
    a#37#12#0: Box, 
    a#37#13#0: Box, 
    a#37#14#0: Box, 
    a#37#15#0: Box, 
    a#37#16#0: Box, 
    a#37#17#0: Box, 
    a#37#18#0: Box, 
    a#37#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#37#0#0, 
      a#37#1#0, 
      a#37#2#0, 
      a#37#3#0, 
      a#37#4#0, 
      a#37#5#0, 
      a#37#6#0, 
      a#37#7#0, 
      a#37#8#0, 
      a#37#9#0, 
      a#37#10#0, 
      a#37#11#0, 
      a#37#12#0, 
      a#37#13#0, 
      a#37#14#0, 
      a#37#15#0, 
      a#37#16#0, 
      a#37#17#0, 
      a#37#18#0, 
      a#37#19#0) } 
  BoxRank(a#37#10#0)
     < DtRank(#_System._tuple#20._#Make20(a#37#0#0, 
        a#37#1#0, 
        a#37#2#0, 
        a#37#3#0, 
        a#37#4#0, 
        a#37#5#0, 
        a#37#6#0, 
        a#37#7#0, 
        a#37#8#0, 
        a#37#9#0, 
        a#37#10#0, 
        a#37#11#0, 
        a#37#12#0, 
        a#37#13#0, 
        a#37#14#0, 
        a#37#15#0, 
        a#37#16#0, 
        a#37#17#0, 
        a#37#18#0, 
        a#37#19#0)));

function _System.Tuple20._11(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#38#0#0: Box, 
    a#38#1#0: Box, 
    a#38#2#0: Box, 
    a#38#3#0: Box, 
    a#38#4#0: Box, 
    a#38#5#0: Box, 
    a#38#6#0: Box, 
    a#38#7#0: Box, 
    a#38#8#0: Box, 
    a#38#9#0: Box, 
    a#38#10#0: Box, 
    a#38#11#0: Box, 
    a#38#12#0: Box, 
    a#38#13#0: Box, 
    a#38#14#0: Box, 
    a#38#15#0: Box, 
    a#38#16#0: Box, 
    a#38#17#0: Box, 
    a#38#18#0: Box, 
    a#38#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#38#0#0, 
      a#38#1#0, 
      a#38#2#0, 
      a#38#3#0, 
      a#38#4#0, 
      a#38#5#0, 
      a#38#6#0, 
      a#38#7#0, 
      a#38#8#0, 
      a#38#9#0, 
      a#38#10#0, 
      a#38#11#0, 
      a#38#12#0, 
      a#38#13#0, 
      a#38#14#0, 
      a#38#15#0, 
      a#38#16#0, 
      a#38#17#0, 
      a#38#18#0, 
      a#38#19#0) } 
  _System.Tuple20._11(#_System._tuple#20._#Make20(a#38#0#0, 
        a#38#1#0, 
        a#38#2#0, 
        a#38#3#0, 
        a#38#4#0, 
        a#38#5#0, 
        a#38#6#0, 
        a#38#7#0, 
        a#38#8#0, 
        a#38#9#0, 
        a#38#10#0, 
        a#38#11#0, 
        a#38#12#0, 
        a#38#13#0, 
        a#38#14#0, 
        a#38#15#0, 
        a#38#16#0, 
        a#38#17#0, 
        a#38#18#0, 
        a#38#19#0))
     == a#38#11#0);

// Inductive rank
axiom (forall a#39#0#0: Box, 
    a#39#1#0: Box, 
    a#39#2#0: Box, 
    a#39#3#0: Box, 
    a#39#4#0: Box, 
    a#39#5#0: Box, 
    a#39#6#0: Box, 
    a#39#7#0: Box, 
    a#39#8#0: Box, 
    a#39#9#0: Box, 
    a#39#10#0: Box, 
    a#39#11#0: Box, 
    a#39#12#0: Box, 
    a#39#13#0: Box, 
    a#39#14#0: Box, 
    a#39#15#0: Box, 
    a#39#16#0: Box, 
    a#39#17#0: Box, 
    a#39#18#0: Box, 
    a#39#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#39#0#0, 
      a#39#1#0, 
      a#39#2#0, 
      a#39#3#0, 
      a#39#4#0, 
      a#39#5#0, 
      a#39#6#0, 
      a#39#7#0, 
      a#39#8#0, 
      a#39#9#0, 
      a#39#10#0, 
      a#39#11#0, 
      a#39#12#0, 
      a#39#13#0, 
      a#39#14#0, 
      a#39#15#0, 
      a#39#16#0, 
      a#39#17#0, 
      a#39#18#0, 
      a#39#19#0) } 
  BoxRank(a#39#11#0)
     < DtRank(#_System._tuple#20._#Make20(a#39#0#0, 
        a#39#1#0, 
        a#39#2#0, 
        a#39#3#0, 
        a#39#4#0, 
        a#39#5#0, 
        a#39#6#0, 
        a#39#7#0, 
        a#39#8#0, 
        a#39#9#0, 
        a#39#10#0, 
        a#39#11#0, 
        a#39#12#0, 
        a#39#13#0, 
        a#39#14#0, 
        a#39#15#0, 
        a#39#16#0, 
        a#39#17#0, 
        a#39#18#0, 
        a#39#19#0)));

function _System.Tuple20._12(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#40#0#0: Box, 
    a#40#1#0: Box, 
    a#40#2#0: Box, 
    a#40#3#0: Box, 
    a#40#4#0: Box, 
    a#40#5#0: Box, 
    a#40#6#0: Box, 
    a#40#7#0: Box, 
    a#40#8#0: Box, 
    a#40#9#0: Box, 
    a#40#10#0: Box, 
    a#40#11#0: Box, 
    a#40#12#0: Box, 
    a#40#13#0: Box, 
    a#40#14#0: Box, 
    a#40#15#0: Box, 
    a#40#16#0: Box, 
    a#40#17#0: Box, 
    a#40#18#0: Box, 
    a#40#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#40#0#0, 
      a#40#1#0, 
      a#40#2#0, 
      a#40#3#0, 
      a#40#4#0, 
      a#40#5#0, 
      a#40#6#0, 
      a#40#7#0, 
      a#40#8#0, 
      a#40#9#0, 
      a#40#10#0, 
      a#40#11#0, 
      a#40#12#0, 
      a#40#13#0, 
      a#40#14#0, 
      a#40#15#0, 
      a#40#16#0, 
      a#40#17#0, 
      a#40#18#0, 
      a#40#19#0) } 
  _System.Tuple20._12(#_System._tuple#20._#Make20(a#40#0#0, 
        a#40#1#0, 
        a#40#2#0, 
        a#40#3#0, 
        a#40#4#0, 
        a#40#5#0, 
        a#40#6#0, 
        a#40#7#0, 
        a#40#8#0, 
        a#40#9#0, 
        a#40#10#0, 
        a#40#11#0, 
        a#40#12#0, 
        a#40#13#0, 
        a#40#14#0, 
        a#40#15#0, 
        a#40#16#0, 
        a#40#17#0, 
        a#40#18#0, 
        a#40#19#0))
     == a#40#12#0);

// Inductive rank
axiom (forall a#41#0#0: Box, 
    a#41#1#0: Box, 
    a#41#2#0: Box, 
    a#41#3#0: Box, 
    a#41#4#0: Box, 
    a#41#5#0: Box, 
    a#41#6#0: Box, 
    a#41#7#0: Box, 
    a#41#8#0: Box, 
    a#41#9#0: Box, 
    a#41#10#0: Box, 
    a#41#11#0: Box, 
    a#41#12#0: Box, 
    a#41#13#0: Box, 
    a#41#14#0: Box, 
    a#41#15#0: Box, 
    a#41#16#0: Box, 
    a#41#17#0: Box, 
    a#41#18#0: Box, 
    a#41#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#41#0#0, 
      a#41#1#0, 
      a#41#2#0, 
      a#41#3#0, 
      a#41#4#0, 
      a#41#5#0, 
      a#41#6#0, 
      a#41#7#0, 
      a#41#8#0, 
      a#41#9#0, 
      a#41#10#0, 
      a#41#11#0, 
      a#41#12#0, 
      a#41#13#0, 
      a#41#14#0, 
      a#41#15#0, 
      a#41#16#0, 
      a#41#17#0, 
      a#41#18#0, 
      a#41#19#0) } 
  BoxRank(a#41#12#0)
     < DtRank(#_System._tuple#20._#Make20(a#41#0#0, 
        a#41#1#0, 
        a#41#2#0, 
        a#41#3#0, 
        a#41#4#0, 
        a#41#5#0, 
        a#41#6#0, 
        a#41#7#0, 
        a#41#8#0, 
        a#41#9#0, 
        a#41#10#0, 
        a#41#11#0, 
        a#41#12#0, 
        a#41#13#0, 
        a#41#14#0, 
        a#41#15#0, 
        a#41#16#0, 
        a#41#17#0, 
        a#41#18#0, 
        a#41#19#0)));

function _System.Tuple20._13(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#42#0#0: Box, 
    a#42#1#0: Box, 
    a#42#2#0: Box, 
    a#42#3#0: Box, 
    a#42#4#0: Box, 
    a#42#5#0: Box, 
    a#42#6#0: Box, 
    a#42#7#0: Box, 
    a#42#8#0: Box, 
    a#42#9#0: Box, 
    a#42#10#0: Box, 
    a#42#11#0: Box, 
    a#42#12#0: Box, 
    a#42#13#0: Box, 
    a#42#14#0: Box, 
    a#42#15#0: Box, 
    a#42#16#0: Box, 
    a#42#17#0: Box, 
    a#42#18#0: Box, 
    a#42#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#42#0#0, 
      a#42#1#0, 
      a#42#2#0, 
      a#42#3#0, 
      a#42#4#0, 
      a#42#5#0, 
      a#42#6#0, 
      a#42#7#0, 
      a#42#8#0, 
      a#42#9#0, 
      a#42#10#0, 
      a#42#11#0, 
      a#42#12#0, 
      a#42#13#0, 
      a#42#14#0, 
      a#42#15#0, 
      a#42#16#0, 
      a#42#17#0, 
      a#42#18#0, 
      a#42#19#0) } 
  _System.Tuple20._13(#_System._tuple#20._#Make20(a#42#0#0, 
        a#42#1#0, 
        a#42#2#0, 
        a#42#3#0, 
        a#42#4#0, 
        a#42#5#0, 
        a#42#6#0, 
        a#42#7#0, 
        a#42#8#0, 
        a#42#9#0, 
        a#42#10#0, 
        a#42#11#0, 
        a#42#12#0, 
        a#42#13#0, 
        a#42#14#0, 
        a#42#15#0, 
        a#42#16#0, 
        a#42#17#0, 
        a#42#18#0, 
        a#42#19#0))
     == a#42#13#0);

// Inductive rank
axiom (forall a#43#0#0: Box, 
    a#43#1#0: Box, 
    a#43#2#0: Box, 
    a#43#3#0: Box, 
    a#43#4#0: Box, 
    a#43#5#0: Box, 
    a#43#6#0: Box, 
    a#43#7#0: Box, 
    a#43#8#0: Box, 
    a#43#9#0: Box, 
    a#43#10#0: Box, 
    a#43#11#0: Box, 
    a#43#12#0: Box, 
    a#43#13#0: Box, 
    a#43#14#0: Box, 
    a#43#15#0: Box, 
    a#43#16#0: Box, 
    a#43#17#0: Box, 
    a#43#18#0: Box, 
    a#43#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#43#0#0, 
      a#43#1#0, 
      a#43#2#0, 
      a#43#3#0, 
      a#43#4#0, 
      a#43#5#0, 
      a#43#6#0, 
      a#43#7#0, 
      a#43#8#0, 
      a#43#9#0, 
      a#43#10#0, 
      a#43#11#0, 
      a#43#12#0, 
      a#43#13#0, 
      a#43#14#0, 
      a#43#15#0, 
      a#43#16#0, 
      a#43#17#0, 
      a#43#18#0, 
      a#43#19#0) } 
  BoxRank(a#43#13#0)
     < DtRank(#_System._tuple#20._#Make20(a#43#0#0, 
        a#43#1#0, 
        a#43#2#0, 
        a#43#3#0, 
        a#43#4#0, 
        a#43#5#0, 
        a#43#6#0, 
        a#43#7#0, 
        a#43#8#0, 
        a#43#9#0, 
        a#43#10#0, 
        a#43#11#0, 
        a#43#12#0, 
        a#43#13#0, 
        a#43#14#0, 
        a#43#15#0, 
        a#43#16#0, 
        a#43#17#0, 
        a#43#18#0, 
        a#43#19#0)));

function _System.Tuple20._14(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#44#0#0: Box, 
    a#44#1#0: Box, 
    a#44#2#0: Box, 
    a#44#3#0: Box, 
    a#44#4#0: Box, 
    a#44#5#0: Box, 
    a#44#6#0: Box, 
    a#44#7#0: Box, 
    a#44#8#0: Box, 
    a#44#9#0: Box, 
    a#44#10#0: Box, 
    a#44#11#0: Box, 
    a#44#12#0: Box, 
    a#44#13#0: Box, 
    a#44#14#0: Box, 
    a#44#15#0: Box, 
    a#44#16#0: Box, 
    a#44#17#0: Box, 
    a#44#18#0: Box, 
    a#44#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#44#0#0, 
      a#44#1#0, 
      a#44#2#0, 
      a#44#3#0, 
      a#44#4#0, 
      a#44#5#0, 
      a#44#6#0, 
      a#44#7#0, 
      a#44#8#0, 
      a#44#9#0, 
      a#44#10#0, 
      a#44#11#0, 
      a#44#12#0, 
      a#44#13#0, 
      a#44#14#0, 
      a#44#15#0, 
      a#44#16#0, 
      a#44#17#0, 
      a#44#18#0, 
      a#44#19#0) } 
  _System.Tuple20._14(#_System._tuple#20._#Make20(a#44#0#0, 
        a#44#1#0, 
        a#44#2#0, 
        a#44#3#0, 
        a#44#4#0, 
        a#44#5#0, 
        a#44#6#0, 
        a#44#7#0, 
        a#44#8#0, 
        a#44#9#0, 
        a#44#10#0, 
        a#44#11#0, 
        a#44#12#0, 
        a#44#13#0, 
        a#44#14#0, 
        a#44#15#0, 
        a#44#16#0, 
        a#44#17#0, 
        a#44#18#0, 
        a#44#19#0))
     == a#44#14#0);

// Inductive rank
axiom (forall a#45#0#0: Box, 
    a#45#1#0: Box, 
    a#45#2#0: Box, 
    a#45#3#0: Box, 
    a#45#4#0: Box, 
    a#45#5#0: Box, 
    a#45#6#0: Box, 
    a#45#7#0: Box, 
    a#45#8#0: Box, 
    a#45#9#0: Box, 
    a#45#10#0: Box, 
    a#45#11#0: Box, 
    a#45#12#0: Box, 
    a#45#13#0: Box, 
    a#45#14#0: Box, 
    a#45#15#0: Box, 
    a#45#16#0: Box, 
    a#45#17#0: Box, 
    a#45#18#0: Box, 
    a#45#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#45#0#0, 
      a#45#1#0, 
      a#45#2#0, 
      a#45#3#0, 
      a#45#4#0, 
      a#45#5#0, 
      a#45#6#0, 
      a#45#7#0, 
      a#45#8#0, 
      a#45#9#0, 
      a#45#10#0, 
      a#45#11#0, 
      a#45#12#0, 
      a#45#13#0, 
      a#45#14#0, 
      a#45#15#0, 
      a#45#16#0, 
      a#45#17#0, 
      a#45#18#0, 
      a#45#19#0) } 
  BoxRank(a#45#14#0)
     < DtRank(#_System._tuple#20._#Make20(a#45#0#0, 
        a#45#1#0, 
        a#45#2#0, 
        a#45#3#0, 
        a#45#4#0, 
        a#45#5#0, 
        a#45#6#0, 
        a#45#7#0, 
        a#45#8#0, 
        a#45#9#0, 
        a#45#10#0, 
        a#45#11#0, 
        a#45#12#0, 
        a#45#13#0, 
        a#45#14#0, 
        a#45#15#0, 
        a#45#16#0, 
        a#45#17#0, 
        a#45#18#0, 
        a#45#19#0)));

function _System.Tuple20._15(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#46#0#0: Box, 
    a#46#1#0: Box, 
    a#46#2#0: Box, 
    a#46#3#0: Box, 
    a#46#4#0: Box, 
    a#46#5#0: Box, 
    a#46#6#0: Box, 
    a#46#7#0: Box, 
    a#46#8#0: Box, 
    a#46#9#0: Box, 
    a#46#10#0: Box, 
    a#46#11#0: Box, 
    a#46#12#0: Box, 
    a#46#13#0: Box, 
    a#46#14#0: Box, 
    a#46#15#0: Box, 
    a#46#16#0: Box, 
    a#46#17#0: Box, 
    a#46#18#0: Box, 
    a#46#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#46#0#0, 
      a#46#1#0, 
      a#46#2#0, 
      a#46#3#0, 
      a#46#4#0, 
      a#46#5#0, 
      a#46#6#0, 
      a#46#7#0, 
      a#46#8#0, 
      a#46#9#0, 
      a#46#10#0, 
      a#46#11#0, 
      a#46#12#0, 
      a#46#13#0, 
      a#46#14#0, 
      a#46#15#0, 
      a#46#16#0, 
      a#46#17#0, 
      a#46#18#0, 
      a#46#19#0) } 
  _System.Tuple20._15(#_System._tuple#20._#Make20(a#46#0#0, 
        a#46#1#0, 
        a#46#2#0, 
        a#46#3#0, 
        a#46#4#0, 
        a#46#5#0, 
        a#46#6#0, 
        a#46#7#0, 
        a#46#8#0, 
        a#46#9#0, 
        a#46#10#0, 
        a#46#11#0, 
        a#46#12#0, 
        a#46#13#0, 
        a#46#14#0, 
        a#46#15#0, 
        a#46#16#0, 
        a#46#17#0, 
        a#46#18#0, 
        a#46#19#0))
     == a#46#15#0);

// Inductive rank
axiom (forall a#47#0#0: Box, 
    a#47#1#0: Box, 
    a#47#2#0: Box, 
    a#47#3#0: Box, 
    a#47#4#0: Box, 
    a#47#5#0: Box, 
    a#47#6#0: Box, 
    a#47#7#0: Box, 
    a#47#8#0: Box, 
    a#47#9#0: Box, 
    a#47#10#0: Box, 
    a#47#11#0: Box, 
    a#47#12#0: Box, 
    a#47#13#0: Box, 
    a#47#14#0: Box, 
    a#47#15#0: Box, 
    a#47#16#0: Box, 
    a#47#17#0: Box, 
    a#47#18#0: Box, 
    a#47#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#47#0#0, 
      a#47#1#0, 
      a#47#2#0, 
      a#47#3#0, 
      a#47#4#0, 
      a#47#5#0, 
      a#47#6#0, 
      a#47#7#0, 
      a#47#8#0, 
      a#47#9#0, 
      a#47#10#0, 
      a#47#11#0, 
      a#47#12#0, 
      a#47#13#0, 
      a#47#14#0, 
      a#47#15#0, 
      a#47#16#0, 
      a#47#17#0, 
      a#47#18#0, 
      a#47#19#0) } 
  BoxRank(a#47#15#0)
     < DtRank(#_System._tuple#20._#Make20(a#47#0#0, 
        a#47#1#0, 
        a#47#2#0, 
        a#47#3#0, 
        a#47#4#0, 
        a#47#5#0, 
        a#47#6#0, 
        a#47#7#0, 
        a#47#8#0, 
        a#47#9#0, 
        a#47#10#0, 
        a#47#11#0, 
        a#47#12#0, 
        a#47#13#0, 
        a#47#14#0, 
        a#47#15#0, 
        a#47#16#0, 
        a#47#17#0, 
        a#47#18#0, 
        a#47#19#0)));

function _System.Tuple20._16(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#48#0#0: Box, 
    a#48#1#0: Box, 
    a#48#2#0: Box, 
    a#48#3#0: Box, 
    a#48#4#0: Box, 
    a#48#5#0: Box, 
    a#48#6#0: Box, 
    a#48#7#0: Box, 
    a#48#8#0: Box, 
    a#48#9#0: Box, 
    a#48#10#0: Box, 
    a#48#11#0: Box, 
    a#48#12#0: Box, 
    a#48#13#0: Box, 
    a#48#14#0: Box, 
    a#48#15#0: Box, 
    a#48#16#0: Box, 
    a#48#17#0: Box, 
    a#48#18#0: Box, 
    a#48#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#48#0#0, 
      a#48#1#0, 
      a#48#2#0, 
      a#48#3#0, 
      a#48#4#0, 
      a#48#5#0, 
      a#48#6#0, 
      a#48#7#0, 
      a#48#8#0, 
      a#48#9#0, 
      a#48#10#0, 
      a#48#11#0, 
      a#48#12#0, 
      a#48#13#0, 
      a#48#14#0, 
      a#48#15#0, 
      a#48#16#0, 
      a#48#17#0, 
      a#48#18#0, 
      a#48#19#0) } 
  _System.Tuple20._16(#_System._tuple#20._#Make20(a#48#0#0, 
        a#48#1#0, 
        a#48#2#0, 
        a#48#3#0, 
        a#48#4#0, 
        a#48#5#0, 
        a#48#6#0, 
        a#48#7#0, 
        a#48#8#0, 
        a#48#9#0, 
        a#48#10#0, 
        a#48#11#0, 
        a#48#12#0, 
        a#48#13#0, 
        a#48#14#0, 
        a#48#15#0, 
        a#48#16#0, 
        a#48#17#0, 
        a#48#18#0, 
        a#48#19#0))
     == a#48#16#0);

// Inductive rank
axiom (forall a#49#0#0: Box, 
    a#49#1#0: Box, 
    a#49#2#0: Box, 
    a#49#3#0: Box, 
    a#49#4#0: Box, 
    a#49#5#0: Box, 
    a#49#6#0: Box, 
    a#49#7#0: Box, 
    a#49#8#0: Box, 
    a#49#9#0: Box, 
    a#49#10#0: Box, 
    a#49#11#0: Box, 
    a#49#12#0: Box, 
    a#49#13#0: Box, 
    a#49#14#0: Box, 
    a#49#15#0: Box, 
    a#49#16#0: Box, 
    a#49#17#0: Box, 
    a#49#18#0: Box, 
    a#49#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#49#0#0, 
      a#49#1#0, 
      a#49#2#0, 
      a#49#3#0, 
      a#49#4#0, 
      a#49#5#0, 
      a#49#6#0, 
      a#49#7#0, 
      a#49#8#0, 
      a#49#9#0, 
      a#49#10#0, 
      a#49#11#0, 
      a#49#12#0, 
      a#49#13#0, 
      a#49#14#0, 
      a#49#15#0, 
      a#49#16#0, 
      a#49#17#0, 
      a#49#18#0, 
      a#49#19#0) } 
  BoxRank(a#49#16#0)
     < DtRank(#_System._tuple#20._#Make20(a#49#0#0, 
        a#49#1#0, 
        a#49#2#0, 
        a#49#3#0, 
        a#49#4#0, 
        a#49#5#0, 
        a#49#6#0, 
        a#49#7#0, 
        a#49#8#0, 
        a#49#9#0, 
        a#49#10#0, 
        a#49#11#0, 
        a#49#12#0, 
        a#49#13#0, 
        a#49#14#0, 
        a#49#15#0, 
        a#49#16#0, 
        a#49#17#0, 
        a#49#18#0, 
        a#49#19#0)));

function _System.Tuple20._17(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#50#0#0: Box, 
    a#50#1#0: Box, 
    a#50#2#0: Box, 
    a#50#3#0: Box, 
    a#50#4#0: Box, 
    a#50#5#0: Box, 
    a#50#6#0: Box, 
    a#50#7#0: Box, 
    a#50#8#0: Box, 
    a#50#9#0: Box, 
    a#50#10#0: Box, 
    a#50#11#0: Box, 
    a#50#12#0: Box, 
    a#50#13#0: Box, 
    a#50#14#0: Box, 
    a#50#15#0: Box, 
    a#50#16#0: Box, 
    a#50#17#0: Box, 
    a#50#18#0: Box, 
    a#50#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#50#0#0, 
      a#50#1#0, 
      a#50#2#0, 
      a#50#3#0, 
      a#50#4#0, 
      a#50#5#0, 
      a#50#6#0, 
      a#50#7#0, 
      a#50#8#0, 
      a#50#9#0, 
      a#50#10#0, 
      a#50#11#0, 
      a#50#12#0, 
      a#50#13#0, 
      a#50#14#0, 
      a#50#15#0, 
      a#50#16#0, 
      a#50#17#0, 
      a#50#18#0, 
      a#50#19#0) } 
  _System.Tuple20._17(#_System._tuple#20._#Make20(a#50#0#0, 
        a#50#1#0, 
        a#50#2#0, 
        a#50#3#0, 
        a#50#4#0, 
        a#50#5#0, 
        a#50#6#0, 
        a#50#7#0, 
        a#50#8#0, 
        a#50#9#0, 
        a#50#10#0, 
        a#50#11#0, 
        a#50#12#0, 
        a#50#13#0, 
        a#50#14#0, 
        a#50#15#0, 
        a#50#16#0, 
        a#50#17#0, 
        a#50#18#0, 
        a#50#19#0))
     == a#50#17#0);

// Inductive rank
axiom (forall a#51#0#0: Box, 
    a#51#1#0: Box, 
    a#51#2#0: Box, 
    a#51#3#0: Box, 
    a#51#4#0: Box, 
    a#51#5#0: Box, 
    a#51#6#0: Box, 
    a#51#7#0: Box, 
    a#51#8#0: Box, 
    a#51#9#0: Box, 
    a#51#10#0: Box, 
    a#51#11#0: Box, 
    a#51#12#0: Box, 
    a#51#13#0: Box, 
    a#51#14#0: Box, 
    a#51#15#0: Box, 
    a#51#16#0: Box, 
    a#51#17#0: Box, 
    a#51#18#0: Box, 
    a#51#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#51#0#0, 
      a#51#1#0, 
      a#51#2#0, 
      a#51#3#0, 
      a#51#4#0, 
      a#51#5#0, 
      a#51#6#0, 
      a#51#7#0, 
      a#51#8#0, 
      a#51#9#0, 
      a#51#10#0, 
      a#51#11#0, 
      a#51#12#0, 
      a#51#13#0, 
      a#51#14#0, 
      a#51#15#0, 
      a#51#16#0, 
      a#51#17#0, 
      a#51#18#0, 
      a#51#19#0) } 
  BoxRank(a#51#17#0)
     < DtRank(#_System._tuple#20._#Make20(a#51#0#0, 
        a#51#1#0, 
        a#51#2#0, 
        a#51#3#0, 
        a#51#4#0, 
        a#51#5#0, 
        a#51#6#0, 
        a#51#7#0, 
        a#51#8#0, 
        a#51#9#0, 
        a#51#10#0, 
        a#51#11#0, 
        a#51#12#0, 
        a#51#13#0, 
        a#51#14#0, 
        a#51#15#0, 
        a#51#16#0, 
        a#51#17#0, 
        a#51#18#0, 
        a#51#19#0)));

function _System.Tuple20._18(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#52#0#0: Box, 
    a#52#1#0: Box, 
    a#52#2#0: Box, 
    a#52#3#0: Box, 
    a#52#4#0: Box, 
    a#52#5#0: Box, 
    a#52#6#0: Box, 
    a#52#7#0: Box, 
    a#52#8#0: Box, 
    a#52#9#0: Box, 
    a#52#10#0: Box, 
    a#52#11#0: Box, 
    a#52#12#0: Box, 
    a#52#13#0: Box, 
    a#52#14#0: Box, 
    a#52#15#0: Box, 
    a#52#16#0: Box, 
    a#52#17#0: Box, 
    a#52#18#0: Box, 
    a#52#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#52#0#0, 
      a#52#1#0, 
      a#52#2#0, 
      a#52#3#0, 
      a#52#4#0, 
      a#52#5#0, 
      a#52#6#0, 
      a#52#7#0, 
      a#52#8#0, 
      a#52#9#0, 
      a#52#10#0, 
      a#52#11#0, 
      a#52#12#0, 
      a#52#13#0, 
      a#52#14#0, 
      a#52#15#0, 
      a#52#16#0, 
      a#52#17#0, 
      a#52#18#0, 
      a#52#19#0) } 
  _System.Tuple20._18(#_System._tuple#20._#Make20(a#52#0#0, 
        a#52#1#0, 
        a#52#2#0, 
        a#52#3#0, 
        a#52#4#0, 
        a#52#5#0, 
        a#52#6#0, 
        a#52#7#0, 
        a#52#8#0, 
        a#52#9#0, 
        a#52#10#0, 
        a#52#11#0, 
        a#52#12#0, 
        a#52#13#0, 
        a#52#14#0, 
        a#52#15#0, 
        a#52#16#0, 
        a#52#17#0, 
        a#52#18#0, 
        a#52#19#0))
     == a#52#18#0);

// Inductive rank
axiom (forall a#53#0#0: Box, 
    a#53#1#0: Box, 
    a#53#2#0: Box, 
    a#53#3#0: Box, 
    a#53#4#0: Box, 
    a#53#5#0: Box, 
    a#53#6#0: Box, 
    a#53#7#0: Box, 
    a#53#8#0: Box, 
    a#53#9#0: Box, 
    a#53#10#0: Box, 
    a#53#11#0: Box, 
    a#53#12#0: Box, 
    a#53#13#0: Box, 
    a#53#14#0: Box, 
    a#53#15#0: Box, 
    a#53#16#0: Box, 
    a#53#17#0: Box, 
    a#53#18#0: Box, 
    a#53#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#53#0#0, 
      a#53#1#0, 
      a#53#2#0, 
      a#53#3#0, 
      a#53#4#0, 
      a#53#5#0, 
      a#53#6#0, 
      a#53#7#0, 
      a#53#8#0, 
      a#53#9#0, 
      a#53#10#0, 
      a#53#11#0, 
      a#53#12#0, 
      a#53#13#0, 
      a#53#14#0, 
      a#53#15#0, 
      a#53#16#0, 
      a#53#17#0, 
      a#53#18#0, 
      a#53#19#0) } 
  BoxRank(a#53#18#0)
     < DtRank(#_System._tuple#20._#Make20(a#53#0#0, 
        a#53#1#0, 
        a#53#2#0, 
        a#53#3#0, 
        a#53#4#0, 
        a#53#5#0, 
        a#53#6#0, 
        a#53#7#0, 
        a#53#8#0, 
        a#53#9#0, 
        a#53#10#0, 
        a#53#11#0, 
        a#53#12#0, 
        a#53#13#0, 
        a#53#14#0, 
        a#53#15#0, 
        a#53#16#0, 
        a#53#17#0, 
        a#53#18#0, 
        a#53#19#0)));

function _System.Tuple20._19(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#54#0#0: Box, 
    a#54#1#0: Box, 
    a#54#2#0: Box, 
    a#54#3#0: Box, 
    a#54#4#0: Box, 
    a#54#5#0: Box, 
    a#54#6#0: Box, 
    a#54#7#0: Box, 
    a#54#8#0: Box, 
    a#54#9#0: Box, 
    a#54#10#0: Box, 
    a#54#11#0: Box, 
    a#54#12#0: Box, 
    a#54#13#0: Box, 
    a#54#14#0: Box, 
    a#54#15#0: Box, 
    a#54#16#0: Box, 
    a#54#17#0: Box, 
    a#54#18#0: Box, 
    a#54#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#54#0#0, 
      a#54#1#0, 
      a#54#2#0, 
      a#54#3#0, 
      a#54#4#0, 
      a#54#5#0, 
      a#54#6#0, 
      a#54#7#0, 
      a#54#8#0, 
      a#54#9#0, 
      a#54#10#0, 
      a#54#11#0, 
      a#54#12#0, 
      a#54#13#0, 
      a#54#14#0, 
      a#54#15#0, 
      a#54#16#0, 
      a#54#17#0, 
      a#54#18#0, 
      a#54#19#0) } 
  _System.Tuple20._19(#_System._tuple#20._#Make20(a#54#0#0, 
        a#54#1#0, 
        a#54#2#0, 
        a#54#3#0, 
        a#54#4#0, 
        a#54#5#0, 
        a#54#6#0, 
        a#54#7#0, 
        a#54#8#0, 
        a#54#9#0, 
        a#54#10#0, 
        a#54#11#0, 
        a#54#12#0, 
        a#54#13#0, 
        a#54#14#0, 
        a#54#15#0, 
        a#54#16#0, 
        a#54#17#0, 
        a#54#18#0, 
        a#54#19#0))
     == a#54#19#0);

// Inductive rank
axiom (forall a#55#0#0: Box, 
    a#55#1#0: Box, 
    a#55#2#0: Box, 
    a#55#3#0: Box, 
    a#55#4#0: Box, 
    a#55#5#0: Box, 
    a#55#6#0: Box, 
    a#55#7#0: Box, 
    a#55#8#0: Box, 
    a#55#9#0: Box, 
    a#55#10#0: Box, 
    a#55#11#0: Box, 
    a#55#12#0: Box, 
    a#55#13#0: Box, 
    a#55#14#0: Box, 
    a#55#15#0: Box, 
    a#55#16#0: Box, 
    a#55#17#0: Box, 
    a#55#18#0: Box, 
    a#55#19#0: Box :: 
  { #_System._tuple#20._#Make20(a#55#0#0, 
      a#55#1#0, 
      a#55#2#0, 
      a#55#3#0, 
      a#55#4#0, 
      a#55#5#0, 
      a#55#6#0, 
      a#55#7#0, 
      a#55#8#0, 
      a#55#9#0, 
      a#55#10#0, 
      a#55#11#0, 
      a#55#12#0, 
      a#55#13#0, 
      a#55#14#0, 
      a#55#15#0, 
      a#55#16#0, 
      a#55#17#0, 
      a#55#18#0, 
      a#55#19#0) } 
  BoxRank(a#55#19#0)
     < DtRank(#_System._tuple#20._#Make20(a#55#0#0, 
        a#55#1#0, 
        a#55#2#0, 
        a#55#3#0, 
        a#55#4#0, 
        a#55#5#0, 
        a#55#6#0, 
        a#55#7#0, 
        a#55#8#0, 
        a#55#9#0, 
        a#55#10#0, 
        a#55#11#0, 
        a#55#12#0, 
        a#55#13#0, 
        a#55#14#0, 
        a#55#15#0, 
        a#55#16#0, 
        a#55#17#0, 
        a#55#18#0, 
        a#55#19#0)));

// Depth-one case-split function
function $IsA#_System.Tuple20(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple20(d) } 
  $IsA#_System.Tuple20(d) ==> _System.Tuple20.___hMake20_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#20$T0: Ty, 
    _System._tuple#20$T1: Ty, 
    _System._tuple#20$T2: Ty, 
    _System._tuple#20$T3: Ty, 
    _System._tuple#20$T4: Ty, 
    _System._tuple#20$T5: Ty, 
    _System._tuple#20$T6: Ty, 
    _System._tuple#20$T7: Ty, 
    _System._tuple#20$T8: Ty, 
    _System._tuple#20$T9: Ty, 
    _System._tuple#20$T10: Ty, 
    _System._tuple#20$T11: Ty, 
    _System._tuple#20$T12: Ty, 
    _System._tuple#20$T13: Ty, 
    _System._tuple#20$T14: Ty, 
    _System._tuple#20$T15: Ty, 
    _System._tuple#20$T16: Ty, 
    _System._tuple#20$T17: Ty, 
    _System._tuple#20$T18: Ty, 
    _System._tuple#20$T19: Ty, 
    d: DatatypeType :: 
  { _System.Tuple20.___hMake20_q(d), $Is(d, 
      Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19)) } 
  $Is(d, 
      Tclass._System.Tuple20(_System._tuple#20$T0, 
        _System._tuple#20$T1, 
        _System._tuple#20$T2, 
        _System._tuple#20$T3, 
        _System._tuple#20$T4, 
        _System._tuple#20$T5, 
        _System._tuple#20$T6, 
        _System._tuple#20$T7, 
        _System._tuple#20$T8, 
        _System._tuple#20$T9, 
        _System._tuple#20$T10, 
        _System._tuple#20$T11, 
        _System._tuple#20$T12, 
        _System._tuple#20$T13, 
        _System._tuple#20$T14, 
        _System._tuple#20$T15, 
        _System._tuple#20$T16, 
        _System._tuple#20$T17, 
        _System._tuple#20$T18, 
        _System._tuple#20$T19))
     ==> _System.Tuple20.___hMake20_q(d));

// Datatype extensional equality declaration
function _System.Tuple20#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#20._#Make20
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple20#Equal(a, b) } 
  _System.Tuple20#Equal(a, b)
     <==> _System.Tuple20._0(a) == _System.Tuple20._0(b)
       && _System.Tuple20._1(a) == _System.Tuple20._1(b)
       && _System.Tuple20._2(a) == _System.Tuple20._2(b)
       && _System.Tuple20._3(a) == _System.Tuple20._3(b)
       && _System.Tuple20._4(a) == _System.Tuple20._4(b)
       && _System.Tuple20._5(a) == _System.Tuple20._5(b)
       && _System.Tuple20._6(a) == _System.Tuple20._6(b)
       && _System.Tuple20._7(a) == _System.Tuple20._7(b)
       && _System.Tuple20._8(a) == _System.Tuple20._8(b)
       && _System.Tuple20._9(a) == _System.Tuple20._9(b)
       && _System.Tuple20._10(a) == _System.Tuple20._10(b)
       && _System.Tuple20._11(a) == _System.Tuple20._11(b)
       && _System.Tuple20._12(a) == _System.Tuple20._12(b)
       && _System.Tuple20._13(a) == _System.Tuple20._13(b)
       && _System.Tuple20._14(a) == _System.Tuple20._14(b)
       && _System.Tuple20._15(a) == _System.Tuple20._15(b)
       && _System.Tuple20._16(a) == _System.Tuple20._16(b)
       && _System.Tuple20._17(a) == _System.Tuple20._17(b)
       && _System.Tuple20._18(a) == _System.Tuple20._18(b)
       && _System.Tuple20._19(a) == _System.Tuple20._19(b));

// Datatype extensionality axiom: _System._tuple#20
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple20#Equal(a, b) } 
  _System.Tuple20#Equal(a, b) <==> a == b);

const unique class._System.Tuple20: ClassName;

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

const unique class._module.__default: ClassName;

procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 3 == $FunctionContextHeight;
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
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.List() : Ty
uses {
// Tclass._module.List Tag
axiom Tag(Tclass._module.List()) == Tagclass._module.List
   && TagFamily(Tclass._module.List()) == tytagFamily$List;
}

const unique Tagclass._module.List: TyTag;

// Box/unbox axiom for Tclass._module.List
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.List()) } 
  $IsBox(bx, Tclass._module.List())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.List()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: DatatypeType
     where $Is(a#0, Tclass._module.List()) && $IsAlloc(a#0, Tclass._module.List(), $Heap);
  var b#0: DatatypeType
     where $Is(b#0, Tclass._module.List()) && $IsAlloc(b#0, Tclass._module.List(), $Heap);
  var c#0: DatatypeType
     where $Is(c#0, Tclass._System.Tuple2(Tclass._module.List(), Tclass._module.List()))
       && $IsAlloc(c#0, Tclass._System.Tuple2(Tclass._module.List(), Tclass._module.List()), $Heap);
  var d#0: DatatypeType
     where $Is(d#0, Tclass._System.Tuple2(Tclass._module.List(), Tclass._module.List()))
       && $IsAlloc(d#0, Tclass._System.Tuple2(Tclass._module.List(), Tclass._module.List()), $Heap);
  var e#0: DatatypeType
     where $Is(e#0, Tclass._System.Tuple0())
       && $IsAlloc(e#0, Tclass._System.Tuple0(), $Heap);
  var f#0: DatatypeType
     where $Is(f#0, 
        Tclass._System.Tuple20(TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt))
       && $IsAlloc(f#0, 
        Tclass._System.Tuple20(TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt, 
          TInt), 
        $Heap);
  var u#0: DatatypeType
     where $Is(u#0, Tclass._module.List()) && $IsAlloc(u#0, Tclass._module.List(), $Heap);
  var ##m#0: int;
  var ##n#0: int;
  var s#0: int;
  var ##xs#0: DatatypeType;
  var xs##0: DatatypeType;
  var prefix##0: Seq;
  var ##xs#1: DatatypeType;
  var _v0#0: int;
  var _v1#0: int;
  var $rhs##0: int;
  var $rhs##1: int;
  var six##0: int;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(7,9)
    assume true;
    assume true;
    a#0 := Lit(#_module.List.Nil());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(8,9)
    assume true;
    assume true;
    b#0 := #_module.List.Cons(LitInt(5), a#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(9,9)
    assume true;
    assume true;
    c#0 := #_System._tuple#2._#Make2($Box(a#0), $Box(b#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(10,9)
    assume true;
    assume _System.Tuple2.___hMake2_q(c#0);
    assume _System.Tuple2.___hMake2_q(c#0);
    assume _System.Tuple2.___hMake2_q(c#0) && _System.Tuple2.___hMake2_q(c#0);
    d#0 := #_System._tuple#2._#Make2(_System.Tuple2._1(c#0), _System.Tuple2._0(c#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(11,9)
    assume true;
    assume true;
    e#0 := Lit(#_System._tuple#0._#Make0());
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(12,9)
    assume true;
    assume true;
    f#0 := Lit(#_System._tuple#20._#Make20($Box(LitInt(1)), 
        $Box(LitInt(2)), 
        $Box(LitInt(3)), 
        $Box(LitInt(4)), 
        $Box(LitInt(5)), 
        $Box(LitInt(6)), 
        $Box(LitInt(7)), 
        $Box(LitInt(8)), 
        $Box(LitInt(9)), 
        $Box(LitInt(10)), 
        $Box(LitInt(11)), 
        $Box(LitInt(12)), 
        $Box(LitInt(13)), 
        $Box(LitInt(14)), 
        $Box(LitInt(15)), 
        $Box(LitInt(16)), 
        $Box(LitInt(17)), 
        $Box(LitInt(18)), 
        $Box(LitInt(19)), 
        $Box(LitInt(20))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(13,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(14,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(15,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(16,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(17,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(18,3)
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(20,3)
    assert {:id "id10"} _module.List.Cons_q(b#0);
    assume true;
    assume true;
    assert {:id "id11"} _module.List.Cons_q(b#0);
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(22,9)
    assume true;
    assert {:id "id12"} $Is(LitInt(0), Tclass._System.nat());
    ##m#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##m#0, Tclass._System.nat(), $Heap);
    assert {:id "id13"} $Is(LitInt(7), Tclass._System.nat());
    ##n#0 := LitInt(7);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assert {:id "id14"} {:subsumption 0} ##m#0 <= ##n#0;
    assume ##m#0 <= ##n#0;
    assume _module.__default.Up#canCall(LitInt(0), LitInt(7));
    assume _module.__default.Up#canCall(LitInt(0), LitInt(7));
    u#0 := Lit(_module.__default.Up($LS($LZ), LitInt(0), LitInt(7)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(23,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(24,9)
    assume true;
    ##xs#0 := u#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
    assume _module.__default.Sum#canCall(u#0);
    assume _module.__default.Sum#canCall(u#0);
    s#0 := _module.__default.Sum($LS($LZ), u#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(25,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    xs##0 := u#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##0 := Lit(Seq#Empty(): Seq);
    call {:id "id17"} Call$$_module.__default.PrintSum(xs##0, prefix##0);
    // TrCallStmt: After ProcessCallStmt
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(26,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(27,5)
    assume true;
    ##xs#1 := u#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#1, Tclass._module.List(), $Heap);
    assume _module.__default.SumAgain#canCall(u#0);
    assume _module.__default.SumAgain#canCall(u#0);
    s#0 := _module.__default.SumAgain($LS($LZ), u#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(28,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(30,7)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id19"} Call$$_module.__default.CoDt();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(31,11)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id20"} Call$$_module.__default.AllBerry();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(32,23)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id21"} Call$$_module.__default.TestConflictingNames();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(33,13)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id22"} Call$$_module.__default.TestModule();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(35,31)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    six##0 := LitInt(6);
    call {:id "id23"} $rhs##0, $rhs##1 := Call$$_module.__default.UpdateRegression(six##0);
    // TrCallStmt: After ProcessCallStmt
    _v0#0 := $rhs##0;
    _v1#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(37,23)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id26"} Call$$_module.__default.TestGhostDestructors();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(39,29)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id27"} Call$$_module.__default.TestNumericDestructorNames();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(40,43)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id28"} Call$$TypeDescriptorsInCovariantPositions.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module._default.Up
function _module.__default.Up($ly: LayerType, m#0: int, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.Up
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, m#0: int, n#0: int :: 
    { _module.__default.Up($ly, m#0, n#0) } 
    _module.__default.Up#canCall(m#0, n#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= m#0
           && LitInt(0) <= n#0
           && m#0 <= n#0)
       ==> $Is(_module.__default.Up($ly, m#0, n#0), Tclass._module.List()));
// definition axiom for _module.__default.Up (revealed)
axiom {:id "id29"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, m#0: int, n#0: int :: 
    { _module.__default.Up($LS($ly), m#0, n#0) } 
    _module.__default.Up#canCall(m#0, n#0)
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= m#0
           && LitInt(0) <= n#0
           && m#0 <= n#0)
       ==> (m#0 != n#0 ==> _module.__default.Up#canCall(m#0 + 1, n#0))
         && _module.__default.Up($LS($ly), m#0, n#0)
           == (if m#0 == n#0
             then #_module.List.Nil()
             else #_module.List.Cons(m#0, _module.__default.Up($ly, m#0 + 1, n#0))));
// definition axiom for _module.__default.Up for all literals (revealed)
axiom {:id "id30"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, m#0: int, n#0: int :: 
    {:weight 3} { _module.__default.Up($LS($ly), LitInt(m#0), LitInt(n#0)) } 
    _module.__default.Up#canCall(LitInt(m#0), LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          LitInt(0) <= m#0
           && LitInt(0) <= n#0
           && LitInt(m#0) <= LitInt(n#0))
       ==> (LitInt(m#0) != LitInt(n#0)
           ==> _module.__default.Up#canCall(LitInt(m#0 + 1), LitInt(n#0)))
         && _module.__default.Up($LS($ly), LitInt(m#0), LitInt(n#0))
           == (if LitInt(m#0) == LitInt(n#0)
             then #_module.List.Nil()
             else #_module.List.Cons(LitInt(m#0), Lit(_module.__default.Up($LS($ly), LitInt(m#0 + 1), LitInt(n#0))))));
}

function _module.__default.Up#canCall(m#0: int, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, m#0: int, n#0: int :: 
  { _module.__default.Up($LS($ly), m#0, n#0) } 
  _module.__default.Up($LS($ly), m#0, n#0) == _module.__default.Up($ly, m#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, m#0: int, n#0: int :: 
  { _module.__default.Up(AsFuelBottom($ly), m#0, n#0) } 
  _module.__default.Up($ly, m#0, n#0) == _module.__default.Up($LZ, m#0, n#0));

function _module.__default.Up#requires(LayerType, int, int) : bool;

// #requires axiom for _module.__default.Up
axiom (forall $ly: LayerType, m#0: int, n#0: int :: 
  { _module.__default.Up#requires($ly, m#0, n#0) } 
  LitInt(0) <= m#0 && LitInt(0) <= n#0
     ==> _module.__default.Up#requires($ly, m#0, n#0) == (m#0 <= n#0));

procedure {:verboseName "Up (well-formedness)"} CheckWellformed$$_module.__default.Up(m#0: int where LitInt(0) <= m#0, n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Up (well-formedness)"} CheckWellformed$$_module.__default.Up(m#0: int, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##m#0: int;
  var ##n#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id31"} m#0 <= n#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Up($LS($LZ), m#0, n#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (m#0 == n#0)
        {
            assume {:id "id32"} _module.__default.Up($LS($LZ), m#0, n#0) == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Up($LS($LZ), m#0, n#0), Tclass._module.List());
            return;
        }
        else
        {
            assert {:id "id33"} $Is(m#0 + 1, Tclass._System.nat());
            ##m#0 := m#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##m#0, Tclass._System.nat(), $Heap);
            ##n#0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id34"} {:subsumption 0} ##m#0 <= ##n#0;
            assume ##m#0 <= ##n#0;
            assert {:id "id35"} 0 <= n#0 - m#0 || ##n#0 - ##m#0 == n#0 - m#0;
            assert {:id "id36"} ##n#0 - ##m#0 < n#0 - m#0;
            assume _module.__default.Up#canCall(m#0 + 1, n#0);
            assume {:id "id37"} _module.__default.Up($LS($LZ), m#0, n#0)
               == #_module.List.Cons(m#0, _module.__default.Up($LS($LZ), m#0 + 1, n#0));
            assume _module.__default.Up#canCall(m#0 + 1, n#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Up($LS($LZ), m#0, n#0), Tclass._module.List());
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.Sum
function _module.__default.Sum($ly: LayerType, xs#0: DatatypeType) : int
uses {
// definition axiom for _module.__default.Sum (revealed)
axiom {:id "id38"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.Sum($LS($ly), xs#0) } 
    _module.__default.Sum#canCall(xs#0)
         || (1 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var tail#1 := _module.List.tail(xs#0); _module.__default.Sum#canCall(tail#1)))
         && _module.__default.Sum($LS($ly), xs#0)
           == (if _module.List.Nil_q(xs#0)
             then 0
             else (var tail#0 := _module.List.tail(xs#0); 
              (var x#0 := _module.List.head(xs#0); x#0 + _module.__default.Sum($ly, tail#0)))));
// definition axiom for _module.__default.Sum for all literals (revealed)
axiom {:id "id39"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.Sum($LS($ly), Lit(xs#0)) } 
    _module.__default.Sum#canCall(Lit(xs#0))
         || (1 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var tail#3 := Lit(_module.List.tail(Lit(xs#0))); 
            _module.__default.Sum#canCall(tail#3)))
         && _module.__default.Sum($LS($ly), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then 0
             else (var tail#2 := Lit(_module.List.tail(Lit(xs#0))); 
              (var x#2 := LitInt(_module.List.head(Lit(xs#0))); 
                LitInt(x#2 + _module.__default.Sum($LS($ly), tail#2))))));
}

function _module.__default.Sum#canCall(xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.Sum($LS($ly), xs#0) } 
  _module.__default.Sum($LS($ly), xs#0) == _module.__default.Sum($ly, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.Sum(AsFuelBottom($ly), xs#0) } 
  _module.__default.Sum($ly, xs#0) == _module.__default.Sum($LZ, xs#0));

function _module.__default.Sum#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.Sum
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.Sum#requires($ly, xs#0) } 
  $Is(xs#0, Tclass._module.List())
     ==> _module.__default.Sum#requires($ly, xs#0) == true);

procedure {:verboseName "Sum (well-formedness)"} CheckWellformed$$_module.__default.Sum(xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sum (well-formedness)"} CheckWellformed$$_module.__default.Sum(xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: int;
  var let#1#0#0: int;
  var ##xs#0: DatatypeType;


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
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id46"} _module.__default.Sum($LS($LZ), xs#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Sum($LS($LZ), xs#0), TInt);
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc tail#Z#0;
            assume {:id "id40"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id41"} tail#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id42"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id43"} x#Z#0 == let#1#0#0;
            ##xs#0 := tail#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
            assert {:id "id44"} DtRank(##xs#0) < DtRank(xs#0);
            assume _module.__default.Sum#canCall(tail#Z#0);
            assume {:id "id45"} _module.__default.Sum($LS($LZ), xs#0)
               == x#Z#0 + _module.__default.Sum($LS($LZ), tail#Z#0);
            assume _module.__default.Sum#canCall(tail#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Sum($LS($LZ), xs#0), TInt);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.SumAgain
function _module.__default.SumAgain($ly: LayerType, xs#0: DatatypeType) : int
uses {
// definition axiom for _module.__default.SumAgain (revealed)
axiom {:id "id47"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.SumAgain($LS($ly), xs#0) } 
    _module.__default.SumAgain#canCall(xs#0)
         || (1 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> (var tail#1 := _module.List.tail(xs#0); 
            _module.__default.SumAgain#canCall(tail#1)))
         && _module.__default.SumAgain($LS($ly), xs#0)
           == (var r#0 := (if _module.List.Nil_q(xs#0)
                 then 0
                 else (var tail#0 := _module.List.tail(xs#0); 
                  (var x#0 := _module.List.head(xs#0); 
                    x#0 + _module.__default.SumAgain($ly, tail#0)))); 
            r#0));
// definition axiom for _module.__default.SumAgain for all literals (revealed)
axiom {:id "id48"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.SumAgain($LS($ly), Lit(xs#0)) } 
    _module.__default.SumAgain#canCall(Lit(xs#0))
         || (1 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> (var tail#4 := Lit(_module.List.tail(Lit(xs#0))); 
            _module.__default.SumAgain#canCall(tail#4)))
         && _module.__default.SumAgain($LS($ly), Lit(xs#0))
           == (var r#1 := (if _module.List.Nil_q(Lit(xs#0))
                 then 0
                 else (var tail#3 := Lit(_module.List.tail(Lit(xs#0))); 
                  (var x#3 := LitInt(_module.List.head(Lit(xs#0))); 
                    LitInt(x#3 + _module.__default.SumAgain($LS($ly), tail#3))))); 
            r#1));
}

function _module.__default.SumAgain#canCall(xs#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.SumAgain($LS($ly), xs#0) } 
  _module.__default.SumAgain($LS($ly), xs#0)
     == _module.__default.SumAgain($ly, xs#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.SumAgain(AsFuelBottom($ly), xs#0) } 
  _module.__default.SumAgain($ly, xs#0) == _module.__default.SumAgain($LZ, xs#0));

function _module.__default.SumAgain#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.__default.SumAgain
axiom (forall $ly: LayerType, xs#0: DatatypeType :: 
  { _module.__default.SumAgain#requires($ly, xs#0) } 
  $Is(xs#0, Tclass._module.List())
     ==> _module.__default.SumAgain#requires($ly, xs#0) == true);

procedure {:verboseName "SumAgain (well-formedness)"} CheckWellformed$$_module.__default.SumAgain(xs#0: DatatypeType where $Is(xs#0, Tclass._module.List()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SumAgain (well-formedness)"} CheckWellformed$$_module.__default.SumAgain(xs#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var r#Z#0: int;
  var let#0#0#0: int;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var tail#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var x#Z#0: int;
  var let#2#0#0: int;
  var ##xs#0: DatatypeType;


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
        havoc r#Z#0;
        if (xs#0 == #_module.List.Nil())
        {
            assume {:id "id55"} let#0#0#0 == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, TInt);
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc tail#Z#0;
            assume {:id "id49"} let#1#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.List());
            assume {:id "id50"} tail#Z#0 == let#1#0#0;
            havoc x#Z#0;
            assume {:id "id51"} let#2#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TInt);
            assume {:id "id52"} x#Z#0 == let#2#0#0;
            ##xs#0 := tail#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
            assert {:id "id53"} DtRank(##xs#0) < DtRank(xs#0);
            assume _module.__default.SumAgain#canCall(tail#Z#0);
            assume {:id "id54"} let#0#0#0 == x#Z#0 + _module.__default.SumAgain($LS($LZ), tail#Z#0);
            assume _module.__default.SumAgain#canCall(tail#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, TInt);
        }
        else
        {
            assume false;
        }

        assume {:id "id56"} r#Z#0 == let#0#0#0;
        assume {:id "id57"} _module.__default.SumAgain($LS($LZ), xs#0) == r#Z#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.SumAgain($LS($LZ), xs#0), TInt);
        return;

        assume false;
    }
}



procedure {:verboseName "PrintSum (well-formedness)"} CheckWellFormed$$_module.__default.PrintSum(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0), 
    prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintSum (call)"} Call$$_module.__default.PrintSum(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0), 
    prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintSum (correctness)"} Impl$$_module.__default.PrintSum(xs#0: DatatypeType
       where $Is(xs#0, Tclass._module.List())
         && $IsAlloc(xs#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(xs#0), 
    prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintSum (correctness)"} Impl$$_module.__default.PrintSum(xs#0: DatatypeType, prefix#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var tail#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var x#0_0: int;
  var let#0_1#0#0: int;
  var xs##0_0: DatatypeType;
  var prefix##0_0: Seq;

    // AddMethodImpl: PrintSum, Impl$$_module.__default.PrintSum
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (xs#0 == #_module.List.Nil())
    {
    }
    else if (xs#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.List())
           && $IsAlloc(_mcc#1#0_0, Tclass._module.List(), $Heap);
        havoc tail#0_0;
        assume $Is(tail#0_0, Tclass._module.List())
           && $IsAlloc(tail#0_0, Tclass._module.List(), $Heap);
        assume {:id "id58"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List());
        assume {:id "id59"} tail#0_0 == let#0_0#0#0;
        havoc x#0_0;
        assume {:id "id60"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TInt);
        assume {:id "id61"} x#0_0 == let#0_1#0#0;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(67,5)
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(68,13)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        xs##0_0 := tail#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        prefix##0_0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(43))), 
            $Box(char#FromInt(32))));
        assert {:id "id62"} DtRank(xs##0_0) < DtRank(xs#0)
           || (DtRank(xs##0_0) == DtRank(xs#0) && Seq#Rank(prefix##0_0) < Seq#Rank(prefix#0));
        call {:id "id63"} Call$$_module.__default.PrintSum(xs##0_0, prefix##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "CoDt (well-formedness)"} CheckWellFormed$$_module.__default.CoDt();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CoDt (call)"} Call$$_module.__default.CoDt();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CoDt (correctness)"} Impl$$_module.__default.CoDt() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Stream() : Ty
uses {
// Tclass._module.Stream Tag
axiom Tag(Tclass._module.Stream()) == Tagclass._module.Stream
   && TagFamily(Tclass._module.Stream()) == tytagFamily$Stream;
}

const unique Tagclass._module.Stream: TyTag;

// Box/unbox axiom for Tclass._module.Stream
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Stream()) } 
  $IsBox(bx, Tclass._module.Stream())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Stream()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CoDt (correctness)"} Impl$$_module.__default.CoDt() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: DatatypeType
     where $Is(s#0, Tclass._module.Stream())
       && $IsAlloc(s#0, Tclass._module.Stream(), $Heap);
  var ##n#0: int;
  var ##b#0: bool;
  var l#0: DatatypeType
     where $Is(l#0, Tclass._module.List()) && $IsAlloc(l#0, Tclass._module.List(), $Heap);
  var ##s#0: DatatypeType;
  var ##n#1: int;
  var s'#0: DatatypeType
     where $Is(s'#0, Tclass._module.Stream())
       && $IsAlloc(s'#0, Tclass._module.Stream(), $Heap);

    // AddMethodImpl: CoDt, Impl$$_module.__default.CoDt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(72,9)
    assume true;
    ##n#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, TInt, $Heap);
    ##b#0 := Lit(true);
    // assume allocatedness for argument to function
    assume $IsAlloc(##b#0, TBool, $Heap);
    assume _module.__default.CoUp#canCall(LitInt(0), Lit(true));
    assume _module.Stream.Next_q(Lit(_module.__default.CoUp($LS($LZ), LitInt(0), Lit(true))));
    assume _module.__default.CoUp#canCall(LitInt(0), Lit(true));
    s#0 := Lit(_module.__default.CoUp($LS($LZ), LitInt(0), Lit(true)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(73,9)
    assume true;
    ##s#0 := s#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##s#0, Tclass._module.Stream(), $Heap);
    assert {:id "id65"} $Is(LitInt(4), Tclass._System.nat());
    ##n#1 := LitInt(4);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.ToList#canCall(s#0, LitInt(4));
    assume _module.__default.ToList#canCall(s#0, LitInt(4));
    l#0 := _module.__default.ToList($LS($LZ), s#0, LitInt(4));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(74,3)
    assume true;
    assume true;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(75,3)
    assume true;
    if (_module.List.Cons_q(l#0))
    {
        push;
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(76,5)
        assert {:id "id67"} _module.List.Cons_q(l#0);
        assume true;
        assume true;
        assert {:id "id68"} _module.List.Cons_q(l#0);
        assume true;
        assume true;
        pop;
    }
    else
    {
    }

    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(78,3)
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(79,10)
    assume true;
    assume true;
    s'#0 := #_module.Stream.Next(LitInt(-20), s#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(80,3)
    assume true;
    assume true;
}



// function declaration for _module._default.CoUp
function _module.__default.CoUp($ly: LayerType, n#0: int, b#0: bool) : DatatypeType
uses {
// consequence axiom for _module.__default.CoUp
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, b#0: bool :: 
    { _module.__default.CoUp($ly, n#0, b#0) } 
    _module.__default.CoUp#canCall(n#0, b#0) || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.CoUp($ly, n#0, b#0), Tclass._module.Stream()));
// definition axiom for _module.__default.CoUp (revealed)
axiom {:id "id70"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, b#0: bool :: 
    { _module.__default.CoUp($LS($ly), n#0, b#0) } 
    _module.__default.CoUp#canCall(n#0, b#0) || 1 < $FunctionContextHeight
       ==> (b#0 ==> _module.__default.CoUp#canCall(n#0, Lit(false)))
         && (!b#0 ==> _module.__default.CoUp#canCall(n#0 + 1, Lit(true)))
         && _module.__default.CoUp($LS($ly), n#0, b#0)
           == (if b#0
             then _module.__default.CoUp($ly, n#0, Lit(false))
             else #_module.Stream.Next(n#0, _module.__default.CoUp($ly, n#0 + 1, Lit(true)))));
}

function _module.__default.CoUp#canCall(n#0: int, b#0: bool) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int, b#0: bool :: 
  { _module.__default.CoUp($LS($ly), n#0, b#0) } 
  _module.__default.CoUp($LS($ly), n#0, b#0)
     == _module.__default.CoUp($ly, n#0, b#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int, b#0: bool :: 
  { _module.__default.CoUp(AsFuelBottom($ly), n#0, b#0) } 
  _module.__default.CoUp($ly, n#0, b#0) == _module.__default.CoUp($LZ, n#0, b#0));

function _module.__default.CoUp#requires(LayerType, int, bool) : bool;

// #requires axiom for _module.__default.CoUp
axiom (forall $ly: LayerType, n#0: int, b#0: bool :: 
  { _module.__default.CoUp#requires($ly, n#0, b#0) } 
  _module.__default.CoUp#requires($ly, n#0, b#0) == true);

procedure {:verboseName "CoUp (well-formedness)"} CheckWellformed$$_module.__default.CoUp(n#0: int, b#0: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CoUp (well-formedness)"} CheckWellformed$$_module.__default.CoUp(n#0: int, b#0: bool)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##b#0: bool;
  var ##n#1: int;
  var ##b#1: bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.CoUp($LS($LZ), n#0, b#0), Tclass._module.Stream());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (b#0)
        {
            ##n#0 := n#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            ##b#0 := Lit(false);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, TBool, $Heap);
            assert {:id "id71"} 0 <= LitInt(1) || LitInt(1) == LitInt(1);
            assert {:id "id72"} 0 <= n#0 || LitInt(1) < LitInt(1) || ##n#0 == n#0;
            assert {:id "id73"} LitInt(1) < LitInt(1)
               || (LitInt(1) == LitInt(1) && (##n#0 < n#0 || (##n#0 == n#0 && !##b#0 && b#0)));
            assume _module.__default.CoUp#canCall(n#0, Lit(false));
            assume _module.Stream.Next_q(_module.__default.CoUp($LS($LZ), n#0, Lit(false)));
            assume {:id "id74"} _module.__default.CoUp($LS($LZ), n#0, b#0)
               == _module.__default.CoUp($LS($LZ), n#0, Lit(false));
            assume _module.__default.CoUp#canCall(n#0, Lit(false));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.CoUp($LS($LZ), n#0, b#0), Tclass._module.Stream());
            return;
        }
        else
        {
            ##n#1 := n#0 + 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, TInt, $Heap);
            ##b#1 := Lit(true);
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#1, TBool, $Heap);
            assume _module.__default.CoUp#canCall(n#0 + 1, Lit(true));
            assume _module.Stream.Next_q(_module.__default.CoUp($LS($LZ), n#0 + 1, Lit(true)));
            assume {:id "id75"} _module.__default.CoUp($LS($LZ), n#0, b#0)
               == #_module.Stream.Next(n#0, _module.__default.CoUp($LS($LZ), n#0 + 1, Lit(true)));
            assume _module.__default.CoUp#canCall(n#0 + 1, Lit(true));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.CoUp($LS($LZ), n#0, b#0), Tclass._module.Stream());
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.ToList
function _module.__default.ToList($ly: LayerType, s#0: DatatypeType, n#0: int) : DatatypeType
uses {
// consequence axiom for _module.__default.ToList
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    { _module.__default.ToList($ly, s#0, n#0) } 
    _module.__default.ToList#canCall(s#0, n#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream())
           && LitInt(0) <= n#0)
       ==> $Is(_module.__default.ToList($ly, s#0, n#0), Tclass._module.List()));
// definition axiom for _module.__default.ToList (revealed)
axiom {:id "id76"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    { _module.__default.ToList($LS($ly), s#0, n#0) } 
    _module.__default.ToList#canCall(s#0, n#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream())
           && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0)
           ==> _module.Stream.Next_q(s#0)
             && 
            _module.Stream.Next_q(s#0)
             && _module.__default.ToList#canCall(_module.Stream.stail(s#0), n#0 - 1))
         && _module.__default.ToList($LS($ly), s#0, n#0)
           == (if n#0 == LitInt(0)
             then #_module.List.Nil()
             else #_module.List.Cons(_module.Stream.shead(s#0), 
              _module.__default.ToList($ly, _module.Stream.stail(s#0), n#0 - 1))));
// definition axiom for _module.__default.ToList for decreasing-related literals (revealed)
axiom {:id "id77"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    {:weight 3} { _module.__default.ToList($LS($ly), s#0, LitInt(n#0)) } 
    _module.__default.ToList#canCall(s#0, LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream())
           && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.Stream.Next_q(s#0)
             && 
            _module.Stream.Next_q(s#0)
             && _module.__default.ToList#canCall(_module.Stream.stail(s#0), LitInt(n#0 - 1)))
         && _module.__default.ToList($LS($ly), s#0, LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then #_module.List.Nil()
             else #_module.List.Cons(_module.Stream.shead(s#0), 
              _module.__default.ToList($LS($ly), _module.Stream.stail(s#0), LitInt(n#0 - 1)))));
// definition axiom for _module.__default.ToList for all literals (revealed)
axiom {:id "id78"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
    {:weight 3} { _module.__default.ToList($LS($ly), Lit(s#0), LitInt(n#0)) } 
    _module.__default.ToList#canCall(Lit(s#0), LitInt(n#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(s#0, Tclass._module.Stream())
           && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.Stream.Next_q(Lit(s#0))
             && 
            _module.Stream.Next_q(Lit(s#0))
             && _module.__default.ToList#canCall(Lit(_module.Stream.stail(Lit(s#0))), LitInt(n#0 - 1)))
         && _module.__default.ToList($LS($ly), Lit(s#0), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then #_module.List.Nil()
             else #_module.List.Cons(LitInt(_module.Stream.shead(Lit(s#0))), 
              Lit(_module.__default.ToList($LS($ly), Lit(_module.Stream.stail(Lit(s#0))), LitInt(n#0 - 1))))));
}

function _module.__default.ToList#canCall(s#0: DatatypeType, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.ToList($LS($ly), s#0, n#0) } 
  _module.__default.ToList($LS($ly), s#0, n#0)
     == _module.__default.ToList($ly, s#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.ToList(AsFuelBottom($ly), s#0, n#0) } 
  _module.__default.ToList($ly, s#0, n#0)
     == _module.__default.ToList($LZ, s#0, n#0));

function _module.__default.ToList#requires(LayerType, DatatypeType, int) : bool;

// #requires axiom for _module.__default.ToList
axiom (forall $ly: LayerType, s#0: DatatypeType, n#0: int :: 
  { _module.__default.ToList#requires($ly, s#0, n#0) } 
  $Is(s#0, Tclass._module.Stream()) && LitInt(0) <= n#0
     ==> _module.__default.ToList#requires($ly, s#0, n#0) == true);

procedure {:verboseName "ToList (well-formedness)"} CheckWellformed$$_module.__default.ToList(s#0: DatatypeType where $Is(s#0, Tclass._module.Stream()), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ToList (well-formedness)"} CheckWellformed$$_module.__default.ToList(s#0: DatatypeType, n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##s#0: DatatypeType;
  var ##n#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.ToList($LS($LZ), s#0, n#0), Tclass._module.List());
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id79"} _module.__default.ToList($LS($LZ), s#0, n#0) == Lit(#_module.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ToList($LS($LZ), s#0, n#0), Tclass._module.List());
            return;
        }
        else
        {
            assume _module.Stream.Next_q(s#0);
            assume _module.Stream.Next_q(s#0);
            ##s#0 := _module.Stream.stail(s#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass._module.Stream(), $Heap);
            assert {:id "id80"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id81"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id82"} ##n#0 < n#0;
            assume _module.__default.ToList#canCall(_module.Stream.stail(s#0), n#0 - 1);
            assume {:id "id83"} _module.__default.ToList($LS($LZ), s#0, n#0)
               == #_module.List.Cons(_module.Stream.shead(s#0), 
                _module.__default.ToList($LS($LZ), _module.Stream.stail(s#0), n#0 - 1));
            assume _module.Stream.Next_q(s#0)
               && 
              _module.Stream.Next_q(s#0)
               && _module.__default.ToList#canCall(_module.Stream.stail(s#0), n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.ToList($LS($LZ), s#0, n#0), Tclass._module.List());
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.IsRed
function _module.__default.IsRed(b#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.IsRed (revealed)
axiom {:id "id84"} 1 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    { _module.__default.IsRed(b#0) } 
    _module.__default.IsRed#canCall(b#0)
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.Berry()))
       ==> $IsA#_module.Berry(b#0)
         && _module.__default.IsRed(b#0)
           == !_module.Berry#Equal(b#0, #_module.Berry.Hjortron()));
// definition axiom for _module.__default.IsRed for all literals (revealed)
axiom {:id "id85"} 1 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsRed(Lit(b#0)) } 
    _module.__default.IsRed#canCall(Lit(b#0))
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.Berry()))
       ==> $IsA#_module.Berry(Lit(b#0))
         && _module.__default.IsRed(Lit(b#0))
           == !_module.Berry#Equal(b#0, #_module.Berry.Hjortron()));
}

function _module.__default.IsRed#canCall(b#0: DatatypeType) : bool;

function Tclass._module.Berry() : Ty
uses {
// Tclass._module.Berry Tag
axiom Tag(Tclass._module.Berry()) == Tagclass._module.Berry
   && TagFamily(Tclass._module.Berry()) == tytagFamily$Berry;
}

const unique Tagclass._module.Berry: TyTag;

// Box/unbox axiom for Tclass._module.Berry
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Berry()) } 
  $IsBox(bx, Tclass._module.Berry())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Berry()));

function _module.__default.IsRed#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.IsRed
axiom (forall b#0: DatatypeType :: 
  { _module.__default.IsRed#requires(b#0) } 
  $Is(b#0, Tclass._module.Berry())
     ==> _module.__default.IsRed#requires(b#0) == true);

procedure {:verboseName "IsRed (well-formedness)"} CheckWellformed$$_module.__default.IsRed(b#0: DatatypeType where $Is(b#0, Tclass._module.Berry()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.IsCoRed
function _module.__default.IsCoRed(b#0: DatatypeType) : bool
uses {
// definition axiom for _module.__default.IsCoRed (revealed)
axiom {:id "id87"} 1 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    { _module.__default.IsCoRed(b#0) } 
    _module.__default.IsCoRed#canCall(b#0)
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.CoBerry()))
       ==> $IsA#_module.CoBerry(b#0)
         && _module.__default.IsCoRed(b#0)
           == $Eq#_module.CoBerry($LS($LS($LZ)), b#0, #_module.CoBerry.Hjortron()));
// definition axiom for _module.__default.IsCoRed for all literals (revealed)
axiom {:id "id88"} 1 <= $FunctionContextHeight
   ==> (forall b#0: DatatypeType :: 
    {:weight 3} { _module.__default.IsCoRed(Lit(b#0)) } 
    _module.__default.IsCoRed#canCall(Lit(b#0))
         || (1 < $FunctionContextHeight && $Is(b#0, Tclass._module.CoBerry()))
       ==> $IsA#_module.CoBerry(Lit(b#0))
         && _module.__default.IsCoRed(Lit(b#0))
           == $Eq#_module.CoBerry($LS($LS($LZ)), b#0, #_module.CoBerry.Hjortron()));
}

function _module.__default.IsCoRed#canCall(b#0: DatatypeType) : bool;

function Tclass._module.CoBerry() : Ty
uses {
// Tclass._module.CoBerry Tag
axiom Tag(Tclass._module.CoBerry()) == Tagclass._module.CoBerry
   && TagFamily(Tclass._module.CoBerry()) == tytagFamily$CoBerry;
}

const unique Tagclass._module.CoBerry: TyTag;

// Box/unbox axiom for Tclass._module.CoBerry
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CoBerry()) } 
  $IsBox(bx, Tclass._module.CoBerry())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.CoBerry()));

function _module.__default.IsCoRed#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.IsCoRed
axiom (forall b#0: DatatypeType :: 
  { _module.__default.IsCoRed#requires(b#0) } 
  $Is(b#0, Tclass._module.CoBerry())
     ==> _module.__default.IsCoRed#requires(b#0) == true);

procedure {:verboseName "IsCoRed (well-formedness)"} CheckWellformed$$_module.__default.IsCoRed(b#0: DatatypeType where $Is(b#0, Tclass._module.CoBerry()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AllBerry (well-formedness)"} CheckWellFormed$$_module.__default.AllBerry();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AllBerry (call)"} Call$$_module.__default.AllBerry();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AllBerry (correctness)"} Impl$$_module.__default.AllBerry() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.NatPlus() : Ty
uses {
// Tclass._module.NatPlus Tag
axiom Tag(Tclass._module.NatPlus()) == Tagclass._module.NatPlus
   && TagFamily(Tclass._module.NatPlus()) == tytagFamily$NatPlus;
}

const unique Tagclass._module.NatPlus: TyTag;

// Box/unbox axiom for Tclass._module.NatPlus
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatPlus()) } 
  $IsBox(bx, Tclass._module.NatPlus())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.NatPlus()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AllBerry (correctness)"} Impl$$_module.__default.AllBerry() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(Tclass._module.Berry()))
       && $IsAlloc(s#0, TSet(Tclass._module.Berry()), $Heap);
  var b#0: DatatypeType;
  var ##b#0: DatatypeType;
  var c#0: DatatypeType
     where $Is(c#0, Tclass._module.CoBerry())
       && $IsAlloc(c#0, Tclass._module.CoBerry(), $Heap);
  var c#1: DatatypeType;
  var ##b#1: DatatypeType;
  var n#0: DatatypeType
     where $Is(n#0, Tclass._module.NatPlus())
       && $IsAlloc(n#0, Tclass._module.NatPlus(), $Heap);

    // AddMethodImpl: AllBerry, Impl$$_module.__default.AllBerry
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(109,9)
    assume true;
    // Begin Comprehension WF check
    havoc b#0;
    if ($Is(b#0, Tclass._module.Berry()) && $IsAlloc(b#0, Tclass._module.Berry(), $Heap))
    {
        ##b#0 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#0, Tclass._module.Berry(), $Heap);
        assume _module.__default.IsRed#canCall(b#0);
        if (_module.__default.IsRed(b#0))
        {
        }
    }

    // End Comprehension WF check
    assume (forall b#1: DatatypeType :: 
      { _module.__default.IsRed(b#1) } 
      $Is(b#1, Tclass._module.Berry()) ==> _module.__default.IsRed#canCall(b#1));
    s#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._module.Berry())
           && _module.__default.IsRed($Unbox($y#0): DatatypeType)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(110,3)
    assume true;
    assume true;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(111,9)
    havoc c#1;
    if ($Is(c#1, Tclass._module.CoBerry())
       && $IsAlloc(c#1, Tclass._module.CoBerry(), $Heap))
    {
        ##b#1 := c#1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##b#1, Tclass._module.CoBerry(), $Heap);
        assume _module.__default.IsCoRed#canCall(c#1);
        assume _module.__default.IsCoRed#canCall(c#1);
    }

    assert {:id "id91"} ($Is(Lit(#_module.CoBerry.Hallon()), Tclass._module.CoBerry())
         && Lit(_module.__default.IsCoRed(Lit(#_module.CoBerry.Hallon()))))
       || 
      ($Is(Lit(#_module.CoBerry.Hjortron()), Tclass._module.CoBerry())
         && Lit(_module.__default.IsCoRed(Lit(#_module.CoBerry.Hjortron()))))
       || 
      ($Is(Lit(#_module.CoBerry.Jordgubb()), Tclass._module.CoBerry())
         && Lit(_module.__default.IsCoRed(Lit(#_module.CoBerry.Jordgubb()))))
       || 
      ($Is(Lit(#_module.CoBerry.Smultron()), Tclass._module.CoBerry())
         && Lit(_module.__default.IsCoRed(Lit(#_module.CoBerry.Smultron()))))
       || (exists $as#c0#0: DatatypeType :: 
        $Is($as#c0#0, Tclass._module.CoBerry()) && _module.__default.IsCoRed($as#c0#0));
    havoc c#0;
    assume {:id "id92"} _module.__default.IsCoRed(c#0);
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(112,3)
    assume true;
    assume true;
    assume true;
    assume true;
    assume $IsA#_module.CoBerry(c#0);
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(113,9)
    assume true;
    assume _module.__default.Inf#canCall();
    assume _module.__default.Inf#canCall();
    n#0 := Lit(_module.__default.Inf($LS($LZ)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(114,3)
    assume $IsA#_module.NatPlus(n#0);
    assume true;
}



// function declaration for _module._default.Inf
function _module.__default.Inf($ly: LayerType) : DatatypeType
uses {
// consequence axiom for _module.__default.Inf
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.Inf($ly) } 
    _module.__default.Inf#canCall() || 1 < $FunctionContextHeight
       ==> $Is(_module.__default.Inf($ly), Tclass._module.NatPlus()));
// definition axiom for _module.__default.Inf (revealed)
axiom {:id "id94"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType :: 
    { _module.__default.Inf($LS($ly)) } 
    _module.__default.Inf#canCall() || 1 < $FunctionContextHeight
       ==> _module.__default.Inf#canCall()
         && _module.__default.Inf($LS($ly))
           == Lit(#_module.NatPlus.Succ(Lit(_module.__default.Inf($ly)))));
}

function _module.__default.Inf#canCall() : bool;

// layer synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.Inf($LS($ly)) } 
  _module.__default.Inf($LS($ly)) == _module.__default.Inf($ly));

// fuel synonym axiom
axiom (forall $ly: LayerType :: 
  { _module.__default.Inf(AsFuelBottom($ly)) } 
  _module.__default.Inf($ly) == _module.__default.Inf($LZ));

function _module.__default.Inf#requires(LayerType) : bool;

// #requires axiom for _module.__default.Inf
axiom (forall $ly: LayerType :: 
  { _module.__default.Inf#requires($ly) } 
  _module.__default.Inf#requires($ly) == true);

procedure {:verboseName "Inf (well-formedness)"} CheckWellformed$$_module.__default.Inf();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestConflictingNames (well-formedness)"} CheckWellFormed$$_module.__default.TestConflictingNames();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestConflictingNames (call)"} Call$$_module.__default.TestConflictingNames();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestConflictingNames (correctness)"} Impl$$_module.__default.TestConflictingNames() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.ConflictingNames() : Ty
uses {
// Tclass._module.ConflictingNames Tag
axiom Tag(Tclass._module.ConflictingNames()) == Tagclass._module.ConflictingNames
   && TagFamily(Tclass._module.ConflictingNames()) == tytagFamily$ConflictingNames;
}

const unique Tagclass._module.ConflictingNames: TyTag;

// Box/unbox axiom for Tclass._module.ConflictingNames
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.ConflictingNames()) } 
  $IsBox(bx, Tclass._module.ConflictingNames())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.ConflictingNames()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestConflictingNames (correctness)"} Impl$$_module.__default.TestConflictingNames() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: DatatypeType
     where $Is(x#0, Tclass._module.ConflictingNames())
       && $IsAlloc(x#0, Tclass._module.ConflictingNames(), $Heap);

    // AddMethodImpl: TestConflictingNames, Impl$$_module.__default.TestConflictingNames
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(126,9)
    assume true;
    assume true;
    x#0 := Lit(#_module.ConflictingNames.ConflictingNames1(LitInt(42), 
        Lit(char#FromInt(113)), 
        Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(104))), $Box(char#FromInt(101))), 
                $Box(char#FromInt(108))), 
              $Box(char#FromInt(108))), 
            $Box(char#FromInt(111))))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(127,3)
    assert {:id "id97"} _module.ConflictingNames.ConflictingNames1_q(x#0);
    assume true;
    assume true;
    assert {:id "id98"} _module.ConflictingNames.ConflictingNames1_q(x#0);
    assume true;
    assume true;
    assume _module.ConflictingNames.ConflictingNames1_q(x#0)
       || _module.ConflictingNames.ConflictingNames2_q(x#0);
    assume _module.ConflictingNames.ConflictingNames1_q(x#0)
       || _module.ConflictingNames.ConflictingNames2_q(x#0);
    assume true;
}



procedure {:verboseName "TestModule (well-formedness)"} CheckWellFormed$$_module.__default.TestModule();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestModule (call)"} Call$$_module.__default.TestModule();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestModule (correctness)"} Impl$$_module.__default.TestModule() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestModule (correctness)"} Impl$$_module.__default.TestModule() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x##0: DatatypeType;

    // AddMethodImpl: TestModule, Impl$$_module.__default.TestModule
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(135,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := Lit(#ModuleX.OptionInt.Some(LitInt(1701)));
    call {:id "id99"} Call$$_module.__default.PrintMaybe(x##0);
    // TrCallStmt: After ProcessCallStmt
}



function Tclass.ModuleX.OptionInt() : Ty
uses {
// Tclass.ModuleX.OptionInt Tag
axiom Tag(Tclass.ModuleX.OptionInt()) == Tagclass.ModuleX.OptionInt
   && TagFamily(Tclass.ModuleX.OptionInt()) == tytagFamily$OptionInt;
}

const unique Tagclass.ModuleX.OptionInt: TyTag;

// Box/unbox axiom for Tclass.ModuleX.OptionInt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.ModuleX.OptionInt()) } 
  $IsBox(bx, Tclass.ModuleX.OptionInt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.ModuleX.OptionInt()));

procedure {:verboseName "PrintMaybe (well-formedness)"} CheckWellFormed$$_module.__default.PrintMaybe(x#0: DatatypeType
       where $Is(x#0, Tclass.ModuleX.OptionInt())
         && $IsAlloc(x#0, Tclass.ModuleX.OptionInt(), $Heap)
         && $IsA#ModuleX.OptionInt(x#0));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintMaybe (call)"} Call$$_module.__default.PrintMaybe(x#0: DatatypeType
       where $Is(x#0, Tclass.ModuleX.OptionInt())
         && $IsAlloc(x#0, Tclass.ModuleX.OptionInt(), $Heap)
         && $IsA#ModuleX.OptionInt(x#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintMaybe (correctness)"} Impl$$_module.__default.PrintMaybe(x#0: DatatypeType
       where $Is(x#0, Tclass.ModuleX.OptionInt())
         && $IsAlloc(x#0, Tclass.ModuleX.OptionInt(), $Heap)
         && $IsA#ModuleX.OptionInt(x#0))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UpdateRegression (well-formedness)"} CheckWellFormed$$_module.__default.UpdateRegression(six#0: int) returns (eight#0: int, ten#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "UpdateRegression (call)"} Call$$_module.__default.UpdateRegression(six#0: int) returns (eight#0: int, ten#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "UpdateRegression (correctness)"} Impl$$_module.__default.UpdateRegression(six#0: int) returns (eight#0: int, ten#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Record() : Ty
uses {
// Tclass._module.Record Tag
axiom Tag(Tclass._module.Record()) == Tagclass._module.Record
   && TagFamily(Tclass._module.Record()) == tytagFamily$Record;
}

const unique Tagclass._module.Record: TyTag;

// Box/unbox axiom for Tclass._module.Record
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Record()) } 
  $IsBox(bx, Tclass._module.Record())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Record()));

procedure {:verboseName "TestGhostDestructors (well-formedness)"} CheckWellFormed$$_module.__default.TestGhostDestructors();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestGhostDestructors (call)"} Call$$_module.__default.TestGhostDestructors();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestGhostDestructors (correctness)"} Impl$$_module.__default.TestGhostDestructors() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.R() : Ty
uses {
// Tclass._module.R Tag
axiom Tag(Tclass._module.R()) == Tagclass._module.R
   && TagFamily(Tclass._module.R()) == tytagFamily$R;
}

const unique Tagclass._module.R: TyTag;

// Box/unbox axiom for Tclass._module.R
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.R()) } 
  $IsBox(bx, Tclass._module.R())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.R()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestGhostDestructors (correctness)"} Impl$$_module.__default.TestGhostDestructors() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: DatatypeType
     where $Is(a#0, Tclass._module.R()) && $IsAlloc(a#0, Tclass._module.R(), $Heap);
  var b#0: DatatypeType
     where $Is(b#0, Tclass._module.R()) && $IsAlloc(b#0, Tclass._module.R(), $Heap);
  var dt_update_tmp#0#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var dt_update#x#0#Z#0: int;
  var let#1#0#0: int;
  var c#0: DatatypeType
     where $Is(c#0, Tclass._module.R()) && $IsAlloc(c#0, Tclass._module.R(), $Heap);
  var dt_update_tmp#1#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var dt_update#x#1#Z#0: int;
  var let#3#0#0: int;
  var d#0: DatatypeType
     where $Is(d#0, Tclass._module.R()) && $IsAlloc(d#0, Tclass._module.R(), $Heap);
  var dt_update_tmp#2#Z#0: DatatypeType;
  var let#4#0#0: DatatypeType;
  var dt_update#x#2#Z#0: int;
  var let#5#0#0: int;
  var e#0: DatatypeType
     where $Is(e#0, Tclass._module.R()) && $IsAlloc(e#0, Tclass._module.R(), $Heap);
  var dt_update_tmp#3#Z#0: DatatypeType;
  var let#6#0#0: DatatypeType;

    // AddMethodImpl: TestGhostDestructors, Impl$$_module.__default.TestGhostDestructors
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(171,9)
    assume true;
    assume true;
    a#0 := Lit(#_module.R.R(LitInt(10), LitInt(20)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(172,9)
    assume true;
    havoc dt_update_tmp#0#Z#0;
    assume {:id "id123"} let#0#0#0 == a#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#0#0#0, Tclass._module.R());
    assume {:id "id124"} dt_update_tmp#0#Z#0 == let#0#0#0;
    havoc dt_update#x#0#Z#0;
    assume _module.R.R_q(a#0);
    assume {:id "id125"} let#1#0#0 == _module.R.x(a#0) + 1;
    assume _module.R.R_q(a#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#1#0#0, TInt);
    assume {:id "id126"} dt_update#x#0#Z#0 == let#1#0#0;
    assume _module.R.R_q(dt_update_tmp#0#Z#0);
    assume (var dt_update_tmp#0#0 := a#0; 
      _module.R.R_q(a#0) && _module.R.R_q(dt_update_tmp#0#0));
    b#0 := (var dt_update_tmp#0#0 := a#0; 
      (var dt_update#x#0#0 := _module.R.x(a#0) + 1; 
        #_module.R.R(dt_update#x#0#0, _module.R.g(dt_update_tmp#0#0))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(173,9)
    assume true;
    havoc dt_update_tmp#1#Z#0;
    assume {:id "id128"} let#2#0#0 == b#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#2#0#0, Tclass._module.R());
    assume {:id "id129"} dt_update_tmp#1#Z#0 == let#2#0#0;
    havoc dt_update#x#1#Z#0;
    assume _module.R.R_q(b#0);
    assume {:id "id130"} let#3#0#0 == _module.R.x(b#0) + 1;
    assume _module.R.R_q(b#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#3#0#0, TInt);
    assume {:id "id131"} dt_update#x#1#Z#0 == let#3#0#0;
    assume _module.R.R_q(b#0);
    assume _module.R.R_q(b#0) && _module.R.R_q(b#0);
    c#0 := (var dt_update_tmp#1#0 := b#0; 
      (var dt_update#x#1#0 := _module.R.x(b#0) + 1; 
        #_module.R.R(dt_update#x#1#0, _module.R.g(b#0) + 1)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(174,9)
    assume true;
    havoc dt_update_tmp#2#Z#0;
    assume {:id "id133"} let#4#0#0 == c#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#4#0#0, Tclass._module.R());
    assume {:id "id134"} dt_update_tmp#2#Z#0 == let#4#0#0;
    havoc dt_update#x#2#Z#0;
    assume _module.R.R_q(c#0);
    assume {:id "id135"} let#5#0#0 == _module.R.x(c#0) + 1;
    assume _module.R.R_q(c#0);
    // CheckWellformedWithResult: any expression
    assume $Is(let#5#0#0, TInt);
    assume {:id "id136"} dt_update#x#2#Z#0 == let#5#0#0;
    assume _module.R.R_q(c#0);
    assume _module.R.R_q(c#0) && _module.R.R_q(c#0);
    d#0 := (var dt_update_tmp#2#0 := c#0; 
      (var dt_update#x#2#0 := _module.R.x(c#0) + 1; 
        #_module.R.R(dt_update#x#2#0, _module.R.g(c#0) + 1)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(175,9)
    assume true;
    havoc dt_update_tmp#3#Z#0;
    assume {:id "id138"} let#6#0#0 == d#0;
    assume true;
    // CheckWellformedWithResult: any expression
    assume $Is(let#6#0#0, Tclass._module.R());
    assume {:id "id139"} dt_update_tmp#3#Z#0 == let#6#0#0;
    assume _module.R.R_q(dt_update_tmp#3#Z#0);
    assume _module.R.R_q(d#0);
    assume (var dt_update_tmp#3#0 := d#0; 
      _module.R.R_q(dt_update_tmp#3#0) && _module.R.R_q(d#0));
    e#0 := (var dt_update_tmp#3#0 := d#0; 
      #_module.R.R(_module.R.x(dt_update_tmp#3#0), _module.R.g(d#0) + 1));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(177,3)
    assume $IsA#_module.R(e#0);
    assert {:id "id141"} _module.R#Equal(e#0, #_module.R.R(LitInt(13), LitInt(23)));
    // ----- expect statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/Datatype.dfy(178,3)
    assume _module.R.R_q(e#0);
    assume _module.R.R_q(e#0);
    if (_module.R.x(e#0) != LitInt(13))
    {
        assume true;
        assume false;
    }
}



procedure {:verboseName "TestNumericDestructorNames (well-formedness)"} CheckWellFormed$$_module.__default.TestNumericDestructorNames();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestNumericDestructorNames (call)"} Call$$_module.__default.TestNumericDestructorNames();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestNumericDestructorNames (correctness)"} Impl$$_module.__default.TestNumericDestructorNames() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.NumericDestructorNames() : Ty
uses {
// Tclass._module.NumericDestructorNames Tag
axiom Tag(Tclass._module.NumericDestructorNames())
     == Tagclass._module.NumericDestructorNames
   && TagFamily(Tclass._module.NumericDestructorNames())
     == tytagFamily$NumericDestructorNames;
}

const unique Tagclass._module.NumericDestructorNames: TyTag;

// Box/unbox axiom for Tclass._module.NumericDestructorNames
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NumericDestructorNames()) } 
  $IsBox(bx, Tclass._module.NumericDestructorNames())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.NumericDestructorNames()));

// Constructor function declaration
function #_module.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.List.Nil()) == ##_module.List.Nil;
// Constructor $Is
axiom $Is(#_module.List.Nil(), Tclass._module.List());
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

// Constructor function declaration
function #_module.List.Cons(int, DatatypeType) : DatatypeType;

const unique ##_module.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: int, a#4#1#0: DatatypeType :: 
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
     ==> (exists a#5#0#0: int, a#5#1#0: DatatypeType :: 
      d == #_module.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall a#6#0#0: int, a#6#1#0: DatatypeType :: 
  { $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List()) } 
  $Is(#_module.List.Cons(a#6#0#0, a#6#1#0), Tclass._module.List())
     <==> $Is(a#6#0#0, TInt) && $Is(a#6#1#0, Tclass._module.List()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.List.head(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(), $h)
     ==> $IsAlloc(_module.List.head(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.List.tail(d), Tclass._module.List(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(), $h)
     ==> $IsAlloc(_module.List.tail(d), Tclass._module.List(), $h));

// Constructor literal
axiom (forall a#7#0#0: int, a#7#1#0: DatatypeType :: 
  { #_module.List.Cons(LitInt(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.List.Cons(LitInt(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.List.Cons(a#7#0#0, a#7#1#0)));

function _module.List.head(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#8#0#0: int, a#8#1#0: DatatypeType :: 
  { #_module.List.Cons(a#8#0#0, a#8#1#0) } 
  _module.List.head(#_module.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

function _module.List.tail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: int, a#9#1#0: DatatypeType :: 
  { #_module.List.Cons(a#9#0#0, a#9#1#0) } 
  _module.List.tail(#_module.List.Cons(a#9#0#0, a#9#1#0)) == a#9#1#0);

// Inductive rank
axiom (forall a#10#0#0: int, a#10#1#0: DatatypeType :: 
  { #_module.List.Cons(a#10#0#0, a#10#1#0) } 
  DtRank(a#10#1#0) < DtRank(#_module.List.Cons(a#10#0#0, a#10#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.List(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.List())
     ==> $IsAlloc(d, Tclass._module.List(), $h));

// Depth-one case-split function
function $IsA#_module.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.List(d) } 
  $IsA#_module.List(d) ==> _module.List.Nil_q(d) || _module.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.List.Cons_q(d), $Is(d, Tclass._module.List()) } 
    { _module.List.Nil_q(d), $Is(d, Tclass._module.List()) } 
  $Is(d, Tclass._module.List())
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
       <==> _module.List.head(a) == _module.List.head(b)
         && _module.List#Equal(_module.List.tail(a), _module.List.tail(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

// Constructor function declaration
function #_module.Stream.Next(int, DatatypeType) : DatatypeType;

const unique ##_module.Stream.Next: DtCtorId
uses {
// Constructor identifier
axiom (forall a#11#0#0: int, a#11#1#0: DatatypeType :: 
  { #_module.Stream.Next(a#11#0#0, a#11#1#0) } 
  DatatypeCtorId(#_module.Stream.Next(a#11#0#0, a#11#1#0))
     == ##_module.Stream.Next);
}

function _module.Stream.Next_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Stream.Next_q(d) } 
  _module.Stream.Next_q(d) <==> DatatypeCtorId(d) == ##_module.Stream.Next);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Stream.Next_q(d) } 
  _module.Stream.Next_q(d)
     ==> (exists a#12#0#0: int, a#12#1#0: DatatypeType :: 
      d == #_module.Stream.Next(a#12#0#0, a#12#1#0)));

// Constructor $Is
axiom (forall a#13#0#0: int, a#13#1#0: DatatypeType :: 
  { $Is(#_module.Stream.Next(a#13#0#0, a#13#1#0), Tclass._module.Stream()) } 
  $Is(#_module.Stream.Next(a#13#0#0, a#13#1#0), Tclass._module.Stream())
     <==> $Is(a#13#0#0, TInt) && $Is(a#13#1#0, Tclass._module.Stream()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Stream.shead(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Next_q(d)
       && $IsAlloc(d, Tclass._module.Stream(), $h)
     ==> $IsAlloc(_module.Stream.shead(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Stream.stail(d), Tclass._module.Stream(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Stream.Next_q(d)
       && $IsAlloc(d, Tclass._module.Stream(), $h)
     ==> $IsAlloc(_module.Stream.stail(d), Tclass._module.Stream(), $h));

function _module.Stream.shead(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#14#0#0: int, a#14#1#0: DatatypeType :: 
  { #_module.Stream.Next(a#14#0#0, a#14#1#0) } 
  _module.Stream.shead(#_module.Stream.Next(a#14#0#0, a#14#1#0)) == a#14#0#0);

function _module.Stream.stail(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#15#0#0: int, a#15#1#0: DatatypeType :: 
  { #_module.Stream.Next(a#15#0#0, a#15#1#0) } 
  _module.Stream.stail(#_module.Stream.Next(a#15#0#0, a#15#1#0)) == a#15#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Stream(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Stream())
     ==> $IsAlloc(d, Tclass._module.Stream(), $h));

// Depth-one case-split function
function $IsA#_module.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Stream(d) } 
  $IsA#_module.Stream(d) ==> _module.Stream.Next_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Stream.Next_q(d), $Is(d, Tclass._module.Stream()) } 
  $Is(d, Tclass._module.Stream()) ==> _module.Stream.Next_q(d));

function $Eq#_module.Stream(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Stream($LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream()) && $Is(d1, Tclass._module.Stream())
     ==> ($Eq#_module.Stream($LS(ly), d0, d1)
       <==> _module.Stream.Next_q(d0)
         && _module.Stream.Next_q(d1)
         && (_module.Stream.Next_q(d0) && _module.Stream.Next_q(d1)
           ==> _module.Stream.shead(d0) == _module.Stream.shead(d1)
             && $Eq#_module.Stream(ly, _module.Stream.stail(d0), _module.Stream.stail(d1)))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Stream($LS(ly), d0, d1) } 
  $Eq#_module.Stream($LS(ly), d0, d1) <==> $Eq#_module.Stream(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Stream($LS(ly), d0, d1) } 
  $Eq#_module.Stream($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#_module.Stream(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Stream()) && $Is(d1, Tclass._module.Stream())
     ==> ($PrefixEq#_module.Stream(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.Stream.Next_q(d0)
             && _module.Stream.Next_q(d1)
             && (_module.Stream.Next_q(d0) && _module.Stream.Next_q(d1)
               ==> _module.Stream.shead(d0) == _module.Stream.shead(d1)
                 && $PrefixEq#_module.Stream(ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.Stream.stail(d0), 
                  _module.Stream.stail(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k) ==> $Eq#_module.Stream(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Stream(k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Stream(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Stream($LS(ly), d0, d1) } 
  $Eq#_module.Stream($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Stream(k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Stream(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Stream($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Stream(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k ==> $PrefixEq#_module.Stream(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Stream($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#_module.Stream(k, $LS(ly), d0, d1), $PrefixEq#_module.Stream(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m) && $PrefixEq#_module.Stream(m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Stream(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.Stream(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#_module.Stream(k, $LS(ly), d0, d1));

const unique class._module.Stream: ClassName;

// Constructor function declaration
function #_module.Berry.Smultron() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Berry.Smultron()) == ##_module.Berry.Smultron;
// Constructor $Is
axiom $Is(#_module.Berry.Smultron(), Tclass._module.Berry());
// Constructor literal
axiom #_module.Berry.Smultron() == Lit(#_module.Berry.Smultron());
}

const unique ##_module.Berry.Smultron: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Berry.Smultron()) == ##_module.Berry.Smultron;
}

function _module.Berry.Smultron_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Berry.Smultron_q(d) } 
  _module.Berry.Smultron_q(d) <==> DatatypeCtorId(d) == ##_module.Berry.Smultron);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Berry.Smultron_q(d) } 
  _module.Berry.Smultron_q(d) ==> d == #_module.Berry.Smultron());

// Constructor function declaration
function #_module.Berry.Jordgubb() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Berry.Jordgubb()) == ##_module.Berry.Jordgubb;
// Constructor $Is
axiom $Is(#_module.Berry.Jordgubb(), Tclass._module.Berry());
// Constructor literal
axiom #_module.Berry.Jordgubb() == Lit(#_module.Berry.Jordgubb());
}

const unique ##_module.Berry.Jordgubb: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Berry.Jordgubb()) == ##_module.Berry.Jordgubb;
}

function _module.Berry.Jordgubb_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Berry.Jordgubb_q(d) } 
  _module.Berry.Jordgubb_q(d) <==> DatatypeCtorId(d) == ##_module.Berry.Jordgubb);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Berry.Jordgubb_q(d) } 
  _module.Berry.Jordgubb_q(d) ==> d == #_module.Berry.Jordgubb());

// Constructor function declaration
function #_module.Berry.Hjortron() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Berry.Hjortron()) == ##_module.Berry.Hjortron;
// Constructor $Is
axiom $Is(#_module.Berry.Hjortron(), Tclass._module.Berry());
// Constructor literal
axiom #_module.Berry.Hjortron() == Lit(#_module.Berry.Hjortron());
}

const unique ##_module.Berry.Hjortron: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Berry.Hjortron()) == ##_module.Berry.Hjortron;
}

function _module.Berry.Hjortron_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Berry.Hjortron_q(d) } 
  _module.Berry.Hjortron_q(d) <==> DatatypeCtorId(d) == ##_module.Berry.Hjortron);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Berry.Hjortron_q(d) } 
  _module.Berry.Hjortron_q(d) ==> d == #_module.Berry.Hjortron());

// Constructor function declaration
function #_module.Berry.Hallon() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Berry.Hallon()) == ##_module.Berry.Hallon;
// Constructor $Is
axiom $Is(#_module.Berry.Hallon(), Tclass._module.Berry());
// Constructor literal
axiom #_module.Berry.Hallon() == Lit(#_module.Berry.Hallon());
}

const unique ##_module.Berry.Hallon: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Berry.Hallon()) == ##_module.Berry.Hallon;
}

function _module.Berry.Hallon_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Berry.Hallon_q(d) } 
  _module.Berry.Hallon_q(d) <==> DatatypeCtorId(d) == ##_module.Berry.Hallon);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Berry.Hallon_q(d) } 
  _module.Berry.Hallon_q(d) ==> d == #_module.Berry.Hallon());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Berry(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Berry())
     ==> $IsAlloc(d, Tclass._module.Berry(), $h));

// Depth-one case-split function
function $IsA#_module.Berry(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Berry(d) } 
  $IsA#_module.Berry(d)
     ==> _module.Berry.Smultron_q(d)
       || _module.Berry.Jordgubb_q(d)
       || _module.Berry.Hjortron_q(d)
       || _module.Berry.Hallon_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Berry.Hallon_q(d), $Is(d, Tclass._module.Berry()) } 
    { _module.Berry.Hjortron_q(d), $Is(d, Tclass._module.Berry()) } 
    { _module.Berry.Jordgubb_q(d), $Is(d, Tclass._module.Berry()) } 
    { _module.Berry.Smultron_q(d), $Is(d, Tclass._module.Berry()) } 
  $Is(d, Tclass._module.Berry())
     ==> _module.Berry.Smultron_q(d)
       || _module.Berry.Jordgubb_q(d)
       || _module.Berry.Hjortron_q(d)
       || _module.Berry.Hallon_q(d));

// Datatype extensional equality declaration
function _module.Berry#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Berry.Smultron
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Berry#Equal(a, b), _module.Berry.Smultron_q(a) } 
    { _module.Berry#Equal(a, b), _module.Berry.Smultron_q(b) } 
  _module.Berry.Smultron_q(a) && _module.Berry.Smultron_q(b)
     ==> _module.Berry#Equal(a, b));

// Datatype extensional equality definition: #_module.Berry.Jordgubb
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Berry#Equal(a, b), _module.Berry.Jordgubb_q(a) } 
    { _module.Berry#Equal(a, b), _module.Berry.Jordgubb_q(b) } 
  _module.Berry.Jordgubb_q(a) && _module.Berry.Jordgubb_q(b)
     ==> _module.Berry#Equal(a, b));

// Datatype extensional equality definition: #_module.Berry.Hjortron
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Berry#Equal(a, b), _module.Berry.Hjortron_q(a) } 
    { _module.Berry#Equal(a, b), _module.Berry.Hjortron_q(b) } 
  _module.Berry.Hjortron_q(a) && _module.Berry.Hjortron_q(b)
     ==> _module.Berry#Equal(a, b));

// Datatype extensional equality definition: #_module.Berry.Hallon
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Berry#Equal(a, b), _module.Berry.Hallon_q(a) } 
    { _module.Berry#Equal(a, b), _module.Berry.Hallon_q(b) } 
  _module.Berry.Hallon_q(a) && _module.Berry.Hallon_q(b)
     ==> _module.Berry#Equal(a, b));

// Datatype extensionality axiom: _module.Berry
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Berry#Equal(a, b) } 
  _module.Berry#Equal(a, b) <==> a == b);

const unique class._module.Berry: ClassName;

// Constructor function declaration
function #_module.CoBerry.Smultron() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.CoBerry.Smultron()) == ##_module.CoBerry.Smultron;
// Constructor $Is
axiom $Is(#_module.CoBerry.Smultron(), Tclass._module.CoBerry());
}

const unique ##_module.CoBerry.Smultron: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.CoBerry.Smultron()) == ##_module.CoBerry.Smultron;
}

function _module.CoBerry.Smultron_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.CoBerry.Smultron_q(d) } 
  _module.CoBerry.Smultron_q(d)
     <==> DatatypeCtorId(d) == ##_module.CoBerry.Smultron);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.CoBerry.Smultron_q(d) } 
  _module.CoBerry.Smultron_q(d) ==> d == #_module.CoBerry.Smultron());

// Constructor function declaration
function #_module.CoBerry.Jordgubb() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.CoBerry.Jordgubb()) == ##_module.CoBerry.Jordgubb;
// Constructor $Is
axiom $Is(#_module.CoBerry.Jordgubb(), Tclass._module.CoBerry());
}

const unique ##_module.CoBerry.Jordgubb: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.CoBerry.Jordgubb()) == ##_module.CoBerry.Jordgubb;
}

function _module.CoBerry.Jordgubb_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.CoBerry.Jordgubb_q(d) } 
  _module.CoBerry.Jordgubb_q(d)
     <==> DatatypeCtorId(d) == ##_module.CoBerry.Jordgubb);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.CoBerry.Jordgubb_q(d) } 
  _module.CoBerry.Jordgubb_q(d) ==> d == #_module.CoBerry.Jordgubb());

// Constructor function declaration
function #_module.CoBerry.Hjortron() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.CoBerry.Hjortron()) == ##_module.CoBerry.Hjortron;
// Constructor $Is
axiom $Is(#_module.CoBerry.Hjortron(), Tclass._module.CoBerry());
}

const unique ##_module.CoBerry.Hjortron: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.CoBerry.Hjortron()) == ##_module.CoBerry.Hjortron;
}

function _module.CoBerry.Hjortron_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.CoBerry.Hjortron_q(d) } 
  _module.CoBerry.Hjortron_q(d)
     <==> DatatypeCtorId(d) == ##_module.CoBerry.Hjortron);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.CoBerry.Hjortron_q(d) } 
  _module.CoBerry.Hjortron_q(d) ==> d == #_module.CoBerry.Hjortron());

// Constructor function declaration
function #_module.CoBerry.Hallon() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.CoBerry.Hallon()) == ##_module.CoBerry.Hallon;
// Constructor $Is
axiom $Is(#_module.CoBerry.Hallon(), Tclass._module.CoBerry());
}

const unique ##_module.CoBerry.Hallon: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.CoBerry.Hallon()) == ##_module.CoBerry.Hallon;
}

function _module.CoBerry.Hallon_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.CoBerry.Hallon_q(d) } 
  _module.CoBerry.Hallon_q(d) <==> DatatypeCtorId(d) == ##_module.CoBerry.Hallon);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.CoBerry.Hallon_q(d) } 
  _module.CoBerry.Hallon_q(d) ==> d == #_module.CoBerry.Hallon());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.CoBerry(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.CoBerry())
     ==> $IsAlloc(d, Tclass._module.CoBerry(), $h));

// Depth-one case-split function
function $IsA#_module.CoBerry(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.CoBerry(d) } 
  $IsA#_module.CoBerry(d)
     ==> _module.CoBerry.Smultron_q(d)
       || _module.CoBerry.Jordgubb_q(d)
       || _module.CoBerry.Hjortron_q(d)
       || _module.CoBerry.Hallon_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.CoBerry.Hallon_q(d), $Is(d, Tclass._module.CoBerry()) } 
    { _module.CoBerry.Hjortron_q(d), $Is(d, Tclass._module.CoBerry()) } 
    { _module.CoBerry.Jordgubb_q(d), $Is(d, Tclass._module.CoBerry()) } 
    { _module.CoBerry.Smultron_q(d), $Is(d, Tclass._module.CoBerry()) } 
  $Is(d, Tclass._module.CoBerry())
     ==> _module.CoBerry.Smultron_q(d)
       || _module.CoBerry.Jordgubb_q(d)
       || _module.CoBerry.Hjortron_q(d)
       || _module.CoBerry.Hallon_q(d));

function $Eq#_module.CoBerry(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.CoBerry($LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.CoBerry()) && $Is(d1, Tclass._module.CoBerry())
     ==> ($Eq#_module.CoBerry($LS(ly), d0, d1)
       <==> (_module.CoBerry.Smultron_q(d0) && _module.CoBerry.Smultron_q(d1))
         || (_module.CoBerry.Jordgubb_q(d0) && _module.CoBerry.Jordgubb_q(d1))
         || (_module.CoBerry.Hjortron_q(d0) && _module.CoBerry.Hjortron_q(d1))
         || (_module.CoBerry.Hallon_q(d0) && _module.CoBerry.Hallon_q(d1))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.CoBerry($LS(ly), d0, d1) } 
  $Eq#_module.CoBerry($LS(ly), d0, d1) <==> $Eq#_module.CoBerry(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.CoBerry($LS(ly), d0, d1) } 
  $Eq#_module.CoBerry($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#_module.CoBerry(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.CoBerry(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.CoBerry()) && $Is(d1, Tclass._module.CoBerry())
     ==> ($PrefixEq#_module.CoBerry(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (_module.CoBerry.Smultron_q(d0) && _module.CoBerry.Smultron_q(d1))
             || (_module.CoBerry.Jordgubb_q(d0) && _module.CoBerry.Jordgubb_q(d1))
             || (_module.CoBerry.Hjortron_q(d0) && _module.CoBerry.Hjortron_q(d1))
             || (_module.CoBerry.Hallon_q(d0) && _module.CoBerry.Hallon_q(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k) ==> $Eq#_module.CoBerry(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.CoBerry(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.CoBerry(k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.CoBerry(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.CoBerry($LS(ly), d0, d1) } 
  $Eq#_module.CoBerry($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.CoBerry(k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.CoBerry(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.CoBerry($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.CoBerry(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k ==> $PrefixEq#_module.CoBerry(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.CoBerry($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#_module.CoBerry(k, $LS(ly), d0, d1), $PrefixEq#_module.CoBerry(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m) && $PrefixEq#_module.CoBerry(m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.CoBerry(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.CoBerry(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#_module.CoBerry(k, $LS(ly), d0, d1));

const unique class._module.CoBerry: ClassName;

// Constructor function declaration
function #_module.NatPlus.Succ(DatatypeType) : DatatypeType;

const unique ##_module.NatPlus.Succ: DtCtorId
uses {
// Constructor identifier
axiom (forall a#44#0#0: DatatypeType :: 
  { #_module.NatPlus.Succ(a#44#0#0) } 
  DatatypeCtorId(#_module.NatPlus.Succ(a#44#0#0)) == ##_module.NatPlus.Succ);
}

function _module.NatPlus.Succ_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.NatPlus.Succ_q(d) } 
  _module.NatPlus.Succ_q(d) <==> DatatypeCtorId(d) == ##_module.NatPlus.Succ);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.NatPlus.Succ_q(d) } 
  _module.NatPlus.Succ_q(d)
     ==> (exists a#45#0#0: DatatypeType :: d == #_module.NatPlus.Succ(a#45#0#0)));

// Constructor $Is
axiom (forall a#46#0#0: DatatypeType :: 
  { $Is(#_module.NatPlus.Succ(a#46#0#0), Tclass._module.NatPlus()) } 
  $Is(#_module.NatPlus.Succ(a#46#0#0), Tclass._module.NatPlus())
     <==> $Is(a#46#0#0, Tclass._module.NatPlus()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.NatPlus._h2(d), Tclass._module.NatPlus(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.NatPlus.Succ_q(d)
       && $IsAlloc(d, Tclass._module.NatPlus(), $h)
     ==> $IsAlloc(_module.NatPlus._h2(d), Tclass._module.NatPlus(), $h));

function _module.NatPlus._h2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#47#0#0: DatatypeType :: 
  { #_module.NatPlus.Succ(a#47#0#0) } 
  _module.NatPlus._h2(#_module.NatPlus.Succ(a#47#0#0)) == a#47#0#0);

// Constructor function declaration
function #_module.NatPlus.Zero() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.NatPlus.Zero()) == ##_module.NatPlus.Zero;
// Constructor $Is
axiom $Is(#_module.NatPlus.Zero(), Tclass._module.NatPlus());
}

const unique ##_module.NatPlus.Zero: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.NatPlus.Zero()) == ##_module.NatPlus.Zero;
}

function _module.NatPlus.Zero_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.NatPlus.Zero_q(d) } 
  _module.NatPlus.Zero_q(d) <==> DatatypeCtorId(d) == ##_module.NatPlus.Zero);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.NatPlus.Zero_q(d) } 
  _module.NatPlus.Zero_q(d) ==> d == #_module.NatPlus.Zero());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.NatPlus(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.NatPlus())
     ==> $IsAlloc(d, Tclass._module.NatPlus(), $h));

// Depth-one case-split function
function $IsA#_module.NatPlus(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.NatPlus(d) } 
  $IsA#_module.NatPlus(d)
     ==> _module.NatPlus.Succ_q(d) || _module.NatPlus.Zero_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.NatPlus.Zero_q(d), $Is(d, Tclass._module.NatPlus()) } 
    { _module.NatPlus.Succ_q(d), $Is(d, Tclass._module.NatPlus()) } 
  $Is(d, Tclass._module.NatPlus())
     ==> _module.NatPlus.Succ_q(d) || _module.NatPlus.Zero_q(d));

function $Eq#_module.NatPlus(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.NatPlus($LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.NatPlus()) && $Is(d1, Tclass._module.NatPlus())
     ==> ($Eq#_module.NatPlus($LS(ly), d0, d1)
       <==> (
          _module.NatPlus.Succ_q(d0)
           && _module.NatPlus.Succ_q(d1)
           && (_module.NatPlus.Succ_q(d0) && _module.NatPlus.Succ_q(d1)
             ==> $Eq#_module.NatPlus(ly, _module.NatPlus._h2(d0), _module.NatPlus._h2(d1))))
         || (_module.NatPlus.Zero_q(d0) && _module.NatPlus.Zero_q(d1))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.NatPlus($LS(ly), d0, d1) } 
  $Eq#_module.NatPlus($LS(ly), d0, d1) <==> $Eq#_module.NatPlus(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.NatPlus($LS(ly), d0, d1) } 
  $Eq#_module.NatPlus($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#_module.NatPlus(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.NatPlus(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.NatPlus()) && $Is(d1, Tclass._module.NatPlus())
     ==> ($PrefixEq#_module.NatPlus(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> (
              _module.NatPlus.Succ_q(d0)
               && _module.NatPlus.Succ_q(d1)
               && (_module.NatPlus.Succ_q(d0) && _module.NatPlus.Succ_q(d1)
                 ==> $PrefixEq#_module.NatPlus(ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  _module.NatPlus._h2(d0), 
                  _module.NatPlus._h2(d1))))
             || (_module.NatPlus.Zero_q(d0) && _module.NatPlus.Zero_q(d1)))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k) ==> $Eq#_module.NatPlus(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.NatPlus(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.NatPlus(k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.NatPlus(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.NatPlus($LS(ly), d0, d1) } 
  $Eq#_module.NatPlus($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.NatPlus(k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.NatPlus(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.NatPlus($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.NatPlus(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k ==> $PrefixEq#_module.NatPlus(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.NatPlus($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#_module.NatPlus(k, $LS(ly), d0, d1), $PrefixEq#_module.NatPlus(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m) && $PrefixEq#_module.NatPlus(m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.NatPlus(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.NatPlus(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#_module.NatPlus(k, $LS(ly), d0, d1));

const unique class._module.NatPlus: ClassName;

// Constructor function declaration
function #_module.ConflictingNames.ConflictingNames1(int, char, Seq) : DatatypeType;

const unique ##_module.ConflictingNames.ConflictingNames1: DtCtorId
uses {
// Constructor identifier
axiom (forall a#51#0#0: int, a#51#1#0: char, a#51#2#0: Seq :: 
  { #_module.ConflictingNames.ConflictingNames1(a#51#0#0, a#51#1#0, a#51#2#0) } 
  DatatypeCtorId(#_module.ConflictingNames.ConflictingNames1(a#51#0#0, a#51#1#0, a#51#2#0))
     == ##_module.ConflictingNames.ConflictingNames1);
}

function _module.ConflictingNames.ConflictingNames1_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.ConflictingNames.ConflictingNames1_q(d) } 
  _module.ConflictingNames.ConflictingNames1_q(d)
     <==> DatatypeCtorId(d) == ##_module.ConflictingNames.ConflictingNames1);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.ConflictingNames.ConflictingNames1_q(d) } 
  _module.ConflictingNames.ConflictingNames1_q(d)
     ==> (exists a#52#0#0: int, a#52#1#0: char, a#52#2#0: Seq :: 
      d == #_module.ConflictingNames.ConflictingNames1(a#52#0#0, a#52#1#0, a#52#2#0)));

// Constructor $Is
axiom (forall a#53#0#0: int, a#53#1#0: char, a#53#2#0: Seq :: 
  { $Is(#_module.ConflictingNames.ConflictingNames1(a#53#0#0, a#53#1#0, a#53#2#0), 
      Tclass._module.ConflictingNames()) } 
  $Is(#_module.ConflictingNames.ConflictingNames1(a#53#0#0, a#53#1#0, a#53#2#0), 
      Tclass._module.ConflictingNames())
     <==> $Is(a#53#0#0, TInt) && $Is(a#53#1#0, TChar) && $Is(a#53#2#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.ConflictingNames.len(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.ConflictingNames.ConflictingNames1_q(d)
       && $IsAlloc(d, Tclass._module.ConflictingNames(), $h)
     ==> $IsAlloc(_module.ConflictingNames.len(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.ConflictingNames.public(d), TChar, $h) } 
  $IsGoodHeap($h)
       && 
      _module.ConflictingNames.ConflictingNames1_q(d)
       && $IsAlloc(d, Tclass._module.ConflictingNames(), $h)
     ==> $IsAlloc(_module.ConflictingNames.public(d), TChar, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.ConflictingNames.goto(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      _module.ConflictingNames.ConflictingNames1_q(d)
       && $IsAlloc(d, Tclass._module.ConflictingNames(), $h)
     ==> $IsAlloc(_module.ConflictingNames.goto(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#54#0#0: int, a#54#1#0: char, a#54#2#0: Seq :: 
  { #_module.ConflictingNames.ConflictingNames1(LitInt(a#54#0#0), Lit(a#54#1#0), Lit(a#54#2#0)) } 
  #_module.ConflictingNames.ConflictingNames1(LitInt(a#54#0#0), Lit(a#54#1#0), Lit(a#54#2#0))
     == Lit(#_module.ConflictingNames.ConflictingNames1(a#54#0#0, a#54#1#0, a#54#2#0)));

function _module.ConflictingNames.len(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#55#0#0: int, a#55#1#0: char, a#55#2#0: Seq :: 
  { #_module.ConflictingNames.ConflictingNames1(a#55#0#0, a#55#1#0, a#55#2#0) } 
  _module.ConflictingNames.len(#_module.ConflictingNames.ConflictingNames1(a#55#0#0, a#55#1#0, a#55#2#0))
     == a#55#0#0);

function _module.ConflictingNames.public(DatatypeType) : char;

// Constructor injectivity
axiom (forall a#56#0#0: int, a#56#1#0: char, a#56#2#0: Seq :: 
  { #_module.ConflictingNames.ConflictingNames1(a#56#0#0, a#56#1#0, a#56#2#0) } 
  _module.ConflictingNames.public(#_module.ConflictingNames.ConflictingNames1(a#56#0#0, a#56#1#0, a#56#2#0))
     == a#56#1#0);

function _module.ConflictingNames.goto(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#57#0#0: int, a#57#1#0: char, a#57#2#0: Seq :: 
  { #_module.ConflictingNames.ConflictingNames1(a#57#0#0, a#57#1#0, a#57#2#0) } 
  _module.ConflictingNames.goto(#_module.ConflictingNames.ConflictingNames1(a#57#0#0, a#57#1#0, a#57#2#0))
     == a#57#2#0);

// Inductive seq element rank
axiom (forall a#58#0#0: int, a#58#1#0: char, a#58#2#0: Seq, i: int :: 
  { Seq#Index(a#58#2#0, i), #_module.ConflictingNames.ConflictingNames1(a#58#0#0, a#58#1#0, a#58#2#0) } 
  0 <= i && i < Seq#Length(a#58#2#0)
     ==> DtRank($Unbox(Seq#Index(a#58#2#0, i)): DatatypeType)
       < DtRank(#_module.ConflictingNames.ConflictingNames1(a#58#0#0, a#58#1#0, a#58#2#0)));

// Inductive seq rank
axiom (forall a#59#0#0: int, a#59#1#0: char, a#59#2#0: Seq :: 
  { #_module.ConflictingNames.ConflictingNames1(a#59#0#0, a#59#1#0, a#59#2#0) } 
  Seq#Rank(a#59#2#0)
     < DtRank(#_module.ConflictingNames.ConflictingNames1(a#59#0#0, a#59#1#0, a#59#2#0)));

// Constructor function declaration
function #_module.ConflictingNames.ConflictingNames2(Seq) : DatatypeType;

const unique ##_module.ConflictingNames.ConflictingNames2: DtCtorId
uses {
// Constructor identifier
axiom (forall a#60#0#0: Seq :: 
  { #_module.ConflictingNames.ConflictingNames2(a#60#0#0) } 
  DatatypeCtorId(#_module.ConflictingNames.ConflictingNames2(a#60#0#0))
     == ##_module.ConflictingNames.ConflictingNames2);
}

function _module.ConflictingNames.ConflictingNames2_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.ConflictingNames.ConflictingNames2_q(d) } 
  _module.ConflictingNames.ConflictingNames2_q(d)
     <==> DatatypeCtorId(d) == ##_module.ConflictingNames.ConflictingNames2);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.ConflictingNames.ConflictingNames2_q(d) } 
  _module.ConflictingNames.ConflictingNames2_q(d)
     ==> (exists a#61#0#0: Seq :: 
      d == #_module.ConflictingNames.ConflictingNames2(a#61#0#0)));

// Constructor $Is
axiom (forall a#62#0#0: Seq :: 
  { $Is(#_module.ConflictingNames.ConflictingNames2(a#62#0#0), 
      Tclass._module.ConflictingNames()) } 
  $Is(#_module.ConflictingNames.ConflictingNames2(a#62#0#0), 
      Tclass._module.ConflictingNames())
     <==> $Is(a#62#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.ConflictingNames.goto(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      _module.ConflictingNames.ConflictingNames2_q(d)
       && $IsAlloc(d, Tclass._module.ConflictingNames(), $h)
     ==> $IsAlloc(_module.ConflictingNames.goto(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#63#0#0: Seq :: 
  { #_module.ConflictingNames.ConflictingNames2(Lit(a#63#0#0)) } 
  #_module.ConflictingNames.ConflictingNames2(Lit(a#63#0#0))
     == Lit(#_module.ConflictingNames.ConflictingNames2(a#63#0#0)));

// Constructor injectivity
axiom (forall a#64#0#0: Seq :: 
  { #_module.ConflictingNames.ConflictingNames2(a#64#0#0) } 
  _module.ConflictingNames.goto(#_module.ConflictingNames.ConflictingNames2(a#64#0#0))
     == a#64#0#0);

// Inductive seq element rank
axiom (forall a#65#0#0: Seq, i: int :: 
  { Seq#Index(a#65#0#0, i), #_module.ConflictingNames.ConflictingNames2(a#65#0#0) } 
  0 <= i && i < Seq#Length(a#65#0#0)
     ==> DtRank($Unbox(Seq#Index(a#65#0#0, i)): DatatypeType)
       < DtRank(#_module.ConflictingNames.ConflictingNames2(a#65#0#0)));

// Inductive seq rank
axiom (forall a#66#0#0: Seq :: 
  { #_module.ConflictingNames.ConflictingNames2(a#66#0#0) } 
  Seq#Rank(a#66#0#0)
     < DtRank(#_module.ConflictingNames.ConflictingNames2(a#66#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.ConflictingNames(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.ConflictingNames())
     ==> $IsAlloc(d, Tclass._module.ConflictingNames(), $h));

// Depth-one case-split function
function $IsA#_module.ConflictingNames(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.ConflictingNames(d) } 
  $IsA#_module.ConflictingNames(d)
     ==> _module.ConflictingNames.ConflictingNames1_q(d)
       || _module.ConflictingNames.ConflictingNames2_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.ConflictingNames.ConflictingNames2_q(d), $Is(d, Tclass._module.ConflictingNames()) } 
    { _module.ConflictingNames.ConflictingNames1_q(d), $Is(d, Tclass._module.ConflictingNames()) } 
  $Is(d, Tclass._module.ConflictingNames())
     ==> _module.ConflictingNames.ConflictingNames1_q(d)
       || _module.ConflictingNames.ConflictingNames2_q(d));

// Datatype extensional equality declaration
function _module.ConflictingNames#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.ConflictingNames.ConflictingNames1
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.ConflictingNames#Equal(a, b), _module.ConflictingNames.ConflictingNames1_q(a) } 
    { _module.ConflictingNames#Equal(a, b), _module.ConflictingNames.ConflictingNames1_q(b) } 
  _module.ConflictingNames.ConflictingNames1_q(a)
       && _module.ConflictingNames.ConflictingNames1_q(b)
     ==> (_module.ConflictingNames#Equal(a, b)
       <==> _module.ConflictingNames.len(a) == _module.ConflictingNames.len(b)
         && _module.ConflictingNames.public(a) == _module.ConflictingNames.public(b)
         && Seq#Equal(_module.ConflictingNames.goto(a), _module.ConflictingNames.goto(b))));

// Datatype extensional equality definition: #_module.ConflictingNames.ConflictingNames2
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.ConflictingNames#Equal(a, b), _module.ConflictingNames.ConflictingNames2_q(a) } 
    { _module.ConflictingNames#Equal(a, b), _module.ConflictingNames.ConflictingNames2_q(b) } 
  _module.ConflictingNames.ConflictingNames2_q(a)
       && _module.ConflictingNames.ConflictingNames2_q(b)
     ==> (_module.ConflictingNames#Equal(a, b)
       <==> Seq#Equal(_module.ConflictingNames.goto(a), _module.ConflictingNames.goto(b))));

// Datatype extensionality axiom: _module.ConflictingNames
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.ConflictingNames#Equal(a, b) } 
  _module.ConflictingNames#Equal(a, b) <==> a == b);

const unique class._module.ConflictingNames: ClassName;

// Constructor function declaration
function #_module.Record.Record(int, int, bool, bool) : DatatypeType;

const unique ##_module.Record.Record: DtCtorId
uses {
// Constructor identifier
axiom (forall a#67#0#0: int, a#67#1#0: int, a#67#2#0: bool, a#67#3#0: bool :: 
  { #_module.Record.Record(a#67#0#0, a#67#1#0, a#67#2#0, a#67#3#0) } 
  DatatypeCtorId(#_module.Record.Record(a#67#0#0, a#67#1#0, a#67#2#0, a#67#3#0))
     == ##_module.Record.Record);
}

function _module.Record.Record_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Record.Record_q(d) } 
  _module.Record.Record_q(d) <==> DatatypeCtorId(d) == ##_module.Record.Record);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Record.Record_q(d) } 
  _module.Record.Record_q(d)
     ==> (exists a#68#0#0: int, a#68#1#0: int, a#68#2#0: bool, a#68#3#0: bool :: 
      d == #_module.Record.Record(a#68#0#0, a#68#1#0, a#68#2#0, a#68#3#0)));

// Constructor $Is
axiom (forall a#69#0#0: int, a#69#1#0: int, a#69#2#0: bool, a#69#3#0: bool :: 
  { $Is(#_module.Record.Record(a#69#0#0, a#69#1#0, a#69#2#0, a#69#3#0), 
      Tclass._module.Record()) } 
  $Is(#_module.Record.Record(a#69#0#0, a#69#1#0, a#69#2#0, a#69#3#0), 
      Tclass._module.Record())
     <==> $Is(a#69#0#0, TInt)
       && $Is(a#69#1#0, TInt)
       && $Is(a#69#2#0, TBool)
       && $Is(a#69#3#0, TBool));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Record.x(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Record.Record_q(d)
       && $IsAlloc(d, Tclass._module.Record(), $h)
     ==> $IsAlloc(_module.Record.x(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Record.y(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Record.Record_q(d)
       && $IsAlloc(d, Tclass._module.Record(), $h)
     ==> $IsAlloc(_module.Record.y(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Record.z(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Record.Record_q(d)
       && $IsAlloc(d, Tclass._module.Record(), $h)
     ==> $IsAlloc(_module.Record.z(d), TBool, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Record.w(d), TBool, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Record.Record_q(d)
       && $IsAlloc(d, Tclass._module.Record(), $h)
     ==> $IsAlloc(_module.Record.w(d), TBool, $h));

// Constructor literal
axiom (forall a#70#0#0: int, a#70#1#0: int, a#70#2#0: bool, a#70#3#0: bool :: 
  { #_module.Record.Record(LitInt(a#70#0#0), LitInt(a#70#1#0), Lit(a#70#2#0), Lit(a#70#3#0)) } 
  #_module.Record.Record(LitInt(a#70#0#0), LitInt(a#70#1#0), Lit(a#70#2#0), Lit(a#70#3#0))
     == Lit(#_module.Record.Record(a#70#0#0, a#70#1#0, a#70#2#0, a#70#3#0)));

function _module.Record.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#71#0#0: int, a#71#1#0: int, a#71#2#0: bool, a#71#3#0: bool :: 
  { #_module.Record.Record(a#71#0#0, a#71#1#0, a#71#2#0, a#71#3#0) } 
  _module.Record.x(#_module.Record.Record(a#71#0#0, a#71#1#0, a#71#2#0, a#71#3#0))
     == a#71#0#0);

function _module.Record.y(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#72#0#0: int, a#72#1#0: int, a#72#2#0: bool, a#72#3#0: bool :: 
  { #_module.Record.Record(a#72#0#0, a#72#1#0, a#72#2#0, a#72#3#0) } 
  _module.Record.y(#_module.Record.Record(a#72#0#0, a#72#1#0, a#72#2#0, a#72#3#0))
     == a#72#1#0);

function _module.Record.z(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#73#0#0: int, a#73#1#0: int, a#73#2#0: bool, a#73#3#0: bool :: 
  { #_module.Record.Record(a#73#0#0, a#73#1#0, a#73#2#0, a#73#3#0) } 
  _module.Record.z(#_module.Record.Record(a#73#0#0, a#73#1#0, a#73#2#0, a#73#3#0))
     == a#73#2#0);

function _module.Record.w(DatatypeType) : bool;

// Constructor injectivity
axiom (forall a#74#0#0: int, a#74#1#0: int, a#74#2#0: bool, a#74#3#0: bool :: 
  { #_module.Record.Record(a#74#0#0, a#74#1#0, a#74#2#0, a#74#3#0) } 
  _module.Record.w(#_module.Record.Record(a#74#0#0, a#74#1#0, a#74#2#0, a#74#3#0))
     == a#74#3#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Record(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Record())
     ==> $IsAlloc(d, Tclass._module.Record(), $h));

// Depth-one case-split function
function $IsA#_module.Record(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Record(d) } 
  $IsA#_module.Record(d) ==> _module.Record.Record_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Record.Record_q(d), $Is(d, Tclass._module.Record()) } 
  $Is(d, Tclass._module.Record()) ==> _module.Record.Record_q(d));

// Datatype extensional equality declaration
function _module.Record#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Record.Record
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Record#Equal(a, b) } 
  _module.Record#Equal(a, b)
     <==> _module.Record.x(a) == _module.Record.x(b)
       && _module.Record.y(a) == _module.Record.y(b)
       && _module.Record.z(a) == _module.Record.z(b)
       && _module.Record.w(a) == _module.Record.w(b));

// Datatype extensionality axiom: _module.Record
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Record#Equal(a, b) } 
  _module.Record#Equal(a, b) <==> a == b);

const unique class._module.Record: ClassName;

// Constructor function declaration
function #_module.R.R(int, int) : DatatypeType;

const unique ##_module.R.R: DtCtorId
uses {
// Constructor identifier
axiom (forall a#75#0#0: int, a#75#1#0: int :: 
  { #_module.R.R(a#75#0#0, a#75#1#0) } 
  DatatypeCtorId(#_module.R.R(a#75#0#0, a#75#1#0)) == ##_module.R.R);
}

function _module.R.R_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.R.R_q(d) } 
  _module.R.R_q(d) <==> DatatypeCtorId(d) == ##_module.R.R);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.R.R_q(d) } 
  _module.R.R_q(d)
     ==> (exists a#76#0#0: int, a#76#1#0: int :: d == #_module.R.R(a#76#0#0, a#76#1#0)));

// Constructor $Is
axiom (forall a#77#0#0: int, a#77#1#0: int :: 
  { $Is(#_module.R.R(a#77#0#0, a#77#1#0), Tclass._module.R()) } 
  $Is(#_module.R.R(a#77#0#0, a#77#1#0), Tclass._module.R())
     <==> $Is(a#77#0#0, TInt) && $Is(a#77#1#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.R.x(d), TInt, $h) } 
  $IsGoodHeap($h) && _module.R.R_q(d) && $IsAlloc(d, Tclass._module.R(), $h)
     ==> $IsAlloc(_module.R.x(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.R.g(d), TInt, $h) } 
  $IsGoodHeap($h) && _module.R.R_q(d) && $IsAlloc(d, Tclass._module.R(), $h)
     ==> $IsAlloc(_module.R.g(d), TInt, $h));

// Constructor literal
axiom (forall a#78#0#0: int, a#78#1#0: int :: 
  { #_module.R.R(LitInt(a#78#0#0), LitInt(a#78#1#0)) } 
  #_module.R.R(LitInt(a#78#0#0), LitInt(a#78#1#0))
     == Lit(#_module.R.R(a#78#0#0, a#78#1#0)));

function _module.R.x(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#79#0#0: int, a#79#1#0: int :: 
  { #_module.R.R(a#79#0#0, a#79#1#0) } 
  _module.R.x(#_module.R.R(a#79#0#0, a#79#1#0)) == a#79#0#0);

function _module.R.g(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#80#0#0: int, a#80#1#0: int :: 
  { #_module.R.R(a#80#0#0, a#80#1#0) } 
  _module.R.g(#_module.R.R(a#80#0#0, a#80#1#0)) == a#80#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.R(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.R())
     ==> $IsAlloc(d, Tclass._module.R(), $h));

// Depth-one case-split function
function $IsA#_module.R(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.R(d) } 
  $IsA#_module.R(d) ==> _module.R.R_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.R.R_q(d), $Is(d, Tclass._module.R()) } 
  $Is(d, Tclass._module.R()) ==> _module.R.R_q(d));

// Datatype extensional equality declaration
function _module.R#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.R.R
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.R#Equal(a, b) } 
  _module.R#Equal(a, b)
     <==> _module.R.x(a) == _module.R.x(b) && _module.R.g(a) == _module.R.g(b));

// Datatype extensionality axiom: _module.R
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.R#Equal(a, b) } 
  _module.R#Equal(a, b) <==> a == b);

const unique class._module.R: ClassName;

// Constructor function declaration
function #_module.NumericDestructorNames.NumericDestructorNames(int, int, int) : DatatypeType;

const unique ##_module.NumericDestructorNames.NumericDestructorNames: DtCtorId
uses {
// Constructor identifier
axiom (forall a#81#0#0: int, a#81#1#0: int, a#81#2#0: int :: 
  { #_module.NumericDestructorNames.NumericDestructorNames(a#81#0#0, a#81#1#0, a#81#2#0) } 
  DatatypeCtorId(#_module.NumericDestructorNames.NumericDestructorNames(a#81#0#0, a#81#1#0, a#81#2#0))
     == ##_module.NumericDestructorNames.NumericDestructorNames);
}

function _module.NumericDestructorNames.NumericDestructorNames_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.NumericDestructorNames.NumericDestructorNames_q(d) } 
  _module.NumericDestructorNames.NumericDestructorNames_q(d)
     <==> DatatypeCtorId(d) == ##_module.NumericDestructorNames.NumericDestructorNames);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.NumericDestructorNames.NumericDestructorNames_q(d) } 
  _module.NumericDestructorNames.NumericDestructorNames_q(d)
     ==> (exists a#82#0#0: int, a#82#1#0: int, a#82#2#0: int :: 
      d
         == #_module.NumericDestructorNames.NumericDestructorNames(a#82#0#0, a#82#1#0, a#82#2#0)));

// Constructor $Is
axiom (forall a#83#0#0: int, a#83#1#0: int, a#83#2#0: int :: 
  { $Is(#_module.NumericDestructorNames.NumericDestructorNames(a#83#0#0, a#83#1#0, a#83#2#0), 
      Tclass._module.NumericDestructorNames()) } 
  $Is(#_module.NumericDestructorNames.NumericDestructorNames(a#83#0#0, a#83#1#0, a#83#2#0), 
      Tclass._module.NumericDestructorNames())
     <==> $Is(a#83#0#0, TInt) && $Is(a#83#1#0, TInt) && $Is(a#83#2#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.NumericDestructorNames._0(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.NumericDestructorNames.NumericDestructorNames_q(d)
       && $IsAlloc(d, Tclass._module.NumericDestructorNames(), $h)
     ==> $IsAlloc(_module.NumericDestructorNames._0(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.NumericDestructorNames._0_3(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.NumericDestructorNames.NumericDestructorNames_q(d)
       && $IsAlloc(d, Tclass._module.NumericDestructorNames(), $h)
     ==> $IsAlloc(_module.NumericDestructorNames._0_3(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.NumericDestructorNames._012(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.NumericDestructorNames.NumericDestructorNames_q(d)
       && $IsAlloc(d, Tclass._module.NumericDestructorNames(), $h)
     ==> $IsAlloc(_module.NumericDestructorNames._012(d), TInt, $h));

// Constructor literal
axiom (forall a#84#0#0: int, a#84#1#0: int, a#84#2#0: int :: 
  { #_module.NumericDestructorNames.NumericDestructorNames(LitInt(a#84#0#0), LitInt(a#84#1#0), LitInt(a#84#2#0)) } 
  #_module.NumericDestructorNames.NumericDestructorNames(LitInt(a#84#0#0), LitInt(a#84#1#0), LitInt(a#84#2#0))
     == Lit(#_module.NumericDestructorNames.NumericDestructorNames(a#84#0#0, a#84#1#0, a#84#2#0)));

function _module.NumericDestructorNames._0(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#85#0#0: int, a#85#1#0: int, a#85#2#0: int :: 
  { #_module.NumericDestructorNames.NumericDestructorNames(a#85#0#0, a#85#1#0, a#85#2#0) } 
  _module.NumericDestructorNames._0(#_module.NumericDestructorNames.NumericDestructorNames(a#85#0#0, a#85#1#0, a#85#2#0))
     == a#85#0#0);

function _module.NumericDestructorNames._0_3(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#86#0#0: int, a#86#1#0: int, a#86#2#0: int :: 
  { #_module.NumericDestructorNames.NumericDestructorNames(a#86#0#0, a#86#1#0, a#86#2#0) } 
  _module.NumericDestructorNames._0_3(#_module.NumericDestructorNames.NumericDestructorNames(a#86#0#0, a#86#1#0, a#86#2#0))
     == a#86#1#0);

function _module.NumericDestructorNames._012(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#87#0#0: int, a#87#1#0: int, a#87#2#0: int :: 
  { #_module.NumericDestructorNames.NumericDestructorNames(a#87#0#0, a#87#1#0, a#87#2#0) } 
  _module.NumericDestructorNames._012(#_module.NumericDestructorNames.NumericDestructorNames(a#87#0#0, a#87#1#0, a#87#2#0))
     == a#87#2#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.NumericDestructorNames(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.NumericDestructorNames())
     ==> $IsAlloc(d, Tclass._module.NumericDestructorNames(), $h));

// Depth-one case-split function
function $IsA#_module.NumericDestructorNames(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.NumericDestructorNames(d) } 
  $IsA#_module.NumericDestructorNames(d)
     ==> _module.NumericDestructorNames.NumericDestructorNames_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.NumericDestructorNames.NumericDestructorNames_q(d), $Is(d, Tclass._module.NumericDestructorNames()) } 
  $Is(d, Tclass._module.NumericDestructorNames())
     ==> _module.NumericDestructorNames.NumericDestructorNames_q(d));

// Datatype extensional equality declaration
function _module.NumericDestructorNames#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.NumericDestructorNames.NumericDestructorNames
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.NumericDestructorNames#Equal(a, b) } 
  _module.NumericDestructorNames#Equal(a, b)
     <==> _module.NumericDestructorNames._0(a) == _module.NumericDestructorNames._0(b)
       && _module.NumericDestructorNames._0_3(a) == _module.NumericDestructorNames._0_3(b)
       && _module.NumericDestructorNames._012(a) == _module.NumericDestructorNames._012(b));

// Datatype extensionality axiom: _module.NumericDestructorNames
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.NumericDestructorNames#Equal(a, b) } 
  _module.NumericDestructorNames#Equal(a, b) <==> a == b);

const unique class._module.NumericDestructorNames: ClassName;

const unique class.ModuleX.__default: ClassName;

// Constructor function declaration
function #ModuleX.OptionInt.Some(int) : DatatypeType;

const unique ##ModuleX.OptionInt.Some: DtCtorId
uses {
// Constructor identifier
axiom (forall a#88#0#0: int :: 
  { #ModuleX.OptionInt.Some(a#88#0#0) } 
  DatatypeCtorId(#ModuleX.OptionInt.Some(a#88#0#0)) == ##ModuleX.OptionInt.Some);
}

function ModuleX.OptionInt.Some_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ModuleX.OptionInt.Some_q(d) } 
  ModuleX.OptionInt.Some_q(d) <==> DatatypeCtorId(d) == ##ModuleX.OptionInt.Some);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ModuleX.OptionInt.Some_q(d) } 
  ModuleX.OptionInt.Some_q(d)
     ==> (exists a#89#0#0: int :: d == #ModuleX.OptionInt.Some(a#89#0#0)));

// Constructor $Is
axiom (forall a#90#0#0: int :: 
  { $Is(#ModuleX.OptionInt.Some(a#90#0#0), Tclass.ModuleX.OptionInt()) } 
  $Is(#ModuleX.OptionInt.Some(a#90#0#0), Tclass.ModuleX.OptionInt())
     <==> $Is(a#90#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(ModuleX.OptionInt._h3(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      ModuleX.OptionInt.Some_q(d)
       && $IsAlloc(d, Tclass.ModuleX.OptionInt(), $h)
     ==> $IsAlloc(ModuleX.OptionInt._h3(d), TInt, $h));

// Constructor literal
axiom (forall a#91#0#0: int :: 
  { #ModuleX.OptionInt.Some(LitInt(a#91#0#0)) } 
  #ModuleX.OptionInt.Some(LitInt(a#91#0#0))
     == Lit(#ModuleX.OptionInt.Some(a#91#0#0)));

function ModuleX.OptionInt._h3(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#92#0#0: int :: 
  { #ModuleX.OptionInt.Some(a#92#0#0) } 
  ModuleX.OptionInt._h3(#ModuleX.OptionInt.Some(a#92#0#0)) == a#92#0#0);

// Constructor function declaration
function #ModuleX.OptionInt.None() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#ModuleX.OptionInt.None()) == ##ModuleX.OptionInt.None;
// Constructor $Is
axiom $Is(#ModuleX.OptionInt.None(), Tclass.ModuleX.OptionInt());
// Constructor literal
axiom #ModuleX.OptionInt.None() == Lit(#ModuleX.OptionInt.None());
}

const unique ##ModuleX.OptionInt.None: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#ModuleX.OptionInt.None()) == ##ModuleX.OptionInt.None;
}

function ModuleX.OptionInt.None_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { ModuleX.OptionInt.None_q(d) } 
  ModuleX.OptionInt.None_q(d) <==> DatatypeCtorId(d) == ##ModuleX.OptionInt.None);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { ModuleX.OptionInt.None_q(d) } 
  ModuleX.OptionInt.None_q(d) ==> d == #ModuleX.OptionInt.None());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.ModuleX.OptionInt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.ModuleX.OptionInt())
     ==> $IsAlloc(d, Tclass.ModuleX.OptionInt(), $h));

// Depth-one case-split function
function $IsA#ModuleX.OptionInt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#ModuleX.OptionInt(d) } 
  $IsA#ModuleX.OptionInt(d)
     ==> ModuleX.OptionInt.Some_q(d) || ModuleX.OptionInt.None_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { ModuleX.OptionInt.None_q(d), $Is(d, Tclass.ModuleX.OptionInt()) } 
    { ModuleX.OptionInt.Some_q(d), $Is(d, Tclass.ModuleX.OptionInt()) } 
  $Is(d, Tclass.ModuleX.OptionInt())
     ==> ModuleX.OptionInt.Some_q(d) || ModuleX.OptionInt.None_q(d));

// Datatype extensional equality declaration
function ModuleX.OptionInt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #ModuleX.OptionInt.Some
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ModuleX.OptionInt#Equal(a, b), ModuleX.OptionInt.Some_q(a) } 
    { ModuleX.OptionInt#Equal(a, b), ModuleX.OptionInt.Some_q(b) } 
  ModuleX.OptionInt.Some_q(a) && ModuleX.OptionInt.Some_q(b)
     ==> (ModuleX.OptionInt#Equal(a, b)
       <==> ModuleX.OptionInt._h3(a) == ModuleX.OptionInt._h3(b)));

// Datatype extensional equality definition: #ModuleX.OptionInt.None
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ModuleX.OptionInt#Equal(a, b), ModuleX.OptionInt.None_q(a) } 
    { ModuleX.OptionInt#Equal(a, b), ModuleX.OptionInt.None_q(b) } 
  ModuleX.OptionInt.None_q(a) && ModuleX.OptionInt.None_q(b)
     ==> ModuleX.OptionInt#Equal(a, b));

// Datatype extensionality axiom: ModuleX.OptionInt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { ModuleX.OptionInt#Equal(a, b) } 
  ModuleX.OptionInt#Equal(a, b) <==> a == b);

const unique class.ModuleX.OptionInt: ClassName;

const unique class.TypeDescriptorsInCovariantPositions.__default: ClassName;

procedure {:verboseName "TypeDescriptorsInCovariantPositions.Test (well-formedness)"} CheckWellFormed$$TypeDescriptorsInCovariantPositions.__default.Test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorsInCovariantPositions.Test (call)"} Call$$TypeDescriptorsInCovariantPositions.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// Constructor function declaration
function #TypeDescriptorsInCovariantPositions.Unit.Unit() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TypeDescriptorsInCovariantPositions.Unit.Unit())
   == ##TypeDescriptorsInCovariantPositions.Unit.Unit;
// Constructor literal
axiom #TypeDescriptorsInCovariantPositions.Unit.Unit()
   == Lit(#TypeDescriptorsInCovariantPositions.Unit.Unit());
}

const unique ##TypeDescriptorsInCovariantPositions.Unit.Unit: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TypeDescriptorsInCovariantPositions.Unit.Unit())
   == ##TypeDescriptorsInCovariantPositions.Unit.Unit;
}

function TypeDescriptorsInCovariantPositions.Unit.Unit_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeDescriptorsInCovariantPositions.Unit.Unit_q(d) } 
  TypeDescriptorsInCovariantPositions.Unit.Unit_q(d)
     <==> DatatypeCtorId(d) == ##TypeDescriptorsInCovariantPositions.Unit.Unit);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeDescriptorsInCovariantPositions.Unit.Unit_q(d) } 
  TypeDescriptorsInCovariantPositions.Unit.Unit_q(d)
     ==> d == #TypeDescriptorsInCovariantPositions.Unit.Unit());

function Tclass.TypeDescriptorsInCovariantPositions.Unit(Ty) : Ty;

const unique Tagclass.TypeDescriptorsInCovariantPositions.Unit: TyTag;

// Tclass.TypeDescriptorsInCovariantPositions.Unit Tag
axiom (forall TypeDescriptorsInCovariantPositions.Unit$X: Ty :: 
  { Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X) } 
  Tag(Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X))
       == Tagclass.TypeDescriptorsInCovariantPositions.Unit
     && TagFamily(Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X))
       == tytagFamily$Unit);

function Tclass.TypeDescriptorsInCovariantPositions.Unit_0(Ty) : Ty;

// Tclass.TypeDescriptorsInCovariantPositions.Unit injectivity 0
axiom (forall TypeDescriptorsInCovariantPositions.Unit$X: Ty :: 
  { Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X) } 
  Tclass.TypeDescriptorsInCovariantPositions.Unit_0(Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X))
     == TypeDescriptorsInCovariantPositions.Unit$X);

// Box/unbox axiom for Tclass.TypeDescriptorsInCovariantPositions.Unit
axiom (forall TypeDescriptorsInCovariantPositions.Unit$X: Ty, bx: Box :: 
  { $IsBox(bx, 
      Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X)) } 
  $IsBox(bx, 
      Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X)));

// Constructor $Is
axiom (forall TypeDescriptorsInCovariantPositions.Unit$X: Ty :: 
  { $Is(#TypeDescriptorsInCovariantPositions.Unit.Unit(), 
      Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X)) } 
  $Is(#TypeDescriptorsInCovariantPositions.Unit.Unit(), 
    Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X)));

// Constructor $IsAlloc
axiom (forall TypeDescriptorsInCovariantPositions.Unit$X: Ty, $h: Heap :: 
  { $IsAlloc(#TypeDescriptorsInCovariantPositions.Unit.Unit(), 
      Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#TypeDescriptorsInCovariantPositions.Unit.Unit(), 
      Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X), 
      $h));

// Depth-one case-split function
function $IsA#TypeDescriptorsInCovariantPositions.Unit(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TypeDescriptorsInCovariantPositions.Unit(d) } 
  $IsA#TypeDescriptorsInCovariantPositions.Unit(d)
     ==> TypeDescriptorsInCovariantPositions.Unit.Unit_q(d));

// Questionmark data type disjunctivity
axiom (forall TypeDescriptorsInCovariantPositions.Unit$X: Ty, d: DatatypeType :: 
  { TypeDescriptorsInCovariantPositions.Unit.Unit_q(d), $Is(d, 
      Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X)) } 
  $Is(d, 
      Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X))
     ==> TypeDescriptorsInCovariantPositions.Unit.Unit_q(d));

// Datatype extensional equality declaration
function TypeDescriptorsInCovariantPositions.Unit#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TypeDescriptorsInCovariantPositions.Unit.Unit
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeDescriptorsInCovariantPositions.Unit#Equal(a, b) } 
  TypeDescriptorsInCovariantPositions.Unit#Equal(a, b));

// Datatype extensionality axiom: TypeDescriptorsInCovariantPositions.Unit
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeDescriptorsInCovariantPositions.Unit#Equal(a, b) } 
  TypeDescriptorsInCovariantPositions.Unit#Equal(a, b) <==> a == b);

const unique class.TypeDescriptorsInCovariantPositions.Unit: ClassName;

procedure {:verboseName "TypeDescriptorsInCovariantPositions.Unit.Get (well-formedness)"} CheckWellFormed$$TypeDescriptorsInCovariantPositions.Unit.Get(TypeDescriptorsInCovariantPositions.Unit$X: Ty, 
    this: DatatypeType
       where $Is(this, 
          Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X), 
          $Heap), 
    x#0: Box
       where $IsBox(x#0, TypeDescriptorsInCovariantPositions.Unit$X)
         && $IsAllocBox(x#0, TypeDescriptorsInCovariantPositions.Unit$X, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, TypeDescriptorsInCovariantPositions.Unit$X)
         && $IsAllocBox(r#0, TypeDescriptorsInCovariantPositions.Unit$X, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorsInCovariantPositions.Unit.Get (call)"} Call$$TypeDescriptorsInCovariantPositions.Unit.Get(TypeDescriptorsInCovariantPositions.Unit$X: Ty, 
    this: DatatypeType
       where $Is(this, 
          Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X), 
          $Heap), 
    x#0: Box
       where $IsBox(x#0, TypeDescriptorsInCovariantPositions.Unit$X)
         && $IsAllocBox(x#0, TypeDescriptorsInCovariantPositions.Unit$X, $Heap))
   returns (r#0: Box
       where $IsBox(r#0, TypeDescriptorsInCovariantPositions.Unit$X)
         && $IsAllocBox(r#0, TypeDescriptorsInCovariantPositions.Unit$X, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TypeDescriptorsInCovariantPositions.Unit.Het (well-formedness)"} CheckWellFormed$$TypeDescriptorsInCovariantPositions.Unit.Het(TypeDescriptorsInCovariantPositions.Unit$X: Ty, 
    this: DatatypeType
       where $Is(this, 
          Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X), 
          $Heap))
   returns (r#0: Box
       where $IsBox(r#0, TypeDescriptorsInCovariantPositions.Unit$X)
         && $IsAllocBox(r#0, TypeDescriptorsInCovariantPositions.Unit$X, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeDescriptorsInCovariantPositions.Unit.Het (call)"} Call$$TypeDescriptorsInCovariantPositions.Unit.Het(TypeDescriptorsInCovariantPositions.Unit$X: Ty, 
    this: DatatypeType
       where $Is(this, 
          Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X))
         && $IsAlloc(this, 
          Tclass.TypeDescriptorsInCovariantPositions.Unit(TypeDescriptorsInCovariantPositions.Unit$X), 
          $Heap))
   returns (r#0: Box
       where $IsBox(r#0, TypeDescriptorsInCovariantPositions.Unit$X)
         && $IsAllocBox(r#0, TypeDescriptorsInCovariantPositions.Unit$X, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

const unique tytagFamily$_tuple#20: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;

const unique tytagFamily$Berry: TyTagFamily;

const unique tytagFamily$CoBerry: TyTagFamily;

const unique tytagFamily$NatPlus: TyTagFamily;

const unique tytagFamily$ConflictingNames: TyTagFamily;

const unique tytagFamily$OptionInt: TyTagFamily;

const unique tytagFamily$Record: TyTagFamily;

const unique tytagFamily$R: TyTagFamily;

const unique tytagFamily$NumericDestructorNames: TyTagFamily;

const unique tytagFamily$Unit: TyTagFamily;
