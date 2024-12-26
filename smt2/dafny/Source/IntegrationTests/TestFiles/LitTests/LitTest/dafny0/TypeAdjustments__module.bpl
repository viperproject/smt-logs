// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy

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

procedure {:verboseName "M0 (well-formedness)"} CheckWellFormed$$_module.__default.M0(n#0: int where LitInt(0) <= n#0, e#0: int where Mod(e#0, LitInt(2)) == LitInt(0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M0 (call)"} Call$$_module.__default.M0(n#0: int where LitInt(0) <= n#0, e#0: int where Mod(e#0, LitInt(2)) == LitInt(0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0(n#0: int where LitInt(0) <= n#0, e#0: int where Mod(e#0, LitInt(2)) == LitInt(0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0(n#0: int, e#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int where LitInt(0) <= x#0;
  var y#0: int;
  var z#0: int;
  var $rhs#0: int where LitInt(0) <= $rhs#0;
  var $rhs#1: int;
  var $rhs#2: int;

    // AddMethodImpl: M0, Impl$$_module.__default.M0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc x#0 /* where LitInt(0) <= x#0 */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(8,5)
    assume true;
    assume true;
    x#0 := n#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(9,5)
    assume true;
    assume true;
    x#0 := n#0;
    havoc y#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(12,5)
    assume true;
    assume true;
    y#0 := e#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(13,5)
    assume true;
    assume true;
    y#0 := n#0;
    havoc z#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(16,5)
    assume true;
    assume true;
    z#0 := n#0 + n#0;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(18,11)
    assume true;
    assume true;
    assume true;
    havoc $rhs#0 /* where LitInt(0) <= $rhs#0 */;
    havoc $rhs#1;
    havoc $rhs#2;
    x#0 := $rhs#0;
    y#0 := $rhs#1;
    z#0 := $rhs#2;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(19,3)
    if (*)
    {
        assume true;
        assume {:id "id332"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(21,5)
        assume true;
        assert {:id "id333"} LitInt(0) <= x#0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id330"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(23,5)
        assume true;
        assert {:id "id331"} LitInt(0) <= y#0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id327"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(25,5)
        assert {:id "id328"} {:subsumption 0} LitInt(2) != 0;
        assume true;
        assert {:id "id329"} Mod(y#0, LitInt(2)) == LitInt(0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id325"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(27,5)
        assume true;
        assert {:id "id326"} LitInt(0) <= z#0;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id324"} false;
    }
}



procedure {:verboseName "M1 (well-formedness)"} CheckWellFormed$$_module.__default.M1();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1 (call)"} Call$$_module.__default.M1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var arr#0: ref
     where $Is(arr#0, Tclass._System.array(TInt))
       && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap);
  var $nw: ref;
  var y#0: int;
  var $rhs#0: ref where $Is($rhs#0, Tclass._System.array(TInt));
  var $rhs#1: int;
  var obj#0: ref
     where $Is(obj#0, Tclass._System.object?())
       && $IsAlloc(obj#0, Tclass._System.object?(), $Heap);
  var newtype$check#0: ref;

    // AddMethodImpl: M1, Impl$$_module.__default.M1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc arr#0 /* where $Is(arr#0, Tclass._System.array(TInt))
       && $IsAlloc(arr#0, Tclass._System.array(TInt), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(33,7)
    assume true;
    assert {:id "id334"} 0 <= LitInt(100);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(100);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    arr#0 := $nw;
    havoc y#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(35,5)
    assume true;
    assert {:id "id336"} arr#0 != null;
    assert {:id "id337"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(arr#0);
    assume true;
    y#0 := $Unbox(read($Heap, arr#0, IndexField(LitInt(0)))): int + 15;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(37,10)
    assume true;
    assume true;
    havoc $rhs#0 /* where $Is($rhs#0, Tclass._System.array(TInt)) */;
    havoc $rhs#1;
    arr#0 := $rhs#0;
    y#0 := $rhs#1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(38,20)
    assume true;
    assume true;
    obj#0 := arr#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(39,3)
    newtype$check#0 := null;
    assume true;
    assert {:id "id342"} obj#0 != null;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(40,3)
    assume true;
    assert {:id "id343"} LitInt(0) <= y#0;
}



procedure {:verboseName "M2 (well-formedness)"} CheckWellFormed$$_module.__default.M2(ms#0: MultiSet
       where $Is(ms#0, TMultiSet(TReal)) && $IsAlloc(ms#0, TMultiSet(TReal), $Heap), 
    m0#0: Map
       where $Is(m0#0, TMap(TBool, Tclass._System.nat()))
         && $IsAlloc(m0#0, TMap(TBool, Tclass._System.nat()), $Heap), 
    m1#0: IMap
       where $Is(m1#0, TIMap(TReal, Tclass._System.nat()))
         && $IsAlloc(m1#0, TIMap(TReal, Tclass._System.nat()), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M2 (call)"} Call$$_module.__default.M2(ms#0: MultiSet
       where $Is(ms#0, TMultiSet(TReal)) && $IsAlloc(ms#0, TMultiSet(TReal), $Heap), 
    m0#0: Map
       where $Is(m0#0, TMap(TBool, Tclass._System.nat()))
         && $IsAlloc(m0#0, TMap(TBool, Tclass._System.nat()), $Heap), 
    m1#0: IMap
       where $Is(m1#0, TIMap(TReal, Tclass._System.nat()))
         && $IsAlloc(m1#0, TIMap(TReal, Tclass._System.nat()), $Heap));
  // user-defined preconditions
  requires {:id "id346"} Set#IsMember(Map#Domain(m0#0), $Box(Lit(true)));
  requires {:id "id347"} IMap#Domain(m1#0)[$Box(LitReal(59e-1))];
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M2 (correctness)"} Impl$$_module.__default.M2(ms#0: MultiSet
       where $Is(ms#0, TMultiSet(TReal)) && $IsAlloc(ms#0, TMultiSet(TReal), $Heap), 
    m0#0: Map
       where $Is(m0#0, TMap(TBool, Tclass._System.nat()))
         && $IsAlloc(m0#0, TMap(TBool, Tclass._System.nat()), $Heap), 
    m1#0: IMap
       where $Is(m1#0, TIMap(TReal, Tclass._System.nat()))
         && $IsAlloc(m1#0, TIMap(TReal, Tclass._System.nat()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id348"} Set#IsMember(Map#Domain(m0#0), $Box(Lit(true)));
  requires {:id "id349"} IMap#Domain(m1#0)[$Box(LitReal(59e-1))];
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M2 (correctness)"} Impl$$_module.__default.M2(ms#0: MultiSet, m0#0: Map, m1#0: IMap) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: int where LitInt(0) <= z#0;
  var nrr#0: ref
     where $Is(nrr#0, Tclass._System.array(Tclass._System.nat()))
       && $IsAlloc(nrr#0, Tclass._System.array(Tclass._System.nat()), $Heap);
  var $nw: ref;
  var matrix#0: ref
     where $Is(matrix#0, Tclass._System.array2(Tclass._System.nat()))
       && $IsAlloc(matrix#0, Tclass._System.array2(Tclass._System.nat()), $Heap);

    // AddMethodImpl: M2, Impl$$_module.__default.M2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc z#0 /* where LitInt(0) <= z#0 */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(48,11)
    assume true;
    assert {:id "id350"} 0 <= LitInt(100);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(Tclass._System.nat()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(100);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    nrr#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(49,5)
    assume true;
    assert {:id "id352"} nrr#0 != null;
    assert {:id "id353"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(nrr#0);
    assume true;
    z#0 := $Unbox(read($Heap, nrr#0, IndexField(LitInt(0)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(50,14)
    assume true;
    assert {:id "id355"} 0 <= LitInt(100);
    assert {:id "id356"} 0 <= LitInt(100);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array2?(Tclass._System.nat()));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array2.Length0($nw) == LitInt(100);
    assume _System.array2.Length1($nw) == LitInt(100);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    matrix#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(51,5)
    assume true;
    assert {:id "id358"} matrix#0 != null;
    assert {:id "id359"} 0 <= LitInt(2) && LitInt(2) < _System.array2.Length0(matrix#0);
    assert {:id "id360"} 0 <= LitInt(3) && LitInt(3) < _System.array2.Length1(matrix#0);
    assume true;
    z#0 := $Unbox(read($Heap, matrix#0, MultiIndexField(IndexField(LitInt(2)), LitInt(3)))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(52,5)
    assume true;
    assume true;
    z#0 := MultiSet#Multiplicity(ms#0, $Box(LitReal(319e-2)));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(53,5)
    assume true;
    assert {:id "id363"} Set#IsMember(Map#Domain(m0#0), $Box(Lit(true)));
    assume true;
    z#0 := $Unbox(Map#Elements(m0#0)[$Box(Lit(true))]): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(54,5)
    assume true;
    assert {:id "id365"} IMap#Domain(m1#0)[$Box(LitReal(59e-1))];
    assume true;
    z#0 := $Unbox(IMap#Elements(m1#0)[$Box(LitReal(59e-1))]): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(56,5)
    assume true;
    havoc z#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(57,3)
    assume true;
    assert {:id "id367"} LitInt(0) <= z#0;
}



procedure {:verboseName "M3 (well-formedness)"} CheckWellFormed$$_module.__default.M3(s#0: Seq
       where $Is(s#0, TSeq(Tclass._System.nat()))
         && $IsAlloc(s#0, TSeq(Tclass._System.nat()), $Heap), 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(Tclass._System.nat()))
         && $IsAlloc(arr#0, Tclass._System.array(Tclass._System.nat()), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3 (well-formedness)"} CheckWellFormed$$_module.__default.M3(s#0: Seq, arr#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: M3, CheckWellFormed$$_module.__default.M3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume {:id "id368"} LitInt(10) <= Seq#Length(s#0);
    assert {:id "id369"} arr#0 != null;
    assume {:id "id370"} LitInt(10) <= _System.array.Length(arr#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "M3 (call)"} Call$$_module.__default.M3(s#0: Seq
       where $Is(s#0, TSeq(Tclass._System.nat()))
         && $IsAlloc(s#0, TSeq(Tclass._System.nat()), $Heap), 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(Tclass._System.nat()))
         && $IsAlloc(arr#0, Tclass._System.array(Tclass._System.nat()), $Heap));
  // user-defined preconditions
  requires {:id "id371"} LitInt(10) <= Seq#Length(s#0);
  requires {:id "id372"} LitInt(10) <= _System.array.Length(arr#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3 (correctness)"} Impl$$_module.__default.M3(s#0: Seq
       where $Is(s#0, TSeq(Tclass._System.nat()))
         && $IsAlloc(s#0, TSeq(Tclass._System.nat()), $Heap), 
    arr#0: ref
       where $Is(arr#0, Tclass._System.array(Tclass._System.nat()))
         && $IsAlloc(arr#0, Tclass._System.array(Tclass._System.nat()), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id373"} LitInt(10) <= Seq#Length(s#0);
  requires {:id "id374"} LitInt(10) <= _System.array.Length(arr#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3 (correctness)"} Impl$$_module.__default.M3(s#0: Seq, arr#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Seq
     where $Is(a#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(a#0, TSeq(Tclass._System.nat()), $Heap);
  var b#0: Seq
     where $Is(b#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(b#0, TSeq(Tclass._System.nat()), $Heap);
  var c#0: Seq
     where $Is(c#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(c#0, TSeq(Tclass._System.nat()), $Heap);
  var x#0: Seq
     where $Is(x#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(x#0, TSeq(Tclass._System.nat()), $Heap);
  var y#0: Seq
     where $Is(y#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(y#0, TSeq(Tclass._System.nat()), $Heap);
  var z#0: Seq
     where $Is(z#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(z#0, TSeq(Tclass._System.nat()), $Heap);
  var w#0: Seq
     where $Is(w#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(w#0, TSeq(Tclass._System.nat()), $Heap);
  var k#0: int where LitInt(0) <= k#0;

    // AddMethodImpl: M3, Impl$$_module.__default.M3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0 /* where $Is(a#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(a#0, TSeq(Tclass._System.nat()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(65,5)
    assume true;
    assert {:id "id375"} 0 <= LitInt(10) && LitInt(10) <= Seq#Length(s#0);
    assume true;
    a#0 := Seq#Take(s#0, LitInt(10));
    havoc b#0 /* where $Is(b#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(b#0, TSeq(Tclass._System.nat()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(67,5)
    assume true;
    assert {:id "id377"} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(s#0);
    assume true;
    b#0 := Seq#Drop(s#0, LitInt(0));
    havoc c#0 /* where $Is(c#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(c#0, TSeq(Tclass._System.nat()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(69,5)
    assume true;
    assert {:id "id379"} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(s#0);
    assert {:id "id380"} LitInt(0) <= LitInt(10) && LitInt(10) <= Seq#Length(s#0);
    assume true;
    c#0 := Seq#Drop(Seq#Take(s#0, LitInt(10)), LitInt(0));
    havoc x#0 /* where $Is(x#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(x#0, TSeq(Tclass._System.nat()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(72,5)
    assume true;
    assert {:id "id382"} arr#0 != null;
    assert {:id "id383"} 0 <= LitInt(10) && LitInt(10) <= _System.array.Length(arr#0);
    assume true;
    x#0 := Seq#Take(Seq#FromArray($Heap, arr#0), LitInt(10));
    havoc y#0 /* where $Is(y#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(y#0, TSeq(Tclass._System.nat()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(74,5)
    assume true;
    assert {:id "id385"} arr#0 != null;
    assert {:id "id386"} 0 <= LitInt(0) && LitInt(0) <= _System.array.Length(arr#0);
    assume true;
    y#0 := Seq#Drop(Seq#FromArray($Heap, arr#0), LitInt(0));
    havoc z#0 /* where $Is(z#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(z#0, TSeq(Tclass._System.nat()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(76,5)
    assume true;
    assert {:id "id388"} arr#0 != null;
    assert {:id "id389"} 0 <= LitInt(0) && LitInt(0) <= _System.array.Length(arr#0);
    assert {:id "id390"} LitInt(0) <= LitInt(10) && LitInt(10) <= _System.array.Length(arr#0);
    assume true;
    z#0 := Seq#Drop(Seq#Take(Seq#FromArray($Heap, arr#0), LitInt(10)), LitInt(0));
    havoc w#0 /* where $Is(w#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(w#0, TSeq(Tclass._System.nat()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(78,5)
    assume true;
    assert {:id "id392"} arr#0 != null;
    assume true;
    w#0 := Seq#FromArray($Heap, arr#0);
    havoc k#0 /* where LitInt(0) <= k#0 */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(81,5)
    assume true;
    assert {:id "id394"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(a#0);
    assume true;
    k#0 := $Unbox(Seq#Index(a#0, LitInt(0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(82,5)
    assume true;
    assert {:id "id396"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(b#0);
    assume true;
    k#0 := $Unbox(Seq#Index(b#0, LitInt(0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(83,5)
    assume true;
    assert {:id "id398"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(c#0);
    assume true;
    k#0 := $Unbox(Seq#Index(c#0, LitInt(0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(84,5)
    assume true;
    assert {:id "id400"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(x#0);
    assume true;
    k#0 := $Unbox(Seq#Index(x#0, LitInt(0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(85,5)
    assume true;
    assert {:id "id402"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(y#0);
    assume true;
    k#0 := $Unbox(Seq#Index(y#0, LitInt(0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(86,5)
    assume true;
    assert {:id "id404"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(z#0);
    assume true;
    k#0 := $Unbox(Seq#Index(z#0, LitInt(0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(87,5)
    assume true;
    assert {:id "id406"} 0 <= LitInt(0) && LitInt(0) < Seq#Length(w#0);
    assume true;
    k#0 := $Unbox(Seq#Index(w#0, LitInt(0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(88,5)
    assume true;
    havoc k#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(89,3)
    assume true;
    assert {:id "id408"} LitInt(0) <= k#0;
}



procedure {:verboseName "M4 (well-formedness)"} CheckWellFormed$$_module.__default.M4(i#0: int, n#0: int where LitInt(0) <= n#0, b#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M4 (call)"} Call$$_module.__default.M4(i#0: int, n#0: int where LitInt(0) <= n#0, b#0: bool);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M4 (correctness)"} Impl$$_module.__default.M4(i#0: int, n#0: int where LitInt(0) <= n#0, b#0: bool)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M4 (correctness)"} Impl$$_module.__default.M4(i#0: int, n#0: int, b#0: bool) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var y#0: int;
  var z#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;

    // AddMethodImpl: M4, Impl$$_module.__default.M4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc x#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(94,5)
    assume true;
    if (b#0)
    {
    }
    else
    {
    }

    assume true;
    x#0 := (if b#0 then n#0 else n#0);
    havoc y#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(96,5)
    assume true;
    if (b#0)
    {
    }
    else
    {
    }

    assume true;
    y#0 := (if b#0 then i#0 else n#0);
    havoc z#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(98,5)
    assume true;
    if (b#0)
    {
    }
    else
    {
    }

    assume true;
    z#0 := (if b#0 then n#0 else i#0);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(100,11)
    assume true;
    assume true;
    assume true;
    havoc $rhs#0;
    havoc $rhs#1;
    havoc $rhs#2;
    x#0 := $rhs#0;
    y#0 := $rhs#1;
    z#0 := $rhs#2;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(101,3)
    if (*)
    {
        assume true;
        assume {:id "id420"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(103,7)
        assume true;
        assert {:id "id421"} LitInt(0) <= x#0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id418"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(105,7)
        assume true;
        assert {:id "id419"} LitInt(0) <= y#0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id416"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(107,7)
        assume true;
        assert {:id "id417"} LitInt(0) <= z#0;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id415"} false;
    }
}



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

procedure {:verboseName "M5 (well-formedness)"} CheckWellFormed$$_module.__default.M5(list#0: DatatypeType
       where $Is(list#0, Tclass._module.List())
         && $IsAlloc(list#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(list#0), 
    a#0: int where LitInt(0) <= a#0 && LitInt(10) <= a#0 && a#0 < 20, 
    b#0: int where LitInt(0) <= b#0 && LitInt(20) <= b#0 && b#0 < 30, 
    c#0: int where LitInt(0) <= c#0 && LitInt(30) <= c#0 && c#0 < 40);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M5 (call)"} Call$$_module.__default.M5(list#0: DatatypeType
       where $Is(list#0, Tclass._module.List())
         && $IsAlloc(list#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(list#0), 
    a#0: int where LitInt(0) <= a#0 && LitInt(10) <= a#0 && a#0 < 20, 
    b#0: int where LitInt(0) <= b#0 && LitInt(20) <= b#0 && b#0 < 30, 
    c#0: int where LitInt(0) <= c#0 && LitInt(30) <= c#0 && c#0 < 40);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M5 (correctness)"} Impl$$_module.__default.M5(list#0: DatatypeType
       where $Is(list#0, Tclass._module.List())
         && $IsAlloc(list#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(list#0), 
    a#0: int where LitInt(0) <= a#0 && LitInt(10) <= a#0 && a#0 < 20, 
    b#0: int where LitInt(0) <= b#0 && LitInt(20) <= b#0 && b#0 < 30, 
    c#0: int where LitInt(0) <= c#0 && LitInt(30) <= c#0 && c#0 < 40)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M5 (correctness)"} Impl$$_module.__default.M5(list#0: DatatypeType, a#0: int, b#0: int, c#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int where LitInt(0) <= x#0;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var _mcc#4#0_0_0: int;
  var _mcc#5#0_0_0: DatatypeType;

    // AddMethodImpl: M5, Impl$$_module.__default.M5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc x#0 /* where LitInt(0) <= x#0 */;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (list#0 == #_module.List.Nil())
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(121,9)
        assume true;
        assume true;
        x#0 := a#0;
    }
    else if (list#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume LitInt(0) <= _mcc#0#0_0;
        assume $Is(_mcc#1#0_0, Tclass._module.List())
           && $IsAlloc(_mcc#1#0_0, Tclass._module.List(), $Heap);
        assume true;
        havoc _mcc#4#0_0_0, _mcc#5#0_0_0;
        if (_mcc#1#0_0 == #_module.List.Nil())
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(123,9)
            assume true;
            assume true;
            x#0 := b#0;
        }
        else if (_mcc#1#0_0 == #_module.List.Cons(_mcc#4#0_0_0, _mcc#5#0_0_0))
        {
            assume LitInt(0) <= _mcc#4#0_0_0;
            assume $Is(_mcc#5#0_0_0, Tclass._module.List())
               && $IsAlloc(_mcc#5#0_0_0, Tclass._module.List(), $Heap);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(125,9)
            assume true;
            assume true;
            x#0 := c#0;
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

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(128,5)
    assume true;
    havoc x#0;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(129,3)
    if (*)
    {
        assume true;
        assume {:id "id432"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(131,7)
        assume true;
        assert {:id "id433"} LitInt(0) <= x#0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id430"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(133,7)
        assume true;
        assert {:id "id431"} LitInt(10) <= x#0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id428"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(135,7)
        assume true;
        assert {:id "id429"} LitInt(20) <= x#0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id426"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(137,7)
        assume true;
        assert {:id "id427"} LitInt(30) <= x#0;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id425"} false;
    }
}



procedure {:verboseName "M6 (well-formedness)"} CheckWellFormed$$_module.__default.M6(list#0: DatatypeType
       where $Is(list#0, Tclass._module.List())
         && $IsAlloc(list#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(list#0), 
    a#0: int where LitInt(0) <= a#0 && LitInt(10) <= a#0 && a#0 < 20, 
    b#0: int where LitInt(0) <= b#0 && LitInt(20) <= b#0 && b#0 < 30, 
    c#0: int where LitInt(0) <= c#0 && LitInt(30) <= c#0 && c#0 < 40);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M6 (call)"} Call$$_module.__default.M6(list#0: DatatypeType
       where $Is(list#0, Tclass._module.List())
         && $IsAlloc(list#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(list#0), 
    a#0: int where LitInt(0) <= a#0 && LitInt(10) <= a#0 && a#0 < 20, 
    b#0: int where LitInt(0) <= b#0 && LitInt(20) <= b#0 && b#0 < 30, 
    c#0: int where LitInt(0) <= c#0 && LitInt(30) <= c#0 && c#0 < 40);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M6 (correctness)"} Impl$$_module.__default.M6(list#0: DatatypeType
       where $Is(list#0, Tclass._module.List())
         && $IsAlloc(list#0, Tclass._module.List(), $Heap)
         && $IsA#_module.List(list#0), 
    a#0: int where LitInt(0) <= a#0 && LitInt(10) <= a#0 && a#0 < 20, 
    b#0: int where LitInt(0) <= b#0 && LitInt(20) <= b#0 && b#0 < 30, 
    c#0: int where LitInt(0) <= c#0 && LitInt(30) <= c#0 && c#0 < 40)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M6 (correctness)"} Impl$$_module.__default.M6(list#0: DatatypeType, a#0: int, b#0: int, c#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var _mcc#4#0: int;
  var _mcc#5#0: DatatypeType;

    // AddMethodImpl: M6, Impl$$_module.__default.M6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc x#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(143,5)
    assume true;
    if (list#0 == #_module.List.Nil())
    {
    }
    else if (list#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
    {
        assume LitInt(0) <= _mcc#0#0;
        assume $Is(_mcc#1#0, Tclass._module.List());
        if (_mcc#1#0 == #_module.List.Nil())
        {
        }
        else if (_mcc#1#0 == #_module.List.Cons(_mcc#4#0, _mcc#5#0))
        {
            assume LitInt(0) <= _mcc#4#0;
            assume $Is(_mcc#5#0, Tclass._module.List());
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

    assume true;
    x#0 := (if _module.List.Nil_q(list#0)
       then a#0
       else (if _module.List.Nil_q(_module.List.tail(list#0)) then b#0 else c#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(149,5)
    assume true;
    havoc x#0;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(150,3)
    if (*)
    {
        assume true;
        assume {:id "id442"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(152,7)
        assume true;
        assert {:id "id443"} LitInt(0) <= x#0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id440"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(154,7)
        assume true;
        assert {:id "id441"} LitInt(10) <= x#0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id438"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(156,7)
        assume true;
        assert {:id "id439"} LitInt(20) <= x#0;
    }
    else if (*)
    {
        assume true;
        assume {:id "id436"} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(158,7)
        assume true;
        assert {:id "id437"} LitInt(30) <= x#0;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id435"} false;
    }
}



procedure {:verboseName "M7 (well-formedness)"} CheckWellFormed$$_module.__default.M7(n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M7 (call)"} Call$$_module.__default.M7(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M7 (correctness)"} Impl$$_module.__default.M7(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
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

function _module.Cell.F#Handle(self: ref) : HandleType;

// function declaration for _module.Cell.F
function _module.Cell.F(this: ref) : int
uses {
// consequence axiom for _module.Cell.F
axiom 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.Cell.F(this) } 
    _module.Cell.F#canCall(this)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Cell()))
       ==> LitInt(0) <= _module.Cell.F(this));
// definition axiom for _module.Cell.F (revealed)
axiom {:id "id538"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.Cell.F(this) } 
    _module.Cell.F#canCall(this)
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Cell()))
       ==> _module.Cell.F(this) == LitInt(2));
// definition axiom for _module.Cell.F for all literals (revealed)
axiom {:id "id539"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    {:weight 3} { _module.Cell.F(Lit(this)) } 
    _module.Cell.F#canCall(Lit(this))
         || (0 < $FunctionContextHeight && this != null && $Is(this, Tclass._module.Cell()))
       ==> _module.Cell.F(Lit(this)) == LitInt(2));
}

function _module.Cell.F#canCall(this: ref) : bool;

axiom (forall $self: ref, $heap: Heap :: 
  { Apply0(Tclass._System.nat(), $heap, _module.Cell.F#Handle($self)) } 
  Apply0(Tclass._System.nat(), $heap, _module.Cell.F#Handle($self))
     == $Box(_module.Cell.F($self)));

axiom (forall $self: ref, $heap: Heap :: 
  { Requires0(Tclass._System.nat(), $heap, _module.Cell.F#Handle($self)) } 
  Requires0(Tclass._System.nat(), $heap, _module.Cell.F#Handle($self))
     == _module.Cell.F#requires($self));

axiom (forall $bx: Box, $self: ref, $heap: Heap :: 
  { Set#IsMember(Reads0(Tclass._System.nat(), $heap, _module.Cell.F#Handle($self)), $bx) } 
  Set#IsMember(Reads0(Tclass._System.nat(), $heap, _module.Cell.F#Handle($self)), $bx)
     == false);

axiom (forall $self: ref, $heap: Heap :: 
  { _module.Cell.F($self), $IsGoodHeap($heap) } 
  _module.Cell.F($self)
     == $Unbox(Apply0(Tclass._System.nat(), $heap, _module.Cell.F#Handle($self))): int);

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M7 (correctness)"} Impl$$_module.__default.M7(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#cell#0: bool;
  var cell#0: ref
     where defass#cell#0
       ==> $Is(cell#0, Tclass._module.Cell())
         && $IsAlloc(cell#0, Tclass._module.Cell(), $Heap);
  var $nw: ref;
  var x#0: int where LitInt(0) <= x#0;
  var y#0: int where LitInt(0) <= y#0;
  var z#0: int where LitInt(0) <= z#0;
  var w#0: int;
  var $rhs##0: int;
  var $rhs##1: int;
  var ff#0: HandleType
     where $Is(ff#0, Tclass._System.___hTotalFunc0(Tclass._System.nat()))
       && $IsAlloc(ff#0, Tclass._System.___hTotalFunc0(Tclass._System.nat()), $Heap);
  var u#0: int where LitInt(0) <= u#0;
  var $rhs#0: int where LitInt(0) <= $rhs#0;
  var $rhs#1: int where LitInt(0) <= $rhs#1;
  var $rhs#2: int where LitInt(0) <= $rhs#2;
  var $rhs#3: int;
  var $rhs#4: int where LitInt(0) <= $rhs#4;

    // AddMethodImpl: M7, Impl$$_module.__default.M7
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(185,12)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Cell?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    cell#0 := $nw;
    defass#cell#0 := true;
    havoc x#0 /* where LitInt(0) <= x#0 */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(188,5)
    assume true;
    assert {:id "id445"} defass#cell#0;
    assert {:id "id446"} cell#0 != null;
    assume true;
    x#0 := $Unbox(read($Heap, cell#0, _module.Cell.data)): int;
    havoc y#0 /* where LitInt(0) <= y#0 */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(190,5)
    assume true;
    assert {:id "id448"} defass#cell#0;
    assert {:id "id449"} cell#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(cell#0), Tclass._module.Cell?(), $Heap);
    assume _module.Cell.F#canCall(cell#0);
    assume _module.Cell.F#canCall(cell#0);
    y#0 := _module.Cell.F(cell#0);
    havoc z#0 /* where LitInt(0) <= z#0 */;
    havoc w#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(193,17)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id451"} defass#cell#0;
    assume true;
    assert {:id "id452"} cell#0 != null;
    call {:id "id453"} $rhs##0, $rhs##1 := Call$$_module.Cell.M(cell#0);
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##0;
    w#0 := $rhs##1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(194,10)
    assume true;
    assert {:id "id456"} 0 != $FunctionContextHeight;
    assert {:id "id457"} defass#cell#0;
    assert {:id "id458"} cell#0 != null;
    assume true;
    ff#0 := _module.Cell.F#Handle(cell#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(195,6)
    assume true;
    havoc ff#0;
    havoc u#0 /* where LitInt(0) <= u#0 */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(197,5)
    assume true;
    assume true;
    u#0 := $Unbox(Apply0(Tclass._System.nat(), $Heap, ff#0)): int;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(199,17)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    havoc $rhs#0 /* where LitInt(0) <= $rhs#0 */;
    havoc $rhs#1 /* where LitInt(0) <= $rhs#1 */;
    havoc $rhs#2 /* where LitInt(0) <= $rhs#2 */;
    havoc $rhs#3;
    havoc $rhs#4 /* where LitInt(0) <= $rhs#4 */;
    x#0 := $rhs#0;
    y#0 := $rhs#1;
    z#0 := $rhs#2;
    w#0 := $rhs#3;
    u#0 := $rhs#4;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(200,3)
    assume true;
    assert {:id "id466"} LitInt(0) <= x#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(201,3)
    assume true;
    assert {:id "id467"} LitInt(0) <= y#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(202,3)
    assume true;
    assert {:id "id468"} LitInt(0) <= z#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(203,3)
    assume true;
    assert {:id "id469"} LitInt(0) <= w#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(204,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(ff#0), Tclass._System.___hFunc0(Tclass._System.nat()), $Heap);
    assume Requires0#canCall(Tclass._System.nat(), $Heap, ff#0);
    assume Requires0#canCall(Tclass._System.nat(), $Heap, ff#0);
    assert {:id "id470"} Requires0(Tclass._System.nat(), $Heap, ff#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(205,3)
    assume true;
    assert {:id "id471"} LitInt(0) <= u#0;
}



procedure {:verboseName "M8 (well-formedness)"} CheckWellFormed$$_module.__default.M8(n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M8 (call)"} Call$$_module.__default.M8(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M8 (correctness)"} Impl$$_module.__default.M8(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.CellX(Ty) : Ty;

const unique Tagclass._module.CellX: TyTag;

// Tclass._module.CellX Tag
axiom (forall _module.CellX$X: Ty :: 
  { Tclass._module.CellX(_module.CellX$X) } 
  Tag(Tclass._module.CellX(_module.CellX$X)) == Tagclass._module.CellX
     && TagFamily(Tclass._module.CellX(_module.CellX$X)) == tytagFamily$CellX);

function Tclass._module.CellX_0(Ty) : Ty;

// Tclass._module.CellX injectivity 0
axiom (forall _module.CellX$X: Ty :: 
  { Tclass._module.CellX(_module.CellX$X) } 
  Tclass._module.CellX_0(Tclass._module.CellX(_module.CellX$X)) == _module.CellX$X);

// Box/unbox axiom for Tclass._module.CellX
axiom (forall _module.CellX$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.CellX(_module.CellX$X)) } 
  $IsBox(bx, Tclass._module.CellX(_module.CellX$X))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.CellX(_module.CellX$X)));

function _module.CellX.data(_module.CellX$X: Ty, this: ref) : Box
uses {
// CellX.data: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CellX$X: Ty, $o: ref :: 
    { _module.CellX.data(_module.CellX$X, $o) } 
    $o != null && dtype($o) == Tclass._module.CellX?(_module.CellX$X)
       ==> $IsBox(_module.CellX.data(_module.CellX$X, $o), _module.CellX$X));
// CellX.data: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall _module.CellX$X: Ty, $h: Heap, $o: ref :: 
    { _module.CellX.data(_module.CellX$X, $o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.CellX?(_module.CellX$X)
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAllocBox(_module.CellX.data(_module.CellX$X, $o), _module.CellX$X, $h));
}

function Tclass._module.CellX?(Ty) : Ty;

const unique Tagclass._module.CellX?: TyTag;

// Tclass._module.CellX? Tag
axiom (forall _module.CellX$X: Ty :: 
  { Tclass._module.CellX?(_module.CellX$X) } 
  Tag(Tclass._module.CellX?(_module.CellX$X)) == Tagclass._module.CellX?
     && TagFamily(Tclass._module.CellX?(_module.CellX$X)) == tytagFamily$CellX);

function Tclass._module.CellX?_0(Ty) : Ty;

// Tclass._module.CellX? injectivity 0
axiom (forall _module.CellX$X: Ty :: 
  { Tclass._module.CellX?(_module.CellX$X) } 
  Tclass._module.CellX?_0(Tclass._module.CellX?(_module.CellX$X))
     == _module.CellX$X);

// Box/unbox axiom for Tclass._module.CellX?
axiom (forall _module.CellX$X: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.CellX?(_module.CellX$X)) } 
  $IsBox(bx, Tclass._module.CellX?(_module.CellX$X))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.CellX?(_module.CellX$X)));

function _module.CellX.F#Handle(_module.CellX$X: Ty, self: ref) : HandleType;

// function declaration for _module.CellX.F
function _module.CellX.F(_module.CellX$X: Ty, this: ref) : Box
uses {
// consequence axiom for _module.CellX.F
axiom 1 <= $FunctionContextHeight
   ==> (forall _module.CellX$X: Ty, this: ref :: 
    { _module.CellX.F(_module.CellX$X, this) } 
    _module.CellX.F#canCall(_module.CellX$X, this)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.CellX(_module.CellX$X)))
       ==> $IsBox(_module.CellX.F(_module.CellX$X, this), _module.CellX$X));
// alloc consequence axiom for _module.CellX.F
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, _module.CellX$X: Ty, this: ref :: 
    { $IsAllocBox(_module.CellX.F(_module.CellX$X, this), _module.CellX$X, $Heap) } 
    (_module.CellX.F#canCall(_module.CellX$X, this)
           || (1 < $FunctionContextHeight
             && 
            this != null
             && $IsAlloc(this, Tclass._module.CellX(_module.CellX$X), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAllocBox(_module.CellX.F(_module.CellX$X, this), _module.CellX$X, $Heap));
// definition axiom for _module.CellX.F (revealed)
axiom {:id "id544"} 1 <= $FunctionContextHeight
   ==> (forall _module.CellX$X: Ty, this: ref :: 
    { _module.CellX.F(_module.CellX$X, this) } 
    _module.CellX.F#canCall(_module.CellX$X, this)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.CellX(_module.CellX$X)))
       ==> _module.CellX.F(_module.CellX$X, this)
         == _module.CellX.data(_module.CellX$X, this));
// definition axiom for _module.CellX.F for all literals (revealed)
axiom {:id "id545"} 1 <= $FunctionContextHeight
   ==> (forall _module.CellX$X: Ty, this: ref :: 
    {:weight 3} { _module.CellX.F(_module.CellX$X, Lit(this)) } 
    _module.CellX.F#canCall(_module.CellX$X, Lit(this))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.CellX(_module.CellX$X)))
       ==> _module.CellX.F(_module.CellX$X, Lit(this))
         == _module.CellX.data(_module.CellX$X, Lit(this)));
}

function _module.CellX.F#canCall(_module.CellX$X: Ty, this: ref) : bool;

axiom (forall _module.CellX$X: Ty, $self: ref, $heap: Heap :: 
  { Apply0(_module.CellX$X, $heap, _module.CellX.F#Handle(_module.CellX$X, $self)) } 
  Apply0(_module.CellX$X, $heap, _module.CellX.F#Handle(_module.CellX$X, $self))
     == _module.CellX.F(_module.CellX$X, $self));

axiom (forall _module.CellX$X: Ty, $self: ref, $heap: Heap :: 
  { Requires0(_module.CellX$X, $heap, _module.CellX.F#Handle(_module.CellX$X, $self)) } 
  Requires0(_module.CellX$X, $heap, _module.CellX.F#Handle(_module.CellX$X, $self))
     == _module.CellX.F#requires(_module.CellX$X, $self));

axiom (forall $bx: Box, _module.CellX$X: Ty, $self: ref, $heap: Heap :: 
  { Set#IsMember(Reads0(_module.CellX$X, $heap, _module.CellX.F#Handle(_module.CellX$X, $self)), 
      $bx) } 
  Set#IsMember(Reads0(_module.CellX$X, $heap, _module.CellX.F#Handle(_module.CellX$X, $self)), 
      $bx)
     == false);

axiom (forall _module.CellX$X: Ty, $self: ref, $heap: Heap :: 
  { _module.CellX.F(_module.CellX$X, $self), $IsGoodHeap($heap) } 
  _module.CellX.F(_module.CellX$X, $self)
     == Apply0(_module.CellX$X, $heap, _module.CellX.F#Handle(_module.CellX$X, $self)));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M8 (correctness)"} Impl$$_module.__default.M8(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#cell#0: bool;
  var cell#0: ref
     where defass#cell#0
       ==> $Is(cell#0, Tclass._module.CellX(Tclass._System.nat()))
         && $IsAlloc(cell#0, Tclass._module.CellX(Tclass._System.nat()), $Heap);
  var $nw: ref;
  var u##0: int;
  var x#0: int where LitInt(0) <= x#0;
  var y#0: int where LitInt(0) <= y#0;
  var z#0: int where LitInt(0) <= z#0;
  var w#0: int;
  var $rhs##0: int;
  var $rhs##1: int;
  var $tmp##0: Box;
  var ff#0: HandleType
     where $Is(ff#0, Tclass._System.___hTotalFunc0(Tclass._System.nat()))
       && $IsAlloc(ff#0, Tclass._System.___hTotalFunc0(Tclass._System.nat()), $Heap);
  var u#0: int where LitInt(0) <= u#0;
  var $rhs#0: int where LitInt(0) <= $rhs#0;
  var $rhs#1: int where LitInt(0) <= $rhs#1;
  var $rhs#2: int where LitInt(0) <= $rhs#2;
  var $rhs#3: int;
  var $rhs#4: int where LitInt(0) <= $rhs#4;

    // AddMethodImpl: M8, Impl$$_module.__default.M8
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc cell#0 /* where defass#cell#0
       ==> $Is(cell#0, Tclass._module.CellX(Tclass._System.nat()))
         && $IsAlloc(cell#0, Tclass._module.CellX(Tclass._System.nat()), $Heap) */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(210,8)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(210,11)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    u##0 := n#0;
    call {:id "id472"} $nw := Call$$_module.CellX.__ctor(Tclass._System.nat(), $Box(u##0));
    // TrCallStmt: After ProcessCallStmt
    cell#0 := $nw;
    defass#cell#0 := true;
    havoc x#0 /* where LitInt(0) <= x#0 */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(213,5)
    assume true;
    assert {:id "id474"} defass#cell#0;
    assert {:id "id475"} cell#0 != null;
    assume true;
    x#0 := $Unbox(_module.CellX.data(Tclass._System.nat(), cell#0)): int;
    havoc y#0 /* where LitInt(0) <= y#0 */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(215,5)
    assume true;
    assert {:id "id477"} defass#cell#0;
    assert {:id "id478"} cell#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(cell#0), Tclass._module.CellX?(Tclass._System.nat()), $Heap);
    assume _module.CellX.F#canCall(Tclass._System.nat(), cell#0);
    assume _module.CellX.F#canCall(Tclass._System.nat(), cell#0);
    y#0 := $Unbox(_module.CellX.F(Tclass._System.nat(), cell#0)): int;
    havoc z#0 /* where LitInt(0) <= z#0 */;
    havoc w#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(218,17)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id480"} defass#cell#0;
    assume true;
    assert {:id "id481"} cell#0 != null;
    call {:id "id482"} $tmp##0, $rhs##1 := Call$$_module.CellX.M(Tclass._System.nat(), cell#0);
    havoc $rhs##0;
    assume $rhs##0 == $Unbox($tmp##0): int;
    // TrCallStmt: After ProcessCallStmt
    z#0 := $rhs##0;
    w#0 := $rhs##1;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(219,10)
    assume true;
    assert {:id "id485"} 1 != $FunctionContextHeight;
    assert {:id "id486"} defass#cell#0;
    assert {:id "id487"} cell#0 != null;
    assume true;
    ff#0 := _module.CellX.F#Handle(Tclass._System.nat(), cell#0);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(220,6)
    assume true;
    havoc ff#0;
    havoc u#0 /* where LitInt(0) <= u#0 */;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(222,5)
    assume true;
    assume true;
    u#0 := $Unbox(Apply0(Tclass._System.nat(), $Heap, ff#0)): int;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(224,17)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    havoc $rhs#0 /* where LitInt(0) <= $rhs#0 */;
    havoc $rhs#1 /* where LitInt(0) <= $rhs#1 */;
    havoc $rhs#2 /* where LitInt(0) <= $rhs#2 */;
    havoc $rhs#3;
    havoc $rhs#4 /* where LitInt(0) <= $rhs#4 */;
    x#0 := $rhs#0;
    y#0 := $rhs#1;
    z#0 := $rhs#2;
    w#0 := $rhs#3;
    u#0 := $rhs#4;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(225,3)
    assume true;
    assert {:id "id495"} LitInt(0) <= x#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(226,3)
    assume true;
    assert {:id "id496"} LitInt(0) <= y#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(227,3)
    assume true;
    assert {:id "id497"} LitInt(0) <= z#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(228,3)
    assume true;
    assert {:id "id498"} LitInt(0) <= w#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(229,3)
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(ff#0), Tclass._System.___hFunc0(Tclass._System.nat()), $Heap);
    assume Requires0#canCall(Tclass._System.nat(), $Heap, ff#0);
    assume Requires0#canCall(Tclass._System.nat(), $Heap, ff#0);
    assert {:id "id499"} Requires0(Tclass._System.nat(), $Heap, ff#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(230,3)
    assume true;
    assert {:id "id500"} LitInt(0) <= u#0;
}



procedure {:verboseName "M9 (well-formedness)"} CheckWellFormed$$_module.__default.M9(n#0: int where LitInt(0) <= n#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M9 (call)"} Call$$_module.__default.M9(n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M9 (correctness)"} Impl$$_module.__default.M9(n#0: int where LitInt(0) <= n#0) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M9 (correctness)"} Impl$$_module.__default.M9(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#xx#0_0: bool;
  var xx#0_0: ref
     where defass#xx#0_0
       ==> $Is(xx#0_0, Tclass._module.CellX(TInt))
         && $IsAlloc(xx#0_0, Tclass._module.CellX(TInt), $Heap);
  var defass#cell#0_0: bool;
  var cell#0_0: ref
     where defass#cell#0_0
       ==> $Is(cell#0_0, Tclass._module.CellX(Tclass._System.nat()))
         && $IsAlloc(cell#0_0, Tclass._module.CellX(Tclass._System.nat()), $Heap);
  var $nw: ref;
  var u##0_0: int;
  var defass#xx#1_0: bool;
  var xx#1_0: ref
     where defass#xx#1_0
       ==> $Is(xx#1_0, Tclass._module.CellX(Tclass._System.nat()))
         && $IsAlloc(xx#1_0, Tclass._module.CellX(Tclass._System.nat()), $Heap);
  var defass#cell#1_0: bool;
  var cell#1_0: ref
     where defass#cell#1_0
       ==> $Is(cell#1_0, Tclass._module.CellX(TInt))
         && $IsAlloc(cell#1_0, Tclass._module.CellX(TInt), $Heap);
  var u##1_0: int;
  var defass#cell#2_0: bool;
  var cell#2_0: ref
     where defass#cell#2_0
       ==> $Is(cell#2_0, Tclass._module.CellX(TInt))
         && $IsAlloc(cell#2_0, Tclass._module.CellX(TInt), $Heap);
  var u##2_0: int;
  var defass#cell#3_0: bool;
  var cell#3_0: ref
     where defass#cell#3_0
       ==> $Is(cell#3_0, Tclass._module.CellX(Tclass._System.nat()))
         && $IsAlloc(cell#3_0, Tclass._module.CellX(Tclass._System.nat()), $Heap);
  var u##3_0: int;
  var defass#cell#4_0: bool;
  var cell#4_0: ref
     where defass#cell#4_0
       ==> $Is(cell#4_0, Tclass._module.CellX(Tclass._System.nat()))
         && $IsAlloc(cell#4_0, Tclass._module.CellX(Tclass._System.nat()), $Heap);
  var u##4_0: int;

    // AddMethodImpl: M9, Impl$$_module.__default.M9
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(234,3)
    if (*)
    {
        assume true;
        assume {:id "id526"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(236,14)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(236,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        u##4_0 := n#0;
        call {:id "id527"} $nw := Call$$_module.CellX.__ctor(Tclass._System.nat(), $Box(u##4_0));
        // TrCallStmt: After ProcessCallStmt
        cell#4_0 := $nw;
        defass#cell#4_0 := true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(237,5)
        assert {:id "id529"} defass#cell#4_0;
        assert {:id "id530"} {:subsumption 0} cell#4_0 != null;
        assume true;
        assert {:id "id531"} LitInt(0) <= $Unbox(_module.CellX.data(Tclass._System.nat(), cell#4_0)): int;
    }
    else if (*)
    {
        assume true;
        assume {:id "id520"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(239,14)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(239,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        u##3_0 := n#0;
        call {:id "id521"} $nw := Call$$_module.CellX.__ctor(Tclass._System.nat(), $Box(u##3_0));
        // TrCallStmt: After ProcessCallStmt
        cell#3_0 := $nw;
        defass#cell#3_0 := true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(240,5)
        assert {:id "id523"} defass#cell#3_0;
        assert {:id "id524"} {:subsumption 0} cell#3_0 != null;
        assume true;
        assert {:id "id525"} LitInt(0) <= $Unbox(_module.CellX.data(Tclass._System.nat(), cell#3_0)): int;
    }
    else if (*)
    {
        assume true;
        assume {:id "id514"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(242,14)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(242,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        u##2_0 := n#0;
        call {:id "id515"} $nw := Call$$_module.CellX.__ctor(TInt, $Box(u##2_0));
        // TrCallStmt: After ProcessCallStmt
        cell#2_0 := $nw;
        defass#cell#2_0 := true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(243,5)
        assert {:id "id517"} defass#cell#2_0;
        assert {:id "id518"} {:subsumption 0} cell#2_0 != null;
        assume true;
        assert {:id "id519"} LitInt(0) <= $Unbox(_module.CellX.data(TInt, cell#2_0)): int;
    }
    else if (*)
    {
        assume true;
        assume {:id "id508"} true;
        havoc xx#1_0 /* where defass#xx#1_0
           ==> $Is(xx#1_0, Tclass._module.CellX(Tclass._System.nat()))
             && $IsAlloc(xx#1_0, Tclass._module.CellX(Tclass._System.nat()), $Heap) */;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(246,14)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(246,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        u##1_0 := n#0;
        call {:id "id509"} $nw := Call$$_module.CellX.__ctor(TInt, $Box(u##1_0));
        // TrCallStmt: After ProcessCallStmt
        cell#1_0 := $nw;
        defass#cell#1_0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(247,8)
        assume true;
        assert {:id "id511"} defass#cell#1_0;
        assert {:id "id512"} $Is(cell#1_0, Tclass._module.CellX(Tclass._System.nat()));
        assume true;
        xx#1_0 := cell#1_0;
        defass#xx#1_0 := true;
    }
    else if (*)
    {
        assume true;
        assume {:id "id502"} true;
        havoc xx#0_0 /* where defass#xx#0_0
           ==> $Is(xx#0_0, Tclass._module.CellX(TInt))
             && $IsAlloc(xx#0_0, Tclass._module.CellX(TInt), $Heap) */;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(250,14)
        assume true;
        // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(250,17)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        u##0_0 := n#0;
        call {:id "id503"} $nw := Call$$_module.CellX.__ctor(Tclass._System.nat(), $Box(u##0_0));
        // TrCallStmt: After ProcessCallStmt
        cell#0_0 := $nw;
        defass#cell#0_0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(251,8)
        assume true;
        assert {:id "id505"} defass#cell#0_0;
        assert {:id "id506"} $Is(cell#0_0, Tclass._module.CellX(TInt));
        assume true;
        xx#0_0 := cell#0_0;
        defass#xx#0_0 := true;
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id501"} false;
    }
}



procedure {:verboseName "Even (well-formedness)"} CheckWellFormed$$_module.Even(u#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Even (well-formedness)"} CheckWellFormed$$_module.Even(u#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type Even
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assert {:id "id532"} LitInt(2) != 0;
        assume {:id "id533"} Mod(u#0, LitInt(2)) == LitInt(0);
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assume true;
        assert {:id "id534"} LitInt(Mod(0, LitInt(2))) == LitInt(0);
        assume false;
    }
}



function Tclass._module.Even() : Ty
uses {
// Tclass._module.Even Tag
axiom Tag(Tclass._module.Even()) == Tagclass._module.Even
   && TagFamily(Tclass._module.Even()) == tytagFamily$Even;
}

const unique Tagclass._module.Even: TyTag;

// Box/unbox axiom for Tclass._module.Even
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Even()) } 
  $IsBox(bx, Tclass._module.Even())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.Even()));

// $Is axiom for subset type _module.Even
axiom (forall u#0: int :: 
  { $Is(u#0, Tclass._module.Even()) } 
  $Is(u#0, Tclass._module.Even()) <==> Mod(u#0, LitInt(2)) == LitInt(0));

// $IsAlloc axiom for subset type _module.Even
axiom (forall u#0: int, $h: Heap :: 
  { $IsAlloc(u#0, Tclass._module.Even(), $h) } 
  $IsAlloc(u#0, Tclass._module.Even(), $h));

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
     <==> $Is(a#6#0#0, Tclass._System.nat()) && $Is(a#6#1#0, Tclass._module.List()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.List.head(d), Tclass._System.nat(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(), $h)
     ==> $IsAlloc(_module.List.head(d), Tclass._System.nat(), $h));

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

procedure {:verboseName "NatA (well-formedness)"} CheckWellFormed$$_module.NatA(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.NatA() : Ty
uses {
// Tclass._module.NatA Tag
axiom Tag(Tclass._module.NatA()) == Tagclass._module.NatA
   && TagFamily(Tclass._module.NatA()) == tytagFamily$NatA;
}

const unique Tagclass._module.NatA: TyTag;

// Box/unbox axiom for Tclass._module.NatA
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatA()) } 
  $IsBox(bx, Tclass._module.NatA())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.NatA()));

// $Is axiom for subset type _module.NatA
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.NatA()) } 
  $Is(x#0, Tclass._module.NatA())
     <==> LitInt(0) <= x#0 && LitInt(10) <= x#0 && x#0 < 20);

// $IsAlloc axiom for subset type _module.NatA
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.NatA(), $h) } 
  $IsAlloc(x#0, Tclass._module.NatA(), $h));

procedure {:verboseName "NatB (well-formedness)"} CheckWellFormed$$_module.NatB(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.NatB() : Ty
uses {
// Tclass._module.NatB Tag
axiom Tag(Tclass._module.NatB()) == Tagclass._module.NatB
   && TagFamily(Tclass._module.NatB()) == tytagFamily$NatB;
}

const unique Tagclass._module.NatB: TyTag;

// Box/unbox axiom for Tclass._module.NatB
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatB()) } 
  $IsBox(bx, Tclass._module.NatB())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.NatB()));

// $Is axiom for subset type _module.NatB
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.NatB()) } 
  $Is(x#0, Tclass._module.NatB())
     <==> LitInt(0) <= x#0 && LitInt(20) <= x#0 && x#0 < 30);

// $IsAlloc axiom for subset type _module.NatB
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.NatB(), $h) } 
  $IsAlloc(x#0, Tclass._module.NatB(), $h));

procedure {:verboseName "NatC (well-formedness)"} CheckWellFormed$$_module.NatC(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Tclass._module.NatC() : Ty
uses {
// Tclass._module.NatC Tag
axiom Tag(Tclass._module.NatC()) == Tagclass._module.NatC
   && TagFamily(Tclass._module.NatC()) == tytagFamily$NatC;
}

const unique Tagclass._module.NatC: TyTag;

// Box/unbox axiom for Tclass._module.NatC
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.NatC()) } 
  $IsBox(bx, Tclass._module.NatC())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass._module.NatC()));

// $Is axiom for subset type _module.NatC
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.NatC()) } 
  $Is(x#0, Tclass._module.NatC())
     <==> LitInt(0) <= x#0 && LitInt(30) <= x#0 && x#0 < 40);

// $IsAlloc axiom for subset type _module.NatC
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.NatC(), $h) } 
  $IsAlloc(x#0, Tclass._module.NatC(), $h));

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
     ==> $Is($Unbox(read($h, $o, _module.Cell.data)): int, Tclass._System.nat()));

// Cell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Cell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Cell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Cell.data)): int, Tclass._System.nat(), $h));

function _module.Cell.F#requires(ref) : bool;

// #requires axiom for _module.Cell.F
axiom (forall this: ref :: 
  { _module.Cell.F#requires(this) } 
  this != null && $Is(this, Tclass._module.Cell())
     ==> _module.Cell.F#requires(this) == true);

procedure {:verboseName "Cell.F (well-formedness)"} CheckWellformed$$_module.Cell.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell())
         && $IsAlloc(this, Tclass._module.Cell(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Cell.F (well-formedness)"} CheckWellformed$$_module.Cell.F(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.Cell.F(this);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assert {:id "id540"} $Is(LitInt(2), Tclass._System.nat());
        assume {:id "id541"} _module.Cell.F(this) == LitInt(2);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Cell.F(this), Tclass._System.nat());
        return;

        assume false;
    }
}



procedure {:verboseName "Cell.M (well-formedness)"} CheckWellFormed$$_module.Cell.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell())
         && $IsAlloc(this, Tclass._module.Cell(), $Heap))
   returns (x#0: int where LitInt(0) <= x#0, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cell.M (call)"} Call$$_module.Cell.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell())
         && $IsAlloc(this, Tclass._module.Cell(), $Heap))
   returns (x#0: int where LitInt(0) <= x#0, y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Cell.M (correctness)"} Impl$$_module.Cell.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Cell())
         && $IsAlloc(this, Tclass._module.Cell(), $Heap))
   returns (x#0: int where LitInt(0) <= x#0, y#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



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

const unique class._module.CellX?: ClassName;

// $Is axiom for class CellX
axiom (forall _module.CellX$X: Ty, $o: ref :: 
  { $Is($o, Tclass._module.CellX?(_module.CellX$X)) } 
  $Is($o, Tclass._module.CellX?(_module.CellX$X))
     <==> $o == null || dtype($o) == Tclass._module.CellX?(_module.CellX$X));

// $IsAlloc axiom for class CellX
axiom (forall _module.CellX$X: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.CellX?(_module.CellX$X), $h) } 
  $IsAlloc($o, Tclass._module.CellX?(_module.CellX$X), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

procedure {:verboseName "CellX._ctor (well-formedness)"} CheckWellFormed$$_module.CellX.__ctor(_module.CellX$X: Ty, 
    u#0: Box
       where $IsBox(u#0, _module.CellX$X) && $IsAllocBox(u#0, _module.CellX$X, $Heap))
   returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CellX._ctor (call)"} Call$$_module.CellX.__ctor(_module.CellX$X: Ty, 
    u#0: Box
       where $IsBox(u#0, _module.CellX$X) && $IsAllocBox(u#0, _module.CellX$X, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CellX(_module.CellX$X))
         && $IsAlloc(this, Tclass._module.CellX(_module.CellX$X), $Heap));
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



procedure {:verboseName "CellX._ctor (correctness)"} Impl$$_module.CellX.__ctor(_module.CellX$X: Ty, 
    u#0: Box
       where $IsBox(u#0, _module.CellX$X) && $IsAllocBox(u#0, _module.CellX$X, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CellX._ctor (correctness)"} Impl$$_module.CellX.__ctor(_module.CellX$X: Ty, u#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.data: Box;
  var defass#this.data: bool;

    // AddMethodImpl: _ctor, Impl$$_module.CellX.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(172,22)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(173,10)
    assume true;
    assume true;
    this.data := u#0;
    defass#this.data := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(172,22)
    assert {:id "id543"} defass#this.data;
    assume this != null && $Is(this, Tclass._module.CellX?(_module.CellX$X));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume _module.CellX.data(_module.CellX$X, this) == this.data;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(172,22)
}



function _module.CellX.F#requires(Ty, ref) : bool;

// #requires axiom for _module.CellX.F
axiom (forall _module.CellX$X: Ty, this: ref :: 
  { _module.CellX.F#requires(_module.CellX$X, this) } 
  this != null && $Is(this, Tclass._module.CellX(_module.CellX$X))
     ==> _module.CellX.F#requires(_module.CellX$X, this) == true);

procedure {:verboseName "CellX.F (well-formedness)"} CheckWellformed$$_module.CellX.F(_module.CellX$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CellX(_module.CellX$X))
         && $IsAlloc(this, Tclass._module.CellX(_module.CellX$X), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CellX.M (well-formedness)"} CheckWellFormed$$_module.CellX.M(_module.CellX$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CellX(_module.CellX$X))
         && $IsAlloc(this, Tclass._module.CellX(_module.CellX$X), $Heap))
   returns (x#0: Box
       where $IsBox(x#0, _module.CellX$X) && $IsAllocBox(x#0, _module.CellX$X, $Heap), 
    y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CellX.M (call)"} Call$$_module.CellX.M(_module.CellX$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CellX(_module.CellX$X))
         && $IsAlloc(this, Tclass._module.CellX(_module.CellX$X), $Heap))
   returns (x#0: Box
       where $IsBox(x#0, _module.CellX$X) && $IsAllocBox(x#0, _module.CellX$X, $Heap), 
    y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "CellX.M (correctness)"} Impl$$_module.CellX.M(_module.CellX$X: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.CellX(_module.CellX$X))
         && $IsAlloc(this, Tclass._module.CellX(_module.CellX$X), $Heap))
   returns (defass#x#0: bool, 
    x#0: Box
       where defass#x#0
         ==> $IsBox(x#0, _module.CellX$X) && $IsAllocBox(x#0, _module.CellX$X, $Heap), 
    y#0: int, 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "CellX.M (correctness)"} Impl$$_module.CellX.M(_module.CellX$X: Ty, this: ref)
   returns (defass#x#0: bool, x#0: Box, y#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Box;
  var $rhs#1: int;

    // AddMethodImpl: M, Impl$$_module.CellX.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/TypeAdjustments.dfy(180,10)
    assume true;
    assume true;
    assume true;
    $rhs#0 := _module.CellX.data(_module.CellX$X, this);
    assume true;
    $rhs#1 := LitInt(12);
    x#0 := $rhs#0;
    defass#x#0 := true;
    y#0 := $rhs#1;
    assert {:id "id551"} defass#x#0;
}



// $Is axiom for non-null type _module.CellX
axiom (forall _module.CellX$X: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.CellX(_module.CellX$X)) } 
    { $Is(c#0, Tclass._module.CellX?(_module.CellX$X)) } 
  $Is(c#0, Tclass._module.CellX(_module.CellX$X))
     <==> $Is(c#0, Tclass._module.CellX?(_module.CellX$X)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.CellX
axiom (forall _module.CellX$X: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.CellX(_module.CellX$X), $h) } 
    { $IsAlloc(c#0, Tclass._module.CellX?(_module.CellX$X), $h) } 
  $IsAlloc(c#0, Tclass._module.CellX(_module.CellX$X), $h)
     <==> $IsAlloc(c#0, Tclass._module.CellX?(_module.CellX$X), $h));

const unique class.TypeParameters.__default: ClassName;

// function declaration for TypeParameters._default.FFitToAnything
function TypeParameters.__default.FFitToAnything(TypeParameters._default.FFitToAnything$G: Ty, g#0: Box) : Box;

function TypeParameters.__default.FFitToAnything#canCall(TypeParameters._default.FFitToAnything$G: Ty, g#0: Box) : bool;

// consequence axiom for TypeParameters.__default.FFitToAnything
axiom (forall TypeParameters._default.FFitToAnything$G: Ty, g#0: Box :: 
  { TypeParameters.__default.FFitToAnything(TypeParameters._default.FFitToAnything$G, g#0) } 
  TypeParameters.__default.FFitToAnything#canCall(TypeParameters._default.FFitToAnything$G, g#0)
       || $IsBox(g#0, TypeParameters._default.FFitToAnything$G)
     ==> $IsBox(TypeParameters.__default.FFitToAnything(TypeParameters._default.FFitToAnything$G, g#0), 
      TypeParameters._default.FFitToAnything$G));

// alloc consequence axiom for TypeParameters.__default.FFitToAnything
axiom (forall $Heap: Heap, TypeParameters._default.FFitToAnything$G: Ty, g#0: Box :: 
  { $IsAllocBox(TypeParameters.__default.FFitToAnything(TypeParameters._default.FFitToAnything$G, g#0), 
      TypeParameters._default.FFitToAnything$G, 
      $Heap) } 
  (TypeParameters.__default.FFitToAnything#canCall(TypeParameters._default.FFitToAnything$G, g#0)
         || ($IsBox(g#0, TypeParameters._default.FFitToAnything$G)
           && $IsAllocBox(g#0, TypeParameters._default.FFitToAnything$G, $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(TypeParameters.__default.FFitToAnything(TypeParameters._default.FFitToAnything$G, g#0), 
      TypeParameters._default.FFitToAnything$G, 
      $Heap));

function TypeParameters.__default.FFitToAnything#requires(Ty, Box) : bool;

// #requires axiom for TypeParameters.__default.FFitToAnything
axiom (forall TypeParameters._default.FFitToAnything$G: Ty, g#0: Box :: 
  { TypeParameters.__default.FFitToAnything#requires(TypeParameters._default.FFitToAnything$G, g#0) } 
  $IsBox(g#0, TypeParameters._default.FFitToAnything$G)
     ==> TypeParameters.__default.FFitToAnything#requires(TypeParameters._default.FFitToAnything$G, g#0)
       == true);

// function declaration for TypeParameters._default.FFitToList
function TypeParameters.__default.FFitToList(TypeParameters._default.FFitToList$G: Ty, g#0: DatatypeType) : Box;

function TypeParameters.__default.FFitToList#canCall(TypeParameters._default.FFitToList$G: Ty, g#0: DatatypeType) : bool;

function Tclass.TypeParameters.List(Ty) : Ty;

const unique Tagclass.TypeParameters.List: TyTag;

// Tclass.TypeParameters.List Tag
axiom (forall TypeParameters.List$Y: Ty :: 
  { Tclass.TypeParameters.List(TypeParameters.List$Y) } 
  Tag(Tclass.TypeParameters.List(TypeParameters.List$Y))
       == Tagclass.TypeParameters.List
     && TagFamily(Tclass.TypeParameters.List(TypeParameters.List$Y)) == tytagFamily$List);

function Tclass.TypeParameters.List_0(Ty) : Ty;

// Tclass.TypeParameters.List injectivity 0
axiom (forall TypeParameters.List$Y: Ty :: 
  { Tclass.TypeParameters.List(TypeParameters.List$Y) } 
  Tclass.TypeParameters.List_0(Tclass.TypeParameters.List(TypeParameters.List$Y))
     == TypeParameters.List$Y);

// Box/unbox axiom for Tclass.TypeParameters.List
axiom (forall TypeParameters.List$Y: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TypeParameters.List(TypeParameters.List$Y)) } 
  $IsBox(bx, Tclass.TypeParameters.List(TypeParameters.List$Y))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.TypeParameters.List(TypeParameters.List$Y)));

// consequence axiom for TypeParameters.__default.FFitToList
axiom (forall TypeParameters._default.FFitToList$G: Ty, g#0: DatatypeType :: 
  { TypeParameters.__default.FFitToList(TypeParameters._default.FFitToList$G, g#0) } 
  TypeParameters.__default.FFitToList#canCall(TypeParameters._default.FFitToList$G, g#0)
       || $Is(g#0, Tclass.TypeParameters.List(TypeParameters._default.FFitToList$G))
     ==> $IsBox(TypeParameters.__default.FFitToList(TypeParameters._default.FFitToList$G, g#0), 
      TypeParameters._default.FFitToList$G));

// alloc consequence axiom for TypeParameters.__default.FFitToList
axiom (forall $Heap: Heap, TypeParameters._default.FFitToList$G: Ty, g#0: DatatypeType :: 
  { $IsAllocBox(TypeParameters.__default.FFitToList(TypeParameters._default.FFitToList$G, g#0), 
      TypeParameters._default.FFitToList$G, 
      $Heap) } 
  (TypeParameters.__default.FFitToList#canCall(TypeParameters._default.FFitToList$G, g#0)
         || ($Is(g#0, Tclass.TypeParameters.List(TypeParameters._default.FFitToList$G))
           && $IsAlloc(g#0, Tclass.TypeParameters.List(TypeParameters._default.FFitToList$G), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(TypeParameters.__default.FFitToList(TypeParameters._default.FFitToList$G, g#0), 
      TypeParameters._default.FFitToList$G, 
      $Heap));

function TypeParameters.__default.FFitToList#requires(Ty, DatatypeType) : bool;

// #requires axiom for TypeParameters.__default.FFitToList
axiom (forall TypeParameters._default.FFitToList$G: Ty, g#0: DatatypeType :: 
  { TypeParameters.__default.FFitToList#requires(TypeParameters._default.FFitToList$G, g#0) } 
  $Is(g#0, Tclass.TypeParameters.List(TypeParameters._default.FFitToList$G))
     ==> TypeParameters.__default.FFitToList#requires(TypeParameters._default.FFitToList$G, g#0)
       == true);

// Constructor function declaration
function #TypeParameters.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#TypeParameters.List.Nil()) == ##TypeParameters.List.Nil;
// Constructor literal
axiom #TypeParameters.List.Nil() == Lit(#TypeParameters.List.Nil());
}

const unique ##TypeParameters.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#TypeParameters.List.Nil()) == ##TypeParameters.List.Nil;
}

function TypeParameters.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeParameters.List.Nil_q(d) } 
  TypeParameters.List.Nil_q(d) <==> DatatypeCtorId(d) == ##TypeParameters.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeParameters.List.Nil_q(d) } 
  TypeParameters.List.Nil_q(d) ==> d == #TypeParameters.List.Nil());

// Constructor $Is
axiom (forall TypeParameters.List$Y: Ty :: 
  { $Is(#TypeParameters.List.Nil(), Tclass.TypeParameters.List(TypeParameters.List$Y)) } 
  $Is(#TypeParameters.List.Nil(), Tclass.TypeParameters.List(TypeParameters.List$Y)));

// Constructor $IsAlloc
axiom (forall TypeParameters.List$Y: Ty, $h: Heap :: 
  { $IsAlloc(#TypeParameters.List.Nil(), 
      Tclass.TypeParameters.List(TypeParameters.List$Y), 
      $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#TypeParameters.List.Nil(), 
      Tclass.TypeParameters.List(TypeParameters.List$Y), 
      $h));

// Constructor function declaration
function #TypeParameters.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##TypeParameters.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #TypeParameters.List.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#TypeParameters.List.Cons(a#4#0#0, a#4#1#0))
     == ##TypeParameters.List.Cons);
}

function TypeParameters.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { TypeParameters.List.Cons_q(d) } 
  TypeParameters.List.Cons_q(d)
     <==> DatatypeCtorId(d) == ##TypeParameters.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { TypeParameters.List.Cons_q(d) } 
  TypeParameters.List.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #TypeParameters.List.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall TypeParameters.List$Y: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#TypeParameters.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.TypeParameters.List(TypeParameters.List$Y)) } 
  $Is(#TypeParameters.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.TypeParameters.List(TypeParameters.List$Y))
     <==> $IsBox(a#6#0#0, TypeParameters.List$Y)
       && $Is(a#6#1#0, Tclass.TypeParameters.List(TypeParameters.List$Y)));

// Constructor $IsAlloc
axiom (forall TypeParameters.List$Y: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#TypeParameters.List.Cons(a#6#0#0, a#6#1#0), 
      Tclass.TypeParameters.List(TypeParameters.List$Y), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#TypeParameters.List.Cons(a#6#0#0, a#6#1#0), 
        Tclass.TypeParameters.List(TypeParameters.List$Y), 
        $h)
       <==> $IsAllocBox(a#6#0#0, TypeParameters.List$Y, $h)
         && $IsAlloc(a#6#1#0, Tclass.TypeParameters.List(TypeParameters.List$Y), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TypeParameters.List$Y: Ty, $h: Heap :: 
  { $IsAllocBox(TypeParameters.List.head(d), TypeParameters.List$Y, $h) } 
  $IsGoodHeap($h)
       && 
      TypeParameters.List.Cons_q(d)
       && $IsAlloc(d, Tclass.TypeParameters.List(TypeParameters.List$Y), $h)
     ==> $IsAllocBox(TypeParameters.List.head(d), TypeParameters.List$Y, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, TypeParameters.List$Y: Ty, $h: Heap :: 
  { $IsAlloc(TypeParameters.List._h4(d), 
      Tclass.TypeParameters.List(TypeParameters.List$Y), 
      $h) } 
  $IsGoodHeap($h)
       && 
      TypeParameters.List.Cons_q(d)
       && $IsAlloc(d, Tclass.TypeParameters.List(TypeParameters.List$Y), $h)
     ==> $IsAlloc(TypeParameters.List._h4(d), 
      Tclass.TypeParameters.List(TypeParameters.List$Y), 
      $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #TypeParameters.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #TypeParameters.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#TypeParameters.List.Cons(a#7#0#0, a#7#1#0)));

function TypeParameters.List.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #TypeParameters.List.Cons(a#8#0#0, a#8#1#0) } 
  TypeParameters.List.head(#TypeParameters.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #TypeParameters.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#TypeParameters.List.Cons(a#9#0#0, a#9#1#0)));

function TypeParameters.List._h4(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #TypeParameters.List.Cons(a#10#0#0, a#10#1#0) } 
  TypeParameters.List._h4(#TypeParameters.List.Cons(a#10#0#0, a#10#1#0))
     == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #TypeParameters.List.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#TypeParameters.List.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#TypeParameters.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#TypeParameters.List(d) } 
  $IsA#TypeParameters.List(d)
     ==> TypeParameters.List.Nil_q(d) || TypeParameters.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall TypeParameters.List$Y: Ty, d: DatatypeType :: 
  { TypeParameters.List.Cons_q(d), $Is(d, Tclass.TypeParameters.List(TypeParameters.List$Y)) } 
    { TypeParameters.List.Nil_q(d), $Is(d, Tclass.TypeParameters.List(TypeParameters.List$Y)) } 
  $Is(d, Tclass.TypeParameters.List(TypeParameters.List$Y))
     ==> TypeParameters.List.Nil_q(d) || TypeParameters.List.Cons_q(d));

// Datatype extensional equality declaration
function TypeParameters.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #TypeParameters.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeParameters.List#Equal(a, b), TypeParameters.List.Nil_q(a) } 
    { TypeParameters.List#Equal(a, b), TypeParameters.List.Nil_q(b) } 
  TypeParameters.List.Nil_q(a) && TypeParameters.List.Nil_q(b)
     ==> TypeParameters.List#Equal(a, b));

// Datatype extensional equality definition: #TypeParameters.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeParameters.List#Equal(a, b), TypeParameters.List.Cons_q(a) } 
    { TypeParameters.List#Equal(a, b), TypeParameters.List.Cons_q(b) } 
  TypeParameters.List.Cons_q(a) && TypeParameters.List.Cons_q(b)
     ==> (TypeParameters.List#Equal(a, b)
       <==> TypeParameters.List.head(a) == TypeParameters.List.head(b)
         && TypeParameters.List#Equal(TypeParameters.List._h4(a), TypeParameters.List._h4(b))));

// Datatype extensionality axiom: TypeParameters.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { TypeParameters.List#Equal(a, b) } 
  TypeParameters.List#Equal(a, b) <==> a == b);

const unique class.TypeParameters.List: ClassName;

const unique class.TypeParameters.Class?: ClassName;

function Tclass.TypeParameters.Class?(Ty) : Ty;

const unique Tagclass.TypeParameters.Class?: TyTag;

// Tclass.TypeParameters.Class? Tag
axiom (forall TypeParameters.Class$A: Ty :: 
  { Tclass.TypeParameters.Class?(TypeParameters.Class$A) } 
  Tag(Tclass.TypeParameters.Class?(TypeParameters.Class$A))
       == Tagclass.TypeParameters.Class?
     && TagFamily(Tclass.TypeParameters.Class?(TypeParameters.Class$A))
       == tytagFamily$Class);

function Tclass.TypeParameters.Class?_0(Ty) : Ty;

// Tclass.TypeParameters.Class? injectivity 0
axiom (forall TypeParameters.Class$A: Ty :: 
  { Tclass.TypeParameters.Class?(TypeParameters.Class$A) } 
  Tclass.TypeParameters.Class?_0(Tclass.TypeParameters.Class?(TypeParameters.Class$A))
     == TypeParameters.Class$A);

// Box/unbox axiom for Tclass.TypeParameters.Class?
axiom (forall TypeParameters.Class$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TypeParameters.Class?(TypeParameters.Class$A)) } 
  $IsBox(bx, Tclass.TypeParameters.Class?(TypeParameters.Class$A))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TypeParameters.Class?(TypeParameters.Class$A)));

// $Is axiom for class Class
axiom (forall TypeParameters.Class$A: Ty, $o: ref :: 
  { $Is($o, Tclass.TypeParameters.Class?(TypeParameters.Class$A)) } 
  $Is($o, Tclass.TypeParameters.Class?(TypeParameters.Class$A))
     <==> $o == null || dtype($o) == Tclass.TypeParameters.Class?(TypeParameters.Class$A));

// $IsAlloc axiom for class Class
axiom (forall TypeParameters.Class$A: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TypeParameters.Class?(TypeParameters.Class$A), $h) } 
  $IsAlloc($o, Tclass.TypeParameters.Class?(TypeParameters.Class$A), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const TypeParameters.Class.data: Field
uses {
axiom FDim(TypeParameters.Class.data) == 0
   && FieldOfDecl(class.TypeParameters.Class?, field$data)
     == TypeParameters.Class.data
   && !$IsGhostField(TypeParameters.Class.data);
}

// Class.data: Type axiom
axiom (forall TypeParameters.Class$A: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, TypeParameters.Class.data), Tclass.TypeParameters.Class?(TypeParameters.Class$A) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TypeParameters.Class?(TypeParameters.Class$A)
     ==> $IsBox(read($h, $o, TypeParameters.Class.data), TypeParameters.Class$A));

// Class.data: Allocation axiom
axiom (forall TypeParameters.Class$A: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, TypeParameters.Class.data), Tclass.TypeParameters.Class?(TypeParameters.Class$A) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.TypeParameters.Class?(TypeParameters.Class$A)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, TypeParameters.Class.data), TypeParameters.Class$A, $h));

// function declaration for TypeParameters.Class.InstanceFunction
function TypeParameters.Class.InstanceFunction(TypeParameters.Class$A: Ty, this: ref, cc#0: ref) : Box;

function TypeParameters.Class.InstanceFunction#canCall(TypeParameters.Class$A: Ty, this: ref, cc#0: ref) : bool;

function Tclass.TypeParameters.Class(Ty) : Ty;

const unique Tagclass.TypeParameters.Class: TyTag;

// Tclass.TypeParameters.Class Tag
axiom (forall TypeParameters.Class$A: Ty :: 
  { Tclass.TypeParameters.Class(TypeParameters.Class$A) } 
  Tag(Tclass.TypeParameters.Class(TypeParameters.Class$A))
       == Tagclass.TypeParameters.Class
     && TagFamily(Tclass.TypeParameters.Class(TypeParameters.Class$A))
       == tytagFamily$Class);

function Tclass.TypeParameters.Class_0(Ty) : Ty;

// Tclass.TypeParameters.Class injectivity 0
axiom (forall TypeParameters.Class$A: Ty :: 
  { Tclass.TypeParameters.Class(TypeParameters.Class$A) } 
  Tclass.TypeParameters.Class_0(Tclass.TypeParameters.Class(TypeParameters.Class$A))
     == TypeParameters.Class$A);

// Box/unbox axiom for Tclass.TypeParameters.Class
axiom (forall TypeParameters.Class$A: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TypeParameters.Class(TypeParameters.Class$A)) } 
  $IsBox(bx, Tclass.TypeParameters.Class(TypeParameters.Class$A))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TypeParameters.Class(TypeParameters.Class$A)));

// consequence axiom for TypeParameters.Class.InstanceFunction
axiom (forall TypeParameters.Class$A: Ty, this: ref, cc#0: ref :: 
  { TypeParameters.Class.InstanceFunction(TypeParameters.Class$A, this, cc#0) } 
  TypeParameters.Class.InstanceFunction#canCall(TypeParameters.Class$A, this, cc#0)
       || (
        this != null
         && $Is(this, Tclass.TypeParameters.Class(TypeParameters.Class$A))
         && $Is(cc#0, Tclass.TypeParameters.Class(TypeParameters.Class$A)))
     ==> $IsBox(TypeParameters.Class.InstanceFunction(TypeParameters.Class$A, this, cc#0), 
      TypeParameters.Class$A));

// alloc consequence axiom for TypeParameters.Class.InstanceFunction
axiom (forall $Heap: Heap, TypeParameters.Class$A: Ty, this: ref, cc#0: ref :: 
  { $IsAllocBox(TypeParameters.Class.InstanceFunction(TypeParameters.Class$A, this, cc#0), 
      TypeParameters.Class$A, 
      $Heap) } 
  (TypeParameters.Class.InstanceFunction#canCall(TypeParameters.Class$A, this, cc#0)
         || (
          this != null
           && $IsAlloc(this, Tclass.TypeParameters.Class(TypeParameters.Class$A), $Heap)
           && 
          $Is(cc#0, Tclass.TypeParameters.Class(TypeParameters.Class$A))
           && $IsAlloc(cc#0, Tclass.TypeParameters.Class(TypeParameters.Class$A), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAllocBox(TypeParameters.Class.InstanceFunction(TypeParameters.Class$A, this, cc#0), 
      TypeParameters.Class$A, 
      $Heap));

function TypeParameters.Class.InstanceFunction#requires(Ty, ref, ref) : bool;

// #requires axiom for TypeParameters.Class.InstanceFunction
axiom (forall TypeParameters.Class$A: Ty, this: ref, cc#0: ref :: 
  { TypeParameters.Class.InstanceFunction#requires(TypeParameters.Class$A, this, cc#0) } 
  this != null
       && $Is(this, Tclass.TypeParameters.Class(TypeParameters.Class$A))
       && $Is(cc#0, Tclass.TypeParameters.Class(TypeParameters.Class$A))
     ==> TypeParameters.Class.InstanceFunction#requires(TypeParameters.Class$A, this, cc#0)
       == true);

// $Is axiom for non-null type TypeParameters.Class
axiom (forall TypeParameters.Class$A: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.TypeParameters.Class(TypeParameters.Class$A)) } 
    { $Is(c#0, Tclass.TypeParameters.Class?(TypeParameters.Class$A)) } 
  $Is(c#0, Tclass.TypeParameters.Class(TypeParameters.Class$A))
     <==> $Is(c#0, Tclass.TypeParameters.Class?(TypeParameters.Class$A)) && c#0 != null);

// $IsAlloc axiom for non-null type TypeParameters.Class
axiom (forall TypeParameters.Class$A: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TypeParameters.Class(TypeParameters.Class$A), $h) } 
    { $IsAlloc(c#0, Tclass.TypeParameters.Class?(TypeParameters.Class$A), $h) } 
  $IsAlloc(c#0, Tclass.TypeParameters.Class(TypeParameters.Class$A), $h)
     <==> $IsAlloc(c#0, Tclass.TypeParameters.Class?(TypeParameters.Class$A), $h));

const unique class.BinaryExpressions.__default: ClassName;

const unique class.Arrows.__default: ClassName;

const unique class.Comprehensions.__default: ClassName;

// function declaration for Comprehensions._default.P
function Comprehensions.__default.P(x#0: int) : bool;

function Comprehensions.__default.P#canCall(x#0: int) : bool;

function Comprehensions.__default.P#requires(int) : bool;

// #requires axiom for Comprehensions.__default.P
axiom (forall x#0: int :: 
  { Comprehensions.__default.P#requires(x#0) } 
  LitInt(0) <= x#0 ==> Comprehensions.__default.P#requires(x#0) == true);

// definition axiom for Comprehensions.__default.P (revealed)
axiom {:id "id552"} (forall x#0: int :: 
  { Comprehensions.__default.P(x#0) } 
  Comprehensions.__default.P#canCall(x#0) || LitInt(0) <= x#0
     ==> Comprehensions.__default.P(x#0) == Lit(true));

// definition axiom for Comprehensions.__default.P for all literals (revealed)
axiom {:id "id553"} (forall x#0: int :: 
  {:weight 3} { Comprehensions.__default.P(LitInt(x#0)) } 
  Comprehensions.__default.P#canCall(LitInt(x#0)) || LitInt(0) <= x#0
     ==> Comprehensions.__default.P(LitInt(x#0)) == Lit(true));

const unique class.Comprehensions.ClassA?: ClassName;

function Tclass.Comprehensions.ClassA?() : Ty
uses {
// Tclass.Comprehensions.ClassA? Tag
axiom Tag(Tclass.Comprehensions.ClassA?()) == Tagclass.Comprehensions.ClassA?
   && TagFamily(Tclass.Comprehensions.ClassA?()) == tytagFamily$ClassA;
}

const unique Tagclass.Comprehensions.ClassA?: TyTag;

// Box/unbox axiom for Tclass.Comprehensions.ClassA?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Comprehensions.ClassA?()) } 
  $IsBox(bx, Tclass.Comprehensions.ClassA?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Comprehensions.ClassA?()));

// $Is axiom for class ClassA
axiom (forall $o: ref :: 
  { $Is($o, Tclass.Comprehensions.ClassA?()) } 
  $Is($o, Tclass.Comprehensions.ClassA?())
     <==> $o == null || dtype($o) == Tclass.Comprehensions.ClassA?());

// $IsAlloc axiom for class ClassA
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Comprehensions.ClassA?(), $h) } 
  $IsAlloc($o, Tclass.Comprehensions.ClassA?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.Comprehensions.ClassA() : Ty
uses {
// Tclass.Comprehensions.ClassA Tag
axiom Tag(Tclass.Comprehensions.ClassA()) == Tagclass.Comprehensions.ClassA
   && TagFamily(Tclass.Comprehensions.ClassA()) == tytagFamily$ClassA;
}

const unique Tagclass.Comprehensions.ClassA: TyTag;

// Box/unbox axiom for Tclass.Comprehensions.ClassA
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.Comprehensions.ClassA()) } 
  $IsBox(bx, Tclass.Comprehensions.ClassA())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Comprehensions.ClassA()));

// $Is axiom for non-null type Comprehensions.ClassA
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.Comprehensions.ClassA()) } 
    { $Is(c#0, Tclass.Comprehensions.ClassA?()) } 
  $Is(c#0, Tclass.Comprehensions.ClassA())
     <==> $Is(c#0, Tclass.Comprehensions.ClassA?()) && c#0 != null);

// $IsAlloc axiom for non-null type Comprehensions.ClassA
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Comprehensions.ClassA(), $h) } 
    { $IsAlloc(c#0, Tclass.Comprehensions.ClassA?(), $h) } 
  $IsAlloc(c#0, Tclass.Comprehensions.ClassA(), $h)
     <==> $IsAlloc(c#0, Tclass.Comprehensions.ClassA?(), $h));

function Tclass.TrickyProvides0_mCCC.W() : Ty;

// function declaration for TrickyProvides0.BBB._default.Empty
function TrickyProvides0_mBBB.__default.Empty() : Box
uses {
// consequence axiom for TrickyProvides0_mBBB.__default.Empty
axiom (var u#3 := TrickyProvides0_mBBB.__default.Empty(); Lit(true))
   && $IsBox(TrickyProvides0_mBBB.__default.Empty(), Tclass.TrickyProvides0_mBBB.U());
}

function TrickyProvides0_mBBB.__default.Empty#canCall() : bool;

function Tclass.TrickyProvides0_mBBB.U() : Ty;

// alloc consequence axiom for TrickyProvides0_mBBB.__default.Empty
axiom (forall $Heap: Heap :: 
  { $IsAllocBox(TrickyProvides0_mBBB.__default.Empty(), Tclass.TrickyProvides0_mBBB.U(), $Heap) } 
  $IsGoodHeap($Heap)
     ==> $IsAllocBox(TrickyProvides0_mBBB.__default.Empty(), Tclass.TrickyProvides0_mBBB.U(), $Heap));

function TrickyProvides0_mBBB.__default.Empty#requires() : bool
uses {
// #requires axiom for TrickyProvides0_mBBB.__default.Empty
axiom TrickyProvides0_mBBB.__default.Empty#requires() == true;
}

const unique class.TrickyProvides0_mAAA.__default: ClassName;

function Tclass.TrickyProvides0_mAAA.T() : Ty
uses {
// Tclass.TrickyProvides0_mAAA.T Tag
axiom Tag(Tclass.TrickyProvides0_mAAA.T()) == Tagclass.TrickyProvides0_mAAA.T
   && TagFamily(Tclass.TrickyProvides0_mAAA.T()) == tytagFamily$T;
}

const unique Tagclass.TrickyProvides0_mAAA.T: TyTag;

// $Is axiom for subset type TrickyProvides0.AAA.T
axiom (forall t#0: Box :: 
  { $IsBox(t#0, Tclass.TrickyProvides0_mAAA.T()) } 
  $IsBox(t#0, Tclass.TrickyProvides0_mAAA.T())
     <==> $IsBox(t#0, Tclass.TrickyProvides0_mBBB.U()) && Lit(true));

// $IsAlloc axiom for subset type TrickyProvides0.AAA.T
axiom (forall t#0: Box, $h: Heap :: 
  { $IsAllocBox(t#0, Tclass.TrickyProvides0_mAAA.T(), $h) } 
  $IsAllocBox(t#0, Tclass.TrickyProvides0_mAAA.T(), $h)
     <==> $IsAllocBox(t#0, Tclass.TrickyProvides0_mBBB.U(), $h));

const unique class.TrickyProvides0.__default: ClassName;

function Tclass.TrickyProvides1_mCCC.W() : Ty;

// function declaration for TrickyProvides1.BBB._default.Empty
function TrickyProvides1_mBBB.__default.Empty() : Box
uses {
// consequence axiom for TrickyProvides1_mBBB.__default.Empty
axiom (var u#3 := TrickyProvides1_mBBB.__default.Empty(); Lit(true))
   && $IsBox(TrickyProvides1_mBBB.__default.Empty(), Tclass.TrickyProvides1_mBBB.U());
}

function TrickyProvides1_mBBB.__default.Empty#canCall() : bool;

function Tclass.TrickyProvides1_mBBB.U() : Ty;

// alloc consequence axiom for TrickyProvides1_mBBB.__default.Empty
axiom (forall $Heap: Heap :: 
  { $IsAllocBox(TrickyProvides1_mBBB.__default.Empty(), Tclass.TrickyProvides1_mBBB.U(), $Heap) } 
  $IsGoodHeap($Heap)
     ==> $IsAllocBox(TrickyProvides1_mBBB.__default.Empty(), Tclass.TrickyProvides1_mBBB.U(), $Heap));

function TrickyProvides1_mBBB.__default.Empty#requires() : bool
uses {
// #requires axiom for TrickyProvides1_mBBB.__default.Empty
axiom TrickyProvides1_mBBB.__default.Empty#requires() == true;
}

const unique class.TrickyProvides1_mAAA.__default: ClassName;

function Tclass.TrickyProvides1_mAAA.T() : Ty
uses {
// Tclass.TrickyProvides1_mAAA.T Tag
axiom Tag(Tclass.TrickyProvides1_mAAA.T()) == Tagclass.TrickyProvides1_mAAA.T
   && TagFamily(Tclass.TrickyProvides1_mAAA.T()) == tytagFamily$T;
}

const unique Tagclass.TrickyProvides1_mAAA.T: TyTag;

// $Is axiom for subset type TrickyProvides1.AAA.T
axiom (forall t#0: Box :: 
  { $IsBox(t#0, Tclass.TrickyProvides1_mAAA.T()) } 
  $IsBox(t#0, Tclass.TrickyProvides1_mAAA.T())
     <==> $IsBox(t#0, Tclass.TrickyProvides1_mBBB.U()) && Lit(true));

// $IsAlloc axiom for subset type TrickyProvides1.AAA.T
axiom (forall t#0: Box, $h: Heap :: 
  { $IsAllocBox(t#0, Tclass.TrickyProvides1_mAAA.T(), $h) } 
  $IsAllocBox(t#0, Tclass.TrickyProvides1_mAAA.T(), $h)
     <==> $IsAllocBox(t#0, Tclass.TrickyProvides1_mBBB.U(), $h));

const unique class.TrickyProvides1.__default: ClassName;

const unique class.MoreTrickySynonym.__default: ClassName;

const unique class.MoreTrickySubsetType.__default: ClassName;

function Tclass.MoreTrickySubsetType.Nat() : Ty
uses {
// Tclass.MoreTrickySubsetType.Nat Tag
axiom Tag(Tclass.MoreTrickySubsetType.Nat()) == Tagclass.MoreTrickySubsetType.Nat
   && TagFamily(Tclass.MoreTrickySubsetType.Nat()) == tytagFamily$Nat;
}

const unique Tagclass.MoreTrickySubsetType.Nat: TyTag;

// Box/unbox axiom for Tclass.MoreTrickySubsetType.Nat
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.MoreTrickySubsetType.Nat()) } 
  $IsBox(bx, Tclass.MoreTrickySubsetType.Nat())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass.MoreTrickySubsetType.Nat()));

// $Is axiom for subset type MoreTrickySubsetType.Nat
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.MoreTrickySubsetType.Nat()) } 
  $Is(x#0, Tclass.MoreTrickySubsetType.Nat()) <==> LitInt(0) <= x#0);

// $IsAlloc axiom for subset type MoreTrickySubsetType.Nat
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.MoreTrickySubsetType.Nat(), $h) } 
  $IsAlloc(x#0, Tclass.MoreTrickySubsetType.Nat(), $h));

const unique class.Let.__default: ClassName;

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

const unique tytagFamily$array2: TyTagFamily;

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$CellX: TyTagFamily;

const unique tytagFamily$Even: TyTagFamily;

const unique tytagFamily$NatA: TyTagFamily;

const unique tytagFamily$NatB: TyTagFamily;

const unique tytagFamily$NatC: TyTagFamily;

const unique tytagFamily$Class: TyTagFamily;

const unique tytagFamily$ClassA: TyTagFamily;

const unique tytagFamily$T: TyTagFamily;

const unique tytagFamily$Nat: TyTagFamily;

const unique field$data: NameFamily;
