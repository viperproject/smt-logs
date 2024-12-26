// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy

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

function Tclass._module.D() : Ty
uses {
// Tclass._module.D Tag
axiom Tag(Tclass._module.D()) == Tagclass._module.D
   && TagFamily(Tclass._module.D()) == tytagFamily$D;
}

const unique Tagclass._module.D: TyTag;

// Box/unbox axiom for Tclass._module.D
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.D()) } 
  $IsBox(bx, Tclass._module.D())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.D()));

procedure {:verboseName "M0 (well-formedness)"} CheckWellFormed$$_module.__default.M0(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M0 (call)"} Call$$_module.__default.M0(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M0 (correctness)"} Impl$$_module.__default.M0(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M0, Impl$$_module.__default.M0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    if (d#0 == #_module.D.Green())
    {
    }
    else if (d#0 == #_module.D.Red())
    {
    }
    else if (d#0 == #_module.D.Purple())
    {
        assert {:id "id1"} false;
    }
    else if (d#0 == #_module.D.Blue())
    {
        assert {:id "id0"} false;
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "M1 (well-formedness)"} CheckWellFormed$$_module.__default.M1(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M1 (call)"} Call$$_module.__default.M1(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  // user-defined preconditions
  requires {:id "id3"} !_module.D#Equal(d#0, #_module.D.Blue());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id4"} !_module.D#Equal(d#0, #_module.D.Blue());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M1 (correctness)"} Impl$$_module.__default.M1(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M1, Impl$$_module.__default.M1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    if (d#0 == #_module.D.Green())
    {
    }
    else if (d#0 == #_module.D.Red())
    {
    }
    else if (d#0 == #_module.D.Purple())
    {
        assert {:id "id6"} false;
    }
    else if (d#0 == #_module.D.Blue())
    {
        assert {:id "id5"} false;
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "M2 (well-formedness)"} CheckWellFormed$$_module.__default.M2(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M2 (call)"} Call$$_module.__default.M2(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  // user-defined preconditions
  requires {:id "id9"} !_module.D#Equal(d#0, #_module.D.Blue());
  requires {:id "id10"} !_module.D#Equal(d#0, #_module.D.Purple());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M2 (correctness)"} Impl$$_module.__default.M2(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id11"} !_module.D#Equal(d#0, #_module.D.Blue());
  requires {:id "id12"} !_module.D#Equal(d#0, #_module.D.Purple());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M2 (correctness)"} Impl$$_module.__default.M2(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M2, Impl$$_module.__default.M2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    if (d#0 == #_module.D.Green())
    {
    }
    else if (d#0 == #_module.D.Red())
    {
    }
    else if (d#0 == #_module.D.Purple())
    {
        assert {:id "id14"} false;
    }
    else if (d#0 == #_module.D.Blue())
    {
        assert {:id "id13"} false;
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "M3 (well-formedness)"} CheckWellFormed$$_module.__default.M3(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M3 (call)"} Call$$_module.__default.M3(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  // user-defined preconditions
  requires {:id "id16"} _module.D#Equal(d#0, #_module.D.Green());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M3 (correctness)"} Impl$$_module.__default.M3(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id17"} _module.D#Equal(d#0, #_module.D.Green());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M3 (correctness)"} Impl$$_module.__default.M3(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M3, Impl$$_module.__default.M3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(35,3)
    assume $IsA#_module.D(d#0);
    if (!_module.D#Equal(d#0, #_module.D.Green()))
    {
        assume true;
        if (d#0 == #_module.D.Purple())
        {
            assert {:id "id21"} false;
        }
        else if (d#0 == #_module.D.Red())
        {
            assert {:id "id20"} false;
        }
        else if (d#0 == #_module.D.Blue())
        {
            assert {:id "id19"} false;
        }
        else if (d#0 == #_module.D.Green())
        {
            assert {:id "id18"} false;
        }
        else
        {
            assume false;
        }
    }
    else
    {
    }
}



procedure {:verboseName "M4 (well-formedness)"} CheckWellFormed$$_module.__default.M4(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M4 (call)"} Call$$_module.__default.M4(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  // user-defined preconditions
  requires {:id "id25"} _module.D#Equal(d#0, #_module.D.Green())
     || _module.D#Equal(d#0, #_module.D.Red());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "M4 (correctness)"} Impl$$_module.__default.M4(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id26"} _module.D#Equal(d#0, #_module.D.Green())
     || _module.D#Equal(d#0, #_module.D.Red());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "M4 (correctness)"} Impl$$_module.__default.M4(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: M4, Impl$$_module.__default.M4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(45,3)
    assume $IsA#_module.D(d#0);
    if (!_module.D#Equal(d#0, #_module.D.Green()))
    {
        assume true;
        if (d#0 == #_module.D.Purple())
        {
            assert {:id "id30"} false;
        }
        else if (d#0 == #_module.D.Red())
        {
            assert {:id "id29"} false;
        }
        else if (d#0 == #_module.D.Blue())
        {
            assert {:id "id28"} false;
        }
        else if (d#0 == #_module.D.Green())
        {
            assert {:id "id27"} false;
        }
        else
        {
            assume false;
        }
    }
    else
    {
    }
}



// function declaration for _module._default.F0
function _module.__default.F0(d#0: DatatypeType) : int
uses {
// definition axiom for _module.__default.F0 (revealed)
axiom {:id "id31"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    { _module.__default.F0(d#0) } 
    _module.__default.F0#canCall(d#0)
         || (1 < $FunctionContextHeight && $Is(d#0, Tclass._module.D()))
       ==> _module.__default.F0(d#0)
         == (if _module.D.Green_q(d#0)
           then 0
           else (if _module.D.Blue_q(d#0) then 2 else 80)));
// definition axiom for _module.__default.F0 for all literals (revealed)
axiom {:id "id32"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType :: 
    {:weight 3} { _module.__default.F0(Lit(d#0)) } 
    _module.__default.F0#canCall(Lit(d#0))
         || (1 < $FunctionContextHeight && $Is(d#0, Tclass._module.D()))
       ==> _module.__default.F0(Lit(d#0))
         == (if _module.D.Green_q(Lit(d#0))
           then 0
           else (if _module.D.Blue_q(Lit(d#0)) then 2 else 80)));
}

function _module.__default.F0#canCall(d#0: DatatypeType) : bool;

function _module.__default.F0#requires(DatatypeType) : bool;

// #requires axiom for _module.__default.F0
axiom (forall d#0: DatatypeType :: 
  { _module.__default.F0#requires(d#0) } 
  $Is(d#0, Tclass._module.D()) ==> _module.__default.F0#requires(d#0) == true);

procedure {:verboseName "F0 (well-formedness)"} CheckWellformed$$_module.__default.F0(d#0: DatatypeType where $Is(d#0, Tclass._module.D()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F0 (well-formedness)"} CheckWellformed$$_module.__default.F0(d#0: DatatypeType)
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
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (d#0 == #_module.D.Green())
        {
            assume {:id "id36"} _module.__default.F0(d#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F0(d#0), TInt);
            return;
        }
        else if (d#0 == #_module.D.Blue())
        {
            assume {:id "id35"} _module.__default.F0(d#0) == LitInt(2);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F0(d#0), TInt);
            return;
        }
        else if (d#0 == #_module.D.Purple())
        {
            assume {:id "id34"} _module.__default.F0(d#0) == LitInt(80);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F0(d#0), TInt);
            return;
        }
        else if (d#0 == #_module.D.Red())
        {
            assert {:id "id33"} false;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.F1
function _module.__default.F1(d#0: DatatypeType, x#0: int) : int
uses {
// definition axiom for _module.__default.F1 (revealed)
axiom {:id "id37"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType, x#0: int :: 
    { _module.__default.F1(d#0, x#0) } 
    _module.__default.F1#canCall(d#0, x#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(d#0, Tclass._module.D())
           && 
          x#0 < 100
           && (_module.D#Equal(d#0, #_module.D.Red()) ==> x#0 == LitInt(200)))
       ==> _module.__default.F1(d#0, x#0)
         == (if _module.D.Green_q(d#0)
           then 0
           else (if _module.D.Blue_q(d#0) then 2 else 80)));
// definition axiom for _module.__default.F1 for all literals (revealed)
axiom {:id "id38"} 1 <= $FunctionContextHeight
   ==> (forall d#0: DatatypeType, x#0: int :: 
    {:weight 3} { _module.__default.F1(Lit(d#0), LitInt(x#0)) } 
    _module.__default.F1#canCall(Lit(d#0), LitInt(x#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(d#0, Tclass._module.D())
           && 
          Lit(x#0 < 100)
           && (_module.D#Equal(d#0, #_module.D.Red()) ==> LitInt(x#0) == LitInt(200)))
       ==> _module.__default.F1(Lit(d#0), LitInt(x#0))
         == (if _module.D.Green_q(Lit(d#0))
           then 0
           else (if _module.D.Blue_q(Lit(d#0)) then 2 else 80)));
}

function _module.__default.F1#canCall(d#0: DatatypeType, x#0: int) : bool;

function _module.__default.F1#requires(DatatypeType, int) : bool;

// #requires axiom for _module.__default.F1
axiom (forall d#0: DatatypeType, x#0: int :: 
  { _module.__default.F1#requires(d#0, x#0) } 
  $Is(d#0, Tclass._module.D())
     ==> _module.__default.F1#requires(d#0, x#0)
       == (x#0 < 100 && (_module.D#Equal(d#0, #_module.D.Red()) ==> x#0 == LitInt(200))));

procedure {:verboseName "F1 (well-formedness)"} CheckWellformed$$_module.__default.F1(d#0: DatatypeType where $Is(d#0, Tclass._module.D()), x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "F1 (well-formedness)"} CheckWellformed$$_module.__default.F1(d#0: DatatypeType, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id39"} x#0 < 100;
    if (*)
    {
        assume {:id "id40"} _module.D#Equal(d#0, #_module.D.Red());
        assume {:id "id41"} x#0 == LitInt(200);
    }
    else
    {
        assume {:id "id42"} _module.D#Equal(d#0, #_module.D.Red()) ==> x#0 == LitInt(200);
    }

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
        if (d#0 == #_module.D.Green())
        {
            assume {:id "id46"} _module.__default.F1(d#0, x#0) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F1(d#0, x#0), TInt);
            return;
        }
        else if (d#0 == #_module.D.Blue())
        {
            assume {:id "id45"} _module.__default.F1(d#0, x#0) == LitInt(2);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F1(d#0, x#0), TInt);
            return;
        }
        else if (d#0 == #_module.D.Purple())
        {
            assume {:id "id44"} _module.__default.F1(d#0, x#0) == LitInt(80);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.F1(d#0, x#0), TInt);
            return;
        }
        else if (d#0 == #_module.D.Red())
        {
            assert {:id "id43"} false;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "A0 (well-formedness)"} CheckWellFormed$$_module.__default.A0(x#0: int) returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A0 (call)"} Call$$_module.__default.A0(x#0: int) returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id48"} LitInt(0) <= r#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A0 (correctness)"} Impl$$_module.__default.A0(x#0: int) returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id49"} LitInt(0) <= r#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A0 (correctness)"} Impl$$_module.__default.A0(x#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: A0, Impl$$_module.__default.A0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(75,3)
    if (*)
    {
        assume true;
        assume {:id "id53"} x#0 < 0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(76,21)
        assume true;
        assume true;
        r#0 := LitInt(12);
    }
    else if (*)
    {
        assume true;
        assume {:id "id51"} 0 < x#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(77,21)
        assume true;
        assume true;
        r#0 := LitInt(13);
    }
    else
    {
        assume true;
        assume true;
        assume 0 <= x#0 && x#0 <= 0;
        assert {:id "id50"} false;
    }
}



procedure {:verboseName "A1 (well-formedness)"} CheckWellFormed$$_module.__default.A1(x#0: int) returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A1 (call)"} Call$$_module.__default.A1(x#0: int) returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id56"} LitInt(0) <= r#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "A1 (correctness)"} Impl$$_module.__default.A1(x#0: int) returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id57"} LitInt(0) <= r#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "A1 (correctness)"} Impl$$_module.__default.A1(x#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: A1, Impl$$_module.__default.A1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(84,3)
    if (*)
    {
        assume true;
        assume {:id "id61"} x#0 <= LitInt(0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(85,22)
        assume true;
        assume true;
        r#0 := LitInt(12);
    }
    else if (*)
    {
        assume true;
        assume {:id "id59"} LitInt(0) <= x#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(86,22)
        assume true;
        assume true;
        r#0 := LitInt(13);
    }
    else
    {
        assume true;
        assume true;
        assume LitInt(0) < x#0 && x#0 < LitInt(0);
        assert {:id "id58"} false;
    }
}



procedure {:verboseName "DutchFlag (well-formedness)"} CheckWellFormed$$_module.__default.DutchFlag(A#0: ref
       where $Is(A#0, Tclass._System.array(TInt))
         && $IsAlloc(A#0, Tclass._System.array(TInt), $Heap), 
    N#0: int, 
    l#0: int, 
    r#0: int)
   returns (result#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DutchFlag (well-formedness)"} CheckWellFormed$$_module.__default.DutchFlag(A#0: ref, N#0: int, l#0: int, r#0: int) returns (result#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var j#0: int;
  var k#2: int;
  var k#4: int;


    // AddMethodImpl: DutchFlag, CheckWellFormed$$_module.__default.DutchFlag
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == A#0);
    assert {:id "id63"} A#0 != null;
    assume {:id "id64"} N#0 == _System.array.Length(A#0);
    assume {:id "id65"} LitInt(0) <= l#0;
    assume {:id "id66"} l#0 + 2 <= r#0;
    assume {:id "id67"} r#0 <= N#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == A#0);
    assume $HeapSucc(old($Heap), $Heap);
    havoc result#0;
    assume {:id "id68"} l#0 <= result#0;
    assume {:id "id69"} result#0 < r#0;
    havoc k#0;
    havoc j#0;
    assume true;
    if (*)
    {
        assume {:id "id70"} l#0 <= k#0;
        assume {:id "id71"} k#0 < result#0;
        assume {:id "id72"} result#0 <= j#0;
        assume {:id "id73"} j#0 < r#0;
        assert {:id "id74"} A#0 != null;
        assert {:id "id75"} 0 <= k#0 && k#0 < _System.array.Length(A#0);
        assert {:id "id76"} A#0 != null;
        assert {:id "id77"} 0 <= j#0 && j#0 < _System.array.Length(A#0);
        assume {:id "id78"} $Unbox(read($Heap, A#0, IndexField(k#0))): int
           <= $Unbox(read($Heap, A#0, IndexField(j#0))): int;
    }
    else
    {
        assume {:id "id79"} l#0 <= k#0 && k#0 < result#0 && result#0 <= j#0 && j#0 < r#0
           ==> $Unbox(read($Heap, A#0, IndexField(k#0))): int
             <= $Unbox(read($Heap, A#0, IndexField(j#0))): int;
    }

    assume {:id "id80"} (forall k#1: int, j#1: int :: 
      { $Unbox(read($Heap, A#0, IndexField(j#1))): int, $Unbox(read($Heap, A#0, IndexField(k#1))): int } 
      l#0 <= k#1 && k#1 < result#0 && result#0 <= j#1 && j#1 < r#0
         ==> $Unbox(read($Heap, A#0, IndexField(k#1))): int
           <= $Unbox(read($Heap, A#0, IndexField(j#1))): int);
    havoc k#2;
    assume true;
    if (*)
    {
        assume {:id "id81"} l#0 <= k#2;
        assume {:id "id82"} k#2 < result#0;
        assert {:id "id83"} A#0 != null;
        assert {:id "id84"} 0 <= k#2 && k#2 < _System.array.Length(A#0);
        assert {:id "id85"} A#0 != null;
        assert {:id "id86"} $IsAlloc(A#0, Tclass._System.array?(TInt), old($Heap));
        assert {:id "id87"} 0 <= l#0 && l#0 < _System.array.Length(A#0);
        assume {:id "id88"} $Unbox(read($Heap, A#0, IndexField(k#2))): int
           <= $Unbox(read(old($Heap), A#0, IndexField(l#0))): int;
    }
    else
    {
        assume {:id "id89"} l#0 <= k#2 && k#2 < result#0
           ==> $Unbox(read($Heap, A#0, IndexField(k#2))): int
             <= $Unbox(read(old($Heap), A#0, IndexField(l#0))): int;
    }

    assume {:id "id90"} (forall k#3: int :: 
      { $Unbox(read($Heap, A#0, IndexField(k#3))): int } 
      l#0 <= k#3 && k#3 < result#0
         ==> $Unbox(read($Heap, A#0, IndexField(k#3))): int
           <= $Unbox(read(old($Heap), A#0, IndexField(l#0))): int);
    havoc k#4;
    assume true;
    if (*)
    {
        assume {:id "id91"} result#0 <= k#4;
        assume {:id "id92"} k#4 < r#0;
        assert {:id "id93"} A#0 != null;
        assert {:id "id94"} $IsAlloc(A#0, Tclass._System.array?(TInt), old($Heap));
        assert {:id "id95"} 0 <= l#0 && l#0 < _System.array.Length(A#0);
        assert {:id "id96"} A#0 != null;
        assert {:id "id97"} 0 <= k#4 && k#4 < _System.array.Length(A#0);
        assume {:id "id98"} $Unbox(read(old($Heap), A#0, IndexField(l#0))): int
           <= $Unbox(read($Heap, A#0, IndexField(k#4))): int;
    }
    else
    {
        assume {:id "id99"} result#0 <= k#4 && k#4 < r#0
           ==> $Unbox(read(old($Heap), A#0, IndexField(l#0))): int
             <= $Unbox(read($Heap, A#0, IndexField(k#4))): int;
    }

    assume {:id "id100"} (forall k#5: int :: 
      { $Unbox(read($Heap, A#0, IndexField(k#5))): int } 
      result#0 <= k#5 && k#5 < r#0
         ==> $Unbox(read(old($Heap), A#0, IndexField(l#0))): int
           <= $Unbox(read($Heap, A#0, IndexField(k#5))): int);
}



procedure {:verboseName "DutchFlag (call)"} Call$$_module.__default.DutchFlag(A#0: ref
       where $Is(A#0, Tclass._System.array(TInt))
         && $IsAlloc(A#0, Tclass._System.array(TInt), $Heap), 
    N#0: int, 
    l#0: int, 
    r#0: int)
   returns (result#0: int);
  // user-defined preconditions
  requires {:id "id101"} N#0 == _System.array.Length(A#0);
  requires {:id "id102"} LitInt(0) <= l#0;
  requires {:id "id103"} l#0 + 2 <= r#0;
  requires {:id "id104"} r#0 <= N#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id105"} l#0 <= result#0;
  ensures {:id "id106"} result#0 < r#0;
  free ensures true;
  ensures {:id "id107"} (forall k#1: int, j#1: int :: 
    { $Unbox(read($Heap, A#0, IndexField(j#1))): int, $Unbox(read($Heap, A#0, IndexField(k#1))): int } 
    l#0 <= k#1 && k#1 < result#0 && result#0 <= j#1 && j#1 < r#0
       ==> $Unbox(read($Heap, A#0, IndexField(k#1))): int
         <= $Unbox(read($Heap, A#0, IndexField(j#1))): int);
  free ensures true;
  ensures {:id "id108"} (forall k#3: int :: 
    { $Unbox(read($Heap, A#0, IndexField(k#3))): int } 
    l#0 <= k#3 && k#3 < result#0
       ==> $Unbox(read($Heap, A#0, IndexField(k#3))): int
         <= $Unbox(read(old($Heap), A#0, IndexField(l#0))): int);
  free ensures true;
  ensures {:id "id109"} (forall k#5: int :: 
    { $Unbox(read($Heap, A#0, IndexField(k#5))): int } 
    result#0 <= k#5 && k#5 < r#0
       ==> $Unbox(read(old($Heap), A#0, IndexField(l#0))): int
         <= $Unbox(read($Heap, A#0, IndexField(k#5))): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == A#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DutchFlag (correctness)"} Impl$$_module.__default.DutchFlag(A#0: ref
       where $Is(A#0, Tclass._System.array(TInt))
         && $IsAlloc(A#0, Tclass._System.array(TInt), $Heap), 
    N#0: int, 
    l#0: int, 
    r#0: int)
   returns (result#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id110"} N#0 == _System.array.Length(A#0);
  requires {:id "id111"} LitInt(0) <= l#0;
  requires {:id "id112"} l#0 + 2 <= r#0;
  requires {:id "id113"} r#0 <= N#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id114"} l#0 <= result#0;
  ensures {:id "id115"} result#0 < r#0;
  free ensures true;
  ensures {:id "id116"} (forall k#1: int, j#1: int :: 
    { $Unbox(read($Heap, A#0, IndexField(j#1))): int, $Unbox(read($Heap, A#0, IndexField(k#1))): int } 
    l#0 <= k#1 && k#1 < result#0 && result#0 <= j#1 && j#1 < r#0
       ==> $Unbox(read($Heap, A#0, IndexField(k#1))): int
         <= $Unbox(read($Heap, A#0, IndexField(j#1))): int);
  free ensures true;
  ensures {:id "id117"} (forall k#3: int :: 
    { $Unbox(read($Heap, A#0, IndexField(k#3))): int } 
    l#0 <= k#3 && k#3 < result#0
       ==> $Unbox(read($Heap, A#0, IndexField(k#3))): int
         <= $Unbox(read(old($Heap), A#0, IndexField(l#0))): int);
  free ensures true;
  ensures {:id "id118"} (forall k#5: int :: 
    { $Unbox(read($Heap, A#0, IndexField(k#5))): int } 
    result#0 <= k#5 && k#5 < r#0
       ==> $Unbox(read(old($Heap), A#0, IndexField(l#0))): int
         <= $Unbox(read($Heap, A#0, IndexField(k#5))): int);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == A#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DutchFlag (correctness)"} Impl$$_module.__default.DutchFlag(A#0: ref, N#0: int, l#0: int, r#0: int)
   returns (result#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var pv#0: int;
  var i#0: int;
  var j#2: int;
  var $obj0: ref;
  var $index0: Field;
  var $obj1: ref;
  var $index1: Field;
  var $rhs#0: int;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var k#6: int;
  var k#8: int;
  var $decr$loop#00: int;
  var $rhs#0_0_0: int;
  var $rhs#0_0_1: int;
  var $rhs#0_0_2: int;
  var $rhs#0_0_3: int;

    // AddMethodImpl: DutchFlag, Impl$$_module.__default.DutchFlag
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == A#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(99,10)
    assume true;
    assert {:id "id119"} A#0 != null;
    assert {:id "id120"} 0 <= l#0 && l#0 < _System.array.Length(A#0);
    assume true;
    pv#0 := $Unbox(read($Heap, A#0, IndexField(l#0))): int;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(100,9)
    assume true;
    assume true;
    i#0 := l#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(101,9)
    assume true;
    assume true;
    j#2 := r#0 - 1;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(102,14)
    assert {:id "id124"} A#0 != null;
    assert {:id "id125"} 0 <= l#0 && l#0 < _System.array.Length(A#0);
    assume true;
    $obj0 := A#0;
    $index0 := IndexField(l#0);
    assert {:id "id126"} $_ModifiesFrame[$obj0, $index0];
    assert {:id "id127"} A#0 != null;
    assert {:id "id128"} 0 <= j#2 && j#2 < _System.array.Length(A#0);
    assume true;
    $obj1 := A#0;
    $index1 := IndexField(j#2);
    assert {:id "id129"} $_ModifiesFrame[$obj1, $index1];
    assert {:id "id130"} A#0 != null;
    assert {:id "id131"} 0 <= j#2 && j#2 < _System.array.Length(A#0);
    assume true;
    $rhs#0 := $Unbox(read($Heap, A#0, IndexField(j#2))): int;
    assert {:id "id133"} A#0 != null;
    assert {:id "id134"} 0 <= l#0 && l#0 < _System.array.Length(A#0);
    assume true;
    $rhs#1 := $Unbox(read($Heap, A#0, IndexField(l#0))): int;
    assert {:id "id136"} A#0 != A#0 || j#2 != l#0 || $Box($rhs#1) == $Box($rhs#0);
    $Heap := update($Heap, $obj0, $index0, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, $index1, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(104,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := j#2 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id140"} $w$loop#0 ==> l#0 <= i#0;
      invariant {:id "id141"} $w$loop#0 ==> i#0 <= j#2;
      invariant {:id "id142"} $w$loop#0 ==> j#2 < r#0;
      free invariant true;
      invariant {:id "id146"} $w$loop#0
         ==> (forall k#7: int :: 
          { $Unbox(read($Heap, A#0, IndexField(k#7))): int } 
          l#0 <= k#7 && k#7 < i#0
             ==> $Unbox(read($Heap, A#0, IndexField(k#7))): int <= pv#0);
      free invariant true;
      invariant {:id "id150"} $w$loop#0
         ==> (forall k#9: int :: 
          { $Unbox(read($Heap, A#0, IndexField(k#9))): int } 
          j#2 <= k#9 && k#9 < r#0
             ==> pv#0 <= $Unbox(read($Heap, A#0, IndexField(k#9))): int);
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o] || $o == A#0);
      free invariant $HeapSucc($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant j#2 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (l#0 <= i#0)
            {
            }

            if (l#0 <= i#0 && i#0 <= j#2)
            {
            }

            assume true;
            assume {:id "id139"} l#0 <= i#0 && i#0 <= j#2 && j#2 < r#0;
            // Begin Comprehension WF check
            havoc k#6;
            if (true)
            {
                if (l#0 <= k#6)
                {
                }

                if (l#0 <= k#6 && k#6 < i#0)
                {
                    assert {:id "id143"} A#0 != null;
                    assert {:id "id144"} {:subsumption 0} 0 <= k#6 && k#6 < _System.array.Length(A#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id145"} (forall k#7: int :: 
              { $Unbox(read($Heap, A#0, IndexField(k#7))): int } 
              l#0 <= k#7 && k#7 < i#0
                 ==> $Unbox(read($Heap, A#0, IndexField(k#7))): int <= pv#0);
            // Begin Comprehension WF check
            havoc k#8;
            if (true)
            {
                if (j#2 <= k#8)
                {
                }

                if (j#2 <= k#8 && k#8 < r#0)
                {
                    assert {:id "id147"} A#0 != null;
                    assert {:id "id148"} {:subsumption 0} 0 <= k#8 && k#8 < _System.array.Length(A#0);
                }
            }

            // End Comprehension WF check
            assume true;
            assume {:id "id149"} (forall k#9: int :: 
              { $Unbox(read($Heap, A#0, IndexField(k#9))): int } 
              j#2 <= k#9 && k#9 < r#0
                 ==> pv#0 <= $Unbox(read($Heap, A#0, IndexField(k#9))): int);
            assume true;
            assume false;
        }

        assume true;
        if (j#2 <= i#0)
        {
            break;
        }

        $decr$loop#00 := j#2 - i#0;
        push;
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(109,5)
        if (*)
        {
            assert {:id "id187"} A#0 != null;
            assert {:id "id188"} 0 <= i#0 && i#0 < _System.array.Length(A#0);
            assume true;
            assume {:id "id189"} $Unbox(read($Heap, A#0, IndexField(i#0))): int <= pv#0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(111,11)
            assume true;
            assume true;
            i#0 := i#0 + 1;
            pop;
        }
        else if (*)
        {
            assert {:id "id183"} A#0 != null;
            assert {:id "id184"} 0 <= j#2 - 1 && j#2 - 1 < _System.array.Length(A#0);
            assume true;
            assume {:id "id185"} pv#0 <= $Unbox(read($Heap, A#0, IndexField(j#2 - 1))): int;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(113,11)
            assume true;
            assume true;
            j#2 := j#2 - 1;
            pop;
        }
        else if (*)
        {
            assert {:id "id152"} A#0 != null;
            assert {:id "id153"} 0 <= j#2 - 1 && j#2 - 1 < _System.array.Length(A#0);
            if ($Unbox(read($Heap, A#0, IndexField(j#2 - 1))): int < pv#0)
            {
                assert {:id "id154"} A#0 != null;
                assert {:id "id155"} 0 <= i#0 && i#0 < _System.array.Length(A#0);
            }

            assume true;
            assume {:id "id156"} $Unbox(read($Heap, A#0, IndexField(j#2 - 1))): int < pv#0
               && pv#0 < $Unbox(read($Heap, A#0, IndexField(i#0))): int;
            push;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(115,22)
            assert {:id "id157"} A#0 != null;
            assert {:id "id158"} 0 <= j#2 - 1 && j#2 - 1 < _System.array.Length(A#0);
            assume true;
            $obj0 := A#0;
            $index0 := IndexField(j#2 - 1);
            assert {:id "id159"} $_ModifiesFrame[$obj0, $index0];
            assert {:id "id160"} A#0 != null;
            assert {:id "id161"} 0 <= i#0 && i#0 < _System.array.Length(A#0);
            assume true;
            $obj1 := A#0;
            $index1 := IndexField(i#0);
            assert {:id "id162"} $_ModifiesFrame[$obj1, $index1];
            assert {:id "id163"} A#0 != null;
            assert {:id "id164"} 0 <= i#0 && i#0 < _System.array.Length(A#0);
            assume true;
            $rhs#0_0_0 := $Unbox(read($Heap, A#0, IndexField(i#0))): int;
            assert {:id "id166"} A#0 != null;
            assert {:id "id167"} 0 <= j#2 - 1 && j#2 - 1 < _System.array.Length(A#0);
            assume true;
            $rhs#0_0_1 := $Unbox(read($Heap, A#0, IndexField(j#2 - 1))): int;
            assert {:id "id169"} A#0 != A#0 || i#0 != j#2 - 1 || $Box($rhs#0_0_1) == $Box($rhs#0_0_0);
            $Heap := update($Heap, $obj0, $index0, $Box($rhs#0_0_0));
            assume $IsGoodHeap($Heap);
            $Heap := update($Heap, $obj1, $index1, $Box($rhs#0_0_1));
            assume $IsGoodHeap($Heap);
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(116,9)
            assert {:id "id172"} A#0 != null;
            assert {:id "id173"} {:subsumption 0} 0 <= i#0 && i#0 < _System.array.Length(A#0);
            if ($Unbox(read($Heap, A#0, IndexField(i#0))): int < pv#0)
            {
                assert {:id "id174"} A#0 != null;
                assert {:id "id175"} {:subsumption 0} 0 <= j#2 - 1 && j#2 - 1 < _System.array.Length(A#0);
            }

            assume true;
            assert {:id "id176"} {:subsumption 0} $Unbox(read($Heap, A#0, IndexField(i#0))): int < pv#0;
            assert {:id "id177"} {:subsumption 0} pv#0 < $Unbox(read($Heap, A#0, IndexField(j#2 - 1))): int;
            assume {:id "id178"} $Unbox(read($Heap, A#0, IndexField(i#0))): int < pv#0
               && pv#0 < $Unbox(read($Heap, A#0, IndexField(j#2 - 1))): int;
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(117,14)
            assume true;
            assume true;
            assume true;
            $rhs#0_0_2 := i#0 + 1;
            assume true;
            $rhs#0_0_3 := j#2 - 1;
            i#0 := $rhs#0_0_2;
            j#2 := $rhs#0_0_3;
            pop;
        }
        else
        {
            assume true;
            assume true;
            assume true;
            assume pv#0 < $Unbox(read($Heap, A#0, IndexField(i#0))): int
               && $Unbox(read($Heap, A#0, IndexField(j#2 - 1))): int < pv#0
               && !
              ($Unbox(read($Heap, A#0, IndexField(j#2 - 1))): int < pv#0
               && pv#0 < $Unbox(read($Heap, A#0, IndexField(i#0))): int);
            assert {:id "id151"} false;
        }

        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(104,3)
        assert {:id "id191"} 0 <= $decr$loop#00 || j#2 - i#0 == $decr$loop#00;
        assert {:id "id192"} j#2 - i#0 < $decr$loop#00;
        assume true;
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(120,10)
    assume true;
    assume true;
    result#0 := i#0;
}



procedure {:verboseName "B (well-formedness)"} CheckWellFormed$$_module.__default.B(x#0: int) returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "B (call)"} Call$$_module.__default.B(x#0: int) returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id195"} r#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "B (correctness)"} Impl$$_module.__default.B(x#0: int) returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id196"} r#0 == LitInt(0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "B (correctness)"} Impl$$_module.__default.B(x#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: B, Impl$$_module.__default.B
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(128,5)
    assume true;
    assume true;
    r#0 := x#0;
    // ----- alternative loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(129,3)
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if LitInt(0) <= r#0 then r#0 else 0 - r#0);
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
      free invariant (if LitInt(0) <= r#0 then r#0 else 0 - r#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= r#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := (if LitInt(0) <= r#0 then r#0 else 0 - r#0);
        if (*)
        {
            assume true;
            assume {:id "id200"} r#0 < 0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(133,9)
            assume true;
            assume true;
            r#0 := r#0 + 1;
        }
        else if (*)
        {
            assume true;
            assume {:id "id198"} 0 < r#0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(135,9)
            assume true;
            assume true;
            r#0 := r#0 - 1;
        }
        else
        {
            assume true;
            assume true;
            assume 0 <= r#0 && r#0 <= 0;
            break;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(129,3)
        assert {:id "id202"} 0 <= $decr$loop#00
           || (if LitInt(0) <= r#0 then r#0 else 0 - r#0) == $decr$loop#00;
        assert {:id "id203"} (if LitInt(0) <= r#0 then r#0 else 0 - r#0) < $decr$loop#00;
    }
}



procedure {:verboseName "TheBreaker_AllGood (well-formedness)"} CheckWellFormed$$_module.__default.TheBreaker__AllGood(M#0: int, N#0: int, O#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TheBreaker_AllGood (call)"} Call$$_module.__default.TheBreaker__AllGood(M#0: int, N#0: int, O#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TheBreaker_AllGood (correctness)"} Impl$$_module.__default.TheBreaker__AllGood(M#0: int, N#0: int, O#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TheBreaker_AllGood (correctness)"} Impl$$_module.__default.TheBreaker__AllGood(M#0: int, N#0: int, O#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var c#0: int;
  var d#0: int;
  var e#0: int;
  var i#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var j#0_0: int;
  var $Heap_at_0_0: Heap;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: int;
  var u#0_0_0: int;
  var $Heap_at_0_0_0: Heap;
  var $Heap_at_0_0_1: Heap;
  var $PreLoopHeap$loop#0_0_1_1_1_0_0: Heap;
  var $decr_init$loop#0_0_1_1_1_0_00: int;
  var $w$loop#0_0_1_1_1_0_0: bool;
  var $decr$loop#0_0_1_1_1_0_00: int;
  var k#0_0_0: int;
  var $Heap_at_0_0_2: Heap;
  var $PreLoopHeap$loop#0_0_0: Heap;
  var $decr_init$loop#0_0_00: int;
  var $w$loop#0_0_0: bool;
  var $decr$loop#0_0_00: int;

    // AddMethodImpl: TheBreaker_AllGood, Impl$$_module.__default.TheBreaker__AllGood
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0, b#0, c#0, d#0, e#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(144,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(145,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := M#0 - i#0;
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
      free invariant M#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (M#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := M#0 - i#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(147,11)
        assume true;
        assume true;
        j#0_0 := LitInt(0);
        $Heap_at_0_0 := $Heap;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(149,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := N#0 - j#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant N#0 - j#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                assume true;
                assume false;
            }

            assume true;
            if (N#0 <= j#0_0)
            {
                break;
            }

            $decr$loop#0_00 := N#0 - j#0_0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(151,13)
            assume true;
            assume true;
            u#0_0_0 := LitInt(2000);
            $Heap_at_0_0_0 := $Heap;
            $Heap_at_0_0_1 := $Heap;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(153,7)
            if (*)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(155,11)
                assume true;
                assume true;
                a#0 := LitInt(15);
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(155,18)
                pop;
                pop;
                goto after_0_0;

                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(156,14)
                if (*)
                {
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(157,11)
                    assume true;
                    assume true;
                    b#0 := LitInt(12);
                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(157,18)
                    pop;
                    pop;
                    pop;
                    pop;
                    goto after_0;

                    pop;
                }
                else
                {
                    push;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(158,14)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(159,11)
                        assume true;
                        assume true;
                        c#0 := LitInt(21);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(159,18)
                        pop;
                        pop;
                        pop;
                        pop;
                        goto after_0_0;

                        pop;
                    }
                    else
                    {
                        push;
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(160,14)
                        if (*)
                        {
                            push;
                            // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(161,9)
                            // Assume Fuel Constant
                            $PreLoopHeap$loop#0_0_1_1_1_0_0 := $Heap;
                            $decr_init$loop#0_0_1_1_1_0_00 := 10000 - u#0_0_0;
                            havoc $w$loop#0_0_1_1_1_0_0;
                            while (true)
                              free invariant (forall $o: ref :: 
                                { $Heap[$o] } 
                                $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
                                   ==> $Heap[$o] == $PreLoopHeap$loop#0_0_1_1_1_0_0[$o]);
                              free invariant $HeapSucc($PreLoopHeap$loop#0_0_1_1_1_0_0, $Heap);
                              free invariant (forall $o: ref, $f: Field :: 
                                { read($Heap, $o, $f) } 
                                $o != null && $Unbox(read($PreLoopHeap$loop#0_0_1_1_1_0_0, $o, alloc)): bool
                                   ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0_1_1_1_0_0, $o, $f)
                                     || $_ModifiesFrame[$o, $f]);
                              free invariant 10000 - u#0_0_0 <= $decr_init$loop#0_0_1_1_1_0_00;
                            {
                                if (!$w$loop#0_0_1_1_1_0_0)
                                {
                                    assume true;
                                    assume false;
                                }

                                assume true;
                                if (10000 <= u#0_0_0)
                                {
                                    break;
                                }

                                $decr$loop#0_0_1_1_1_0_00 := 10000 - u#0_0_0;
                                push;
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(162,13)
                                assume true;
                                assume true;
                                u#0_0_0 := u#0_0_0 + 3;
                                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(163,11)
                                if (*)
                                {
                                    push;
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(163,22)
                                    assume true;
                                    assume true;
                                    u#0_0_0 := LitInt(1998);
                                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(163,31)
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    goto after_0_0_0;

                                    pop;
                                }
                                else
                                {
                                }

                                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(164,11)
                                if (*)
                                {
                                    push;
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(164,22)
                                    assume true;
                                    assume true;
                                    u#0_0_0 := LitInt(1998);
                                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(164,31)
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    goto after_0_0_0;

                                    pop;
                                }
                                else
                                {
                                }

                                pop;
                                // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(161,9)
                                assert {:id "id213"} 0 <= $decr$loop#0_0_1_1_1_0_00 || 10000 - u#0_0_0 == $decr$loop#0_0_1_1_1_0_00;
                                assert {:id "id214"} 10000 - u#0_0_0 < $decr$loop#0_0_1_1_1_0_00;
                            }

                            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(166,9)
                            assume true;
                            assert {:id "id215"} LitInt(10000) <= u#0_0_0;
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(167,11)
                            assume true;
                            assume true;
                            u#0_0_0 := LitInt(1998);
                            pop;
                        }
                        else
                        {
                            push;
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(169,11)
                            assume true;
                            assume true;
                            u#0_0_0 := u#0_0_0 - 2;
                            pop;
                        }

                        pop;
                    }

                    pop;
                }

                pop;
            }

          after_0_0_0:
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(171,7)
            assume true;
            assert {:id "id218"} u#0_0_0 == LitInt(1998);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(172,13)
            assume true;
            assume true;
            k#0_0_0 := LitInt(0);
            $Heap_at_0_0_2 := $Heap;
            // ----- alternative loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(173,7)
            $PreLoopHeap$loop#0_0_0 := $Heap;
            $decr_init$loop#0_0_00 := O#0 - k#0_0_0;
            havoc $w$loop#0_0_0;
            while (true)
              free invariant (forall $o: ref :: 
                { $Heap[$o] } 
                $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
                   ==> $Heap[$o] == $PreLoopHeap$loop#0_0_0[$o]);
              free invariant $HeapSucc($PreLoopHeap$loop#0_0_0, $Heap);
              free invariant (forall $o: ref, $f: Field :: 
                { read($Heap, $o, $f) } 
                $o != null && $Unbox(read($PreLoopHeap$loop#0_0_0, $o, alloc)): bool
                   ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0_0, $o, $f)
                     || $_ModifiesFrame[$o, $f]);
              free invariant O#0 - k#0_0_0 <= $decr_init$loop#0_0_00;
            {
                if (!$w$loop#0_0_0)
                {
                    assume true;
                    assume false;
                }

                assume true;
                if (!Lit(true))
                {
                    break;
                }

                $decr$loop#0_0_00 := O#0 - k#0_0_0;
                if (*)
                {
                    if (k#0_0_0 < O#0)
                    {
                        assert {:id "id225"} LitInt(2) != 0;
                    }

                    assume true;
                    assume {:id "id226"} k#0_0_0 < O#0 && Mod(k#0_0_0, LitInt(2)) == LitInt(0);
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(177,13)
                    assume true;
                    assume true;
                    d#0 := LitInt(187);
                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(177,21)
                    pop;
                    goto after_0_0_2;

                    pop;
                }
                else if (*)
                {
                    assume true;
                    assume {:id "id220"} k#0_0_0 < O#0;
                    push;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(179,11)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(179,22)
                        assume true;
                        assume true;
                        e#0 := LitInt(4);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(179,28)
                        pop;
                        pop;
                        pop;
                        goto after_0_0;

                        pop;
                    }
                    else
                    {
                    }

                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(180,11)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(180,22)
                        assume true;
                        assume true;
                        e#0 := LitInt(7);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(180,28)
                        pop;
                        pop;
                        goto after_0_0_2;

                        pop;
                    }
                    else
                    {
                    }

                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(181,11)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(181,22)
                        assume true;
                        assume true;
                        e#0 := LitInt(37);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(181,29)
                        pop;
                        pop;
                        pop;
                        pop;
                        goto after_0;

                        pop;
                    }
                    else
                    {
                    }

                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(182,13)
                    assume true;
                    assume true;
                    k#0_0_0 := k#0_0_0 + 1;
                    pop;
                }
                else
                {
                    assume true;
                    assume true;
                    assume !(k#0_0_0 < O#0 && Mod(k#0_0_0, LitInt(2)) == LitInt(0)) && O#0 <= k#0_0_0;
                    break;
                }

              continue_0_0_2:
                // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(173,7)
                assert {:id "id228"} 0 <= $decr$loop#0_0_00 || O#0 - k#0_0_0 == $decr$loop#0_0_00;
                assert {:id "id229"} O#0 - k#0_0_0 < $decr$loop#0_0_00;
            }

          after_0_0_2:
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(184,7)
            if (k#0_0_0 < O#0)
            {
            }

            if (!(O#0 <= k#0_0_0 || d#0 == LitInt(187)))
            {
            }

            assume true;
            assert {:id "id230"} O#0 <= k#0_0_0 || d#0 == LitInt(187) || e#0 == LitInt(7);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(185,9)
            assume true;
            assume true;
            j#0_0 := j#0_0 + 1;
            pop;

          continue_0_0:
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(149,5)
            assert {:id "id232"} 0 <= $decr$loop#0_00 || N#0 - j#0_0 == $decr$loop#0_00;
            assert {:id "id233"} N#0 - j#0_0 < $decr$loop#0_00;
        }

      after_0_0:
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(187,5)
        if (j#0_0 < N#0)
        {
        }

        if (!(N#0 <= j#0_0 || a#0 == LitInt(15)))
        {
        }

        if (!(N#0 <= j#0_0 || a#0 == LitInt(15) || c#0 == LitInt(21)))
        {
        }

        assume true;
        assert {:id "id234"} N#0 <= j#0_0 || a#0 == LitInt(15) || c#0 == LitInt(21) || e#0 == LitInt(4);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(188,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(145,3)
        assert {:id "id236"} 0 <= $decr$loop#00 || M#0 - i#0 == $decr$loop#00;
        assert {:id "id237"} M#0 - i#0 < $decr$loop#00;
    }

  after_0:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(190,3)
    if (i#0 < M#0)
    {
    }

    if (!(M#0 <= i#0 || b#0 == LitInt(12)))
    {
    }

    assume true;
    assert {:id "id238"} M#0 <= i#0 || b#0 == LitInt(12) || e#0 == LitInt(37);
}



procedure {:verboseName "TheBreaker_SomeBad (well-formedness)"} CheckWellFormed$$_module.__default.TheBreaker__SomeBad(M#0: int, N#0: int, O#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TheBreaker_SomeBad (call)"} Call$$_module.__default.TheBreaker__SomeBad(M#0: int, N#0: int, O#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TheBreaker_SomeBad (correctness)"} Impl$$_module.__default.TheBreaker__SomeBad(M#0: int, N#0: int, O#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TheBreaker_SomeBad (correctness)"} Impl$$_module.__default.TheBreaker__SomeBad(M#0: int, N#0: int, O#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var c#0: int;
  var d#0: int;
  var e#0: int;
  var i#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var j#0_0: int;
  var $Heap_at_0_0: Heap;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: int;
  var u#0_0_0: int;
  var $Heap_at_0_0_0: Heap;
  var $Heap_at_0_0_1: Heap;
  var $PreLoopHeap$loop#0_0_1_1_1_0_0: Heap;
  var $decr_init$loop#0_0_1_1_1_0_00: int;
  var $w$loop#0_0_1_1_1_0_0: bool;
  var $decr$loop#0_0_1_1_1_0_00: int;
  var k#0_0_0: int;
  var $Heap_at_0_0_2: Heap;
  var $PreLoopHeap$loop#0_0_0: Heap;
  var $decr_init$loop#0_0_00: int;
  var $w$loop#0_0_0: bool;
  var $decr$loop#0_0_00: int;

    // AddMethodImpl: TheBreaker_SomeBad, Impl$$_module.__default.TheBreaker__SomeBad
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0, b#0, c#0, d#0, e#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(196,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(197,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := M#0 - i#0;
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
      free invariant M#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (M#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := M#0 - i#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(199,11)
        assume true;
        assume true;
        j#0_0 := LitInt(0);
        $Heap_at_0_0 := $Heap;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(201,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := N#0 - j#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant N#0 - j#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                assume true;
                assume false;
            }

            assume true;
            if (N#0 <= j#0_0)
            {
                break;
            }

            $decr$loop#0_00 := N#0 - j#0_0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(203,13)
            assume true;
            assume true;
            u#0_0_0 := LitInt(2000);
            $Heap_at_0_0_0 := $Heap;
            $Heap_at_0_0_1 := $Heap;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(205,7)
            if (*)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(207,11)
                assume true;
                assume true;
                a#0 := LitInt(15);
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(207,18)
                pop;
                pop;
                goto after_0_0;

                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(208,14)
                if (*)
                {
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(209,11)
                    assume true;
                    assume true;
                    b#0 := LitInt(12);
                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(209,18)
                    pop;
                    pop;
                    pop;
                    pop;
                    goto after_0;

                    pop;
                }
                else
                {
                    push;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(210,14)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(211,11)
                        assume true;
                        assume true;
                        c#0 := LitInt(21);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(211,18)
                        pop;
                        pop;
                        pop;
                        pop;
                        goto after_0_0;

                        pop;
                    }
                    else
                    {
                        push;
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(212,14)
                        if (*)
                        {
                            push;
                            // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(213,9)
                            // Assume Fuel Constant
                            $PreLoopHeap$loop#0_0_1_1_1_0_0 := $Heap;
                            $decr_init$loop#0_0_1_1_1_0_00 := 10000 - u#0_0_0;
                            havoc $w$loop#0_0_1_1_1_0_0;
                            while (true)
                              free invariant (forall $o: ref :: 
                                { $Heap[$o] } 
                                $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
                                   ==> $Heap[$o] == $PreLoopHeap$loop#0_0_1_1_1_0_0[$o]);
                              free invariant $HeapSucc($PreLoopHeap$loop#0_0_1_1_1_0_0, $Heap);
                              free invariant (forall $o: ref, $f: Field :: 
                                { read($Heap, $o, $f) } 
                                $o != null && $Unbox(read($PreLoopHeap$loop#0_0_1_1_1_0_0, $o, alloc)): bool
                                   ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0_1_1_1_0_0, $o, $f)
                                     || $_ModifiesFrame[$o, $f]);
                              free invariant 10000 - u#0_0_0 <= $decr_init$loop#0_0_1_1_1_0_00;
                            {
                                if (!$w$loop#0_0_1_1_1_0_0)
                                {
                                    assume true;
                                    assume false;
                                }

                                assume true;
                                if (10000 <= u#0_0_0)
                                {
                                    break;
                                }

                                $decr$loop#0_0_1_1_1_0_00 := 10000 - u#0_0_0;
                                push;
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(214,13)
                                assume true;
                                assume true;
                                u#0_0_0 := u#0_0_0 + 3;
                                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(215,11)
                                if (*)
                                {
                                    push;
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(215,22)
                                    assume true;
                                    assume true;
                                    u#0_0_0 := LitInt(1998);
                                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(215,31)
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    goto after_0_0_0;

                                    pop;
                                }
                                else
                                {
                                }

                                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(216,11)
                                if (*)
                                {
                                    push;
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(216,22)
                                    assume true;
                                    assume true;
                                    u#0_0_0 := LitInt(1998);
                                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(216,31)
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    goto after_0_0_0;

                                    pop;
                                }
                                else
                                {
                                }

                                pop;
                                // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(213,9)
                                assert {:id "id248"} 0 <= $decr$loop#0_0_1_1_1_0_00 || 10000 - u#0_0_0 == $decr$loop#0_0_1_1_1_0_00;
                                assert {:id "id249"} 10000 - u#0_0_0 < $decr$loop#0_0_1_1_1_0_00;
                            }

                            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(218,9)
                            assume true;
                            assert {:id "id250"} u#0_0_0 < 2000;
                            pop;
                        }
                        else
                        {
                            push;
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(220,11)
                            assume true;
                            assume true;
                            u#0_0_0 := u#0_0_0 - 2;
                            pop;
                        }

                        pop;
                    }

                    pop;
                }

                pop;
            }

          after_0_0_0:
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(222,7)
            assume true;
            assert {:id "id252"} u#0_0_0 == LitInt(1998);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(223,13)
            assume true;
            assume true;
            k#0_0_0 := LitInt(0);
            $Heap_at_0_0_2 := $Heap;
            // ----- alternative loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(224,7)
            $PreLoopHeap$loop#0_0_0 := $Heap;
            $decr_init$loop#0_0_00 := O#0 - k#0_0_0;
            havoc $w$loop#0_0_0;
            while (true)
              free invariant (forall $o: ref :: 
                { $Heap[$o] } 
                $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
                   ==> $Heap[$o] == $PreLoopHeap$loop#0_0_0[$o]);
              free invariant $HeapSucc($PreLoopHeap$loop#0_0_0, $Heap);
              free invariant (forall $o: ref, $f: Field :: 
                { read($Heap, $o, $f) } 
                $o != null && $Unbox(read($PreLoopHeap$loop#0_0_0, $o, alloc)): bool
                   ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0_0, $o, $f)
                     || $_ModifiesFrame[$o, $f]);
              free invariant O#0 - k#0_0_0 <= $decr_init$loop#0_0_00;
            {
                if (!$w$loop#0_0_0)
                {
                    assume true;
                    assume false;
                }

                assume true;
                if (!Lit(true))
                {
                    break;
                }

                $decr$loop#0_0_00 := O#0 - k#0_0_0;
                if (*)
                {
                    if (k#0_0_0 < O#0)
                    {
                        assert {:id "id259"} LitInt(2) != 0;
                    }

                    assume true;
                    assume {:id "id260"} k#0_0_0 < O#0 && Mod(k#0_0_0, LitInt(2)) == LitInt(0);
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(228,13)
                    assume true;
                    assume true;
                    d#0 := LitInt(187);
                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(228,21)
                    pop;
                    goto after_0_0_2;

                    pop;
                }
                else if (*)
                {
                    assume true;
                    assume {:id "id254"} k#0_0_0 < O#0;
                    push;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(230,11)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(230,22)
                        assume true;
                        assume true;
                        e#0 := LitInt(4);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(230,28)
                        pop;
                        pop;
                        pop;
                        goto after_0_0;

                        pop;
                    }
                    else
                    {
                    }

                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(231,11)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(231,22)
                        assume true;
                        assume true;
                        e#0 := LitInt(7);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(231,28)
                        pop;
                        pop;
                        goto after_0_0_2;

                        pop;
                    }
                    else
                    {
                    }

                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(232,11)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(232,22)
                        assume true;
                        assume true;
                        e#0 := LitInt(37);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(232,29)
                        pop;
                        pop;
                        pop;
                        pop;
                        goto after_0;

                        pop;
                    }
                    else
                    {
                    }

                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(233,13)
                    assume true;
                    assume true;
                    k#0_0_0 := k#0_0_0 + 1;
                    pop;
                }
                else
                {
                    assume true;
                    assume true;
                    assume !(k#0_0_0 < O#0 && Mod(k#0_0_0, LitInt(2)) == LitInt(0)) && O#0 <= k#0_0_0;
                    break;
                }

              continue_0_0_2:
                // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(224,7)
                assert {:id "id262"} 0 <= $decr$loop#0_0_00 || O#0 - k#0_0_0 == $decr$loop#0_0_00;
                assert {:id "id263"} O#0 - k#0_0_0 < $decr$loop#0_0_00;
            }

          after_0_0_2:
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(235,7)
            if (k#0_0_0 < O#0)
            {
            }

            assume true;
            assert {:id "id264"} O#0 <= k#0_0_0 || e#0 == LitInt(7);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(236,9)
            assume true;
            assume true;
            j#0_0 := j#0_0 + 1;
            pop;

          continue_0_0:
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(201,5)
            assert {:id "id266"} 0 <= $decr$loop#0_00 || N#0 - j#0_0 == $decr$loop#0_00;
            assert {:id "id267"} N#0 - j#0_0 < $decr$loop#0_00;
        }

      after_0_0:
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(238,5)
        if (j#0_0 < N#0)
        {
        }

        if (!(N#0 <= j#0_0 || c#0 == LitInt(21)))
        {
        }

        assume true;
        assert {:id "id268"} N#0 <= j#0_0 || c#0 == LitInt(21) || e#0 == LitInt(4);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(239,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(197,3)
        assert {:id "id270"} 0 <= $decr$loop#00 || M#0 - i#0 == $decr$loop#00;
        assert {:id "id271"} M#0 - i#0 < $decr$loop#00;
    }

  after_0:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(241,3)
    if (i#0 < M#0)
    {
    }

    assume true;
    assert {:id "id272"} M#0 <= i#0 || b#0 == LitInt(12);
}



procedure {:verboseName "BreakStatements (well-formedness)"} CheckWellFormed$$_module.__default.BreakStatements(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0), 
    n#0: int where LitInt(0) <= n#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BreakStatements (call)"} Call$$_module.__default.BreakStatements(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0), 
    n#0: int where LitInt(0) <= n#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BreakStatements (correctness)"} Impl$$_module.__default.BreakStatements(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0), 
    n#0: int where LitInt(0) <= n#0)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BreakStatements (correctness)"} Impl$$_module.__default.BreakStatements(d#0: DatatypeType, n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var j#0_3_0: int;
  var $Heap_at_0_3_0: Heap;
  var $PreLoopHeap$loop#0_3_0: Heap;
  var $decr_init$loop#0_3_00: int;
  var $w$loop#0_3_0: bool;
  var $decr$loop#0_3_00: int;

    // AddMethodImpl: BreakStatements, Impl$$_module.__default.BreakStatements
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(246,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(247,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
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
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (n#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := n#0 - i#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(248,5)
        assert {:id "id274"} LitInt(7) != 0;
        assume true;
        if (Mod(i#0, LitInt(7)) == LitInt(3))
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(248,21)
            pop;
            goto after_0;

            pop;
        }
        else
        {
        }

        assume true;
        if (d#0 == #_module.D.Green())
        {
        }
        else if (d#0 == #_module.D.Blue())
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(252,15)
            assume true;
            assume true;
            j#0_3_0 := LitInt(63);
            $Heap_at_0_3_0 := $Heap;
            // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(253,9)
            // Assume Fuel Constant
            $PreLoopHeap$loop#0_3_0 := $Heap;
            $decr_init$loop#0_3_00 := 3000 - j#0_3_0;
            havoc $w$loop#0_3_0;
            while (true)
              free invariant (forall $o: ref :: 
                { $Heap[$o] } 
                $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
                   ==> $Heap[$o] == $PreLoopHeap$loop#0_3_0[$o]);
              free invariant $HeapSucc($PreLoopHeap$loop#0_3_0, $Heap);
              free invariant (forall $o: ref, $f: Field :: 
                { read($Heap, $o, $f) } 
                $o != null && $Unbox(read($PreLoopHeap$loop#0_3_0, $o, alloc)): bool
                   ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_3_0, $o, $f)
                     || $_ModifiesFrame[$o, $f]);
              free invariant 3000 - j#0_3_0 <= $decr_init$loop#0_3_00;
            {
                if (!$w$loop#0_3_0)
                {
                    assume true;
                    assume false;
                }

                assume true;
                if (3000 <= j#0_3_0)
                {
                    break;
                }

                $decr$loop#0_3_00 := 3000 - j#0_3_0;
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(255,11)
                assert {:id "id276"} n#0 != 0;
                assume true;
                if (Mod(j#0_3_0, n#0) == LitInt(0))
                {
                    push;
                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(255,27)
                    pop;
                    pop;
                    goto after_0_3_0;

                    pop;
                }
                else
                {
                }

                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(256,11)
                assert {:id "id277"} n#0 + 1 != 0;
                assume true;
                if (Mod(j#0_3_0, n#0 + 1) == LitInt(0))
                {
                    push;
                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(256,31)
                    pop;
                    pop;
                    goto after_0;

                    pop;
                }
                else
                {
                }

                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(257,13)
                assume true;
                assume true;
                j#0_3_0 := j#0_3_0 + 1;
                pop;

              continue_0_3_0:
                // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(253,9)
                assert {:id "id279"} 0 <= $decr$loop#0_3_00 || 3000 - j#0_3_0 == $decr$loop#0_3_00;
                assert {:id "id280"} 3000 - j#0_3_0 < $decr$loop#0_3_00;
            }

          after_0_3_0:
        }
        else if (d#0 == #_module.D.Red())
        {
        }
        else if (d#0 == #_module.D.Purple())
        {
        }
        else
        {
            assume false;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(262,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(247,3)
        assert {:id "id282"} 0 <= $decr$loop#00 || n#0 - i#0 == $decr$loop#00;
        assert {:id "id283"} n#0 - i#0 < $decr$loop#00;
    }

  after_0:
}



procedure {:verboseName "PF1 (well-formedness)"} CheckWellFormed$$_module.__default.PF1(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "PF1 (call)"} Call$$_module.__default.PF1(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0));
  // user-defined preconditions
  requires {:id "id285"} _module.D#Equal(d#0, #_module.D.Green());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "PF1 (correctness)"} Impl$$_module.__default.PF1(d#0: DatatypeType
       where $Is(d#0, Tclass._module.D())
         && $IsAlloc(d#0, Tclass._module.D(), $Heap)
         && $IsA#_module.D(d#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id286"} _module.D#Equal(d#0, #_module.D.Green());
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "PF1 (correctness)"} Impl$$_module.__default.PF1(d#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var $PreLoopHeap$loop#1: Heap;
  var $decr_init$loop#10: int;
  var $w$loop#1: bool;
  var $decr$loop#10: int;
  var $PreLoopHeap$loop#2: Heap;
  var $decr_init$loop#20: int;
  var $w$loop#2: bool;
  var newtype$check#0: int;
  var $decr$loop#20: int;

    // AddMethodImpl: PF1, Impl$$_module.__default.PF1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(271,3)
    assume $IsA#_module.D(d#0);
    if (!_module.D#Equal(d#0, #_module.D.Green()))
    {
        push;
        assume true;
        if (d#0 == #_module.D.Purple())
        {
            assert {:id "id290"} false;
        }
        else if (d#0 == #_module.D.Red())
        {
            assert {:id "id289"} false;
        }
        else if (d#0 == #_module.D.Blue())
        {
            assert {:id "id288"} false;
        }
        else if (d#0 == #_module.D.Green())
        {
            assert {:id "id287"} false;
        }
        else
        {
            assume false;
        }

        pop;
    }
    else
    {
    }

    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(275,3)
    if (*)
    {
        assume true;
        assume {:id "id294"} Lit(false);
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(275,22)
        assume true;
        assert {:id "id295"} Lit(false);
        pop;
    }
    else if (*)
    {
        assume true;
        assume {:id "id292"} true;
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(275,49)
        assume true;
        assert {:id "id293"} Lit(true);
        pop;
    }
    else
    {
        assume true;
        assume true;
        assume !Lit(false) && !Lit(true);
        assert {:id "id291"} false;
    }

    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(276,3)
    assume true;
    if (Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
        $Box(LitInt(3))), 
      Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2)))))
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(277,5)
        assume true;
        assert {:id "id296"} Lit(false);
        pop;
    }
    else
    {
    }

    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(279,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#0[$o]);
      free invariant $HeapSuccGhost($PreLoopHeap$loop#0, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#0, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume false;
        }

        assume $IsA#_module.D(d#0);
        if (_module.D#Equal(d#0, #_module.D.Green()))
        {
            break;
        }

        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(280,5)
        assume true;
        assert {:id "id297"} Lit(false);
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(279,3)
        assert {:id "id298"} false;
    }

    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(282,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#1 := $Heap;
    $decr_init$loop#10 := LitInt(1);
    havoc $w$loop#1;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#1[$o]);
      free invariant $HeapSuccGhost($PreLoopHeap$loop#1, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#1, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#1, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant LitInt(1) <= $decr_init$loop#10;
    {
        if (!$w$loop#1)
        {
            assume true;
            assume false;
        }

        assume $IsA#_module.D(d#0);
        if (_module.D#Equal(d#0, #_module.D.Green()))
        {
            break;
        }

        $decr$loop#10 := LitInt(1);
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(285,5)
        assume true;
        assert {:id "id299"} Lit(false);
        pop;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(282,3)
        assert {:id "id300"} 0 <= $decr$loop#10 || LitInt(1) == $decr$loop#10;
        assert {:id "id301"} LitInt(1) < $decr$loop#10;
    }

    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(287,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#2 := $Heap;
    $decr_init$loop#20 := Set#Card(Set#Difference(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
        Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
          $Box(LitInt(3)))));
    havoc $w$loop#2;
    while (true)
      free invariant (forall $o: ref :: 
        { $Heap[$o] } 
        $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
           ==> $Heap[$o] == $PreLoopHeap$loop#2[$o]);
      free invariant $HeapSuccGhost($PreLoopHeap$loop#2, $Heap);
      free invariant (forall $o: ref, $f: Field :: 
        { read($Heap, $o, $f) } 
        $o != null && $Unbox(read($PreLoopHeap$loop#2, $o, alloc)): bool
           ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#2, $o, $f)
             || $_ModifiesFrame[$o, $f]);
      free invariant Set#Card(Set#Difference(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
            Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
              $Box(LitInt(3)))))
         <= $decr_init$loop#20;
    {
        if (!$w$loop#2)
        {
            newtype$check#0 := Set#Card(Set#Difference(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
                Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
                  $Box(LitInt(3)))));
            assert {:id "id302"} LitInt(0) <= newtype$check#0;
            assume true;
            assume false;
        }

        assume true;
        if (!Set#Subset(Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
            $Box(LitInt(3))), 
          Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2)))))
        {
            break;
        }

        $decr$loop#20 := Set#Card(Set#Difference(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
            Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
              $Box(LitInt(3)))));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(288,5)
        assume true;
        assert {:id "id303"} Lit(false);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(287,3)
        assert {:id "id304"} 0 <= $decr$loop#20
           || Set#Card(Set#Difference(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
                Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
                  $Box(LitInt(3)))))
             == $decr$loop#20;
        assert {:id "id305"} Set#Card(Set#Difference(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
              Set#UnionOne(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(1))), $Box(LitInt(2))), 
                $Box(LitInt(3)))))
           < $decr$loop#20;
    }
}



procedure {:verboseName "TheBreaker_AllGood_DigitsLabels (well-formedness)"} CheckWellFormed$$_module.__default.TheBreaker__AllGood__DigitsLabels(M#0: int, N#0: int, O#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TheBreaker_AllGood_DigitsLabels (call)"} Call$$_module.__default.TheBreaker__AllGood__DigitsLabels(M#0: int, N#0: int, O#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TheBreaker_AllGood_DigitsLabels (correctness)"} Impl$$_module.__default.TheBreaker__AllGood__DigitsLabels(M#0: int, N#0: int, O#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TheBreaker_AllGood_DigitsLabels (correctness)"} Impl$$_module.__default.TheBreaker__AllGood__DigitsLabels(M#0: int, N#0: int, O#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var c#0: int;
  var d#0: int;
  var e#0: int;
  var i#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var j#0_0: int;
  var $Heap_at_0_0: Heap;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: int;
  var u#0_0_0: int;
  var $Heap_at_0_0_0: Heap;
  var $Heap_at_0_0_1: Heap;
  var $PreLoopHeap$loop#0_0_1_1_1_0_0: Heap;
  var $decr_init$loop#0_0_1_1_1_0_00: int;
  var $w$loop#0_0_1_1_1_0_0: bool;
  var $decr$loop#0_0_1_1_1_0_00: int;
  var k#0_0_0: int;
  var $Heap_at_0_0_2: Heap;
  var $PreLoopHeap$loop#0_0_0: Heap;
  var $decr_init$loop#0_0_00: int;
  var $w$loop#0_0_0: bool;
  var $decr$loop#0_0_00: int;

    // AddMethodImpl: TheBreaker_AllGood_DigitsLabels, Impl$$_module.__default.TheBreaker__AllGood__DigitsLabels
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0, b#0, c#0, d#0, e#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(297,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(298,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := M#0 - i#0;
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
      free invariant M#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (M#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := M#0 - i#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(300,11)
        assume true;
        assume true;
        j#0_0 := LitInt(0);
        $Heap_at_0_0 := $Heap;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(302,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := N#0 - j#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant N#0 - j#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                assume true;
                assume false;
            }

            assume true;
            if (N#0 <= j#0_0)
            {
                break;
            }

            $decr$loop#0_00 := N#0 - j#0_0;
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(304,13)
            assume true;
            assume true;
            u#0_0_0 := LitInt(2000);
            $Heap_at_0_0_0 := $Heap;
            $Heap_at_0_0_1 := $Heap;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(306,7)
            if (*)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(308,11)
                assume true;
                assume true;
                a#0 := LitInt(15);
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(308,18)
                pop;
                pop;
                goto after_0_0;

                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(309,14)
                if (*)
                {
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(310,11)
                    assume true;
                    assume true;
                    b#0 := LitInt(12);
                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(310,18)
                    pop;
                    pop;
                    pop;
                    pop;
                    goto after_0;

                    pop;
                }
                else
                {
                    push;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(311,14)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(312,11)
                        assume true;
                        assume true;
                        c#0 := LitInt(21);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(312,18)
                        pop;
                        pop;
                        pop;
                        pop;
                        goto after_0_0;

                        pop;
                    }
                    else
                    {
                        push;
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(313,14)
                        if (*)
                        {
                            push;
                            // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(314,9)
                            // Assume Fuel Constant
                            $PreLoopHeap$loop#0_0_1_1_1_0_0 := $Heap;
                            $decr_init$loop#0_0_1_1_1_0_00 := 10000 - u#0_0_0;
                            havoc $w$loop#0_0_1_1_1_0_0;
                            while (true)
                              free invariant (forall $o: ref :: 
                                { $Heap[$o] } 
                                $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
                                   ==> $Heap[$o] == $PreLoopHeap$loop#0_0_1_1_1_0_0[$o]);
                              free invariant $HeapSucc($PreLoopHeap$loop#0_0_1_1_1_0_0, $Heap);
                              free invariant (forall $o: ref, $f: Field :: 
                                { read($Heap, $o, $f) } 
                                $o != null && $Unbox(read($PreLoopHeap$loop#0_0_1_1_1_0_0, $o, alloc)): bool
                                   ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0_1_1_1_0_0, $o, $f)
                                     || $_ModifiesFrame[$o, $f]);
                              free invariant 10000 - u#0_0_0 <= $decr_init$loop#0_0_1_1_1_0_00;
                            {
                                if (!$w$loop#0_0_1_1_1_0_0)
                                {
                                    assume true;
                                    assume false;
                                }

                                assume true;
                                if (10000 <= u#0_0_0)
                                {
                                    break;
                                }

                                $decr$loop#0_0_1_1_1_0_00 := 10000 - u#0_0_0;
                                push;
                                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(315,13)
                                assume true;
                                assume true;
                                u#0_0_0 := u#0_0_0 + 3;
                                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(316,11)
                                if (*)
                                {
                                    push;
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(316,22)
                                    assume true;
                                    assume true;
                                    u#0_0_0 := LitInt(1998);
                                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(316,31)
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    goto after_0_0_0;

                                    pop;
                                }
                                else
                                {
                                }

                                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(317,11)
                                if (*)
                                {
                                    push;
                                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(317,22)
                                    assume true;
                                    assume true;
                                    u#0_0_0 := LitInt(1998);
                                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(317,31)
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    pop;
                                    goto after_0_0_0;

                                    pop;
                                }
                                else
                                {
                                }

                                pop;
                                // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(314,9)
                                assert {:id "id315"} 0 <= $decr$loop#0_0_1_1_1_0_00 || 10000 - u#0_0_0 == $decr$loop#0_0_1_1_1_0_00;
                                assert {:id "id316"} 10000 - u#0_0_0 < $decr$loop#0_0_1_1_1_0_00;
                            }

                            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(319,9)
                            assume true;
                            assert {:id "id317"} LitInt(10000) <= u#0_0_0;
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(320,11)
                            assume true;
                            assume true;
                            u#0_0_0 := LitInt(1998);
                            pop;
                        }
                        else
                        {
                            push;
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(322,11)
                            assume true;
                            assume true;
                            u#0_0_0 := u#0_0_0 - 2;
                            pop;
                        }

                        pop;
                    }

                    pop;
                }

                pop;
            }

          after_0_0_0:
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(324,7)
            assume true;
            assert {:id "id320"} u#0_0_0 == LitInt(1998);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(325,13)
            assume true;
            assume true;
            k#0_0_0 := LitInt(0);
            $Heap_at_0_0_2 := $Heap;
            // ----- alternative loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(326,7)
            $PreLoopHeap$loop#0_0_0 := $Heap;
            $decr_init$loop#0_0_00 := O#0 - k#0_0_0;
            havoc $w$loop#0_0_0;
            while (true)
              free invariant (forall $o: ref :: 
                { $Heap[$o] } 
                $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
                   ==> $Heap[$o] == $PreLoopHeap$loop#0_0_0[$o]);
              free invariant $HeapSucc($PreLoopHeap$loop#0_0_0, $Heap);
              free invariant (forall $o: ref, $f: Field :: 
                { read($Heap, $o, $f) } 
                $o != null && $Unbox(read($PreLoopHeap$loop#0_0_0, $o, alloc)): bool
                   ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0_0, $o, $f)
                     || $_ModifiesFrame[$o, $f]);
              free invariant O#0 - k#0_0_0 <= $decr_init$loop#0_0_00;
            {
                if (!$w$loop#0_0_0)
                {
                    assume true;
                    assume false;
                }

                assume true;
                if (!Lit(true))
                {
                    break;
                }

                $decr$loop#0_0_00 := O#0 - k#0_0_0;
                if (*)
                {
                    if (k#0_0_0 < O#0)
                    {
                        assert {:id "id327"} LitInt(2) != 0;
                    }

                    assume true;
                    assume {:id "id328"} k#0_0_0 < O#0 && Mod(k#0_0_0, LitInt(2)) == LitInt(0);
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(330,13)
                    assume true;
                    assume true;
                    d#0 := LitInt(187);
                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(330,21)
                    pop;
                    goto after_0_0_2;

                    pop;
                }
                else if (*)
                {
                    assume true;
                    assume {:id "id322"} k#0_0_0 < O#0;
                    push;
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(332,11)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(332,22)
                        assume true;
                        assume true;
                        e#0 := LitInt(4);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(332,28)
                        pop;
                        pop;
                        pop;
                        goto after_0_0;

                        pop;
                    }
                    else
                    {
                    }

                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(333,11)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(333,22)
                        assume true;
                        assume true;
                        e#0 := LitInt(7);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(333,28)
                        pop;
                        pop;
                        goto after_0_0_2;

                        pop;
                    }
                    else
                    {
                    }

                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(334,11)
                    if (*)
                    {
                        push;
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(334,22)
                        assume true;
                        assume true;
                        e#0 := LitInt(37);
                        // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(334,29)
                        pop;
                        pop;
                        pop;
                        pop;
                        goto after_0;

                        pop;
                    }
                    else
                    {
                    }

                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(335,13)
                    assume true;
                    assume true;
                    k#0_0_0 := k#0_0_0 + 1;
                    pop;
                }
                else
                {
                    assume true;
                    assume true;
                    assume !(k#0_0_0 < O#0 && Mod(k#0_0_0, LitInt(2)) == LitInt(0)) && O#0 <= k#0_0_0;
                    break;
                }

              continue_0_0_2:
                // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(326,7)
                assert {:id "id330"} 0 <= $decr$loop#0_0_00 || O#0 - k#0_0_0 == $decr$loop#0_0_00;
                assert {:id "id331"} O#0 - k#0_0_0 < $decr$loop#0_0_00;
            }

          after_0_0_2:
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(337,7)
            if (k#0_0_0 < O#0)
            {
            }

            if (!(O#0 <= k#0_0_0 || d#0 == LitInt(187)))
            {
            }

            assume true;
            assert {:id "id332"} O#0 <= k#0_0_0 || d#0 == LitInt(187) || e#0 == LitInt(7);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(338,9)
            assume true;
            assume true;
            j#0_0 := j#0_0 + 1;
            pop;

          continue_0_0:
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(302,5)
            assert {:id "id334"} 0 <= $decr$loop#0_00 || N#0 - j#0_0 == $decr$loop#0_00;
            assert {:id "id335"} N#0 - j#0_0 < $decr$loop#0_00;
        }

      after_0_0:
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(340,5)
        if (j#0_0 < N#0)
        {
        }

        if (!(N#0 <= j#0_0 || a#0 == LitInt(15)))
        {
        }

        if (!(N#0 <= j#0_0 || a#0 == LitInt(15) || c#0 == LitInt(21)))
        {
        }

        assume true;
        assert {:id "id336"} N#0 <= j#0_0 || a#0 == LitInt(15) || c#0 == LitInt(21) || e#0 == LitInt(4);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(341,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(298,3)
        assert {:id "id338"} 0 <= $decr$loop#00 || M#0 - i#0 == $decr$loop#00;
        assert {:id "id339"} M#0 - i#0 < $decr$loop#00;
    }

  after_0:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(343,3)
    if (i#0 < M#0)
    {
    }

    if (!(M#0 <= i#0 || b#0 == LitInt(12)))
    {
    }

    assume true;
    assert {:id "id340"} M#0 <= i#0 || b#0 == LitInt(12) || e#0 == LitInt(37);
}



procedure {:verboseName "ContinueM0 (well-formedness)"} CheckWellFormed$$_module.__default.ContinueM0(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContinueM0 (call)"} Call$$_module.__default.ContinueM0(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContinueM0 (correctness)"} Impl$$_module.__default.ContinueM0(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContinueM0 (correctness)"} Impl$$_module.__default.ContinueM0(n#0: int, p#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: ContinueM0, Impl$$_module.__default.ContinueM0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(349,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(350,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
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
      free invariant n#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
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
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(351,5)
        assume true;
        if (i#0 == LitInt(7))
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(352,7)
            pop;
            pop;
            goto after_0;

            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(353,12)
            assume true;
            if (i#0 == p#0)
            {
                push;
                // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(354,7)
                pop;
                pop;
                pop;
                goto continue_0;

                pop;
            }
            else
            {
            }

            pop;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(356,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(350,3)
        assert {:id "id343"} 0 <= $decr$loop#00 || n#0 - i#0 == $decr$loop#00;
        assert {:id "id344"} n#0 - i#0 < $decr$loop#00;
    }

  after_0:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(358,3)
    if (i#0 != LitInt(7))
    {
    }

    assume true;
    assert {:id "id345"} i#0 == LitInt(7) || n#0 <= i#0;
}



procedure {:verboseName "ContinueM1 (well-formedness)"} CheckWellFormed$$_module.__default.ContinueM1(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContinueM1 (call)"} Call$$_module.__default.ContinueM1(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContinueM1 (correctness)"} Impl$$_module.__default.ContinueM1(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContinueM1 (correctness)"} Impl$$_module.__default.ContinueM1(n#0: int, p#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: ContinueM1, Impl$$_module.__default.ContinueM1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(362,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(363,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id348"} $w$loop#0 ==> (i#0 <= LitInt(7) && i#0 <= p#0) || i#0 == LitInt(7) || p#0 < 7;
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
            if (i#0 <= LitInt(7))
            {
            }

            if (!(i#0 <= LitInt(7) && i#0 <= p#0))
            {
            }

            if (!((i#0 <= LitInt(7) && i#0 <= p#0) || i#0 == LitInt(7)))
            {
            }

            assume true;
            assume {:id "id347"} (i#0 <= LitInt(7) && i#0 <= p#0) || i#0 == LitInt(7) || p#0 < 7;
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
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(366,5)
        assume true;
        if (i#0 == LitInt(7))
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(367,7)
            pop;
            pop;
            goto after_0;

            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(368,12)
            assume true;
            if (i#0 == p#0)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(369,9)
                assume true;
                assume true;
                i#0 := LitInt(8);
                // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(370,7)
                pop;
                pop;
                pop;
                goto continue_0;

                pop;
            }
            else
            {
            }

            pop;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(372,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        pop;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(363,3)
        assert {:id "id351"} 0 <= $decr$loop#00 || n#0 - i#0 == $decr$loop#00;
        assert {:id "id352"} n#0 - i#0 < $decr$loop#00;
        assume true;
    }

  after_0:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(374,3)
    if (i#0 != LitInt(7))
    {
    }

    assume true;
    assert {:id "id353"} i#0 == LitInt(7) || n#0 <= i#0;
}



procedure {:verboseName "ContinueK0 (well-formedness)"} CheckWellFormed$$_module.__default.ContinueK0(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContinueK0 (call)"} Call$$_module.__default.ContinueK0(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id355"} k#0 == LitInt(25);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContinueK0 (correctness)"} Impl$$_module.__default.ContinueK0(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id356"} k#0 == LitInt(25);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContinueK0 (correctness)"} Impl$$_module.__default.ContinueK0(n#0: int, p#0: int) returns (k#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var i#0_0: int;
  var $Heap_at_0_0: Heap;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: int;

    // AddMethodImpl: ContinueK0, Impl$$_module.__default.ContinueK0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(380,5)
    assume true;
    assert {:id "id357"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    k#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(381,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 25 - k#0;
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
      free invariant 25 - k#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (25 <= k#0)
        {
            break;
        }

        $decr$loop#00 := 25 - k#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(382,11)
        assume true;
        assume true;
        i#0_0 := LitInt(0);
        $Heap_at_0_0 := $Heap;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(383,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := n#0 - i#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant true;
          invariant {:id "id361"} $w$loop#0_0
             ==> (i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7) || p#0 < 7;
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant n#0 - i#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                if (i#0_0 <= LitInt(7))
                {
                }

                if (!(i#0_0 <= LitInt(7) && i#0_0 <= p#0))
                {
                }

                if (!((i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7)))
                {
                }

                assume true;
                assume {:id "id360"} (i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7) || p#0 < 7;
                assume true;
                assume false;
            }

            assume true;
            if (n#0 <= i#0_0)
            {
                break;
            }

            $decr$loop#0_00 := n#0 - i#0_0;
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(386,7)
            assume true;
            if (i#0_0 == LitInt(7))
            {
                push;
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(387,9)
                pop;
                pop;
                goto after_0_0;

                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(388,14)
                assume true;
                if (i#0_0 == p#0)
                {
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(389,11)
                    assume true;
                    assume true;
                    i#0_0 := LitInt(8);
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(390,9)
                    pop;
                    pop;
                    pop;
                    goto continue_0;

                    pop;
                }
                else
                {
                }

                pop;
            }

            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(392,9)
            assume true;
            assume true;
            i#0_0 := i#0_0 + 1;
            pop;

          continue_0_0:
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(383,5)
            assert {:id "id364"} 0 <= $decr$loop#0_00 || n#0 - i#0_0 == $decr$loop#0_00;
            assert {:id "id365"} n#0 - i#0_0 < $decr$loop#0_00;
            assume true;
        }

      after_0_0:
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(394,7)
        assume true;
        assert {:id "id366"} $Is(k#0 + 1, Tclass._System.nat());
        assume true;
        k#0 := k#0 + 1;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(381,3)
        assert {:id "id368"} 0 <= $decr$loop#00 || 25 - k#0 == $decr$loop#00;
        assert {:id "id369"} 25 - k#0 < $decr$loop#00;
    }

  after_0:
}



procedure {:verboseName "ContinueK1 (well-formedness)"} CheckWellFormed$$_module.__default.ContinueK1(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContinueK1 (call)"} Call$$_module.__default.ContinueK1(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id371"} k#0 == LitInt(25);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContinueK1 (correctness)"} Impl$$_module.__default.ContinueK1(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id372"} k#0 == LitInt(25);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContinueK1 (correctness)"} Impl$$_module.__default.ContinueK1(n#0: int, p#0: int) returns (k#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var i#0_0: int;
  var $Heap_at_0_0: Heap;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: int;

    // AddMethodImpl: ContinueK1, Impl$$_module.__default.ContinueK1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(401,5)
    assume true;
    assert {:id "id373"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    k#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(402,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 25 - k#0;
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
      free invariant 25 - k#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (25 <= k#0)
        {
            break;
        }

        $decr$loop#00 := 25 - k#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(403,7)
        assume true;
        assert {:id "id375"} $Is(k#0 + 1, Tclass._System.nat());
        assume true;
        k#0 := k#0 + 1;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(404,11)
        assume true;
        assume true;
        i#0_0 := LitInt(0);
        $Heap_at_0_0 := $Heap;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(405,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := n#0 - i#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant true;
          invariant {:id "id379"} $w$loop#0_0
             ==> (i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7) || p#0 < 7;
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant n#0 - i#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                if (i#0_0 <= LitInt(7))
                {
                }

                if (!(i#0_0 <= LitInt(7) && i#0_0 <= p#0))
                {
                }

                if (!((i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7)))
                {
                }

                assume true;
                assume {:id "id378"} (i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7) || p#0 < 7;
                assume true;
                assume false;
            }

            assume true;
            if (n#0 <= i#0_0)
            {
                break;
            }

            $decr$loop#0_00 := n#0 - i#0_0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(408,7)
            assume true;
            if (i#0_0 == LitInt(7))
            {
                push;
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(409,9)
                pop;
                goto after_0_0;

                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(410,14)
                assume true;
                if (i#0_0 == p#0)
                {
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(411,11)
                    assume true;
                    assume true;
                    i#0_0 := LitInt(8);
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(412,9)
                    pop;
                    pop;
                    goto continue_0;

                    pop;
                }
                else
                {
                }

                pop;
            }

            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(414,9)
            assume true;
            assume true;
            i#0_0 := i#0_0 + 1;

          continue_0_0:
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(405,5)
            assert {:id "id382"} 0 <= $decr$loop#0_00 || n#0 - i#0_0 == $decr$loop#0_00;
            assert {:id "id383"} n#0 - i#0_0 < $decr$loop#0_00;
            assume true;
        }

      after_0_0:

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(402,3)
        assert {:id "id384"} 0 <= $decr$loop#00 || 25 - k#0 == $decr$loop#00;
        assert {:id "id385"} 25 - k#0 < $decr$loop#00;
    }

  after_0:
}



procedure {:verboseName "ContinueK2 (well-formedness)"} CheckWellFormed$$_module.__default.ContinueK2(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContinueK2 (call)"} Call$$_module.__default.ContinueK2(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id387"} k#0 == LitInt(25);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContinueK2 (correctness)"} Impl$$_module.__default.ContinueK2(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id388"} k#0 == LitInt(25);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContinueK2 (correctness)"} Impl$$_module.__default.ContinueK2(n#0: int, p#0: int) returns (k#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var kk#0: int;
  var kk#0#lo: int;
  var kk#0#hi: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var i#0_0: int;
  var $Heap_at_0_0: Heap;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: int;

    // AddMethodImpl: ContinueK2, Impl$$_module.__default.ContinueK2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(422,5)
    assume true;
    assert {:id "id389"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    k#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- for-loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(423,3)
    kk#0#lo := LitInt(0);
    kk#0#hi := LitInt(25);
    assert {:id "id391"} kk#0#lo <= kk#0#hi;
    kk#0 := kk#0#lo;
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant kk#0#lo <= kk#0 && kk#0 <= kk#0#hi;
      free invariant true;
      invariant {:id "id393"} $w$loop#0 ==> k#0 == kk#0;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id392"} k#0 == kk#0;
            assume false;
        }

        assume true;
        if (kk#0 == kk#0#hi)
        {
            break;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(426,7)
        assume true;
        assert {:id "id394"} $Is(k#0 + 1, Tclass._System.nat());
        assume true;
        k#0 := k#0 + 1;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(427,11)
        assume true;
        assume true;
        i#0_0 := LitInt(0);
        $Heap_at_0_0 := $Heap;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(428,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := n#0 - i#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant true;
          invariant {:id "id398"} $w$loop#0_0
             ==> (i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7) || p#0 < 7;
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant n#0 - i#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                if (i#0_0 <= LitInt(7))
                {
                }

                if (!(i#0_0 <= LitInt(7) && i#0_0 <= p#0))
                {
                }

                if (!((i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7)))
                {
                }

                assume true;
                assume {:id "id397"} (i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7) || p#0 < 7;
                assume true;
                assume false;
            }

            assume true;
            if (n#0 <= i#0_0)
            {
                break;
            }

            $decr$loop#0_00 := n#0 - i#0_0;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(431,7)
            assume true;
            if (i#0_0 == LitInt(7))
            {
                push;
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(432,9)
                pop;
                goto after_0_0;

                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(433,14)
                assume true;
                if (i#0_0 == p#0)
                {
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(434,11)
                    assume true;
                    assume true;
                    i#0_0 := LitInt(8);
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(435,9)
                    pop;
                    pop;
                    goto continue_0;

                    pop;
                }
                else
                {
                }

                pop;
            }

            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(437,9)
            assume true;
            assume true;
            i#0_0 := i#0_0 + 1;

          continue_0_0:
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(428,5)
            assert {:id "id401"} 0 <= $decr$loop#0_00 || n#0 - i#0_0 == $decr$loop#0_00;
            assert {:id "id402"} n#0 - i#0_0 < $decr$loop#0_00;
            assume true;
        }

      after_0_0:

      continue_0:
        kk#0 := kk#0 + 1;
        assume true;
    }

  after_0:
}



procedure {:verboseName "ContinueK3 (well-formedness)"} CheckWellFormed$$_module.__default.ContinueK3(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContinueK3 (call)"} Call$$_module.__default.ContinueK3(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id404"} k#0 == LitInt(25);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContinueK3 (correctness)"} Impl$$_module.__default.ContinueK3(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id405"} k#0 == LitInt(25);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContinueK3 (correctness)"} Impl$$_module.__default.ContinueK3(n#0: int, p#0: int) returns (k#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var kk#0: int;
  var kk#0#lo: int;
  var kk#0#hi: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var i#0_0: int;
  var $Heap_at_0_0: Heap;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: int;

    // AddMethodImpl: ContinueK3, Impl$$_module.__default.ContinueK3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(445,5)
    assume true;
    assert {:id "id406"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    k#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- for-loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(447,3)
    kk#0#lo := LitInt(0);
    kk#0#hi := LitInt(25);
    assert {:id "id408"} kk#0#lo <= kk#0#hi;
    kk#0 := kk#0#lo;
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant kk#0#lo <= kk#0 && kk#0 <= kk#0#hi;
      free invariant true;
      invariant {:id "id410"} $w$loop#0 ==> k#0 == kk#0;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id409"} k#0 == kk#0;
            assume false;
        }

        assume true;
        if (kk#0 == kk#0#hi)
        {
            break;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(450,11)
        assume true;
        assume true;
        i#0_0 := LitInt(0);
        $Heap_at_0_0 := $Heap;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(452,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := n#0 - i#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant true;
          invariant {:id "id413"} $w$loop#0_0
             ==> (i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7) || p#0 < 7;
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant n#0 - i#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                if (i#0_0 <= LitInt(7))
                {
                }

                if (!(i#0_0 <= LitInt(7) && i#0_0 <= p#0))
                {
                }

                if (!((i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7)))
                {
                }

                assume true;
                assume {:id "id412"} (i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7) || p#0 < 7;
                assume true;
                assume false;
            }

            assume true;
            if (n#0 <= i#0_0)
            {
                break;
            }

            $decr$loop#0_00 := n#0 - i#0_0;
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(455,7)
            assume true;
            if (i#0_0 == LitInt(7))
            {
                push;
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(456,9)
                pop;
                pop;
                goto after_0_0;

                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(457,14)
                assume true;
                if (i#0_0 == p#0)
                {
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(458,11)
                    assume true;
                    assume true;
                    i#0_0 := LitInt(8);
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(459,9)
                    pop;
                    pop;
                    pop;
                    goto continue_0;

                    pop;
                }
                else
                {
                }

                pop;
            }

            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(461,9)
            assume true;
            assume true;
            i#0_0 := i#0_0 + 1;
            pop;

          continue_0_0:
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(452,5)
            assert {:id "id416"} 0 <= $decr$loop#0_00 || n#0 - i#0_0 == $decr$loop#0_00;
            assert {:id "id417"} n#0 - i#0_0 < $decr$loop#0_00;
            assume true;
        }

      after_0_0:
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(463,7)
        assume true;
        assert {:id "id418"} $Is(k#0 + 1, Tclass._System.nat());
        assume true;
        k#0 := k#0 + 1;

      continue_0:
        kk#0 := kk#0 + 1;
        assume true;
    }

  after_0:
}



procedure {:verboseName "ContinueK4 (well-formedness)"} CheckWellFormed$$_module.__default.ContinueK4(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContinueK4 (call)"} Call$$_module.__default.ContinueK4(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id421"} k#0 == LitInt(25);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContinueK4 (correctness)"} Impl$$_module.__default.ContinueK4(n#0: int where LitInt(0) <= n#0, p#0: int where LitInt(0) <= p#0)
   returns (k#0: int where LitInt(0) <= k#0, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id422"} k#0 == LitInt(25);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContinueK4 (correctness)"} Impl$$_module.__default.ContinueK4(n#0: int, p#0: int) returns (k#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var kk#0: int;
  var kk#0#lo: int;
  var kk#0#hi: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var i#0_0: int;
  var $Heap_at_0_0: Heap;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: int;

    // AddMethodImpl: ContinueK4, Impl$$_module.__default.ContinueK4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(470,5)
    assume true;
    assert {:id "id423"} $Is(LitInt(0), Tclass._System.nat());
    assume true;
    k#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- for-loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(472,3)
    kk#0#lo := LitInt(0);
    kk#0#hi := LitInt(25);
    assert {:id "id425"} kk#0#lo <= kk#0#hi;
    kk#0 := kk#0#lo;
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant kk#0#lo <= kk#0 && kk#0 <= kk#0#hi;
      free invariant true;
      invariant {:id "id427"} $w$loop#0 ==> k#0 == kk#0;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id426"} k#0 == kk#0;
            assume false;
        }

        assume true;
        if (kk#0 == kk#0#hi)
        {
            break;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(475,11)
        assume true;
        assume true;
        i#0_0 := LitInt(0);
        $Heap_at_0_0 := $Heap;
        // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(477,5)
        // Assume Fuel Constant
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := n#0 - i#0_0;
        havoc $w$loop#0_0;
        while (true)
          free invariant true;
          invariant {:id "id430"} $w$loop#0_0
             ==> (i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7) || p#0 < 7;
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant n#0 - i#0_0 <= $decr_init$loop#0_00;
        {
            if (!$w$loop#0_0)
            {
                if (i#0_0 <= LitInt(7))
                {
                }

                if (!(i#0_0 <= LitInt(7) && i#0_0 <= p#0))
                {
                }

                if (!((i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7)))
                {
                }

                assume true;
                assume {:id "id429"} (i#0_0 <= LitInt(7) && i#0_0 <= p#0) || i#0_0 == LitInt(7) || p#0 < 7;
                assume true;
                assume false;
            }

            assume true;
            if (n#0 <= i#0_0)
            {
                break;
            }

            $decr$loop#0_00 := n#0 - i#0_0;
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(480,7)
            assume true;
            if (i#0_0 == LitInt(7))
            {
                push;
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(481,9)
                pop;
                pop;
                goto after_0_0;

                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(482,14)
                assume true;
                if (i#0_0 == p#0)
                {
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(483,11)
                    assume true;
                    assume true;
                    i#0_0 := LitInt(8);
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(484,11)
                    assume true;
                    assert {:id "id432"} $Is(k#0 + 1, Tclass._System.nat());
                    assume true;
                    k#0 := k#0 + 1;
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(485,9)
                    pop;
                    pop;
                    pop;
                    goto continue_0;

                    pop;
                }
                else
                {
                }

                pop;
            }

            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(487,9)
            assume true;
            assume true;
            i#0_0 := i#0_0 + 1;
            pop;

          continue_0_0:
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(477,5)
            assert {:id "id435"} 0 <= $decr$loop#0_00 || n#0 - i#0_0 == $decr$loop#0_00;
            assert {:id "id436"} n#0 - i#0_0 < $decr$loop#0_00;
            assume true;
        }

      after_0_0:
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(489,7)
        assume true;
        assert {:id "id437"} $Is(k#0 + 1, Tclass._System.nat());
        assume true;
        k#0 := k#0 + 1;

      continue_0:
        kk#0 := kk#0 + 1;
        assume true;
    }

  after_0:
}



procedure {:verboseName "ContinueL0 (well-formedness)"} CheckWellFormed$$_module.__default.ContinueL0(n#0: int where LitInt(0) <= n#0, 
    k#0: int where LitInt(0) <= k#0, 
    m#0: int where LitInt(0) <= m#0, 
    p#0: int where LitInt(0) <= p#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContinueL0 (call)"} Call$$_module.__default.ContinueL0(n#0: int where LitInt(0) <= n#0, 
    k#0: int where LitInt(0) <= k#0, 
    m#0: int where LitInt(0) <= m#0, 
    p#0: int where LitInt(0) <= p#0);
  // user-defined preconditions
  requires {:id "id440"} m#0 != p#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContinueL0 (correctness)"} Impl$$_module.__default.ContinueL0(n#0: int where LitInt(0) <= n#0, 
    k#0: int where LitInt(0) <= k#0, 
    m#0: int where LitInt(0) <= m#0, 
    p#0: int where LitInt(0) <= p#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id441"} m#0 != p#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContinueL0 (correctness)"} Impl$$_module.__default.ContinueL0(n#0: int, k#0: int, m#0: int, p#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var i#0: int;
  var i#0#lo: int;
  var i#0#hi: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var $Heap_at_0_0: Heap;
  var $Heap_at_0_1: Heap;
  var $Heap_at_0_2: Heap;
  var $Heap_at_0_3: Heap;
  var j#0_0: int;
  var j#0_0#lo: int;
  var j#0_0#hi: int;
  var $PreLoopHeap$loop#0_0: Heap;
  var $w$loop#0_0: bool;
  var $Heap_at_0_0_0: Heap;

    // AddMethodImpl: ContinueL0, Impl$$_module.__default.ContinueL0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- for-loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(496,3)
    i#0#lo := LitInt(0);
    i#0#hi := n#0;
    assert {:id "id442"} i#0#lo <= i#0#hi;
    i#0 := i#0#lo;
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant i#0#lo <= i#0 && i#0 <= i#0#hi;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume false;
        }

        assume true;
        if (i#0 == i#0#hi)
        {
            break;
        }

        $Heap_at_0_0 := $Heap;
        push;
        $Heap_at_0_1 := $Heap;
        $Heap_at_0_2 := $Heap;
        push;
        $Heap_at_0_3 := $Heap;
        // ----- for-loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(499,9)
        j#0_0#lo := LitInt(0);
        j#0_0#hi := k#0;
        assert {:id "id443"} j#0_0#lo <= j#0_0#hi;
        j#0_0 := j#0_0#lo;
        $PreLoopHeap$loop#0_0 := $Heap;
        havoc $w$loop#0_0;
        while (true)
          free invariant j#0_0#lo <= j#0_0 && j#0_0 <= j#0_0#hi;
          free invariant true;
          invariant {:id "id445"} $w$loop#0_0 ==> j#0_0 <= p#0;
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant true;
        {
            if (!$w$loop#0_0)
            {
                assume true;
                assume {:id "id444"} j#0_0 <= p#0;
                assume false;
            }

            assume true;
            if (j#0_0 == j#0_0#hi)
            {
                break;
            }

            push;
            $Heap_at_0_0_0 := $Heap;
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(503,13)
            assume true;
            if (j#0_0 == m#0)
            {
                push;
                // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(504,15)
                pop;
                pop;
                pop;
                goto continue_0_3;

                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(505,20)
                assume true;
                if (j#0_0 == p#0)
                {
                    push;
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(506,15)
                    pop;
                    pop;
                    pop;
                    pop;
                    pop;
                    pop;
                    goto continue_0;

                    pop;
                }
                else
                {
                }

                pop;
            }

            pop;

          after_0_0_0:
            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(509,11)
            if (j#0_0 != m#0)
            {
            }

            assume true;
            assert {:id "id446"} {:subsumption 0} j#0_0 != m#0;
            assert {:id "id447"} {:subsumption 0} j#0_0 != p#0;
            assume {:id "id448"} j#0_0 != m#0 && j#0_0 != p#0;
            pop;

          continue_0_3:
            j#0_0 := j#0_0 + 1;
            assume true;
        }

      after_0_3:
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(511,9)
        assume true;
        assert {:id "id449"} k#0 <= p#0;
        pop;

      after_0_1:
        pop;

      after_0_0:
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(514,5)
        assume true;
        assert {:id "id450"} k#0 <= p#0;

      continue_0:
        i#0 := i#0 + 1;
    }

  after_0:
}



procedure {:verboseName "ContinueL1 (well-formedness)"} CheckWellFormed$$_module.__default.ContinueL1(n#0: int where LitInt(0) <= n#0, 
    k#0: int where LitInt(0) <= k#0, 
    m#0: int where LitInt(0) <= m#0, 
    p#0: int where LitInt(0) <= p#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContinueL1 (call)"} Call$$_module.__default.ContinueL1(n#0: int where LitInt(0) <= n#0, 
    k#0: int where LitInt(0) <= k#0, 
    m#0: int where LitInt(0) <= m#0, 
    p#0: int where LitInt(0) <= p#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContinueL1 (correctness)"} Impl$$_module.__default.ContinueL1(n#0: int where LitInt(0) <= n#0, 
    k#0: int where LitInt(0) <= k#0, 
    m#0: int where LitInt(0) <= m#0, 
    p#0: int where LitInt(0) <= p#0)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContinueL1 (correctness)"} Impl$$_module.__default.ContinueL1(n#0: int, k#0: int, m#0: int, p#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var i#0: int;
  var i#0#lo: int;
  var i#0#hi: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var $Heap_at_0_0: Heap;
  var j#0_0: int;
  var j#0_0#lo: int;
  var j#0_0#hi: int;
  var $PreLoopHeap$loop#0_0: Heap;
  var $w$loop#0_0: bool;

    // AddMethodImpl: ContinueL1, Impl$$_module.__default.ContinueL1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- for-loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(520,3)
    i#0#lo := LitInt(0);
    i#0#hi := n#0;
    assert {:id "id451"} i#0#lo <= i#0#hi;
    i#0 := i#0#lo;
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant i#0#lo <= i#0 && i#0 <= i#0#hi;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume false;
        }

        assume true;
        if (i#0 == i#0#hi)
        {
            break;
        }

        $Heap_at_0_0 := $Heap;
        // ----- for-loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(522,5)
        j#0_0#lo := LitInt(0);
        j#0_0#hi := k#0;
        assert {:id "id452"} j#0_0#lo <= j#0_0#hi;
        j#0_0 := j#0_0#lo;
        $PreLoopHeap$loop#0_0 := $Heap;
        havoc $w$loop#0_0;
        while (true)
          free invariant j#0_0#lo <= j#0_0 && j#0_0 <= j#0_0#hi;
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant true;
        {
            if (!$w$loop#0_0)
            {
                assume false;
            }

            assume true;
            if (j#0_0 == j#0_0#hi)
            {
                break;
            }

            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(523,7)
            assume true;
            if (j#0_0 == m#0)
            {
                push;
                // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(524,9)
                pop;
                goto continue_0_0;

                pop;
            }
            else
            {
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(525,14)
                assume true;
                if (j#0_0 == p#0)
                {
                    push;
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(526,9)
                    pop;
                    pop;
                    goto continue_0;

                    pop;
                }
                else
                {
                }

                pop;
            }

            // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(528,7)
            if (j#0_0 != m#0)
            {
            }

            assume true;
            assert {:id "id453"} {:subsumption 0} j#0_0 != m#0;
            assert {:id "id454"} {:subsumption 0} j#0_0 != p#0;
            assume {:id "id455"} j#0_0 != m#0 && j#0_0 != p#0;

          continue_0_0:
            j#0_0 := j#0_0 + 1;
        }

      after_0_0:

      continue_0:
        i#0 := i#0 + 1;
    }

  after_0:
}



procedure {:verboseName "ContinueA0 (well-formedness)"} CheckWellFormed$$_module.__default.ContinueA0(n#0: int where LitInt(0) <= n#0, 
    k#0: int where LitInt(0) <= k#0, 
    m#0: int where LitInt(0) <= m#0, 
    p#0: int where LitInt(0) <= p#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ContinueA0 (call)"} Call$$_module.__default.ContinueA0(n#0: int where LitInt(0) <= n#0, 
    k#0: int where LitInt(0) <= k#0, 
    m#0: int where LitInt(0) <= m#0, 
    p#0: int where LitInt(0) <= p#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ContinueA0 (correctness)"} Impl$$_module.__default.ContinueA0(n#0: int where LitInt(0) <= n#0, 
    k#0: int where LitInt(0) <= k#0, 
    m#0: int where LitInt(0) <= m#0, 
    p#0: int where LitInt(0) <= p#0)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ContinueA0 (correctness)"} Impl$$_module.__default.ContinueA0(n#0: int, k#0: int, m#0: int, p#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $Heap_at_0: Heap;
  var i#0: int;
  var i#0#lo: int;
  var i#0#hi: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var j#0_0: int;
  var $Heap_at_0_0: Heap;
  var $PreLoopHeap$loop#0_0: Heap;
  var $decr_init$loop#0_00: bool;
  var $decr_init$loop#0_01: int;
  var $w$loop#0_0: bool;
  var $decr$loop#0_00: bool;
  var $decr$loop#0_01: int;

    // AddMethodImpl: ContinueA0, Impl$$_module.__default.ContinueA0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    $Heap_at_0 := $Heap;
    // ----- for-loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(535,3)
    i#0#lo := LitInt(0);
    i#0#hi := n#0;
    assert {:id "id456"} i#0#lo <= i#0#hi;
    i#0 := i#0#lo;
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant i#0#lo <= i#0 && i#0 <= i#0#hi;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume false;
        }

        assume true;
        if (i#0 == i#0#hi)
        {
            break;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(536,16)
        assume true;
        assume true;
        j#0_0 := k#0;
        $Heap_at_0_0 := $Heap;
        // ----- alternative loop statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(537,5)
        $PreLoopHeap$loop#0_0 := $Heap;
        $decr_init$loop#0_00 := j#0_0 < 0;
        $decr_init$loop#0_01 := (if j#0_0 < 0 then 0 - j#0_0 else j#0_0);
        havoc $w$loop#0_0;
        while (true)
          free invariant true;
          invariant {:id "id459"} $w$loop#0_0 ==> k#0 == LitInt(0) ==> j#0_0 == LitInt(0);
          free invariant true;
          invariant {:id "id461"} $w$loop#0_0 ==> k#0 != 0 ==> j#0_0 != 0;
          free invariant (forall $o: ref :: 
            { $Heap[$o] } 
            $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
               ==> $Heap[$o] == $PreLoopHeap$loop#0_0[$o]);
          free invariant $HeapSucc($PreLoopHeap$loop#0_0, $Heap);
          free invariant (forall $o: ref, $f: Field :: 
            { read($Heap, $o, $f) } 
            $o != null && $Unbox(read($PreLoopHeap$loop#0_0, $o, alloc)): bool
               ==> read($Heap, $o, $f) == read($PreLoopHeap$loop#0_0, $o, $f)
                 || $_ModifiesFrame[$o, $f]);
          free invariant (j#0_0 < 0 ==> $decr_init$loop#0_00)
             && ((j#0_0 < 0 <==> $decr_init$loop#0_00)
               ==> (if j#0_0 < 0 then 0 - j#0_0 else j#0_0) <= $decr_init$loop#0_01);
        {
            if (!$w$loop#0_0)
            {
                if (k#0 == LitInt(0))
                {
                }

                assume true;
                assume {:id "id458"} k#0 == LitInt(0) ==> j#0_0 == LitInt(0);
                if (k#0 != 0)
                {
                }

                assume true;
                assume {:id "id460"} k#0 != 0 ==> j#0_0 != 0;
                assume true;
                if (j#0_0 < 0)
                {
                }
                else
                {
                }

                assume true;
                assume false;
            }

            assume true;
            if (!Lit(true))
            {
                break;
            }

            $decr$loop#0_00 := j#0_0 < 0;
            $decr$loop#0_01 := (if j#0_0 < 0 then 0 - j#0_0 else j#0_0);
            if (*)
            {
                assume true;
                assume {:id "id466"} j#0_0 < 0;
                push;
                // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(543,9)
                if (*)
                {
                    assert {:id "id478"} LitInt(17) != 0;
                    assume true;
                    assume {:id "id479"} Mod(j#0_0, LitInt(17)) == LitInt(0);
                    push;
                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(544,31)
                    pop;
                    pop;
                    goto after_0;

                    pop;
                }
                else if (*)
                {
                    assert {:id "id476"} LitInt(17) != 0;
                    assume true;
                    assume {:id "id477"} Mod(j#0_0, LitInt(17)) == LitInt(1);
                    push;
                    // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(545,31)
                    pop;
                    pop;
                    goto after_0;

                    pop;
                }
                else if (*)
                {
                    assert {:id "id474"} LitInt(17) != 0;
                    assume true;
                    assume {:id "id475"} Mod(j#0_0, LitInt(17)) == LitInt(2);
                    push;
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(546,31)
                    pop;
                    pop;
                    goto continue_0;

                    pop;
                }
                else if (*)
                {
                    assert {:id "id471"} LitInt(17) != 0;
                    assume true;
                    assume {:id "id472"} Mod(j#0_0, LitInt(17)) == LitInt(3);
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(547,33)
                    assume true;
                    assume true;
                    j#0_0 := LitInt(3);
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(547,39)
                    pop;
                    pop;
                    goto continue_0;

                    pop;
                }
                else if (*)
                {
                    assert {:id "id468"} LitInt(17) != 0;
                    assume true;
                    assume {:id "id469"} LitInt(4) <= Mod(j#0_0, LitInt(17));
                    push;
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(548,33)
                    assume true;
                    assume true;
                    j#0_0 := LitInt(58);
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(548,40)
                    pop;
                    pop;
                    goto continue_0_0;

                    pop;
                }
                else
                {
                    assume true;
                    assume true;
                    assume true;
                    assume true;
                    assume true;
                    assume Mod(j#0_0, LitInt(17)) != LitInt(0)
                       && Mod(j#0_0, LitInt(17)) != LitInt(1)
                       && Mod(j#0_0, LitInt(17)) != LitInt(2)
                       && Mod(j#0_0, LitInt(17)) != LitInt(3)
                       && Mod(j#0_0, LitInt(17)) < LitInt(4);
                    assert {:id "id467"} false;
                }

                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(550,11)
                assume true;
                assume true;
                j#0_0 := LitInt(0);
                // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(551,9)
                pop;
                goto after_0_0;

                pop;
            }
            else if (*)
            {
                assume true;
                assume {:id "id464"} LitInt(2) <= j#0_0;
                push;
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(553,9)
                assume true;
                if (j#0_0 == LitInt(2))
                {
                    push;
                    // ----- continue statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(554,11)
                    pop;
                    pop;
                    goto continue_0;

                    pop;
                }
                else
                {
                }

                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(556,11)
                assume true;
                assume true;
                j#0_0 := j#0_0 - 2;
                pop;
            }
            else if (*)
            {
                assume true;
                assume {:id "id462"} j#0_0 == LitInt(8);
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(558,11)
                assume true;
                assume true;
                j#0_0 := LitInt(5);
                pop;
            }
            else
            {
                assume true;
                assume true;
                assume true;
                assume 0 <= j#0_0 && j#0_0 < LitInt(2) && j#0_0 != LitInt(8);
                break;
            }

          continue_0_0:
            // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(537,5)
            assert {:id "id481"} 0 <= $decr$loop#0_01
               || (0 <= j#0_0 && $decr$loop#0_00)
               || (if j#0_0 < 0 then 0 - j#0_0 else j#0_0) == $decr$loop#0_01;
            assert {:id "id482"} (0 <= j#0_0 && $decr$loop#0_00)
               || ((j#0_0 < 0 <==> $decr$loop#0_00)
                 && (if j#0_0 < 0 then 0 - j#0_0 else j#0_0) < $decr$loop#0_01);
            assume true;
        }

      after_0_0:
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/ControlStructures.dfy(560,5)
        if (j#0_0 != LitInt(1))
        {
            if (j#0_0 == k#0)
            {
            }
        }

        assume true;
        assert {:id "id483"} j#0_0 == LitInt(1) || (j#0_0 == k#0 && k#0 == LitInt(0));

      continue_0:
        i#0 := i#0 + 1;
    }

  after_0:
}



// Constructor function declaration
function #_module.D.Green() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.Green()) == ##_module.D.Green;
// Constructor $Is
axiom $Is(#_module.D.Green(), Tclass._module.D());
// Constructor literal
axiom #_module.D.Green() == Lit(#_module.D.Green());
}

const unique ##_module.D.Green: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.Green()) == ##_module.D.Green;
}

function _module.D.Green_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.D.Green_q(d) } 
  _module.D.Green_q(d) <==> DatatypeCtorId(d) == ##_module.D.Green);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.D.Green_q(d) } 
  _module.D.Green_q(d) ==> d == #_module.D.Green());

// Constructor function declaration
function #_module.D.Blue() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.Blue()) == ##_module.D.Blue;
// Constructor $Is
axiom $Is(#_module.D.Blue(), Tclass._module.D());
// Constructor literal
axiom #_module.D.Blue() == Lit(#_module.D.Blue());
}

const unique ##_module.D.Blue: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.Blue()) == ##_module.D.Blue;
}

function _module.D.Blue_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.D.Blue_q(d) } 
  _module.D.Blue_q(d) <==> DatatypeCtorId(d) == ##_module.D.Blue);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.D.Blue_q(d) } 
  _module.D.Blue_q(d) ==> d == #_module.D.Blue());

// Constructor function declaration
function #_module.D.Red() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.Red()) == ##_module.D.Red;
// Constructor $Is
axiom $Is(#_module.D.Red(), Tclass._module.D());
// Constructor literal
axiom #_module.D.Red() == Lit(#_module.D.Red());
}

const unique ##_module.D.Red: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.Red()) == ##_module.D.Red;
}

function _module.D.Red_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.D.Red_q(d) } 
  _module.D.Red_q(d) <==> DatatypeCtorId(d) == ##_module.D.Red);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.D.Red_q(d) } 
  _module.D.Red_q(d) ==> d == #_module.D.Red());

// Constructor function declaration
function #_module.D.Purple() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.Purple()) == ##_module.D.Purple;
// Constructor $Is
axiom $Is(#_module.D.Purple(), Tclass._module.D());
// Constructor literal
axiom #_module.D.Purple() == Lit(#_module.D.Purple());
}

const unique ##_module.D.Purple: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.D.Purple()) == ##_module.D.Purple;
}

function _module.D.Purple_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.D.Purple_q(d) } 
  _module.D.Purple_q(d) <==> DatatypeCtorId(d) == ##_module.D.Purple);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.D.Purple_q(d) } 
  _module.D.Purple_q(d) ==> d == #_module.D.Purple());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.D(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.D())
     ==> $IsAlloc(d, Tclass._module.D(), $h));

// Depth-one case-split function
function $IsA#_module.D(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.D(d) } 
  $IsA#_module.D(d)
     ==> _module.D.Green_q(d)
       || _module.D.Blue_q(d)
       || _module.D.Red_q(d)
       || _module.D.Purple_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.D.Purple_q(d), $Is(d, Tclass._module.D()) } 
    { _module.D.Red_q(d), $Is(d, Tclass._module.D()) } 
    { _module.D.Blue_q(d), $Is(d, Tclass._module.D()) } 
    { _module.D.Green_q(d), $Is(d, Tclass._module.D()) } 
  $Is(d, Tclass._module.D())
     ==> _module.D.Green_q(d)
       || _module.D.Blue_q(d)
       || _module.D.Red_q(d)
       || _module.D.Purple_q(d));

// Datatype extensional equality declaration
function _module.D#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.D.Green
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.D#Equal(a, b), _module.D.Green_q(a) } 
    { _module.D#Equal(a, b), _module.D.Green_q(b) } 
  _module.D.Green_q(a) && _module.D.Green_q(b) ==> _module.D#Equal(a, b));

// Datatype extensional equality definition: #_module.D.Blue
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.D#Equal(a, b), _module.D.Blue_q(a) } 
    { _module.D#Equal(a, b), _module.D.Blue_q(b) } 
  _module.D.Blue_q(a) && _module.D.Blue_q(b) ==> _module.D#Equal(a, b));

// Datatype extensional equality definition: #_module.D.Red
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.D#Equal(a, b), _module.D.Red_q(a) } 
    { _module.D#Equal(a, b), _module.D.Red_q(b) } 
  _module.D.Red_q(a) && _module.D.Red_q(b) ==> _module.D#Equal(a, b));

// Datatype extensional equality definition: #_module.D.Purple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.D#Equal(a, b), _module.D.Purple_q(a) } 
    { _module.D#Equal(a, b), _module.D.Purple_q(b) } 
  _module.D.Purple_q(a) && _module.D.Purple_q(b) ==> _module.D#Equal(a, b));

// Datatype extensionality axiom: _module.D
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.D#Equal(a, b) } 
  _module.D#Equal(a, b) <==> a == b);

const unique class._module.D: ClassName;

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

const unique tytagFamily$D: TyTagFamily;
