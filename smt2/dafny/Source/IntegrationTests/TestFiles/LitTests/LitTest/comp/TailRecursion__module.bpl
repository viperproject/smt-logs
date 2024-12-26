// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy

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



function Tclass._module.Link() : Ty
uses {
// Tclass._module.Link Tag
axiom Tag(Tclass._module.Link()) == Tagclass._module.Link
   && TagFamily(Tclass._module.Link()) == tytagFamily$Link;
}

const unique Tagclass._module.Link: TyTag;

// Box/unbox axiom for Tclass._module.Link
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Link()) } 
  $IsBox(bx, Tclass._module.Link())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Link()));

function Tclass._module.Link?() : Ty
uses {
// Tclass._module.Link? Tag
axiom Tag(Tclass._module.Link?()) == Tagclass._module.Link?
   && TagFamily(Tclass._module.Link?()) == tytagFamily$Link;
}

const unique Tagclass._module.Link?: TyTag;

// Box/unbox axiom for Tclass._module.Link?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Link?()) } 
  $IsBox(bx, Tclass._module.Link?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Link?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var $rhs##0: int;
  var n##0: int;
  var a##0: int;
  var y#0: int where LitInt(0) <= y#0;
  var ##n#0: int;
  var ##a#0: int;
  var $rhs##1: int;
  var n##1: int;
  var acc##0: int;
  var $rhs##2: int;
  var n##2: int;
  var acc##1: int;
  var defass#l0#0: bool;
  var l0#0: ref
     where defass#l0#0
       ==> $Is(l0#0, Tclass._module.Link()) && $IsAlloc(l0#0, Tclass._module.Link(), $Heap);
  var $nw: ref;
  var y##0: int;
  var defass#l1#0: bool;
  var l1#0: ref
     where defass#l1#0
       ==> $Is(l1#0, Tclass._module.Link()) && $IsAlloc(l1#0, Tclass._module.Link(), $Heap);
  var y##1: int;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: ref;
  var $rhs#1: ref;
  var $rhs##3: int;
  var n##3: int;
  var a##1: int;
  var ##n#1: int;
  var ##a#1: int;
  var total#0: int where LitInt(0) <= total#0;
  var $rhs##4: int;
  var n##4: int;
  var acc##2: int;
  var prefix##0: Seq;
  var ##x#0: int;
  var ##y#0: int;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(5,13)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id78"} $Is(LitInt(2000000), Tclass._System.nat());
    n##0 := LitInt(2000000);
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id79"} $Is(LitInt(0), Tclass._System.nat());
    a##0 := LitInt(0);
    call {:id "id80"} $rhs##0 := Call$$_module.__default.M(n##0, a##0);
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(6,9)
    assume true;
    assert {:id "id82"} $Is(LitInt(2000000), Tclass._System.nat());
    ##n#0 := LitInt(2000000);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assert {:id "id83"} $Is(LitInt(0), Tclass._System.nat());
    ##a#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
    assume _module.__default.F#canCall(LitInt(2000000), LitInt(0));
    assume _module.__default.F#canCall(LitInt(2000000), LitInt(0));
    y#0 := LitInt(_module.__default.F($LS($LZ), LitInt(2000000), LitInt(0)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(7,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(9,18)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id85"} $Is(LitInt(2000000), Tclass._System.nat());
    n##1 := LitInt(2000000);
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id86"} $Is(LitInt(0), Tclass._System.nat());
    acc##0 := LitInt(0);
    call {:id "id87"} $rhs##1 := Call$$_module.__default.TestMethod(n##1, acc##0);
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(10,22)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id89"} $Is(LitInt(2000000), Tclass._System.nat());
    n##2 := LitInt(2000000);
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id90"} $Is(LitInt(0), Tclass._System.nat());
    acc##1 := LitInt(0);
    call {:id "id91"} $rhs##2 := Call$$_module.__default.GhostAfterCall(n##2, acc##1);
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##2;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(11,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(14,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(14,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id93"} $Is(LitInt(0), Tclass._System.nat());
    y##0 := LitInt(0);
    call {:id "id94"} $nw := Call$$_module.Link.__ctor(y##0);
    // TrCallStmt: After ProcessCallStmt
    l0#0 := $nw;
    defass#l0#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(15,10)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(15,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id96"} $Is(LitInt(1), Tclass._System.nat());
    y##1 := LitInt(1);
    call {:id "id97"} $nw := Call$$_module.Link.__ctor(y##1);
    // TrCallStmt: After ProcessCallStmt
    l1#0 := $nw;
    defass#l1#0 := true;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(16,20)
    assert {:id "id99"} defass#l0#0;
    assert {:id "id100"} l0#0 != null;
    assume true;
    $obj0 := l0#0;
    assert {:id "id101"} $_ModifiesFrame[$obj0, _module.Link.next];
    assert {:id "id102"} defass#l1#0;
    assert {:id "id103"} l1#0 != null;
    assume true;
    $obj1 := l1#0;
    assert {:id "id104"} $_ModifiesFrame[$obj1, _module.Link.next];
    assert {:id "id105"} defass#l1#0;
    assume true;
    $rhs#0 := l1#0;
    assert {:id "id107"} defass#l0#0;
    assume true;
    $rhs#1 := l0#0;
    assert {:id "id109"} l1#0 != l0#0 || $rhs#1 == $rhs#0;
    $Heap := update($Heap, $obj0, _module.Link.next, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.Link.next, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(18,12)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id112"} defass#l0#0;
    assume true;
    assert {:id "id113"} l0#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id114"} $Is(LitInt(2000000), Tclass._System.nat());
    n##3 := LitInt(2000000);
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id115"} $Is(LitInt(0), Tclass._System.nat());
    a##1 := LitInt(0);
    call {:id "id116"} $rhs##3 := Call$$_module.Link.G(l0#0, n##3, a##1);
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##3;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(19,5)
    assume true;
    assert {:id "id118"} defass#l0#0;
    assert {:id "id119"} l0#0 != null;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(l0#0), Tclass._module.Link?(), $Heap);
    assert {:id "id120"} $Is(LitInt(2000000), Tclass._System.nat());
    ##n#1 := LitInt(2000000);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assert {:id "id121"} $Is(LitInt(0), Tclass._System.nat());
    ##a#1 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##a#1, Tclass._System.nat(), $Heap);
    assume _module.Link.H#canCall($Heap, l0#0, LitInt(2000000), LitInt(0));
    assume _module.Link.H#canCall($Heap, l0#0, LitInt(2000000), LitInt(0));
    y#0 := _module.Link.H($LS($LZ), $Heap, l0#0, LitInt(2000000), LitInt(0));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(20,3)
    assume true;
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(22,24)
    assume true;
    // TrCallStmt: Adding lhs with type nat
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id123"} $Is(LitInt(10), Tclass._System.nat());
    n##4 := LitInt(10);
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id124"} $Is(LitInt(0), Tclass._System.nat());
    acc##2 := LitInt(0);
    assume true;
    // ProcessCallStmt: CheckSubrange
    prefix##0 := Lit(Seq#Empty(): Seq);
    call {:id "id125"} $rhs##4 := Call$$_module.__default.PrintSum(n##4, acc##2, prefix##0);
    // TrCallStmt: After ProcessCallStmt
    total#0 := $rhs##4;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(23,3)
    assume true;
    assume true;
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(25,23)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id127"} Call$$_module.__default.AutoAccumulatorTests();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(27,18)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id128"} Call$$Regression.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(30,5)
    assume true;
    ##x#0 := LitInt(2000000);
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    ##y#0 := LitInt(0);
    // assume allocatedness for argument to function
    assume $IsAlloc(##y#0, TInt, $Heap);
    assume _module.__default.FunctionByMethodTailRecursion#canCall(LitInt(2000000), LitInt(0));
    assume _module.__default.FunctionByMethodTailRecursion#canCall(LitInt(2000000), LitInt(0));
    x#0 := LitInt(_module.__default.FunctionByMethodTailRecursion(LitInt(2000000), LitInt(0)));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(31,3)
    assume true;
    assume true;
}



procedure {:verboseName "M (well-formedness)"} CheckWellFormed$$_module.__default.M(n#0: int where LitInt(0) <= n#0, a#0: int where LitInt(0) <= a#0)
   returns (r#0: int where LitInt(0) <= r#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M (call)"} Call$$_module.__default.M(n#0: int where LitInt(0) <= n#0, a#0: int where LitInt(0) <= a#0)
   returns (r#0: int where LitInt(0) <= r#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M (correctness)"} Impl$$_module.__default.M(n#0: int where LitInt(0) <= n#0, a#0: int where LitInt(0) <= a#0)
   returns (r#0: int where LitInt(0) <= r#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M (correctness)"} Impl$$_module.__default.M(n#0: int, a#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var p#1_0: int;
  var $rhs##1_0: int;
  var n##1_0: int;
  var a##1_0: int;

    // AddMethodImpl: M, Impl$$_module.__default.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(35,3)
    assume true;
    if (n#0 == LitInt(0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(36,7)
        assume true;
        assume true;
        r#0 := a#0;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(40,11)
        assume true;
        assume true;
        p#1_0 := n#0 + a#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(41,11)
        assume true;
        // TrCallStmt: Adding lhs with type nat
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id132"} $Is(n#0 - 1 + n#0 + a#0 - p#1_0, Tclass._System.nat());
        n##1_0 := n#0 - 1 + n#0 + a#0 - p#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id133"} $Is(a#0 + 1 + n#0 + a#0 - p#1_0, Tclass._System.nat());
        a##1_0 := a#0 + 1 + n#0 + a#0 - p#1_0;
        assert {:id "id134"} 0 <= n#0 || n##1_0 == n#0;
        assert {:id "id135"} 0 <= a#0 || n##1_0 < n#0 || a##1_0 == a#0;
        assert {:id "id136"} n##1_0 < n#0 || (n##1_0 == n#0 && a##1_0 < a#0);
        call {:id "id137"} $rhs##1_0 := Call$$_module.__default.M(n##1_0, a##1_0);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $rhs##1_0;
    }
}



procedure {:verboseName "TestMethod (well-formedness)"} CheckWellFormed$$_module.__default.TestMethod(n#0: int where LitInt(0) <= n#0, acc#0: int where LitInt(0) <= acc#0)
   returns (r#0: int where LitInt(0) <= r#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMethod (call)"} Call$$_module.__default.TestMethod(n#0: int where LitInt(0) <= n#0, acc#0: int where LitInt(0) <= acc#0)
   returns (r#0: int where LitInt(0) <= r#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMethod (correctness)"} Impl$$_module.__default.TestMethod(n#0: int where LitInt(0) <= n#0, acc#0: int where LitInt(0) <= acc#0)
   returns (r#0: int where LitInt(0) <= r#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMethod (correctness)"} Impl$$_module.__default.TestMethod(n#0: int, acc#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var n##1_0: int;
  var acc##1_0: int;

    // AddMethodImpl: TestMethod, Impl$$_module.__default.TestMethod
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(46,3)
    assume true;
    if (n#0 == LitInt(0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(47,7)
        assume true;
        assert {:id "id139"} $Is(acc#0 + 1, Tclass._System.nat());
        assume true;
        r#0 := acc#0 + 1;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(48,5)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(48,5)
        assume true;
        assert {:id "id141"} $Is(r#0 - 1, Tclass._System.nat());
        assume true;
        r#0 := r#0 - 1;
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(50,20)
        assume true;
        // TrCallStmt: Adding lhs with type nat
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id143"} $Is(n#0 - 1, Tclass._System.nat());
        n##1_0 := n#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id144"} $Is(acc#0 + 1, Tclass._System.nat());
        acc##1_0 := acc#0 + 1;
        assert {:id "id145"} 0 <= n#0 || n##1_0 == n#0;
        assert {:id "id146"} 0 <= acc#0 || n##1_0 < n#0 || acc##1_0 == acc#0;
        assert {:id "id147"} n##1_0 < n#0 || (n##1_0 == n#0 && acc##1_0 < acc#0);
        call {:id "id148"} $rhs##1_0 := Call$$_module.__default.TestMethod(n##1_0, acc##1_0);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $rhs##1_0;
    }
}



procedure {:verboseName "GhostAfterCall (well-formedness)"} CheckWellFormed$$_module.__default.GhostAfterCall(n#0: int where LitInt(0) <= n#0, acc#0: int where LitInt(0) <= acc#0)
   returns (r#0: int where LitInt(0) <= r#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GhostAfterCall (call)"} Call$$_module.__default.GhostAfterCall(n#0: int where LitInt(0) <= n#0, acc#0: int where LitInt(0) <= acc#0)
   returns (r#0: int where LitInt(0) <= r#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GhostAfterCall (correctness)"} Impl$$_module.__default.GhostAfterCall(n#0: int where LitInt(0) <= n#0, acc#0: int where LitInt(0) <= acc#0)
   returns (r#0: int where LitInt(0) <= r#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GhostAfterCall (correctness)"} Impl$$_module.__default.GhostAfterCall(n#0: int, acc#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var g#0: int;
  var u#0_0: int;
  var $rhs##1_0: int;
  var n##1_0: int;
  var acc##1_0: int;
  var gg#1_0: int;
  var h#1_0: int;
  var i#1_0: int;
  var $Heap_at_1_6_0: Heap;
  var $Heap_at_1_7_0: Heap;
  var $PreLoopHeap$loop#1_0: Heap;
  var $decr_init$loop#1_00: int;
  var $w$loop#1_0: bool;
  var $decr$loop#1_00: int;

    // AddMethodImpl: GhostAfterCall, Impl$$_module.__default.GhostAfterCall
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(55,15)
    assume true;
    assume true;
    g#0 := LitInt(10);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(56,3)
    assume true;
    if (n#0 == LitInt(0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(58,11)
        assume true;
        assume true;
        u#0_0 := LitInt(20);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(59,5)
        assume true;
        if (acc#0 == LitInt(300))
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(60,9)
            assume true;
            assume true;
            u#0_0 := u#0_0 + 1;
            pop;
        }
        else
        {
            push;
            pop;
        }

        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(64,5)
        assume true;
        if (acc#0 == LitInt(300))
        {
            push;
            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(65,12)
            assume true;
            if (g#0 < 25)
            {
                push;
                pop;
            }
            else
            {
            }

            pop;
        }

        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(67,5)
        assume true;
        if (acc#0 == LitInt(300))
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(68,9)
            assume true;
            assume true;
            u#0_0 := u#0_0 + 1;
            pop;
        }
        else
        {
        }

        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(71,5)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(71,5)
        assume true;
        assume true;
        r#0 := acc#0;
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(73,24)
        assume true;
        // TrCallStmt: Adding lhs with type nat
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id155"} $Is(n#0 - 1, Tclass._System.nat());
        n##1_0 := n#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id156"} $Is(acc#0 + 1, Tclass._System.nat());
        acc##1_0 := acc#0 + 1;
        assert {:id "id157"} 0 <= n#0 || n##1_0 == n#0;
        assert {:id "id158"} 0 <= acc#0 || n##1_0 < n#0 || acc##1_0 == acc#0;
        assert {:id "id159"} n##1_0 < n#0 || (n##1_0 == n#0 && acc##1_0 < acc#0);
        call {:id "id160"} $rhs##1_0 := Call$$_module.__default.GhostAfterCall(n##1_0, acc##1_0);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $rhs##1_0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(76,18)
        assume true;
        assume true;
        gg#1_0 := LitInt(10);
        push;
        pop;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(78,9)
        assume true;
        assume true;
        g#0 := g#0 + 1;
        pop;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(79,19)
        assume true;
        assume true;
        h#1_0 := LitInt(8);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(79,27)
        assume true;
        assume true;
        g#0 := g#0 + 1;
        pop;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(82,7)
        assert {:id "id166"} LitInt(2) != 0;
        assume true;
        if (Mod(g#0, LitInt(2)) == LitInt(0))
        {
            push;
            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(84,14)
            assert {:id "id167"} LitInt(3) != 0;
            assume true;
            if (Mod(g#0, LitInt(3)) == LitInt(0))
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(85,11)
                assume true;
                assume true;
                g#0 := g#0 + 1;
                pop;
            }
            else
            {
            }

            pop;
        }

        pop;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(90,7)
        assert {:id "id169"} LitInt(2) != 0;
        assume true;
        if (Mod(n#0, LitInt(2)) == LitInt(0))
        {
            push;
            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(92,14)
            assert {:id "id170"} LitInt(3) != 0;
            assume true;
            if (Mod(n#0, LitInt(3)) == LitInt(0))
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(93,11)
                assume true;
                assume true;
                g#0 := g#0 + 1;
                pop;
            }
            else
            {
            }

            pop;
        }

        pop;
        push;
        push;
        pop;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(98,9)
        assume true;
        assume true;
        g#0 := g#0 + 1;
        push;
        havoc i#1_0;
        pop;
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(100,9)
        assert {:id "id173"} LitInt(5) != 0;
        assume true;
        if (Mod(n#0, LitInt(5)) == LitInt(0))
        {
            push;
            pop;
        }
        else
        {
            push;
            pop;
        }

        pop;
        pop;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(102,5)
        assume true;
        if (n#0 == LitInt(0))
        {
            push;
            $Heap_at_1_6_0 := $Heap;
            push;
            pop;

          after_1_6_0:
            pop;
        }
        else
        {
        }

        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(105,5)
        assume true;
        if (n#0 == LitInt(1))
        {
            push;
            $Heap_at_1_7_0 := $Heap;
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(106,31)
            assume true;
            assert {:id "id174"} Lit(true);

          after_1_7_0:
            pop;
        }
        else
        {
        }

        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(108,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#1_0 := $Heap;
        $decr_init$loop#1_00 := LitInt(14 - 15);
        havoc $w$loop#1_0;
        while (true)
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#1_0[$o]);
          free invariant $HeapSuccGhost($PreLoopHeap$loop#1_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#1_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant LitInt(14 - 15) <= $decr_init$loop#1_00;
        {
            if (!$w$loop#1_0)
            {
                assume true;
                assume false;
            }

            assume true;
            if (!Lit(15 < 14))
            {
                break;
            }

            $decr$loop#1_00 := LitInt(14 - 15);
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(108,5)
            assert {:id "id175"} 0 <= $decr$loop#1_00 || LitInt(14 - 15) == $decr$loop#1_00;
            assert {:id "id176"} LitInt(14 - 15) < $decr$loop#1_00;
        }
    }
}



// function declaration for _module._default.F
function _module.__default.F($ly: LayerType, n#0: int, a#0: int) : int
uses {
// consequence axiom for _module.__default.F
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, a#0: int :: 
    { _module.__default.F($ly, n#0, a#0) } 
    _module.__default.F#canCall(n#0, a#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0 && LitInt(0) <= a#0)
       ==> LitInt(0) <= _module.__default.F($ly, n#0, a#0));
// definition axiom for _module.__default.F (revealed)
axiom {:id "id177"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, a#0: int :: 
    { _module.__default.F($LS($ly), n#0, a#0) } 
    _module.__default.F#canCall(n#0, a#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0 && LitInt(0) <= a#0)
       ==> (n#0 != LitInt(0)
           ==> (var p#0 := n#0 + a#0; 
            _module.__default.F#canCall(n#0 - 1 + n#0 + a#0 - p#0, a#0 + 1 + n#0 + a#0 - p#0)))
         && _module.__default.F($LS($ly), n#0, a#0)
           == (var irrelevantGhost#0 := LitInt(10); 
            (if n#0 == LitInt(0)
               then a#0
               else (var p#0 := n#0 + a#0; 
                _module.__default.F($ly, n#0 - 1 + n#0 + a#0 - p#0, a#0 + 1 + n#0 + a#0 - p#0)))));
// definition axiom for _module.__default.F for all literals (revealed)
axiom {:id "id178"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int, a#0: int :: 
    {:weight 3} { _module.__default.F($LS($ly), LitInt(n#0), LitInt(a#0)) } 
    _module.__default.F#canCall(LitInt(n#0), LitInt(a#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0 && LitInt(0) <= a#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> (var p#1 := LitInt(n#0 + a#0); 
            _module.__default.F#canCall(n#0 - 1 + n#0 + a#0 - p#1, a#0 + 1 + n#0 + a#0 - p#1)))
         && _module.__default.F($LS($ly), LitInt(n#0), LitInt(a#0))
           == (var irrelevantGhost#1 := LitInt(10); 
            (if LitInt(n#0) == LitInt(0)
               then a#0
               else (var p#1 := LitInt(n#0 + a#0); 
                LitInt(_module.__default.F($LS($ly), LitInt(n#0 - 1 + n#0 + a#0 - p#1), LitInt(a#0 + 1 + n#0 + a#0 - p#1)))))));
}

function _module.__default.F#canCall(n#0: int, a#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int, a#0: int :: 
  { _module.__default.F($LS($ly), n#0, a#0) } 
  _module.__default.F($LS($ly), n#0, a#0) == _module.__default.F($ly, n#0, a#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int, a#0: int :: 
  { _module.__default.F(AsFuelBottom($ly), n#0, a#0) } 
  _module.__default.F($ly, n#0, a#0) == _module.__default.F($LZ, n#0, a#0));

function _module.__default.F#requires(LayerType, int, int) : bool;

// #requires axiom for _module.__default.F
axiom (forall $ly: LayerType, n#0: int, a#0: int :: 
  { _module.__default.F#requires($ly, n#0, a#0) } 
  LitInt(0) <= n#0 && LitInt(0) <= a#0
     ==> _module.__default.F#requires($ly, n#0, a#0) == true);

procedure {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F(n#0: int where LitInt(0) <= n#0, a#0: int where LitInt(0) <= a#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F (well-formedness)"} CheckWellformed$$_module.__default.F(n#0: int, a#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var irrelevantGhost#Z#0: int;
  var let#0#0#0: int;
  var p#Z#0: int;
  var let#1#0#0: int;
  var ##n#0: int;
  var ##a#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.__default.F($LS($LZ), n#0, a#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        havoc irrelevantGhost#Z#0;
        assume {:id "id179"} let#0#0#0 == LitInt(10);
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0#0#0, TInt);
        assume {:id "id180"} irrelevantGhost#Z#0 == let#0#0#0;
        if (n#0 == LitInt(0))
        {
            assume {:id "id181"} _module.__default.F($LS($LZ), n#0, a#0) == a#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F($LS($LZ), n#0, a#0), Tclass._System.nat());
            return;
        }
        else
        {
            havoc p#Z#0;
            assume {:id "id182"} let#1#0#0 == n#0 + a#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id183"} p#Z#0 == let#1#0#0;
            assert {:id "id184"} $Is(n#0 - 1 + n#0 + a#0 - p#Z#0, Tclass._System.nat());
            ##n#0 := n#0 - 1 + n#0 + a#0 - p#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id185"} $Is(a#0 + 1 + n#0 + a#0 - p#Z#0, Tclass._System.nat());
            ##a#0 := a#0 + 1 + n#0 + a#0 - p#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
            assert {:id "id186"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id187"} 0 <= a#0 || ##n#0 < n#0 || ##a#0 == a#0;
            assert {:id "id188"} ##n#0 < n#0 || (##n#0 == n#0 && ##a#0 < a#0);
            assume _module.__default.F#canCall(n#0 - 1 + n#0 + a#0 - p#Z#0, a#0 + 1 + n#0 + a#0 - p#Z#0);
            assume {:id "id189"} _module.__default.F($LS($LZ), n#0, a#0)
               == _module.__default.F($LS($LZ), n#0 - 1 + n#0 + a#0 - p#Z#0, a#0 + 1 + n#0 + a#0 - p#Z#0);
            assume _module.__default.F#canCall(n#0 - 1 + n#0 + a#0 - p#Z#0, a#0 + 1 + n#0 + a#0 - p#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F($LS($LZ), n#0, a#0), Tclass._System.nat());
            return;
        }

        assume false;
    }
}



procedure {:verboseName "PrintSum (well-formedness)"} CheckWellFormed$$_module.__default.PrintSum(n#0: int where LitInt(0) <= n#0, 
    acc#0: int where LitInt(0) <= acc#0, 
    prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap))
   returns (total#0: int where LitInt(0) <= total#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PrintSum (call)"} Call$$_module.__default.PrintSum(n#0: int where LitInt(0) <= n#0, 
    acc#0: int where LitInt(0) <= acc#0, 
    prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap))
   returns (total#0: int where LitInt(0) <= total#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PrintSum (correctness)"} Impl$$_module.__default.PrintSum(n#0: int where LitInt(0) <= n#0, 
    acc#0: int where LitInt(0) <= acc#0, 
    prefix#0: Seq
       where $Is(prefix#0, TSeq(TChar)) && $IsAlloc(prefix#0, TSeq(TChar), $Heap))
   returns (total#0: int where LitInt(0) <= total#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PrintSum (correctness)"} Impl$$_module.__default.PrintSum(n#0: int, acc#0: int, prefix#0: Seq)
   returns (total#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var n##1_0: int;
  var acc##1_0: int;
  var prefix##1_0: Seq;

    // AddMethodImpl: PrintSum, Impl$$_module.__default.PrintSum
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(148,3)
    assume true;
    if (n#0 == LitInt(0))
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(149,11)
        assume true;
        assume true;
        total#0 := acc#0;
    }
    else
    {
        // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(151,5)
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(152,22)
        assume true;
        // TrCallStmt: Adding lhs with type nat
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id191"} $Is(n#0 - 1, Tclass._System.nat());
        n##1_0 := n#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id192"} $Is(n#0 + acc#0, Tclass._System.nat());
        acc##1_0 := n#0 + acc#0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        prefix##1_0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(char#FromInt(32))), $Box(char#FromInt(43))), 
            $Box(char#FromInt(32))));
        assert {:id "id193"} 0 <= n#0 || n##1_0 == n#0;
        assert {:id "id194"} 0 <= acc#0 || n##1_0 < n#0 || acc##1_0 == acc#0;
        assert {:id "id195"} n##1_0 < n#0
           || (n##1_0 == n#0
             && (acc##1_0 < acc#0
               || (acc##1_0 == acc#0 && Seq#Rank(prefix##1_0) < Seq#Rank(prefix#0))));
        call {:id "id196"} $rhs##1_0 := Call$$_module.__default.PrintSum(n##1_0, acc##1_0, prefix##1_0);
        // TrCallStmt: After ProcessCallStmt
        total#0 := $rhs##1_0;
    }
}



procedure {:verboseName "AutoAccumulatorTests (well-formedness)"} CheckWellFormed$$_module.__default.AutoAccumulatorTests();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AutoAccumulatorTests (call)"} Call$$_module.__default.AutoAccumulatorTests();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "AutoAccumulatorTests (correctness)"} Impl$$_module.__default.AutoAccumulatorTests() returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
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

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "AutoAccumulatorTests (correctness)"} Impl$$_module.__default.AutoAccumulatorTests() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;
  var ##n#2: int;
  var ##n#3: int;
  var u#0: Seq
     where $Is(u#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(u#0, TSeq(Tclass._System.nat()), $Heap);
  var $rhs##0: Seq;
  var S##0: Set;
  var ##n#4: int;
  var ##n#5: int;
  var ##n#6: int;
  var xs#0: DatatypeType
     where $Is(xs#0, Tclass._module.List()) && $IsAlloc(xs#0, Tclass._module.List(), $Heap);
  var ##xs#0: DatatypeType;
  var ##n#7: int;
  var ##n#8: int;

    // AddMethodImpl: AutoAccumulatorTests, Impl$$_module.__default.AutoAccumulatorTests
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(159,3)
    assume true;
    assert {:id "id198"} $Is(LitInt(10), Tclass._System.nat());
    ##n#0 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
    assume _module.__default.TriangleNumber#canCall(LitInt(10));
    assume _module.__default.TriangleNumber#canCall(LitInt(10));
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(160,3)
    assume true;
    assert {:id "id199"} $Is(LitInt(10), Tclass._System.nat());
    ##n#1 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
    assume _module.__default.TriangleNumber__Real#canCall(LitInt(10));
    assume _module.__default.TriangleNumber__Real#canCall(LitInt(10));
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(161,3)
    assume true;
    assert {:id "id200"} $Is(LitInt(10), Tclass._System.nat());
    ##n#2 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#2, Tclass._System.nat(), $Heap);
    assume _module.__default.TriangleNumber__ORDINAL#canCall(LitInt(10));
    assume _module.__default.TriangleNumber__ORDINAL#canCall(LitInt(10));
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(162,3)
    assume true;
    assert {:id "id201"} $Is(LitInt(5), Tclass._System.nat());
    ##n#3 := LitInt(5);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#3, Tclass._System.nat(), $Heap);
    assume _module.__default.Factorial#canCall(LitInt(5));
    assume _module.__default.Factorial#canCall(LitInt(5));
    assume true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(163,20)
    assume true;
    // TrCallStmt: Adding lhs with type seq<nat>
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id202"} $Is(LitInt(8), Tclass._System.nat());
    ##n#4 := LitInt(8);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#4, Tclass._System.nat(), $Heap);
    assume _module.__default.Union#canCall(LitInt(8));
    assume _module.__default.Union#canCall(LitInt(8));
    // ProcessCallStmt: CheckSubrange
    S##0 := Lit(_module.__default.Union($LS($LZ), LitInt(8)));
    call {:id "id203"} $rhs##0 := Call$$_module.__default.SetToSeq(S##0);
    // TrCallStmt: After ProcessCallStmt
    u#0 := $rhs##0;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(164,3)
    assume true;
    assume true;
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(165,3)
    assume true;
    assert {:id "id205"} $Is(LitInt(10), Tclass._System.nat());
    ##n#5 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#5, Tclass._System.nat(), $Heap);
    assume _module.__default.UpTo#canCall(LitInt(10));
    assume _module.__default.UpTo#canCall(LitInt(10));
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(166,3)
    assume true;
    assert {:id "id206"} $Is(LitInt(10), Tclass._System.nat());
    ##n#6 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#6, Tclass._System.nat(), $Heap);
    assume _module.__default.DownFrom#canCall(LitInt(10));
    assume _module.__default.DownFrom#canCall(LitInt(10));
    assume true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(167,10)
    assume true;
    assume true;
    xs#0 := Lit(#_module.List.Cons(LitInt(100), 
        Lit(#_module.List.Cons(LitInt(40), Lit(#_module.List.Cons(LitInt(60), Lit(#_module.List.Nil())))))));
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(168,3)
    assume true;
    assume true;
    assume true;
    ##xs#0 := xs#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
    assume _module.__default.Sum#canCall(xs#0);
    assume _module.__default.Sum#canCall(xs#0);
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(169,3)
    assume true;
    assert {:id "id208"} $Is(LitInt(100), Tclass._System.nat());
    ##n#7 := LitInt(100);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#7, Tclass._System.nat(), $Heap);
    assume _module.__default.TheBigSubtract#canCall(LitInt(100));
    assume _module.__default.TheBigSubtract#canCall(LitInt(100));
    assume true;
    // ----- print statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(170,3)
    assume true;
    ##n#8 := LitInt(10);
    // assume allocatedness for argument to function
    assume $IsAlloc(##n#8, TInt, $Heap);
    assert {:id "id209"} {:subsumption 0} LitInt(0) <= ##n#8;
    assert {:id "id210"} {:subsumption 0} ##n#8 <= LitInt(20);
    assume _module.__default.TailNat#canCall(LitInt(10));
    assume _module.__default.TailNat#canCall(LitInt(10));
    assume true;
}



// function declaration for _module._default.TriangleNumber
function _module.__default.TriangleNumber($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.TriangleNumber
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.TriangleNumber($ly, n#0) } 
    _module.__default.TriangleNumber#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> LitInt(0) <= _module.__default.TriangleNumber($ly, n#0));
// definition axiom for _module.__default.TriangleNumber (revealed)
axiom {:id "id211"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.TriangleNumber($LS($ly), n#0) } 
    _module.__default.TriangleNumber#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0)
           ==> (Mod(n#0, LitInt(2)) == LitInt(0)
               ==> _module.__default.TriangleNumber#canCall(n#0 - 1))
             && (Mod(n#0, LitInt(2)) != LitInt(0)
               ==> _module.__default.TriangleNumber#canCall(n#0 - 1)))
         && _module.__default.TriangleNumber($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then 0
             else (if Mod(n#0, LitInt(2)) == LitInt(0)
               then _module.__default.TriangleNumber($ly, n#0 - 1) + n#0
               else n#0 + _module.__default.TriangleNumber($ly, n#0 - 1))));
// definition axiom for _module.__default.TriangleNumber for all literals (revealed)
axiom {:id "id212"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.TriangleNumber($LS($ly), LitInt(n#0)) } 
    _module.__default.TriangleNumber#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> (LitInt(Mod(n#0, LitInt(2))) == LitInt(0)
               ==> _module.__default.TriangleNumber#canCall(LitInt(n#0 - 1)))
             && (LitInt(Mod(n#0, LitInt(2))) != LitInt(0)
               ==> _module.__default.TriangleNumber#canCall(LitInt(n#0 - 1))))
         && _module.__default.TriangleNumber($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then 0
             else (if LitInt(Mod(n#0, LitInt(2))) == LitInt(0)
               then _module.__default.TriangleNumber($LS($ly), LitInt(n#0 - 1)) + n#0
               else n#0 + _module.__default.TriangleNumber($LS($ly), LitInt(n#0 - 1)))));
}

function _module.__default.TriangleNumber#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TriangleNumber($LS($ly), n#0) } 
  _module.__default.TriangleNumber($LS($ly), n#0)
     == _module.__default.TriangleNumber($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TriangleNumber(AsFuelBottom($ly), n#0) } 
  _module.__default.TriangleNumber($ly, n#0)
     == _module.__default.TriangleNumber($LZ, n#0));

function _module.__default.TriangleNumber#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.TriangleNumber
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TriangleNumber#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.TriangleNumber#requires($ly, n#0) == true);

procedure {:verboseName "TriangleNumber (well-formedness)"} CheckWellformed$$_module.__default.TriangleNumber(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TriangleNumber (well-formedness)"} CheckWellformed$$_module.__default.TriangleNumber(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
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
        assume LitInt(0) <= _module.__default.TriangleNumber($LS($LZ), n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assert {:id "id213"} $Is(LitInt(0), Tclass._System.nat());
            assume {:id "id214"} _module.__default.TriangleNumber($LS($LZ), n#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TriangleNumber($LS($LZ), n#0), Tclass._System.nat());
            return;
        }
        else
        {
            assert {:id "id215"} LitInt(2) != 0;
            if (Mod(n#0, LitInt(2)) == LitInt(0))
            {
                assert {:id "id216"} $Is(n#0 - 1, Tclass._System.nat());
                ##n#0 := n#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
                assert {:id "id217"} 0 <= n#0 || ##n#0 == n#0;
                assert {:id "id218"} ##n#0 < n#0;
                assume _module.__default.TriangleNumber#canCall(n#0 - 1);
                assert {:id "id219"} $Is(_module.__default.TriangleNumber($LS($LZ), n#0 - 1) + n#0, Tclass._System.nat());
                assume {:id "id220"} _module.__default.TriangleNumber($LS($LZ), n#0)
                   == _module.__default.TriangleNumber($LS($LZ), n#0 - 1) + n#0;
                assume _module.__default.TriangleNumber#canCall(n#0 - 1);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.TriangleNumber($LS($LZ), n#0), Tclass._System.nat());
                return;
            }
            else
            {
                assert {:id "id221"} $Is(n#0 - 1, Tclass._System.nat());
                ##n#1 := n#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
                assert {:id "id222"} 0 <= n#0 || ##n#1 == n#0;
                assert {:id "id223"} ##n#1 < n#0;
                assume _module.__default.TriangleNumber#canCall(n#0 - 1);
                assert {:id "id224"} $Is(n#0 + _module.__default.TriangleNumber($LS($LZ), n#0 - 1), Tclass._System.nat());
                assume {:id "id225"} _module.__default.TriangleNumber($LS($LZ), n#0)
                   == n#0 + _module.__default.TriangleNumber($LS($LZ), n#0 - 1);
                assume _module.__default.TriangleNumber#canCall(n#0 - 1);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.TriangleNumber($LS($LZ), n#0), Tclass._System.nat());
                return;
            }
        }

        assume false;
    }
}



// function declaration for _module._default.TriangleNumber_Real
function _module.__default.TriangleNumber__Real($ly: LayerType, n#0: int) : real
uses {
// definition axiom for _module.__default.TriangleNumber__Real (revealed)
axiom {:id "id226"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.TriangleNumber__Real($LS($ly), n#0) } 
    _module.__default.TriangleNumber__Real#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0) ==> _module.__default.TriangleNumber__Real#canCall(n#0 - 1))
         && _module.__default.TriangleNumber__Real($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then 0e0
             else _module.__default.TriangleNumber__Real($ly, n#0 - 1) + Real(n#0)));
// definition axiom for _module.__default.TriangleNumber__Real for all literals (revealed)
axiom {:id "id227"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.TriangleNumber__Real($LS($ly), LitInt(n#0)) } 
    _module.__default.TriangleNumber__Real#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.TriangleNumber__Real#canCall(LitInt(n#0 - 1)))
         && _module.__default.TriangleNumber__Real($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then 0e0
             else _module.__default.TriangleNumber__Real($LS($ly), LitInt(n#0 - 1))
               + Real(LitInt(n#0))));
}

function _module.__default.TriangleNumber__Real#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TriangleNumber__Real($LS($ly), n#0) } 
  _module.__default.TriangleNumber__Real($LS($ly), n#0)
     == _module.__default.TriangleNumber__Real($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TriangleNumber__Real(AsFuelBottom($ly), n#0) } 
  _module.__default.TriangleNumber__Real($ly, n#0)
     == _module.__default.TriangleNumber__Real($LZ, n#0));

function _module.__default.TriangleNumber__Real#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.TriangleNumber__Real
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TriangleNumber__Real#requires($ly, n#0) } 
  LitInt(0) <= n#0
     ==> _module.__default.TriangleNumber__Real#requires($ly, n#0) == true);

procedure {:verboseName "TriangleNumber_Real (well-formedness)"} CheckWellformed$$_module.__default.TriangleNumber__Real(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TriangleNumber_Real (well-formedness)"} CheckWellformed$$_module.__default.TriangleNumber__Real(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
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
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id228"} _module.__default.TriangleNumber__Real($LS($LZ), n#0) == LitReal(0e0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TriangleNumber__Real($LS($LZ), n#0), TReal);
            return;
        }
        else
        {
            assert {:id "id229"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id230"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id231"} ##n#0 < n#0;
            assume _module.__default.TriangleNumber__Real#canCall(n#0 - 1);
            assume {:id "id232"} _module.__default.TriangleNumber__Real($LS($LZ), n#0)
               == _module.__default.TriangleNumber__Real($LS($LZ), n#0 - 1) + Real(n#0);
            assume _module.__default.TriangleNumber__Real#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TriangleNumber__Real($LS($LZ), n#0), TReal);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.TriangleNumber_ORDINAL
function _module.__default.TriangleNumber__ORDINAL($ly: LayerType, n#0: int) : Box
uses {
// definition axiom for _module.__default.TriangleNumber__ORDINAL (revealed)
axiom {:id "id233"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.TriangleNumber__ORDINAL($LS($ly), n#0) } 
    _module.__default.TriangleNumber__ORDINAL#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0)
           ==> _module.__default.TriangleNumber__ORDINAL#canCall(n#0 - 1))
         && _module.__default.TriangleNumber__ORDINAL($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then ORD#FromNat(0)
             else ORD#Plus(_module.__default.TriangleNumber__ORDINAL($ly, n#0 - 1), ORD#FromNat(n#0))));
// definition axiom for _module.__default.TriangleNumber__ORDINAL for all literals (revealed)
axiom {:id "id234"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.TriangleNumber__ORDINAL($LS($ly), LitInt(n#0)) } 
    _module.__default.TriangleNumber__ORDINAL#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.TriangleNumber__ORDINAL#canCall(LitInt(n#0 - 1)))
         && _module.__default.TriangleNumber__ORDINAL($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then ORD#FromNat(0)
             else ORD#Plus(_module.__default.TriangleNumber__ORDINAL($LS($ly), LitInt(n#0 - 1)), 
              ORD#FromNat(LitInt(n#0)))));
}

function _module.__default.TriangleNumber__ORDINAL#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TriangleNumber__ORDINAL($LS($ly), n#0) } 
  _module.__default.TriangleNumber__ORDINAL($LS($ly), n#0)
     == _module.__default.TriangleNumber__ORDINAL($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TriangleNumber__ORDINAL(AsFuelBottom($ly), n#0) } 
  _module.__default.TriangleNumber__ORDINAL($ly, n#0)
     == _module.__default.TriangleNumber__ORDINAL($LZ, n#0));

function _module.__default.TriangleNumber__ORDINAL#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.TriangleNumber__ORDINAL
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TriangleNumber__ORDINAL#requires($ly, n#0) } 
  LitInt(0) <= n#0
     ==> _module.__default.TriangleNumber__ORDINAL#requires($ly, n#0) == true);

procedure {:verboseName "TriangleNumber_ORDINAL (well-formedness)"} CheckWellformed$$_module.__default.TriangleNumber__ORDINAL(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TriangleNumber_ORDINAL (well-formedness)"} CheckWellformed$$_module.__default.TriangleNumber__ORDINAL(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var newtype$check#0: int;


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
        if (n#0 == LitInt(0))
        {
            assume {:id "id235"} _module.__default.TriangleNumber__ORDINAL($LS($LZ), n#0) == Lit(ORD#FromNat(0));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TriangleNumber__ORDINAL($LS($LZ), n#0), TORDINAL);
            return;
        }
        else
        {
            assert {:id "id236"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id237"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id238"} ##n#0 < n#0;
            assume _module.__default.TriangleNumber__ORDINAL#canCall(n#0 - 1);
            newtype$check#0 := n#0;
            assert {:id "id239"} 0 <= newtype$check#0;
            assume {:id "id240"} _module.__default.TriangleNumber__ORDINAL($LS($LZ), n#0)
               == ORD#Plus(_module.__default.TriangleNumber__ORDINAL($LS($LZ), n#0 - 1), ORD#FromNat(n#0));
            assume _module.__default.TriangleNumber__ORDINAL#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TriangleNumber__ORDINAL($LS($LZ), n#0), TORDINAL);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.Factorial
function _module.__default.Factorial($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.Factorial
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Factorial($ly, n#0) } 
    _module.__default.Factorial#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> LitInt(0) <= _module.__default.Factorial($ly, n#0));
// definition axiom for _module.__default.Factorial (revealed)
axiom {:id "id241"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Factorial($LS($ly), n#0) } 
    _module.__default.Factorial#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0)
           ==> (Mod(n#0, LitInt(2)) == LitInt(0)
               ==> _module.__default.Factorial#canCall(n#0 - 1))
             && (Mod(n#0, LitInt(2)) != LitInt(0)
               ==> _module.__default.Factorial#canCall(n#0 - 1)))
         && _module.__default.Factorial($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then 1
             else (if Mod(n#0, LitInt(2)) == LitInt(0)
               then Mul(_module.__default.Factorial($ly, n#0 - 1), n#0)
               else Mul(n#0, _module.__default.Factorial($ly, n#0 - 1)))));
// definition axiom for _module.__default.Factorial for all literals (revealed)
axiom {:id "id242"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.Factorial($LS($ly), LitInt(n#0)) } 
    _module.__default.Factorial#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> (LitInt(Mod(n#0, LitInt(2))) == LitInt(0)
               ==> _module.__default.Factorial#canCall(LitInt(n#0 - 1)))
             && (LitInt(Mod(n#0, LitInt(2))) != LitInt(0)
               ==> _module.__default.Factorial#canCall(LitInt(n#0 - 1))))
         && _module.__default.Factorial($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then 1
             else (if LitInt(Mod(n#0, LitInt(2))) == LitInt(0)
               then Mul(LitInt(_module.__default.Factorial($LS($ly), LitInt(n#0 - 1))), LitInt(n#0))
               else Mul(LitInt(n#0), LitInt(_module.__default.Factorial($LS($ly), LitInt(n#0 - 1)))))));
}

function _module.__default.Factorial#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Factorial($LS($ly), n#0) } 
  _module.__default.Factorial($LS($ly), n#0)
     == _module.__default.Factorial($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Factorial(AsFuelBottom($ly), n#0) } 
  _module.__default.Factorial($ly, n#0) == _module.__default.Factorial($LZ, n#0));

function _module.__default.Factorial#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Factorial
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Factorial#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.Factorial#requires($ly, n#0) == true);

procedure {:verboseName "Factorial (well-formedness)"} CheckWellformed$$_module.__default.Factorial(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Factorial (well-formedness)"} CheckWellformed$$_module.__default.Factorial(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
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
        assume LitInt(0) <= _module.__default.Factorial($LS($LZ), n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assert {:id "id243"} $Is(LitInt(1), Tclass._System.nat());
            assume {:id "id244"} _module.__default.Factorial($LS($LZ), n#0) == LitInt(1);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Factorial($LS($LZ), n#0), Tclass._System.nat());
            return;
        }
        else
        {
            assert {:id "id245"} LitInt(2) != 0;
            if (Mod(n#0, LitInt(2)) == LitInt(0))
            {
                assert {:id "id246"} $Is(n#0 - 1, Tclass._System.nat());
                ##n#0 := n#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
                assert {:id "id247"} 0 <= n#0 || ##n#0 == n#0;
                assert {:id "id248"} ##n#0 < n#0;
                assume _module.__default.Factorial#canCall(n#0 - 1);
                assert {:id "id249"} $Is(Mul(_module.__default.Factorial($LS($LZ), n#0 - 1), n#0), Tclass._System.nat());
                assume {:id "id250"} _module.__default.Factorial($LS($LZ), n#0)
                   == Mul(_module.__default.Factorial($LS($LZ), n#0 - 1), n#0);
                assume _module.__default.Factorial#canCall(n#0 - 1);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Factorial($LS($LZ), n#0), Tclass._System.nat());
                return;
            }
            else
            {
                assert {:id "id251"} $Is(n#0 - 1, Tclass._System.nat());
                ##n#1 := n#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
                assert {:id "id252"} 0 <= n#0 || ##n#1 == n#0;
                assert {:id "id253"} ##n#1 < n#0;
                assume _module.__default.Factorial#canCall(n#0 - 1);
                assert {:id "id254"} $Is(Mul(n#0, _module.__default.Factorial($LS($LZ), n#0 - 1)), Tclass._System.nat());
                assume {:id "id255"} _module.__default.Factorial($LS($LZ), n#0)
                   == Mul(n#0, _module.__default.Factorial($LS($LZ), n#0 - 1));
                assume _module.__default.Factorial#canCall(n#0 - 1);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Factorial($LS($LZ), n#0), Tclass._System.nat());
                return;
            }
        }

        assume false;
    }
}



// function declaration for _module._default.Union
function _module.__default.Union($ly: LayerType, n#0: int) : Set
uses {
// consequence axiom for _module.__default.Union
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Union($ly, n#0) } 
    _module.__default.Union#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> $Is(_module.__default.Union($ly, n#0), TSet(Tclass._System.nat())));
// definition axiom for _module.__default.Union (revealed)
axiom {:id "id256"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.Union($LS($ly), n#0) } 
    _module.__default.Union#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0)
           ==> (Mod(n#0, LitInt(2)) == LitInt(0) ==> _module.__default.Union#canCall(n#0 - 1))
             && (Mod(n#0, LitInt(2)) != LitInt(0) ==> _module.__default.Union#canCall(n#0 - 1)))
         && _module.__default.Union($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0)))
             else (if Mod(n#0, LitInt(2)) == LitInt(0)
               then Set#Union(_module.__default.Union($ly, n#0 - 1), Set#UnionOne(Set#Empty(): Set, $Box(n#0)))
               else Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(n#0)), _module.__default.Union($ly, n#0 - 1)))));
// definition axiom for _module.__default.Union for all literals (revealed)
axiom {:id "id257"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.Union($LS($ly), LitInt(n#0)) } 
    _module.__default.Union#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> (LitInt(Mod(n#0, LitInt(2))) == LitInt(0)
               ==> _module.__default.Union#canCall(LitInt(n#0 - 1)))
             && (LitInt(Mod(n#0, LitInt(2))) != LitInt(0)
               ==> _module.__default.Union#canCall(LitInt(n#0 - 1))))
         && _module.__default.Union($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0)))
             else (if LitInt(Mod(n#0, LitInt(2))) == LitInt(0)
               then Set#Union(_module.__default.Union($LS($ly), LitInt(n#0 - 1)), 
                Set#UnionOne(Set#Empty(): Set, $Box(LitInt(n#0))))
               else Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(n#0))), 
                _module.__default.Union($LS($ly), LitInt(n#0 - 1))))));
}

function _module.__default.Union#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Union($LS($ly), n#0) } 
  _module.__default.Union($LS($ly), n#0) == _module.__default.Union($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Union(AsFuelBottom($ly), n#0) } 
  _module.__default.Union($ly, n#0) == _module.__default.Union($LZ, n#0));

function _module.__default.Union#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.Union
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.Union#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.Union#requires($ly, n#0) == true);

procedure {:verboseName "Union (well-formedness)"} CheckWellformed$$_module.__default.Union(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Union (well-formedness)"} CheckWellformed$$_module.__default.Union(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
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
        assume $Is(_module.__default.Union($LS($LZ), n#0), TSet(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assert {:id "id258"} $Is(LitInt(0), Tclass._System.nat());
            assume {:id "id259"} _module.__default.Union($LS($LZ), n#0)
               == Lit(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(0))));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Union($LS($LZ), n#0), TSet(Tclass._System.nat()));
            return;
        }
        else
        {
            assert {:id "id260"} LitInt(2) != 0;
            if (Mod(n#0, LitInt(2)) == LitInt(0))
            {
                assert {:id "id261"} $Is(n#0 - 1, Tclass._System.nat());
                ##n#0 := n#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
                assert {:id "id262"} 0 <= n#0 || ##n#0 == n#0;
                assert {:id "id263"} ##n#0 < n#0;
                assume _module.__default.Union#canCall(n#0 - 1);
                assume {:id "id264"} _module.__default.Union($LS($LZ), n#0)
                   == Set#Union(_module.__default.Union($LS($LZ), n#0 - 1), 
                    Set#UnionOne(Set#Empty(): Set, $Box(n#0)));
                assume _module.__default.Union#canCall(n#0 - 1);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Union($LS($LZ), n#0), TSet(Tclass._System.nat()));
                return;
            }
            else
            {
                assert {:id "id265"} $Is(n#0 - 1, Tclass._System.nat());
                ##n#1 := n#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
                assert {:id "id266"} 0 <= n#0 || ##n#1 == n#0;
                assert {:id "id267"} ##n#1 < n#0;
                assume _module.__default.Union#canCall(n#0 - 1);
                assume {:id "id268"} _module.__default.Union($LS($LZ), n#0)
                   == Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(n#0)), 
                    _module.__default.Union($LS($LZ), n#0 - 1));
                assume _module.__default.Union#canCall(n#0 - 1);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.__default.Union($LS($LZ), n#0), TSet(Tclass._System.nat()));
                return;
            }
        }

        assume false;
    }
}



procedure {:verboseName "SetToSeq (well-formedness)"} CheckWellFormed$$_module.__default.SetToSeq(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap))
   returns (r#0: Seq
       where $Is(r#0, TSeq(Tclass._System.nat()))
         && $IsAlloc(r#0, TSeq(Tclass._System.nat()), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetToSeq (call)"} Call$$_module.__default.SetToSeq(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap))
   returns (r#0: Seq
       where $Is(r#0, TSeq(Tclass._System.nat()))
         && $IsAlloc(r#0, TSeq(Tclass._System.nat()), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetToSeq (correctness)"} Impl$$_module.__default.SetToSeq(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap))
   returns (r#0: Seq
       where $Is(r#0, TSeq(Tclass._System.nat()))
         && $IsAlloc(r#0, TSeq(Tclass._System.nat()), $Heap), 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetToSeq (correctness)"} Impl$$_module.__default.SetToSeq(S#0: Set) returns (r#0: Seq, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int where LitInt(0) <= x#0;
  var x#1: int;
  var smaller#0: Set
     where $Is(smaller#0, TSet(Tclass._System.nat()))
       && $IsAlloc(smaller#0, TSet(Tclass._System.nat()), $Heap);
  var y#0: int;
  var larger#0: Set
     where $Is(larger#0, TSet(Tclass._System.nat()))
       && $IsAlloc(larger#0, TSet(Tclass._System.nat()), $Heap);
  var y#2: int;
  var s#0: Seq
     where $Is(s#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(s#0, TSeq(Tclass._System.nat()), $Heap);
  var $rhs##0: Seq;
  var S##0: Set;
  var l#0: Seq
     where $Is(l#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(l#0, TSeq(Tclass._System.nat()), $Heap);
  var $rhs##1: Seq;
  var S##1: Set;

    // AddMethodImpl: SetToSeq, Impl$$_module.__default.SetToSeq
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(215,3)
    assume true;
    if (Set#Equal(S#0, Set#Empty(): Set))
    {
        push;
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(216,5)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(216,5)
        assume true;
        assume true;
        r#0 := Lit(Seq#Empty(): Seq);
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(218,9)
    havoc x#1;
    if (LitInt(0) <= x#1)
    {
        assume true;
    }

    assert {:id "id270"} ($Is(LitInt(0), Tclass._System.nat()) && Set#IsMember(S#0, $Box(LitInt(0))))
       || 
      ($Is(LitInt(0), Tclass._System.nat()) && Set#IsMember(S#0, $Box(LitInt(0))))
       || (exists $as#x0#0: int :: 
        LitInt(0) <= $as#x0#0 && Set#IsMember(S#0, $Box($as#x0#0)));
    havoc x#0;
    assume {:id "id271"} Set#IsMember(S#0, $Box(x#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(219,15)
    assume true;
    // Begin Comprehension WF check
    havoc y#0;
    if (LitInt(0) <= y#0)
    {
        if (Set#IsMember(S#0, $Box(y#0)))
        {
        }

        if (Set#IsMember(S#0, $Box(y#0)) && y#0 < x#0)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    smaller#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, Tclass._System.nat())
           && 
          Set#IsMember(S#0, $y#0)
           && $Unbox($y#0): int < x#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(220,14)
    assume true;
    // Begin Comprehension WF check
    havoc y#2;
    if (LitInt(0) <= y#2)
    {
        if (Set#IsMember(S#0, $Box(y#2)))
        {
        }

        if (Set#IsMember(S#0, $Box(y#2)) && x#0 < y#2)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    larger#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
        $IsBox($y#1, Tclass._System.nat())
           && 
          Set#IsMember(S#0, $y#1)
           && x#0 < $Unbox($y#1): int));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(221,20)
    assume true;
    // TrCallStmt: Adding lhs with type seq<nat>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##0 := smaller#0;
    assert {:id "id274"} Set#Subset(S##0, S#0) && !Set#Subset(S#0, S##0);
    call {:id "id275"} $rhs##0 := Call$$_module.__default.SetToSeq(S##0);
    // TrCallStmt: After ProcessCallStmt
    s#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(222,20)
    assume true;
    // TrCallStmt: Adding lhs with type seq<nat>
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##1 := larger#0;
    assert {:id "id277"} Set#Subset(S##1, S#0) && !Set#Subset(S#0, S##1);
    call {:id "id278"} $rhs##1 := Call$$_module.__default.SetToSeq(S##1);
    // TrCallStmt: After ProcessCallStmt
    l#0 := $rhs##1;
    // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(223,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(223,3)
    assume true;
    assume true;
    r#0 := Seq#Append(Seq#Append(s#0, Seq#Build(Seq#Empty(): Seq, $Box(x#0))), l#0);
    return;
}



procedure {:verboseName "SetToSeq_Regression (well-formedness)"} CheckWellFormed$$_module.__default.SetToSeq__Regression(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap))
   returns (r#0: Seq
       where $Is(r#0, TSeq(Tclass._System.nat()))
         && $IsAlloc(r#0, TSeq(Tclass._System.nat()), $Heap), 
    g#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetToSeq_Regression (call)"} Call$$_module.__default.SetToSeq__Regression(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap))
   returns (r#0: Seq
       where $Is(r#0, TSeq(Tclass._System.nat()))
         && $IsAlloc(r#0, TSeq(Tclass._System.nat()), $Heap), 
    g#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetToSeq_Regression (correctness)"} Impl$$_module.__default.SetToSeq__Regression(S#0: Set
       where $Is(S#0, TSet(Tclass._System.nat()))
         && $IsAlloc(S#0, TSet(Tclass._System.nat()), $Heap))
   returns (r#0: Seq
       where $Is(r#0, TSeq(Tclass._System.nat()))
         && $IsAlloc(r#0, TSeq(Tclass._System.nat()), $Heap), 
    g#0: int, 
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetToSeq_Regression (correctness)"} Impl$$_module.__default.SetToSeq__Regression(S#0: Set) returns (r#0: Seq, g#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int where LitInt(0) <= x#0;
  var x#1: int;
  var smaller#0: Set
     where $Is(smaller#0, TSet(TInt)) && $IsAlloc(smaller#0, TSet(TInt), $Heap);
  var y#0: int;
  var larger#0: Set
     where $Is(larger#0, TSet(Tclass._System.nat()))
       && $IsAlloc(larger#0, TSet(Tclass._System.nat()), $Heap);
  var y#2: int;
  var s#0: Seq
     where $Is(s#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(s#0, TSeq(Tclass._System.nat()), $Heap);
  var _v0#0: int;
  var $rhs##0: Seq;
  var $rhs##1: int;
  var S##0: Set;
  var l#0: Seq
     where $Is(l#0, TSeq(Tclass._System.nat()))
       && $IsAlloc(l#0, TSeq(Tclass._System.nat()), $Heap);
  var _v1#0: int;
  var $rhs##2: Seq;
  var $rhs##3: int;
  var S##1: Set;

    // AddMethodImpl: SetToSeq_Regression, Impl$$_module.__default.SetToSeq__Regression
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(230,3)
    assume true;
    if (Set#Equal(S#0, Set#Empty(): Set))
    {
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(231,7)
        assume true;
        assume true;
        r#0 := Lit(Seq#Empty(): Seq);
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(232,5)
        pop;
        return;

        pop;
    }
    else
    {
    }

    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(234,9)
    havoc x#1;
    if (LitInt(0) <= x#1)
    {
        assume true;
    }

    assert {:id "id282"} ($Is(LitInt(0), Tclass._System.nat()) && Set#IsMember(S#0, $Box(LitInt(0))))
       || 
      ($Is(LitInt(0), Tclass._System.nat()) && Set#IsMember(S#0, $Box(LitInt(0))))
       || (exists $as#x0#0: int :: 
        LitInt(0) <= $as#x0#0 && Set#IsMember(S#0, $Box($as#x0#0)));
    havoc x#0;
    assume {:id "id283"} Set#IsMember(S#0, $Box(x#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(235,5)
    assume true;
    assume true;
    g#0 := x#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(236,15)
    assume true;
    // Begin Comprehension WF check
    havoc y#0;
    if (true)
    {
        if (Set#IsMember(S#0, $Box(y#0)))
        {
        }

        if (Set#IsMember(S#0, $Box(y#0)) && y#0 < g#0)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    smaller#0 := Set#FromBoogieMap((lambda $y#0: Box :: 
        $IsBox($y#0, TInt) && Set#IsMember(S#0, $y#0) && $Unbox($y#0): int < g#0));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(237,14)
    assume true;
    // Begin Comprehension WF check
    havoc y#2;
    if (LitInt(0) <= y#2)
    {
        if (Set#IsMember(S#0, $Box(y#2)))
        {
        }

        if (Set#IsMember(S#0, $Box(y#2)) && g#0 < y#2)
        {
        }
    }

    // End Comprehension WF check
    assume true;
    larger#0 := Set#FromBoogieMap((lambda $y#1: Box :: 
        $IsBox($y#1, Tclass._System.nat())
           && 
          Set#IsMember(S#0, $y#1)
           && g#0 < $Unbox($y#1): int));
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(238,34)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type seq<nat>
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    assert {:id "id287"} $Is(smaller#0, TSet(Tclass._System.nat()));
    S##0 := smaller#0;
    assert {:id "id288"} Set#Subset(S##0, S#0) && !Set#Subset(S#0, S##0);
    call {:id "id289"} $rhs##0, $rhs##1 := Call$$_module.__default.SetToSeq__Regression(S##0);
    // TrCallStmt: After ProcessCallStmt
    s#0 := $rhs##0;
    _v0#0 := $rhs##1;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(239,34)
    assume true;
    assume true;
    // TrCallStmt: Adding lhs with type seq<nat>
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    S##1 := larger#0;
    assert {:id "id292"} Set#Subset(S##1, S#0) && !Set#Subset(S#0, S##1);
    call {:id "id293"} $rhs##2, $rhs##3 := Call$$_module.__default.SetToSeq__Regression(S##1);
    // TrCallStmt: After ProcessCallStmt
    l#0 := $rhs##2;
    _v1#0 := $rhs##3;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(240,5)
    assume true;
    assume true;
    r#0 := Seq#Append(Seq#Append(s#0, Seq#Build(Seq#Empty(): Seq, $Box(x#0))), l#0);
}



// function declaration for _module._default.UpTo
function _module.__default.UpTo($ly: LayerType, n#0: int) : Seq
uses {
// consequence axiom for _module.__default.UpTo
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.UpTo($ly, n#0) } 
    _module.__default.UpTo#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> $Is(_module.__default.UpTo($ly, n#0), TSeq(Tclass._System.nat())));
// definition axiom for _module.__default.UpTo (revealed)
axiom {:id "id297"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.UpTo($LS($ly), n#0) } 
    _module.__default.UpTo#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 == LitInt(0) ==> _module.__default.ZeroSeq#canCall())
         && (n#0 != LitInt(0) ==> _module.__default.UpTo#canCall(n#0 - 1))
         && _module.__default.UpTo($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then _module.__default.ZeroSeq()
             else Seq#Append(_module.__default.UpTo($ly, n#0 - 1), Seq#Build(Seq#Empty(): Seq, $Box(n#0)))));
// definition axiom for _module.__default.UpTo for all literals (revealed)
axiom {:id "id298"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.UpTo($LS($ly), LitInt(n#0)) } 
    _module.__default.UpTo#canCall(LitInt(n#0))
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) == LitInt(0) ==> _module.__default.ZeroSeq#canCall())
         && (LitInt(n#0) != LitInt(0) ==> _module.__default.UpTo#canCall(LitInt(n#0 - 1)))
         && _module.__default.UpTo($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then _module.__default.ZeroSeq()
             else Seq#Append(_module.__default.UpTo($LS($ly), LitInt(n#0 - 1)), 
              Seq#Build(Seq#Empty(): Seq, $Box(LitInt(n#0))))));
}

function _module.__default.UpTo#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpTo($LS($ly), n#0) } 
  _module.__default.UpTo($LS($ly), n#0) == _module.__default.UpTo($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpTo(AsFuelBottom($ly), n#0) } 
  _module.__default.UpTo($ly, n#0) == _module.__default.UpTo($LZ, n#0));

function _module.__default.UpTo#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.UpTo
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.UpTo#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.UpTo#requires($ly, n#0) == true);

procedure {:verboseName "UpTo (well-formedness)"} CheckWellformed$$_module.__default.UpTo(n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "UpTo (well-formedness)"} CheckWellformed$$_module.__default.UpTo(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
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
        assume $Is(_module.__default.UpTo($LS($LZ), n#0), TSeq(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume _module.__default.ZeroSeq#canCall();
            assert {:id "id299"} $Is(Lit(_module.__default.ZeroSeq()), TSeq(Tclass._System.nat()));
            assume {:id "id300"} _module.__default.UpTo($LS($LZ), n#0) == Lit(_module.__default.ZeroSeq());
            assume _module.__default.ZeroSeq#canCall();
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.UpTo($LS($LZ), n#0), TSeq(Tclass._System.nat()));
            return;
        }
        else
        {
            assert {:id "id301"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id302"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id303"} ##n#0 < n#0;
            assume _module.__default.UpTo#canCall(n#0 - 1);
            assume {:id "id304"} _module.__default.UpTo($LS($LZ), n#0)
               == Seq#Append(_module.__default.UpTo($LS($LZ), n#0 - 1), 
                Seq#Build(Seq#Empty(): Seq, $Box(n#0)));
            assume _module.__default.UpTo#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.UpTo($LS($LZ), n#0), TSeq(Tclass._System.nat()));
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.DownFrom
function _module.__default.DownFrom($ly: LayerType, n#0: int) : Seq
uses {
// consequence axiom for _module.__default.DownFrom
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.DownFrom($ly, n#0) } 
    _module.__default.DownFrom#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> $Is(_module.__default.DownFrom($ly, n#0), TSeq(Tclass._System.nat())));
// definition axiom for _module.__default.DownFrom (revealed)
axiom {:id "id305"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.DownFrom($LS($ly), n#0) } 
    _module.__default.DownFrom#canCall(n#0)
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 == LitInt(0) ==> _module.__default.ZeroSeq#canCall())
         && (n#0 != LitInt(0) ==> _module.__default.DownFrom#canCall(n#0 - 1))
         && _module.__default.DownFrom($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then _module.__default.ZeroSeq()
             else Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), _module.__default.DownFrom($ly, n#0 - 1))));
// definition axiom for _module.__default.DownFrom for all literals (revealed)
axiom {:id "id306"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.DownFrom($LS($ly), LitInt(n#0)) } 
    _module.__default.DownFrom#canCall(LitInt(n#0))
         || (1 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) == LitInt(0) ==> _module.__default.ZeroSeq#canCall())
         && (LitInt(n#0) != LitInt(0)
           ==> _module.__default.DownFrom#canCall(LitInt(n#0 - 1)))
         && _module.__default.DownFrom($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then _module.__default.ZeroSeq()
             else Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(n#0))), 
              _module.__default.DownFrom($LS($ly), LitInt(n#0 - 1)))));
}

function _module.__default.DownFrom#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.DownFrom($LS($ly), n#0) } 
  _module.__default.DownFrom($LS($ly), n#0)
     == _module.__default.DownFrom($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.DownFrom(AsFuelBottom($ly), n#0) } 
  _module.__default.DownFrom($ly, n#0) == _module.__default.DownFrom($LZ, n#0));

function _module.__default.DownFrom#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.DownFrom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.DownFrom#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.DownFrom#requires($ly, n#0) == true);

procedure {:verboseName "DownFrom (well-formedness)"} CheckWellformed$$_module.__default.DownFrom(n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DownFrom (well-formedness)"} CheckWellformed$$_module.__default.DownFrom(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
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
        assume $Is(_module.__default.DownFrom($LS($LZ), n#0), TSeq(Tclass._System.nat()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume _module.__default.ZeroSeq#canCall();
            assert {:id "id307"} $Is(Lit(_module.__default.ZeroSeq()), TSeq(Tclass._System.nat()));
            assume {:id "id308"} _module.__default.DownFrom($LS($LZ), n#0) == Lit(_module.__default.ZeroSeq());
            assume _module.__default.ZeroSeq#canCall();
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.DownFrom($LS($LZ), n#0), TSeq(Tclass._System.nat()));
            return;
        }
        else
        {
            assert {:id "id309"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            assert {:id "id310"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id311"} ##n#0 < n#0;
            assume _module.__default.DownFrom#canCall(n#0 - 1);
            assume {:id "id312"} _module.__default.DownFrom($LS($LZ), n#0)
               == Seq#Append(Seq#Build(Seq#Empty(): Seq, $Box(n#0)), 
                _module.__default.DownFrom($LS($LZ), n#0 - 1));
            assume _module.__default.DownFrom#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.DownFrom($LS($LZ), n#0), TSeq(Tclass._System.nat()));
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.ZeroSeq
function _module.__default.ZeroSeq() : Seq
uses {
// consequence axiom for _module.__default.ZeroSeq
axiom 0 <= $FunctionContextHeight
   ==> 
  _module.__default.ZeroSeq#canCall() || 0 < $FunctionContextHeight
   ==> $Is(_module.__default.ZeroSeq(), TSeq(TInt));
// definition axiom for _module.__default.ZeroSeq (revealed)
axiom {:id "id313"} 0 <= $FunctionContextHeight
   ==> 
  _module.__default.ZeroSeq#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.ZeroSeq() == Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))));
// definition axiom for _module.__default.ZeroSeq for all literals (revealed)
axiom {:id "id314"} 0 <= $FunctionContextHeight
   ==> 
  _module.__default.ZeroSeq#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.ZeroSeq() == Lit(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))));
}

function _module.__default.ZeroSeq#canCall() : bool;

function _module.__default.ZeroSeq#requires() : bool
uses {
// #requires axiom for _module.__default.ZeroSeq
axiom _module.__default.ZeroSeq#requires() == true;
}

procedure {:verboseName "ZeroSeq (well-formedness)"} CheckWellformed$$_module.__default.ZeroSeq();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.Sum
function _module.__default.Sum($ly: LayerType, xs#0: DatatypeType) : int
uses {
// definition axiom for _module.__default.Sum (revealed)
axiom {:id "id316"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    { _module.__default.Sum($LS($ly), xs#0) } 
    _module.__default.Sum#canCall(xs#0)
         || (1 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!_module.List.Nil_q(xs#0)
           ==> _module.__default.Sum#canCall(_module.List.tail(xs#0)))
         && _module.__default.Sum($LS($ly), xs#0)
           == (if _module.List.Nil_q(xs#0)
             then (var zero#0 := LitInt(0); zero#0)
             else (var rest#0 := _module.List.tail(xs#0); 
              (var x#0 := _module.List.head(xs#0); 
                _module.__default.Sum($ly, _module.List.tail(xs#0)) + _module.List.head(xs#0)))));
// definition axiom for _module.__default.Sum for all literals (revealed)
axiom {:id "id317"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, xs#0: DatatypeType :: 
    {:weight 3} { _module.__default.Sum($LS($ly), Lit(xs#0)) } 
    _module.__default.Sum#canCall(Lit(xs#0))
         || (1 < $FunctionContextHeight && $Is(xs#0, Tclass._module.List()))
       ==> (!Lit(_module.List.Nil_q(Lit(xs#0)))
           ==> _module.__default.Sum#canCall(Lit(_module.List.tail(Lit(xs#0)))))
         && _module.__default.Sum($LS($ly), Lit(xs#0))
           == (if _module.List.Nil_q(Lit(xs#0))
             then (var zero#2 := LitInt(0); zero#2)
             else (var rest#2 := Lit(_module.List.tail(Lit(xs#0))); 
              (var x#2 := LitInt(_module.List.head(Lit(xs#0))); 
                LitInt(_module.__default.Sum($LS($ly), Lit(_module.List.tail(Lit(xs#0))))
                     + _module.List.head(Lit(xs#0)))))));
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
  var rest#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: int;
  var let#1#0#0: int;
  var ##xs#0: DatatypeType;
  var zero#Z#0: int;
  var let#2#0#0: int;


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
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(266,5)
            assume true;
            assert {:id "id326"} _module.List.Nil_q(xs#0);
            havoc zero#Z#0;
            assume {:id "id327"} let#2#0#0 == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TInt);
            assume {:id "id328"} zero#Z#0 == let#2#0#0;
            assume {:id "id329"} _module.__default.Sum($LS($LZ), xs#0) == zero#Z#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Sum($LS($LZ), xs#0), TInt);
            return;
        }
        else if (xs#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.List());
            havoc rest#Z#0;
            assume {:id "id318"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List());
            assume {:id "id319"} rest#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id320"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, TInt);
            assume {:id "id321"} x#Z#0 == let#1#0#0;
            assert {:id "id322"} _module.List.Cons_q(xs#0);
            ##xs#0 := _module.List.tail(xs#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##xs#0, Tclass._module.List(), $Heap);
            assert {:id "id323"} DtRank(##xs#0) < DtRank(xs#0);
            assume _module.__default.Sum#canCall(_module.List.tail(xs#0));
            assert {:id "id324"} _module.List.Cons_q(xs#0);
            assume {:id "id325"} _module.__default.Sum($LS($LZ), xs#0)
               == _module.__default.Sum($LS($LZ), _module.List.tail(xs#0))
                 + _module.List.head(xs#0);
            assume _module.__default.Sum#canCall(_module.List.tail(xs#0));
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



// function declaration for _module._default.TheBigSubtract
function _module.__default.TheBigSubtract($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.TheBigSubtract
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.TheBigSubtract($ly, n#0) } 
    _module.__default.TheBigSubtract#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> _module.__default.TheBigSubtract($ly, n#0) == 88 - n#0);
// definition axiom for _module.__default.TheBigSubtract (revealed)
axiom {:id "id330"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.TheBigSubtract($LS($ly), n#0) } 
    _module.__default.TheBigSubtract#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0) ==> _module.__default.TheBigSubtract#canCall(n#0 - 1))
         && _module.__default.TheBigSubtract($LS($ly), n#0)
           == (if n#0 == LitInt(0)
             then 88
             else _module.__default.TheBigSubtract($ly, n#0 - 1) - 1));
// definition axiom for _module.__default.TheBigSubtract for all literals (revealed)
axiom {:id "id331"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.TheBigSubtract($LS($ly), LitInt(n#0)) } 
    _module.__default.TheBigSubtract#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.TheBigSubtract#canCall(LitInt(n#0 - 1)))
         && _module.__default.TheBigSubtract($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then 88
             else _module.__default.TheBigSubtract($LS($ly), LitInt(n#0 - 1)) - 1));
}

function _module.__default.TheBigSubtract#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TheBigSubtract($LS($ly), n#0) } 
  _module.__default.TheBigSubtract($LS($ly), n#0)
     == _module.__default.TheBigSubtract($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TheBigSubtract(AsFuelBottom($ly), n#0) } 
  _module.__default.TheBigSubtract($ly, n#0)
     == _module.__default.TheBigSubtract($LZ, n#0));

function _module.__default.TheBigSubtract#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.TheBigSubtract
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TheBigSubtract#requires($ly, n#0) } 
  LitInt(0) <= n#0 ==> _module.__default.TheBigSubtract#requires($ly, n#0) == true);

procedure {:verboseName "TheBigSubtract (well-formedness)"} CheckWellformed$$_module.__default.TheBigSubtract(n#0: int where LitInt(0) <= n#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id332"} _module.__default.TheBigSubtract($LS($LS($LZ)), n#0) == 88 - n#0;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TheBigSubtract (well-formedness)"} CheckWellformed$$_module.__default.TheBigSubtract(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
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
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
        assert {:id "id333"} 0 <= n#0 || ##n#0 == n#0;
        assert {:id "id334"} n#0 == n#0 || ##n#0 < n#0;
        assume n#0 == n#0 || _module.__default.TheBigSubtract#canCall(n#0);
        assume {:id "id335"} _module.__default.TheBigSubtract($LS($LZ), n#0) == 88 - n#0;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id336"} _module.__default.TheBigSubtract($LS($LZ), n#0) == LitInt(88);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TheBigSubtract($LS($LZ), n#0), TInt);
            return;
        }
        else
        {
            assert {:id "id337"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, Tclass._System.nat(), $Heap);
            assert {:id "id338"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id339"} ##n#1 < n#0;
            assume _module.__default.TheBigSubtract#canCall(n#0 - 1);
            assume {:id "id340"} _module.__default.TheBigSubtract($LS($LZ), n#0)
               == _module.__default.TheBigSubtract($LS($LZ), n#0 - 1) - 1;
            assume _module.__default.TheBigSubtract#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TheBigSubtract($LS($LZ), n#0), TInt);
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.TailNat
function _module.__default.TailNat($ly: LayerType, n#0: int) : int
uses {
// consequence axiom for _module.__default.TailNat
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.TailNat($ly, n#0) } 
    _module.__default.TailNat#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0 && n#0 <= LitInt(20))
       ==> _module.__default.TailNat($ly, n#0) == 100 - Mul(LitInt(5), n#0)
         && LitInt(0) <= _module.__default.TailNat($ly, n#0));
// definition axiom for _module.__default.TailNat (revealed)
axiom {:id "id341"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.TailNat($LS($ly), n#0) } 
    _module.__default.TailNat#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0 && n#0 <= LitInt(20))
       ==> (n#0 != LitInt(0) ==> _module.__default.TailNat#canCall(n#0 - 1))
         && _module.__default.TailNat($LS($ly), n#0)
           == (if n#0 == LitInt(0) then 100 else -5 + _module.__default.TailNat($ly, n#0 - 1)));
// definition axiom for _module.__default.TailNat for all literals (revealed)
axiom {:id "id342"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.TailNat($LS($ly), LitInt(n#0)) } 
    _module.__default.TailNat#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight
           && 
          LitInt(0) <= LitInt(n#0)
           && LitInt(n#0) <= LitInt(20))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.TailNat#canCall(LitInt(n#0 - 1)))
         && _module.__default.TailNat($LS($ly), LitInt(n#0))
           == (if LitInt(n#0) == LitInt(0)
             then 100
             else -5 + _module.__default.TailNat($LS($ly), LitInt(n#0 - 1))));
}

function _module.__default.TailNat#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TailNat($LS($ly), n#0) } 
  _module.__default.TailNat($LS($ly), n#0) == _module.__default.TailNat($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TailNat(AsFuelBottom($ly), n#0) } 
  _module.__default.TailNat($ly, n#0) == _module.__default.TailNat($LZ, n#0));

function _module.__default.TailNat#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.TailNat
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.TailNat#requires($ly, n#0) } 
  _module.__default.TailNat#requires($ly, n#0)
     == (LitInt(0) <= n#0 && n#0 <= LitInt(20)));

procedure {:verboseName "TailNat (well-formedness)"} CheckWellformed$$_module.__default.TailNat(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id343"} _module.__default.TailNat($LS($LS($LZ)), n#0) == 100 - Mul(LitInt(5), n#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TailNat (well-formedness)"} CheckWellformed$$_module.__default.TailNat(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##n#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    if (LitInt(0) <= n#0)
    {
    }

    assume {:id "id344"} LitInt(0) <= n#0 && n#0 <= LitInt(20);
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.__default.TailNat($LS($LZ), n#0);
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, TInt, $Heap);
        assert {:id "id345"} {:subsumption 0} LitInt(0) <= ##n#0;
        assert {:id "id346"} {:subsumption 0} ##n#0 <= LitInt(20);
        assume LitInt(0) <= ##n#0 && ##n#0 <= LitInt(20);
        assert {:id "id347"} 0 <= n#0 || ##n#0 == n#0;
        assert {:id "id348"} n#0 == n#0 || ##n#0 < n#0;
        assume n#0 == n#0 || _module.__default.TailNat#canCall(n#0);
        assume {:id "id349"} _module.__default.TailNat($LS($LZ), n#0) == 100 - Mul(LitInt(5), n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assert {:id "id350"} $Is(LitInt(100), Tclass._System.nat());
            assume {:id "id351"} _module.__default.TailNat($LS($LZ), n#0) == LitInt(100);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TailNat($LS($LZ), n#0), Tclass._System.nat());
            return;
        }
        else
        {
            ##n#1 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#1, TInt, $Heap);
            assert {:id "id352"} {:subsumption 0} LitInt(0) <= ##n#1;
            assert {:id "id353"} {:subsumption 0} ##n#1 <= LitInt(20);
            assume LitInt(0) <= ##n#1 && ##n#1 <= LitInt(20);
            assert {:id "id354"} 0 <= n#0 || ##n#1 == n#0;
            assert {:id "id355"} ##n#1 < n#0;
            assume _module.__default.TailNat#canCall(n#0 - 1);
            assert {:id "id356"} $Is(-5 + _module.__default.TailNat($LS($LZ), n#0 - 1), Tclass._System.nat());
            assume {:id "id357"} _module.__default.TailNat($LS($LZ), n#0)
               == -5 + _module.__default.TailNat($LS($LZ), n#0 - 1);
            assume _module.__default.TailNat#canCall(n#0 - 1);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.TailNat($LS($LZ), n#0), Tclass._System.nat());
            return;
        }

        assume false;
    }
}



// function declaration for _module._default.FunctionByMethodTailRecursion
function _module.__default.FunctionByMethodTailRecursion(x#0: int, y#0: int) : int
uses {
// definition axiom for _module.__default.FunctionByMethodTailRecursion (revealed)
axiom {:id "id358"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    { _module.__default.FunctionByMethodTailRecursion(x#0, y#0) } 
    _module.__default.FunctionByMethodTailRecursion#canCall(x#0, y#0)
         || 0 < $FunctionContextHeight
       ==> _module.__default.FunctionByMethodTailRecursion(x#0, y#0) == x#0 + y#0);
// definition axiom for _module.__default.FunctionByMethodTailRecursion for all literals (revealed)
axiom {:id "id359"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int, y#0: int :: 
    {:weight 3} { _module.__default.FunctionByMethodTailRecursion(LitInt(x#0), LitInt(y#0)) } 
    _module.__default.FunctionByMethodTailRecursion#canCall(LitInt(x#0), LitInt(y#0))
         || 0 < $FunctionContextHeight
       ==> _module.__default.FunctionByMethodTailRecursion(LitInt(x#0), LitInt(y#0))
         == LitInt(x#0 + y#0));
}

function _module.__default.FunctionByMethodTailRecursion#canCall(x#0: int, y#0: int) : bool;

function _module.__default.FunctionByMethodTailRecursion#requires(int, int) : bool;

// #requires axiom for _module.__default.FunctionByMethodTailRecursion
axiom (forall x#0: int, y#0: int :: 
  { _module.__default.FunctionByMethodTailRecursion#requires(x#0, y#0) } 
  _module.__default.FunctionByMethodTailRecursion#requires(x#0, y#0) == true);

procedure {:verboseName "FunctionByMethodTailRecursion (well-formedness)"} CheckWellformed$$_module.__default.FunctionByMethodTailRecursion(x#0: int, y#0: int) returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FunctionByMethodTailRecursion (correctness)"} Impl$$_module.__default.FunctionByMethodTailRecursion(x#0: int, y#0: int) returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.FunctionByMethodTailRecursion#canCall(x#0, y#0);
  ensures {:id "id362"} r#0 == _module.__default.FunctionByMethodTailRecursion(x#0, y#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FunctionByMethodTailRecursion (correctness)"} Impl$$_module.__default.FunctionByMethodTailRecursion(x#0: int, y#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0: int;
  var ##y#0: int;

    // AddMethodImpl: FunctionByMethodTailRecursion, Impl$$_module.__default.FunctionByMethodTailRecursion
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(354,3)
    if (8 <= x#0)
    {
    }

    assume true;
    if (x#0 < 8 || x#0 == LitInt(77))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(355,5)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(355,5)
        assume true;
        assume true;
        r#0 := x#0 + y#0;
        assume _module.__default.FunctionByMethodTailRecursion#canCall(x#0, y#0);
        return;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(357,7)
        assume true;
        ##x#0 := x#0 - 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0, TInt, $Heap);
        ##y#0 := y#0 + 1;
        // assume allocatedness for argument to function
        assume $IsAlloc(##y#0, TInt, $Heap);
        assert {:id "id364"} 0 <= x#0 || ##x#0 == x#0;
        assert {:id "id365"} 0 <= y#0 || ##x#0 < x#0 || ##y#0 == y#0;
        assert {:id "id366"} ##x#0 < x#0 || (##x#0 == x#0 && ##y#0 < y#0);
        assume _module.__default.FunctionByMethodTailRecursion#canCall(x#0 - 1, y#0 + 1);
        assume _module.__default.FunctionByMethodTailRecursion#canCall(x#0 - 1, y#0 + 1);
        r#0 := _module.__default.FunctionByMethodTailRecursion(x#0 - 1, y#0 + 1);
    }

    assume _module.__default.FunctionByMethodTailRecursion#canCall(x#0, y#0);
}



const unique class._module.Link?: ClassName;

// $Is axiom for class Link
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Link?()) } 
  $Is($o, Tclass._module.Link?())
     <==> $o == null || dtype($o) == Tclass._module.Link?());

// $IsAlloc axiom for class Link
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Link?(), $h) } 
  $IsAlloc($o, Tclass._module.Link?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Link.x: Field
uses {
axiom FDim(_module.Link.x) == 0
   && FieldOfDecl(class._module.Link?, field$x) == _module.Link.x
   && !$IsGhostField(_module.Link.x);
}

// Link.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Link.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Link?()
     ==> $Is($Unbox(read($h, $o, _module.Link.x)): int, Tclass._System.nat()));

// Link.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Link.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Link?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Link.x)): int, Tclass._System.nat(), $h));

const _module.Link.next: Field
uses {
axiom FDim(_module.Link.next) == 0
   && FieldOfDecl(class._module.Link?, field$next) == _module.Link.next
   && !$IsGhostField(_module.Link.next);
}

// Link.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Link.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Link?()
     ==> $Is($Unbox(read($h, $o, _module.Link.next)): ref, Tclass._module.Link()));

// Link.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Link.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Link?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Link.next)): ref, Tclass._module.Link(), $h));

procedure {:verboseName "Link._ctor (well-formedness)"} CheckWellFormed$$_module.Link.__ctor(y#0: int where LitInt(0) <= y#0) returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Link._ctor (call)"} Call$$_module.Link.__ctor(y#0: int where LitInt(0) <= y#0)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Link())
         && $IsAlloc(this, Tclass._module.Link(), $Heap));
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



procedure {:verboseName "Link._ctor (correctness)"} Impl$$_module.Link.__ctor(y#0: int where LitInt(0) <= y#0) returns (this: ref, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Link._ctor (correctness)"} Impl$$_module.Link.__ctor(y#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.x: int;
  var this.next: ref;
  var defass#this.next: bool;

    // AddMethodImpl: _ctor, Impl$$_module.Link.__ctor
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(127,24)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(128,7)
    assume true;
    assume true;
    this.x := y#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(129,10)
    assume true;
    assume true;
    this.next := this;
    defass#this.next := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(127,24)
    assert {:id "id370"} defass#this.next;
    assume this != null && $Is(this, Tclass._module.Link?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume $Unbox(read($Heap, this, _module.Link.x)): int == this.x;
    assume $Unbox(read($Heap, this, _module.Link.next)): ref == this.next;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(127,24)
}



procedure {:verboseName "Link.G (well-formedness)"} CheckWellFormed$$_module.Link.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Link())
         && $IsAlloc(this, Tclass._module.Link(), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    a#0: int where LitInt(0) <= a#0)
   returns (r#0: int where LitInt(0) <= r#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Link.G (call)"} Call$$_module.Link.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Link())
         && $IsAlloc(this, Tclass._module.Link(), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    a#0: int where LitInt(0) <= a#0)
   returns (r#0: int where LitInt(0) <= r#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Link.G (correctness)"} Impl$$_module.Link.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Link())
         && $IsAlloc(this, Tclass._module.Link(), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    a#0: int where LitInt(0) <= a#0)
   returns (r#0: int where LitInt(0) <= r#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Link.G (correctness)"} Impl$$_module.Link.G(this: ref, n#0: int, a#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs##1_0: int;
  var n##1_0: int;
  var a##1_0: int;

    // AddMethodImpl: G, Impl$$_module.Link.G
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(133,5)
    assume true;
    if (n#0 == LitInt(0))
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(134,7)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(134,7)
        assume true;
        assume true;
        r#0 := a#0;
        return;
    }
    else
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/comp/TailRecursion.dfy(136,18)
        assume true;
        // TrCallStmt: Adding lhs with type nat
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id372"} $Unbox(read($Heap, this, _module.Link.next)): ref != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id373"} $Is(n#0 - 1, Tclass._System.nat());
        n##1_0 := n#0 - 1;
        assume true;
        // ProcessCallStmt: CheckSubrange
        assert {:id "id374"} $Is(a#0 + $Unbox(read($Heap, this, _module.Link.x)): int, Tclass._System.nat());
        a##1_0 := a#0 + $Unbox(read($Heap, this, _module.Link.x)): int;
        assert {:id "id375"} 0 <= n#0 || n##1_0 == n#0;
        assert {:id "id376"} 0 <= a#0 || n##1_0 < n#0 || a##1_0 == a#0;
        assert {:id "id377"} n##1_0 < n#0 || (n##1_0 == n#0 && a##1_0 < a#0);
        call {:id "id378"} $rhs##1_0 := Call$$_module.Link.G($Unbox(read($Heap, this, _module.Link.next)): ref, n##1_0, a##1_0);
        // TrCallStmt: After ProcessCallStmt
        r#0 := $rhs##1_0;
    }
}



// function declaration for _module.Link.H
function _module.Link.H($ly: LayerType, $heap: Heap, this: ref, n#0: int, a#0: int) : int
uses {
// consequence axiom for _module.Link.H
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, n#0: int, a#0: int :: 
    { _module.Link.H($ly, $Heap, this, n#0, a#0) } 
    _module.Link.H#canCall($Heap, this, n#0, a#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Link())
           && $IsAlloc(this, Tclass._module.Link(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(0) <= a#0)
       ==> LitInt(0) <= _module.Link.H($ly, $Heap, this, n#0, a#0));
// definition axiom for _module.Link.H (revealed)
axiom {:id "id380"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, n#0: int, a#0: int :: 
    { _module.Link.H($LS($ly), $Heap, this, n#0, a#0), $IsGoodHeap($Heap) } 
    _module.Link.H#canCall($Heap, this, n#0, a#0)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Link())
           && $IsAlloc(this, Tclass._module.Link(), $Heap)
           && LitInt(0) <= n#0
           && LitInt(0) <= a#0)
       ==> (n#0 != LitInt(0)
           ==> _module.Link.H#canCall($Heap, 
            $Unbox(read($Heap, this, _module.Link.next)): ref, 
            n#0 - 1, 
            a#0 + $Unbox(read($Heap, this, _module.Link.x)): int))
         && _module.Link.H($LS($ly), $Heap, this, n#0, a#0)
           == (if n#0 == LitInt(0)
             then a#0
             else _module.Link.H($ly, 
              $Heap, 
              $Unbox(read($Heap, this, _module.Link.next)): ref, 
              n#0 - 1, 
              a#0 + $Unbox(read($Heap, this, _module.Link.x)): int)));
}

function _module.Link.H#canCall($heap: Heap, this: ref, n#0: int, a#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, n#0: int, a#0: int :: 
  { _module.Link.H($LS($ly), $Heap, this, n#0, a#0) } 
  _module.Link.H($LS($ly), $Heap, this, n#0, a#0)
     == _module.Link.H($ly, $Heap, this, n#0, a#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, n#0: int, a#0: int :: 
  { _module.Link.H(AsFuelBottom($ly), $Heap, this, n#0, a#0) } 
  _module.Link.H($ly, $Heap, this, n#0, a#0)
     == _module.Link.H($LZ, $Heap, this, n#0, a#0));

// frame axiom for _module.Link.H
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref, n#0: int, a#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Link.H($ly, $h1, this, n#0, a#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Link())
       && $IsAlloc(this, Tclass._module.Link(), $h0)
       && (_module.Link.H#canCall($h0, this, n#0, a#0)
         || (LitInt(0) <= n#0 && LitInt(0) <= a#0))
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($h0, $o, alloc)): bool
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Link.H($ly, $h0, this, n#0, a#0)
       == _module.Link.H($ly, $h1, this, n#0, a#0));

function _module.Link.H#requires(LayerType, Heap, ref, int, int) : bool;

// #requires axiom for _module.Link.H
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, n#0: int, a#0: int :: 
  { _module.Link.H#requires($ly, $Heap, this, n#0, a#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Link())
       && $IsAlloc(this, Tclass._module.Link(), $Heap)
       && LitInt(0) <= n#0
       && LitInt(0) <= a#0
     ==> _module.Link.H#requires($ly, $Heap, this, n#0, a#0) == true);

procedure {:verboseName "Link.H (well-formedness)"} CheckWellformed$$_module.Link.H(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Link())
         && $IsAlloc(this, Tclass._module.Link(), $Heap), 
    n#0: int where LitInt(0) <= n#0, 
    a#0: int where LitInt(0) <= a#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Link.H (well-formedness)"} CheckWellformed$$_module.Link.H(this: ref, n#0: int, a#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var ##a#0: int;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $Unbox(read($Heap, $o, alloc)): bool);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume LitInt(0) <= _module.Link.H($LS($LZ), $Heap, this, n#0, a#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (n#0 == LitInt(0))
        {
            assume {:id "id381"} _module.Link.H($LS($LZ), $Heap, this, n#0, a#0) == a#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Link.H($LS($LZ), $Heap, this, n#0, a#0), Tclass._System.nat());
            return;
        }
        else
        {
            b$reqreads#0 := $_ReadsFrame[this, _module.Link.next];
            assert {:id "id382"} $Unbox(read($Heap, this, _module.Link.next)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.Link.next), Tclass._module.Link?(), $Heap);
            assert {:id "id383"} $Is(n#0 - 1, Tclass._System.nat());
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, Tclass._System.nat(), $Heap);
            b$reqreads#1 := $_ReadsFrame[this, _module.Link.x];
            assert {:id "id384"} $Is(a#0 + $Unbox(read($Heap, this, _module.Link.x)): int, Tclass._System.nat());
            ##a#0 := a#0 + $Unbox(read($Heap, this, _module.Link.x)): int;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._System.nat(), $Heap);
            b$reqreads#2 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && $Unbox(read($Heap, $o, alloc)): bool
                 ==> $_ReadsFrame[$o, $f]);
            assert {:id "id385"} 0 <= n#0
               || (Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                 && !Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set)))
               || ##n#0 == n#0;
            assert {:id "id386"} 0 <= a#0
               || (Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                 && !Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set)))
               || ##n#0 < n#0
               || ##a#0 == a#0;
            assert {:id "id387"} (Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                 && !Set#Subset(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set)))
               || (Set#Equal(Lit(Set#Empty(): Set), Lit(Set#Empty(): Set))
                 && (##n#0 < n#0 || (##n#0 == n#0 && ##a#0 < a#0)));
            assume _module.Link.H#canCall($Heap, 
              $Unbox(read($Heap, this, _module.Link.next)): ref, 
              n#0 - 1, 
              a#0 + $Unbox(read($Heap, this, _module.Link.x)): int);
            assume {:id "id388"} _module.Link.H($LS($LZ), $Heap, this, n#0, a#0)
               == _module.Link.H($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, this, _module.Link.next)): ref, 
                n#0 - 1, 
                a#0 + $Unbox(read($Heap, this, _module.Link.x)): int);
            assume _module.Link.H#canCall($Heap, 
              $Unbox(read($Heap, this, _module.Link.next)): ref, 
              n#0 - 1, 
              a#0 + $Unbox(read($Heap, this, _module.Link.x)): int);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Link.H($LS($LZ), $Heap, this, n#0, a#0), Tclass._System.nat());
            assert {:id "id389"} b$reqreads#0;
            assert {:id "id390"} b$reqreads#1;
            assert {:id "id391"} b$reqreads#2;
            return;
        }

        assume false;
    }
}



// $Is axiom for non-null type _module.Link
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Link()) } { $Is(c#0, Tclass._module.Link?()) } 
  $Is(c#0, Tclass._module.Link())
     <==> $Is(c#0, Tclass._module.Link?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Link
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Link(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Link?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Link(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Link?(), $h));

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

const unique class.Regression.__default: ClassName;

procedure {:verboseName "Regression.Test (well-formedness)"} CheckWellFormed$$Regression.__default.Test();
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Regression.Test (call)"} Call$$Regression.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.Regression.C?: ClassName;

function Tclass.Regression.C?(Ty) : Ty;

const unique Tagclass.Regression.C?: TyTag;

// Tclass.Regression.C? Tag
axiom (forall Regression.C$U: Ty :: 
  { Tclass.Regression.C?(Regression.C$U) } 
  Tag(Tclass.Regression.C?(Regression.C$U)) == Tagclass.Regression.C?
     && TagFamily(Tclass.Regression.C?(Regression.C$U)) == tytagFamily$C);

function Tclass.Regression.C?_0(Ty) : Ty;

// Tclass.Regression.C? injectivity 0
axiom (forall Regression.C$U: Ty :: 
  { Tclass.Regression.C?(Regression.C$U) } 
  Tclass.Regression.C?_0(Tclass.Regression.C?(Regression.C$U)) == Regression.C$U);

// Box/unbox axiom for Tclass.Regression.C?
axiom (forall Regression.C$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Regression.C?(Regression.C$U)) } 
  $IsBox(bx, Tclass.Regression.C?(Regression.C$U))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Regression.C?(Regression.C$U)));

// $Is axiom for class C
axiom (forall Regression.C$U: Ty, $o: ref :: 
  { $Is($o, Tclass.Regression.C?(Regression.C$U)) } 
  $Is($o, Tclass.Regression.C?(Regression.C$U))
     <==> $o == null || dtype($o) == Tclass.Regression.C?(Regression.C$U));

// $IsAlloc axiom for class C
axiom (forall Regression.C$U: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.Regression.C?(Regression.C$U), $h) } 
  $IsAlloc($o, Tclass.Regression.C?(Regression.C$U), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Regression.C.data(Regression.C$U: Ty, this: ref) : int;

// C.data: Type axiom
axiom (forall Regression.C$U: Ty, $o: ref :: 
  { Regression.C.data(Regression.C$U, $o) } 
  $o != null && dtype($o) == Tclass.Regression.C?(Regression.C$U)
     ==> $Is(Regression.C.data(Regression.C$U, $o), TInt));

// C.data: Allocation axiom
axiom (forall Regression.C$U: Ty, $h: Heap, $o: ref :: 
  { Regression.C.data(Regression.C$U, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.Regression.C?(Regression.C$U)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(Regression.C.data(Regression.C$U, $o), TInt, $h));

function Regression.C.next(Regression.C$U: Ty, this: ref) : ref;

// C.next: Type axiom
axiom (forall Regression.C$U: Ty, $o: ref :: 
  { Regression.C.next(Regression.C$U, $o) } 
  $o != null && dtype($o) == Tclass.Regression.C?(Regression.C$U)
     ==> $Is(Regression.C.next(Regression.C$U, $o), Tclass.Regression.C?(Regression.C$U)));

// C.next: Allocation axiom
axiom (forall Regression.C$U: Ty, $h: Heap, $o: ref :: 
  { Regression.C.next(Regression.C$U, $o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.Regression.C?(Regression.C$U)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(Regression.C.next(Regression.C$U, $o), Tclass.Regression.C?(Regression.C$U), $h));

// function declaration for Regression.C.F
function Regression.C.F(Regression.C$U: Ty, this: ref) : int;

function Regression.C.F#canCall(Regression.C$U: Ty, this: ref) : bool;

function Tclass.Regression.C(Ty) : Ty;

const unique Tagclass.Regression.C: TyTag;

// Tclass.Regression.C Tag
axiom (forall Regression.C$U: Ty :: 
  { Tclass.Regression.C(Regression.C$U) } 
  Tag(Tclass.Regression.C(Regression.C$U)) == Tagclass.Regression.C
     && TagFamily(Tclass.Regression.C(Regression.C$U)) == tytagFamily$C);

function Tclass.Regression.C_0(Ty) : Ty;

// Tclass.Regression.C injectivity 0
axiom (forall Regression.C$U: Ty :: 
  { Tclass.Regression.C(Regression.C$U) } 
  Tclass.Regression.C_0(Tclass.Regression.C(Regression.C$U)) == Regression.C$U);

// Box/unbox axiom for Tclass.Regression.C
axiom (forall Regression.C$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.Regression.C(Regression.C$U)) } 
  $IsBox(bx, Tclass.Regression.C(Regression.C$U))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.Regression.C(Regression.C$U)));

function Regression.C.F#requires(Ty, ref) : bool;

// #requires axiom for Regression.C.F
axiom (forall Regression.C$U: Ty, this: ref :: 
  { Regression.C.F#requires(Regression.C$U, this) } 
  this != null && $Is(this, Tclass.Regression.C(Regression.C$U))
     ==> Regression.C.F#requires(Regression.C$U, this) == true);

// definition axiom for Regression.C.F (revealed)
axiom {:id "id392"} (forall Regression.C$U: Ty, this: ref :: 
  { Regression.C.F(Regression.C$U, this) } 
  Regression.C.F#canCall(Regression.C$U, this)
       || (this != null && $Is(this, Tclass.Regression.C(Regression.C$U)))
     ==> Regression.C.F(Regression.C$U, this) == Regression.C.data(Regression.C$U, this));

// definition axiom for Regression.C.F for all literals (revealed)
axiom {:id "id393"} (forall Regression.C$U: Ty, this: ref :: 
  {:weight 3} { Regression.C.F(Regression.C$U, Lit(this)) } 
  Regression.C.F#canCall(Regression.C$U, Lit(this))
       || (this != null && $Is(this, Tclass.Regression.C(Regression.C$U)))
     ==> Regression.C.F(Regression.C$U, Lit(this))
       == Regression.C.data(Regression.C$U, Lit(this)));

// function declaration for Regression.C.Rec
function Regression.C.Rec(Regression.C$U: Ty, $ly: LayerType, this: ref, n#0: int, f#0: HandleType) : int;

function Regression.C.Rec#canCall(Regression.C$U: Ty, this: ref, n#0: int, f#0: HandleType) : bool;

// layer synonym axiom
axiom (forall Regression.C$U: Ty, $ly: LayerType, this: ref, n#0: int, f#0: HandleType :: 
  { Regression.C.Rec(Regression.C$U, $LS($ly), this, n#0, f#0) } 
  Regression.C.Rec(Regression.C$U, $LS($ly), this, n#0, f#0)
     == Regression.C.Rec(Regression.C$U, $ly, this, n#0, f#0));

// fuel synonym axiom
axiom (forall Regression.C$U: Ty, $ly: LayerType, this: ref, n#0: int, f#0: HandleType :: 
  { Regression.C.Rec(Regression.C$U, AsFuelBottom($ly), this, n#0, f#0) } 
  Regression.C.Rec(Regression.C$U, $ly, this, n#0, f#0)
     == Regression.C.Rec(Regression.C$U, $LZ, this, n#0, f#0));

function Regression.C.Rec#requires(Ty, LayerType, ref, int, HandleType) : bool;

// #requires axiom for Regression.C.Rec
axiom (forall Regression.C$U: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    this: ref, 
    n#0: int, 
    f#0: HandleType :: 
  { Regression.C.Rec#requires(Regression.C$U, $ly, this, n#0, f#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass.Regression.C(Regression.C$U))
       && $IsAlloc(this, Tclass.Regression.C(Regression.C$U), $Heap)
       && LitInt(0) <= n#0
       && $Is(f#0, Tclass._System.___hTotalFunc0(TInt))
     ==> Regression.C.Rec#requires(Regression.C$U, $ly, this, n#0, f#0) == true);

function Regression.C.F#Handle(Regression.C$U: Ty, self: ref) : HandleType;

axiom (forall Regression.C$U: Ty, $self: ref, $heap: Heap :: 
  { Apply0(TInt, $heap, Regression.C.F#Handle(Regression.C$U, $self)) } 
  Apply0(TInt, $heap, Regression.C.F#Handle(Regression.C$U, $self))
     == $Box(Regression.C.F(Regression.C$U, $self)));

axiom (forall Regression.C$U: Ty, $self: ref, $heap: Heap :: 
  { Requires0(TInt, $heap, Regression.C.F#Handle(Regression.C$U, $self)) } 
  Requires0(TInt, $heap, Regression.C.F#Handle(Regression.C$U, $self))
     == Regression.C.F#requires(Regression.C$U, $self));

axiom (forall $bx: Box, Regression.C$U: Ty, $self: ref, $heap: Heap :: 
  { Set#IsMember(Reads0(TInt, $heap, Regression.C.F#Handle(Regression.C$U, $self)), $bx) } 
  Set#IsMember(Reads0(TInt, $heap, Regression.C.F#Handle(Regression.C$U, $self)), $bx)
     == false);

axiom (forall Regression.C$U: Ty, $self: ref, $heap: Heap :: 
  { Regression.C.F(Regression.C$U, $self), $IsGoodHeap($heap) } 
  Regression.C.F(Regression.C$U, $self)
     == $Unbox(Apply0(TInt, $heap, Regression.C.F#Handle(Regression.C$U, $self))): int);

// definition axiom for Regression.C.Rec (revealed)
axiom {:id "id394"} (forall Regression.C$U: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    this: ref, 
    n#0: int, 
    f#0: HandleType :: 
  { Regression.C.Rec(Regression.C$U, $LS($ly), this, n#0, f#0), $IsGoodHeap($Heap) } 
  Regression.C.Rec#canCall(Regression.C$U, this, n#0, f#0)
       || (
        $IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.Regression.C(Regression.C$U))
         && $IsAlloc(this, Tclass.Regression.C(Regression.C$U), $Heap)
         && LitInt(0) <= n#0
         && $Is(f#0, Tclass._System.___hTotalFunc0(TInt)))
     ==> (!(n#0 == LitInt(0) || Regression.C.next(Regression.C$U, this) == null)
         ==> (Regression.C.data(Regression.C$U, this) == LitInt(17)
             ==> Regression.C.Rec#canCall(Regression.C$U, 
              Regression.C.next(Regression.C$U, this), 
              n#0 - 1, 
              Regression.C.F#Handle(Regression.C$U, this)))
           && (Regression.C.data(Regression.C$U, this) != LitInt(17)
             ==> Regression.C.Rec#canCall(Regression.C$U, Regression.C.next(Regression.C$U, this), n#0 - 1, f#0)))
       && Regression.C.Rec(Regression.C$U, $LS($ly), this, n#0, f#0)
         == (if n#0 == LitInt(0) || Regression.C.next(Regression.C$U, this) == null
           then $Unbox(Apply0(TInt, $Heap, f#0)): int
           else (if Regression.C.data(Regression.C$U, this) == LitInt(17)
             then Regression.C.Rec(Regression.C$U, 
              $ly, 
              Regression.C.next(Regression.C$U, this), 
              n#0 - 1, 
              Regression.C.F#Handle(Regression.C$U, this))
             else Regression.C.Rec(Regression.C$U, $ly, Regression.C.next(Regression.C$U, this), n#0 - 1, f#0))));

// definition axiom for Regression.C.Rec for decreasing-related literals (revealed)
axiom {:id "id395"} (forall Regression.C$U: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    this: ref, 
    n#0: int, 
    f#0: HandleType :: 
  {:weight 3} { Regression.C.Rec(Regression.C$U, $LS($ly), this, LitInt(n#0), f#0), $IsGoodHeap($Heap) } 
  Regression.C.Rec#canCall(Regression.C$U, this, LitInt(n#0), f#0)
       || (
        $IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.Regression.C(Regression.C$U))
         && $IsAlloc(this, Tclass.Regression.C(Regression.C$U), $Heap)
         && LitInt(0) <= n#0
         && $Is(f#0, Tclass._System.___hTotalFunc0(TInt)))
     ==> (!(LitInt(n#0) == LitInt(0) || Regression.C.next(Regression.C$U, this) == null)
         ==> (Regression.C.data(Regression.C$U, this) == LitInt(17)
             ==> Regression.C.Rec#canCall(Regression.C$U, 
              Regression.C.next(Regression.C$U, this), 
              LitInt(n#0 - 1), 
              Regression.C.F#Handle(Regression.C$U, this)))
           && (Regression.C.data(Regression.C$U, this) != LitInt(17)
             ==> Regression.C.Rec#canCall(Regression.C$U, Regression.C.next(Regression.C$U, this), LitInt(n#0 - 1), f#0)))
       && Regression.C.Rec(Regression.C$U, $LS($ly), this, LitInt(n#0), f#0)
         == (if LitInt(n#0) == LitInt(0) || Regression.C.next(Regression.C$U, this) == null
           then $Unbox(Apply0(TInt, $Heap, f#0)): int
           else (if Regression.C.data(Regression.C$U, this) == LitInt(17)
             then Regression.C.Rec(Regression.C$U, 
              $LS($ly), 
              Regression.C.next(Regression.C$U, this), 
              LitInt(n#0 - 1), 
              Regression.C.F#Handle(Regression.C$U, this))
             else Regression.C.Rec(Regression.C$U, 
              $LS($ly), 
              Regression.C.next(Regression.C$U, this), 
              LitInt(n#0 - 1), 
              f#0))));

// definition axiom for Regression.C.Rec for all literals (revealed)
axiom {:id "id396"} (forall Regression.C$U: Ty, 
    $ly: LayerType, 
    $Heap: Heap, 
    this: ref, 
    n#0: int, 
    f#0: HandleType :: 
  {:weight 3} { Regression.C.Rec(Regression.C$U, $LS($ly), Lit(this), LitInt(n#0), Lit(f#0)), $IsGoodHeap($Heap) } 
  Regression.C.Rec#canCall(Regression.C$U, Lit(this), LitInt(n#0), Lit(f#0))
       || (
        $IsGoodHeap($Heap)
         && 
        this != null
         && 
        $Is(this, Tclass.Regression.C(Regression.C$U))
         && $IsAlloc(this, Tclass.Regression.C(Regression.C$U), $Heap)
         && LitInt(0) <= n#0
         && $Is(f#0, Tclass._System.___hTotalFunc0(TInt)))
     ==> (!(LitInt(n#0) == LitInt(0)
           || Regression.C.next(Regression.C$U, Lit(this)) == null)
         ==> (Regression.C.data(Regression.C$U, Lit(this)) == LitInt(17)
             ==> Regression.C.Rec#canCall(Regression.C$U, 
              Regression.C.next(Regression.C$U, Lit(this)), 
              LitInt(n#0 - 1), 
              Regression.C.F#Handle(Regression.C$U, Lit(this))))
           && (Regression.C.data(Regression.C$U, Lit(this)) != LitInt(17)
             ==> Regression.C.Rec#canCall(Regression.C$U, 
              Regression.C.next(Regression.C$U, Lit(this)), 
              LitInt(n#0 - 1), 
              Lit(f#0))))
       && Regression.C.Rec(Regression.C$U, $LS($ly), Lit(this), LitInt(n#0), Lit(f#0))
         == (if LitInt(n#0) == LitInt(0) || Regression.C.next(Regression.C$U, Lit(this)) == null
           then $Unbox(Apply0(TInt, $Heap, Lit(f#0))): int
           else (if Regression.C.data(Regression.C$U, Lit(this)) == LitInt(17)
             then Regression.C.Rec(Regression.C$U, 
              $LS($ly), 
              Regression.C.next(Regression.C$U, Lit(this)), 
              LitInt(n#0 - 1), 
              Regression.C.F#Handle(Regression.C$U, Lit(this)))
             else Regression.C.Rec(Regression.C$U, 
              $LS($ly), 
              Regression.C.next(Regression.C$U, Lit(this)), 
              LitInt(n#0 - 1), 
              Lit(f#0)))));

// $Is axiom for non-null type Regression.C
axiom (forall Regression.C$U: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.Regression.C(Regression.C$U)) } 
    { $Is(c#0, Tclass.Regression.C?(Regression.C$U)) } 
  $Is(c#0, Tclass.Regression.C(Regression.C$U))
     <==> $Is(c#0, Tclass.Regression.C?(Regression.C$U)) && c#0 != null);

// $IsAlloc axiom for non-null type Regression.C
axiom (forall Regression.C$U: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.Regression.C(Regression.C$U), $h) } 
    { $IsAlloc(c#0, Tclass.Regression.C?(Regression.C$U), $h) } 
  $IsAlloc(c#0, Tclass.Regression.C(Regression.C$U), $h)
     <==> $IsAlloc(c#0, Tclass.Regression.C?(Regression.C$U), $h));

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

const unique tytagFamily$Link: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique field$next: NameFamily;

const unique field$x: NameFamily;
