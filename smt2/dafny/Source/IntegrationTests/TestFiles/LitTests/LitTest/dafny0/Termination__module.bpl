// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy

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

// Box/unbox axiom for bv3
axiom (forall bx: Box :: 
  { $IsBox(bx, TBitvector(3)) } 
  $IsBox(bx, TBitvector(3))
     ==> $Box($Unbox(bx): bv3) == bx && $Is($Unbox(bx): bv3, TBitvector(3)));

axiom (forall v: bv3 :: { $Is(v, TBitvector(3)) } $Is(v, TBitvector(3)));

axiom (forall v: bv3, heap: Heap :: 
  { $IsAlloc(v, TBitvector(3), heap) } 
  $IsAlloc(v, TBitvector(3), heap));

function {:bvbuiltin "bvand"} and_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvor"} or_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvxor"} xor_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvnot"} not_bv3(bv3) : bv3;

function {:bvbuiltin "bvadd"} add_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvsub"} sub_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvmul"} mul_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvudiv"} div_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvurem"} mod_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvult"} lt_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvule"} le_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvuge"} ge_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvugt"} gt_bv3(bv3, bv3) : bool;

function {:bvbuiltin "bvshl"} LeftShift_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "bvlshr"} RightShift_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "ext_rotate_left"} LeftRotate_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "ext_rotate_right"} RightRotate_bv3(bv3, bv3) : bv3;

function {:bvbuiltin "(_ int2bv 3)"} nat_to_bv3(int) : bv3;

function {:bvbuiltin "bv2int"} smt_nat_from_bv3(bv3) : int;

function nat_from_bv3(bv3) : int;

axiom (forall b: bv3 :: 
  { nat_from_bv3(b) } 
  0 <= nat_from_bv3(b)
     && nat_from_bv3(b) < 8
     && nat_from_bv3(b) == smt_nat_from_bv3(b));

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

procedure {:verboseName "FailureToProveTermination0 (well-formedness)"} CheckWellFormed$$_module.__default.FailureToProveTermination0(N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailureToProveTermination0 (call)"} Call$$_module.__default.FailureToProveTermination0(N#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailureToProveTermination0 (correctness)"} Impl$$_module.__default.FailureToProveTermination0(N#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailureToProveTermination0 (correctness)"} Impl$$_module.__default.FailureToProveTermination0(N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: FailureToProveTermination0, Impl$$_module.__default.FailureToProveTermination0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(107,9)
    assume true;
    assume true;
    n#0 := N#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(108,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 100 - n#0;
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
      free invariant 100 - n#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (100 <= n#0)
        {
            break;
        }

        $decr$loop#00 := 100 - n#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(109,7)
        assume true;
        assume true;
        n#0 := n#0 - 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(108,3)
        assert {:id "id40"} 0 <= $decr$loop#00 || 100 - n#0 == $decr$loop#00;
        assert {:id "id41"} 100 - n#0 < $decr$loop#00;
    }
}



procedure {:verboseName "ImprovedHeuristicsMakeThisVerify (well-formedness)"} CheckWellFormed$$_module.__default.ImprovedHeuristicsMakeThisVerify(x#0: int, y#0: int, N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ImprovedHeuristicsMakeThisVerify (call)"} Call$$_module.__default.ImprovedHeuristicsMakeThisVerify(x#0: int, y#0: int, N#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ImprovedHeuristicsMakeThisVerify (correctness)"} Impl$$_module.__default.ImprovedHeuristicsMakeThisVerify(x#0: int, y#0: int, N#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ImprovedHeuristicsMakeThisVerify (correctness)"} Impl$$_module.__default.ImprovedHeuristicsMakeThisVerify(x#0: int, y#0: int, N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $decr$loop#01: int;

    // AddMethodImpl: ImprovedHeuristicsMakeThisVerify, Impl$$_module.__default.ImprovedHeuristicsMakeThisVerify
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(115,9)
    assume true;
    assume true;
    n#0 := N#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(116,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := y#0 - x#0;
    $decr_init$loop#01 := (if x#0 < y#0 then 100 - n#0 else 0 - 1);
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
      free invariant y#0 - x#0 <= $decr_init$loop#00
         && (y#0 - x#0 == $decr_init$loop#00
           ==> (if x#0 < y#0 then 100 - n#0 else 0 - 1) <= $decr_init$loop#01);
    {
        if (!$w$loop#0)
        {
            assume true;
            if (x#0 < y#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (x#0 < y#0)
        {
        }

        assume true;
        if (!(x#0 < y#0 && n#0 < 100))
        {
            break;
        }

        $decr$loop#00 := y#0 - x#0;
        $decr$loop#01 := (if x#0 < y#0 then 100 - n#0 else 0 - 1);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(118,7)
        assume true;
        assume true;
        n#0 := n#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(116,3)
        assert {:id "id44"} 0 <= $decr$loop#00 || y#0 - x#0 == $decr$loop#00;
        assert {:id "id45"} 0 <= $decr$loop#01
           || y#0 - x#0 < $decr$loop#00
           || (if x#0 < y#0 then 100 - n#0 else 0 - 1) == $decr$loop#01;
        assert {:id "id46"} y#0 - x#0 < $decr$loop#00
           || (y#0 - x#0 == $decr$loop#00
             && (if x#0 < y#0 then 100 - n#0 else 0 - 1) < $decr$loop#01);
    }
}



procedure {:verboseName "FailureToProveTermination2 (well-formedness)"} CheckWellFormed$$_module.__default.FailureToProveTermination2(x#0: int, y#0: int, N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailureToProveTermination2 (call)"} Call$$_module.__default.FailureToProveTermination2(x#0: int, y#0: int, N#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailureToProveTermination2 (correctness)"} Impl$$_module.__default.FailureToProveTermination2(x#0: int, y#0: int, N#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailureToProveTermination2 (correctness)"} Impl$$_module.__default.FailureToProveTermination2(x#0: int, y#0: int, N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: FailureToProveTermination2, Impl$$_module.__default.FailureToProveTermination2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(124,9)
    assume true;
    assume true;
    n#0 := N#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(125,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := n#0 - x#0;
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
      free invariant n#0 - x#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        if (x#0 < y#0)
        {
        }

        assume true;
        if (!(x#0 < y#0 && n#0 < 100))
        {
            break;
        }

        $decr$loop#00 := n#0 - x#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(128,7)
        assume true;
        assume true;
        n#0 := n#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(125,3)
        assert {:id "id49"} 0 <= $decr$loop#00 || n#0 - x#0 == $decr$loop#00;
        assert {:id "id50"} n#0 - x#0 < $decr$loop#00;
    }
}



procedure {:verboseName "FailureToProveTermination3 (well-formedness)"} CheckWellFormed$$_module.__default.FailureToProveTermination3(x#0: int, y#0: int, N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailureToProveTermination3 (call)"} Call$$_module.__default.FailureToProveTermination3(x#0: int, y#0: int, N#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailureToProveTermination3 (correctness)"} Impl$$_module.__default.FailureToProveTermination3(x#0: int, y#0: int, N#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailureToProveTermination3 (correctness)"} Impl$$_module.__default.FailureToProveTermination3(x#0: int, y#0: int, N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: FailureToProveTermination3, Impl$$_module.__default.FailureToProveTermination3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(134,9)
    assume true;
    assume true;
    n#0 := N#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(135,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 100 - n#0;
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
      free invariant 100 - n#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        if (x#0 < y#0)
        {
        }

        assume true;
        if (!(x#0 < y#0 && n#0 < 100))
        {
            break;
        }

        $decr$loop#00 := 100 - n#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(138,7)
        assume true;
        assume true;
        n#0 := n#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(135,3)
        assert {:id "id53"} 0 <= $decr$loop#00 || 100 - n#0 == $decr$loop#00;
        assert {:id "id54"} 100 - n#0 < $decr$loop#00;
    }
}



procedure {:verboseName "FailureToProveTermination4 (well-formedness)"} CheckWellFormed$$_module.__default.FailureToProveTermination4(x#0: int, y#0: int, N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailureToProveTermination4 (call)"} Call$$_module.__default.FailureToProveTermination4(x#0: int, y#0: int, N#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailureToProveTermination4 (correctness)"} Impl$$_module.__default.FailureToProveTermination4(x#0: int, y#0: int, N#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailureToProveTermination4 (correctness)"} Impl$$_module.__default.FailureToProveTermination4(x#0: int, y#0: int, N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: FailureToProveTermination4, Impl$$_module.__default.FailureToProveTermination4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(144,9)
    assume true;
    assume true;
    n#0 := N#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(145,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 100 - n#0;
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
      free invariant 100 - n#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        if (n#0 < 100)
        {
        }

        assume true;
        if (!(n#0 < 100 && x#0 < y#0))
        {
            break;
        }

        $decr$loop#00 := 100 - n#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(148,7)
        assume true;
        assume true;
        n#0 := n#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(145,3)
        assert {:id "id57"} 0 <= $decr$loop#00 || 100 - n#0 == $decr$loop#00;
        assert {:id "id58"} 100 - n#0 < $decr$loop#00;
    }
}



procedure {:verboseName "FailureToProveTermination5 (well-formedness)"} CheckWellFormed$$_module.__default.FailureToProveTermination5(b#0: bool, N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "FailureToProveTermination5 (call)"} Call$$_module.__default.FailureToProveTermination5(b#0: bool, N#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "FailureToProveTermination5 (correctness)"} Impl$$_module.__default.FailureToProveTermination5(b#0: bool, N#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "FailureToProveTermination5 (correctness)"} Impl$$_module.__default.FailureToProveTermination5(b#0: bool, N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var n#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: FailureToProveTermination5, Impl$$_module.__default.FailureToProveTermination5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(154,9)
    assume true;
    assume true;
    n#0 := N#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(155,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if b#0 then 100 - n#0 else 0 - 1);
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
      free invariant (if b#0 then 100 - n#0 else 0 - 1) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (b#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (b#0)
        {
        }

        assume true;
        if (!(b#0 && n#0 < 100))
        {
            break;
        }

        $decr$loop#00 := (if b#0 then 100 - n#0 else 0 - 1);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(157,7)
        assume true;
        assume true;
        n#0 := n#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(155,3)
        assert {:id "id61"} 0 <= $decr$loop#00 || (if b#0 then 100 - n#0 else 0 - 1) == $decr$loop#00;
        assert {:id "id62"} (if b#0 then 100 - n#0 else 0 - 1) < $decr$loop#00;
    }
}



procedure {:verboseName "DecreasesYieldsAnInvariant (well-formedness)"} CheckWellFormed$$_module.__default.DecreasesYieldsAnInvariant(z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DecreasesYieldsAnInvariant (call)"} Call$$_module.__default.DecreasesYieldsAnInvariant(z#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DecreasesYieldsAnInvariant (correctness)"} Impl$$_module.__default.DecreasesYieldsAnInvariant(z#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DecreasesYieldsAnInvariant (correctness)"} Impl$$_module.__default.DecreasesYieldsAnInvariant(z#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var y#0: int;
  var z#1: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: DecreasesYieldsAnInvariant, Impl$$_module.__default.DecreasesYieldsAnInvariant
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(181,9)
    assume true;
    assume true;
    x#0 := LitInt(100);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(182,9)
    assume true;
    assume true;
    y#0 := LitInt(1);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(183,9)
    assume true;
    assume true;
    z#1 := z#0;
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(184,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if x#0 <= y#0 then y#0 - x#0 else x#0 - y#0);
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id67"} $w$loop#0 ==> (0 < x#0 && 0 < y#0) || (x#0 < 0 && y#0 < 0);
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
      free invariant (if x#0 <= y#0 then y#0 - x#0 else x#0 - y#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (0 < x#0)
            {
            }

            if (!(0 < x#0 && 0 < y#0))
            {
                if (x#0 < 0)
                {
                }
            }

            assume true;
            assume {:id "id66"} (0 < x#0 && 0 < y#0) || (x#0 < 0 && y#0 < 0);
            if (x#0 <= y#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (x#0 == y#0)
        {
            break;
        }

        $decr$loop#00 := (if x#0 <= y#0 then y#0 - x#0 else x#0 - y#0);
        push;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(188,5)
        assume true;
        if (z#1 == LitInt(52))
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(189,7)
            pop;
            pop;
            goto after_0;

            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(190,12)
            assume true;
            if (x#0 < y#0)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(191,9)
                assume true;
                assume true;
                y#0 := y#0 - 1;
                pop;
            }
            else
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(193,9)
                assume true;
                assume true;
                x#0 := x#0 - 1;
                pop;
            }

            pop;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(195,7)
        assume true;
        assume true;
        x#0 := 0 - x#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(196,7)
        assume true;
        assume true;
        y#0 := 0 - y#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(197,7)
        assume true;
        assume true;
        z#1 := z#1 + 1;
        pop;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(184,3)
        assert {:id "id73"} 0 <= $decr$loop#00
           || (if x#0 <= y#0 then y#0 - x#0 else x#0 - y#0) == $decr$loop#00;
        assert {:id "id74"} (if x#0 <= y#0 then y#0 - x#0 else x#0 - y#0) < $decr$loop#00;
        assume true;
    }

  after_0:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(199,3)
    assume true;
    assert {:id "id75"} x#0 - y#0 < 100;
}



// function declaration for _module._default.Zipper0
function _module.__default.Zipper0(_module._default.Zipper0$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Zipper0
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Zipper0$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { _module.__default.Zipper0(_module._default.Zipper0$T, $ly, a#0, b#0) } 
    _module.__default.Zipper0#canCall(_module._default.Zipper0$T, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List(_module._default.Zipper0$T))
           && $Is(b#0, Tclass._module.List(_module._default.Zipper0$T)))
       ==> $Is(_module.__default.Zipper0(_module._default.Zipper0$T, $ly, a#0, b#0), 
        Tclass._module.List(_module._default.Zipper0$T)));
// alloc consequence axiom for _module.__default.Zipper0
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Zipper0$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { $IsAlloc(_module.__default.Zipper0(_module._default.Zipper0$T, $ly, a#0, b#0), 
        Tclass._module.List(_module._default.Zipper0$T), 
        $Heap) } 
    (_module.__default.Zipper0#canCall(_module._default.Zipper0$T, a#0, b#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(a#0, Tclass._module.List(_module._default.Zipper0$T))
             && $IsAlloc(a#0, Tclass._module.List(_module._default.Zipper0$T), $Heap)
             && 
            $Is(b#0, Tclass._module.List(_module._default.Zipper0$T))
             && $IsAlloc(b#0, Tclass._module.List(_module._default.Zipper0$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Zipper0(_module._default.Zipper0$T, $ly, a#0, b#0), 
        Tclass._module.List(_module._default.Zipper0$T), 
        $Heap));
// definition axiom for _module.__default.Zipper0 (revealed)
axiom {:id "id76"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Zipper0$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { _module.__default.Zipper0(_module._default.Zipper0$T, $LS($ly), a#0, b#0) } 
    _module.__default.Zipper0#canCall(_module._default.Zipper0$T, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List(_module._default.Zipper0$T))
           && $Is(b#0, Tclass._module.List(_module._default.Zipper0$T)))
       ==> (!_module.List.Nil_q(a#0)
           ==> (var c#1 := _module.List._h1(a#0); 
            _module.__default.Zipper0#canCall(_module._default.Zipper0$T, b#0, c#1)))
         && _module.__default.Zipper0(_module._default.Zipper0$T, $LS($ly), a#0, b#0)
           == (if _module.List.Nil_q(a#0)
             then b#0
             else (var c#0 := _module.List._h1(a#0); 
              (var x#0 := _module.List._h0(a#0); 
                #_module.List.Cons(x#0, _module.__default.Zipper0(_module._default.Zipper0$T, $ly, b#0, c#0))))));
// definition axiom for _module.__default.Zipper0 for all literals (revealed)
axiom {:id "id77"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Zipper0$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    {:weight 3} { _module.__default.Zipper0(_module._default.Zipper0$T, $LS($ly), Lit(a#0), Lit(b#0)) } 
    _module.__default.Zipper0#canCall(_module._default.Zipper0$T, Lit(a#0), Lit(b#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List(_module._default.Zipper0$T))
           && $Is(b#0, Tclass._module.List(_module._default.Zipper0$T)))
       ==> (!Lit(_module.List.Nil_q(Lit(a#0)))
           ==> (var c#3 := Lit(_module.List._h1(Lit(a#0))); 
            _module.__default.Zipper0#canCall(_module._default.Zipper0$T, Lit(b#0), c#3)))
         && _module.__default.Zipper0(_module._default.Zipper0$T, $LS($ly), Lit(a#0), Lit(b#0))
           == (if _module.List.Nil_q(Lit(a#0))
             then b#0
             else (var c#2 := Lit(_module.List._h1(Lit(a#0))); 
              (var x#2 := Lit(_module.List._h0(Lit(a#0))); 
                Lit(#_module.List.Cons(x#2, 
                    Lit(_module.__default.Zipper0(_module._default.Zipper0$T, $LS($ly), Lit(b#0), c#2))))))));
}

function _module.__default.Zipper0#canCall(_module._default.Zipper0$T: Ty, a#0: DatatypeType, b#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.Zipper0$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Zipper0(_module._default.Zipper0$T, $LS($ly), a#0, b#0) } 
  _module.__default.Zipper0(_module._default.Zipper0$T, $LS($ly), a#0, b#0)
     == _module.__default.Zipper0(_module._default.Zipper0$T, $ly, a#0, b#0));

// fuel synonym axiom
axiom (forall _module._default.Zipper0$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Zipper0(_module._default.Zipper0$T, AsFuelBottom($ly), a#0, b#0) } 
  _module.__default.Zipper0(_module._default.Zipper0$T, $ly, a#0, b#0)
     == _module.__default.Zipper0(_module._default.Zipper0$T, $LZ, a#0, b#0));

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

function _module.__default.Zipper0#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.Zipper0
axiom (forall _module._default.Zipper0$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Zipper0#requires(_module._default.Zipper0$T, $ly, a#0, b#0) } 
  $Is(a#0, Tclass._module.List(_module._default.Zipper0$T))
       && $Is(b#0, Tclass._module.List(_module._default.Zipper0$T))
     ==> _module.__default.Zipper0#requires(_module._default.Zipper0$T, $ly, a#0, b#0)
       == true);

procedure {:verboseName "Zipper0 (well-formedness)"} CheckWellformed$$_module.__default.Zipper0(_module._default.Zipper0$T: Ty, 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(_module._default.Zipper0$T)), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.List(_module._default.Zipper0$T)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Zipper0 (well-formedness)"} CheckWellformed$$_module.__default.Zipper0(_module._default.Zipper0$T: Ty, a#0: DatatypeType, b#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var c#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: Box;
  var let#1#0#0: Box;
  var ##a#0: DatatypeType;
  var ##b#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Zipper0(_module._default.Zipper0$T, $LS($LZ), a#0, b#0), 
          Tclass._module.List(_module._default.Zipper0$T));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (a#0 == #_module.List.Nil())
        {
            assume {:id "id84"} _module.__default.Zipper0(_module._default.Zipper0$T, $LS($LZ), a#0, b#0) == b#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Zipper0(_module._default.Zipper0$T, $LS($LZ), a#0, b#0), 
              Tclass._module.List(_module._default.Zipper0$T));
            return;
        }
        else if (a#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.Zipper0$T);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.Zipper0$T));
            havoc c#Z#0;
            assume {:id "id78"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.Zipper0$T));
            assume {:id "id79"} c#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id80"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, _module._default.Zipper0$T);
            assume {:id "id81"} x#Z#0 == let#1#0#0;
            ##a#0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._module.List(_module._default.Zipper0$T), $Heap);
            ##b#0 := c#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, Tclass._module.List(_module._default.Zipper0$T), $Heap);
            assert {:id "id82"} DtRank(##a#0) < DtRank(a#0)
               || (DtRank(##a#0) == DtRank(a#0) && DtRank(##b#0) < DtRank(b#0));
            assume _module.__default.Zipper0#canCall(_module._default.Zipper0$T, b#0, c#Z#0);
            assume {:id "id83"} _module.__default.Zipper0(_module._default.Zipper0$T, $LS($LZ), a#0, b#0)
               == #_module.List.Cons(x#Z#0, 
                _module.__default.Zipper0(_module._default.Zipper0$T, $LS($LZ), b#0, c#Z#0));
            assume _module.__default.Zipper0#canCall(_module._default.Zipper0$T, b#0, c#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Zipper0(_module._default.Zipper0$T, $LS($LZ), a#0, b#0), 
              Tclass._module.List(_module._default.Zipper0$T));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.Zipper1
function _module.__default.Zipper1(_module._default.Zipper1$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType, 
    k#0: bool)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Zipper1
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Zipper1$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType, 
      k#0: bool :: 
    { _module.__default.Zipper1(_module._default.Zipper1$T, $ly, a#0, b#0, k#0) } 
    _module.__default.Zipper1#canCall(_module._default.Zipper1$T, a#0, b#0, k#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List(_module._default.Zipper1$T))
           && $Is(b#0, Tclass._module.List(_module._default.Zipper1$T)))
       ==> $Is(_module.__default.Zipper1(_module._default.Zipper1$T, $ly, a#0, b#0, k#0), 
        Tclass._module.List(_module._default.Zipper1$T)));
// alloc consequence axiom for _module.__default.Zipper1
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Zipper1$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType, 
      k#0: bool :: 
    { $IsAlloc(_module.__default.Zipper1(_module._default.Zipper1$T, $ly, a#0, b#0, k#0), 
        Tclass._module.List(_module._default.Zipper1$T), 
        $Heap) } 
    (_module.__default.Zipper1#canCall(_module._default.Zipper1$T, a#0, b#0, k#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(a#0, Tclass._module.List(_module._default.Zipper1$T))
             && $IsAlloc(a#0, Tclass._module.List(_module._default.Zipper1$T), $Heap)
             && 
            $Is(b#0, Tclass._module.List(_module._default.Zipper1$T))
             && $IsAlloc(b#0, Tclass._module.List(_module._default.Zipper1$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Zipper1(_module._default.Zipper1$T, $ly, a#0, b#0, k#0), 
        Tclass._module.List(_module._default.Zipper1$T), 
        $Heap));
// definition axiom for _module.__default.Zipper1 (revealed)
axiom {:id "id85"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Zipper1$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType, 
      k#0: bool :: 
    { _module.__default.Zipper1(_module._default.Zipper1$T, $LS($ly), a#0, b#0, k#0) } 
    _module.__default.Zipper1#canCall(_module._default.Zipper1$T, a#0, b#0, k#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List(_module._default.Zipper1$T))
           && $Is(b#0, Tclass._module.List(_module._default.Zipper1$T)))
       ==> (!_module.List.Nil_q(a#0)
           ==> (var c#1 := _module.List._h1(a#0); 
            _module.__default.Zipper1#canCall(_module._default.Zipper1$T, b#0, c#1, !k#0)))
         && _module.__default.Zipper1(_module._default.Zipper1$T, $LS($ly), a#0, b#0, k#0)
           == (if _module.List.Nil_q(a#0)
             then b#0
             else (var c#0 := _module.List._h1(a#0); 
              (var x#0 := _module.List._h0(a#0); 
                #_module.List.Cons(x#0, _module.__default.Zipper1(_module._default.Zipper1$T, $ly, b#0, c#0, !k#0))))));
// definition axiom for _module.__default.Zipper1 for all literals (revealed)
axiom {:id "id86"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Zipper1$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType, 
      k#0: bool :: 
    {:weight 3} { _module.__default.Zipper1(_module._default.Zipper1$T, $LS($ly), Lit(a#0), Lit(b#0), Lit(k#0)) } 
    _module.__default.Zipper1#canCall(_module._default.Zipper1$T, Lit(a#0), Lit(b#0), Lit(k#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List(_module._default.Zipper1$T))
           && $Is(b#0, Tclass._module.List(_module._default.Zipper1$T)))
       ==> (!Lit(_module.List.Nil_q(Lit(a#0)))
           ==> (var c#3 := Lit(_module.List._h1(Lit(a#0))); 
            _module.__default.Zipper1#canCall(_module._default.Zipper1$T, Lit(b#0), c#3, !Lit(k#0))))
         && _module.__default.Zipper1(_module._default.Zipper1$T, $LS($ly), Lit(a#0), Lit(b#0), Lit(k#0))
           == (if _module.List.Nil_q(Lit(a#0))
             then b#0
             else (var c#2 := Lit(_module.List._h1(Lit(a#0))); 
              (var x#2 := Lit(_module.List._h0(Lit(a#0))); 
                #_module.List.Cons(x#2, 
                  _module.__default.Zipper1(_module._default.Zipper1$T, $LS($ly), Lit(b#0), c#2, !Lit(k#0)))))));
}

function _module.__default.Zipper1#canCall(_module._default.Zipper1$T: Ty, a#0: DatatypeType, b#0: DatatypeType, k#0: bool)
   : bool;

// layer synonym axiom
axiom (forall _module._default.Zipper1$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType, 
    k#0: bool :: 
  { _module.__default.Zipper1(_module._default.Zipper1$T, $LS($ly), a#0, b#0, k#0) } 
  _module.__default.Zipper1(_module._default.Zipper1$T, $LS($ly), a#0, b#0, k#0)
     == _module.__default.Zipper1(_module._default.Zipper1$T, $ly, a#0, b#0, k#0));

// fuel synonym axiom
axiom (forall _module._default.Zipper1$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType, 
    k#0: bool :: 
  { _module.__default.Zipper1(_module._default.Zipper1$T, AsFuelBottom($ly), a#0, b#0, k#0) } 
  _module.__default.Zipper1(_module._default.Zipper1$T, $ly, a#0, b#0, k#0)
     == _module.__default.Zipper1(_module._default.Zipper1$T, $LZ, a#0, b#0, k#0));

function _module.__default.Zipper1#requires(Ty, LayerType, DatatypeType, DatatypeType, bool) : bool;

// #requires axiom for _module.__default.Zipper1
axiom (forall _module._default.Zipper1$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType, 
    k#0: bool :: 
  { _module.__default.Zipper1#requires(_module._default.Zipper1$T, $ly, a#0, b#0, k#0) } 
  $Is(a#0, Tclass._module.List(_module._default.Zipper1$T))
       && $Is(b#0, Tclass._module.List(_module._default.Zipper1$T))
     ==> _module.__default.Zipper1#requires(_module._default.Zipper1$T, $ly, a#0, b#0, k#0)
       == true);

procedure {:verboseName "Zipper1 (well-formedness)"} CheckWellformed$$_module.__default.Zipper1(_module._default.Zipper1$T: Ty, 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(_module._default.Zipper1$T)), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.List(_module._default.Zipper1$T)), 
    k#0: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Zipper1 (well-formedness)"} CheckWellformed$$_module.__default.Zipper1(_module._default.Zipper1$T: Ty, a#0: DatatypeType, b#0: DatatypeType, k#0: bool)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var c#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: Box;
  var let#1#0#0: Box;
  var ##a#0: DatatypeType;
  var ##b#0: DatatypeType;
  var ##k#0: bool;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    if (k#0)
    {
    }
    else
    {
    }

    if (k#0)
    {
    }
    else
    {
    }

    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Zipper1(_module._default.Zipper1$T, $LS($LZ), a#0, b#0, k#0), 
          Tclass._module.List(_module._default.Zipper1$T));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (a#0 == #_module.List.Nil())
        {
            assume {:id "id93"} _module.__default.Zipper1(_module._default.Zipper1$T, $LS($LZ), a#0, b#0, k#0)
               == b#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Zipper1(_module._default.Zipper1$T, $LS($LZ), a#0, b#0, k#0), 
              Tclass._module.List(_module._default.Zipper1$T));
            return;
        }
        else if (a#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.Zipper1$T);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.Zipper1$T));
            havoc c#Z#0;
            assume {:id "id87"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.Zipper1$T));
            assume {:id "id88"} c#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id89"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, _module._default.Zipper1$T);
            assume {:id "id90"} x#Z#0 == let#1#0#0;
            ##a#0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._module.List(_module._default.Zipper1$T), $Heap);
            ##b#0 := c#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, Tclass._module.List(_module._default.Zipper1$T), $Heap);
            ##k#0 := !k#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##k#0, TBool, $Heap);
            assert {:id "id91"} DtRank((if ##k#0 then ##a#0 else ##b#0)) < DtRank((if k#0 then a#0 else b#0))
               || (DtRank((if ##k#0 then ##a#0 else ##b#0)) == DtRank((if k#0 then a#0 else b#0))
                 && DtRank((if ##k#0 then ##b#0 else ##a#0)) < DtRank((if k#0 then b#0 else a#0)));
            assume _module.__default.Zipper1#canCall(_module._default.Zipper1$T, b#0, c#Z#0, !k#0);
            assume {:id "id92"} _module.__default.Zipper1(_module._default.Zipper1$T, $LS($LZ), a#0, b#0, k#0)
               == #_module.List.Cons(x#Z#0, 
                _module.__default.Zipper1(_module._default.Zipper1$T, $LS($LZ), b#0, c#Z#0, !k#0));
            assume _module.__default.Zipper1#canCall(_module._default.Zipper1$T, b#0, c#Z#0, !k#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Zipper1(_module._default.Zipper1$T, $LS($LZ), a#0, b#0, k#0), 
              Tclass._module.List(_module._default.Zipper1$T));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module._default.Zipper2
function _module.__default.Zipper2(_module._default.Zipper2$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType)
   : DatatypeType
uses {
// consequence axiom for _module.__default.Zipper2
axiom 1 <= $FunctionContextHeight
   ==> (forall _module._default.Zipper2$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { _module.__default.Zipper2(_module._default.Zipper2$T, $ly, a#0, b#0) } 
    _module.__default.Zipper2#canCall(_module._default.Zipper2$T, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List(_module._default.Zipper2$T))
           && $Is(b#0, Tclass._module.List(_module._default.Zipper2$T)))
       ==> $Is(_module.__default.Zipper2(_module._default.Zipper2$T, $ly, a#0, b#0), 
        Tclass._module.List(_module._default.Zipper2$T)));
// alloc consequence axiom for _module.__default.Zipper2
axiom 1 <= $FunctionContextHeight
   ==> (forall $Heap: Heap, 
      _module._default.Zipper2$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { $IsAlloc(_module.__default.Zipper2(_module._default.Zipper2$T, $ly, a#0, b#0), 
        Tclass._module.List(_module._default.Zipper2$T), 
        $Heap) } 
    (_module.__default.Zipper2#canCall(_module._default.Zipper2$T, a#0, b#0)
           || (1 < $FunctionContextHeight
             && 
            $Is(a#0, Tclass._module.List(_module._default.Zipper2$T))
             && $IsAlloc(a#0, Tclass._module.List(_module._default.Zipper2$T), $Heap)
             && 
            $Is(b#0, Tclass._module.List(_module._default.Zipper2$T))
             && $IsAlloc(b#0, Tclass._module.List(_module._default.Zipper2$T), $Heap)))
         && $IsGoodHeap($Heap)
       ==> $IsAlloc(_module.__default.Zipper2(_module._default.Zipper2$T, $ly, a#0, b#0), 
        Tclass._module.List(_module._default.Zipper2$T), 
        $Heap));
// definition axiom for _module.__default.Zipper2 (revealed)
axiom {:id "id94"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Zipper2$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    { _module.__default.Zipper2(_module._default.Zipper2$T, $LS($ly), a#0, b#0) } 
    _module.__default.Zipper2#canCall(_module._default.Zipper2$T, a#0, b#0)
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List(_module._default.Zipper2$T))
           && $Is(b#0, Tclass._module.List(_module._default.Zipper2$T)))
       ==> (!_module.List.Nil_q(a#0)
           ==> (var c#1 := _module.List._h1(a#0); 
            _module.__default.Zipper2#canCall(_module._default.Zipper2$T, b#0, c#1)))
         && _module.__default.Zipper2(_module._default.Zipper2$T, $LS($ly), a#0, b#0)
           == (if _module.List.Nil_q(a#0)
             then b#0
             else (var c#0 := _module.List._h1(a#0); 
              (var x#0 := _module.List._h0(a#0); 
                #_module.List.Cons(x#0, _module.__default.Zipper2(_module._default.Zipper2$T, $ly, b#0, c#0))))));
// definition axiom for _module.__default.Zipper2 for all literals (revealed)
axiom {:id "id95"} 1 <= $FunctionContextHeight
   ==> (forall _module._default.Zipper2$T: Ty, 
      $ly: LayerType, 
      a#0: DatatypeType, 
      b#0: DatatypeType :: 
    {:weight 3} { _module.__default.Zipper2(_module._default.Zipper2$T, $LS($ly), Lit(a#0), Lit(b#0)) } 
    _module.__default.Zipper2#canCall(_module._default.Zipper2$T, Lit(a#0), Lit(b#0))
         || (1 < $FunctionContextHeight
           && 
          $Is(a#0, Tclass._module.List(_module._default.Zipper2$T))
           && $Is(b#0, Tclass._module.List(_module._default.Zipper2$T)))
       ==> (!Lit(_module.List.Nil_q(Lit(a#0)))
           ==> (var c#3 := Lit(_module.List._h1(Lit(a#0))); 
            _module.__default.Zipper2#canCall(_module._default.Zipper2$T, Lit(b#0), c#3)))
         && _module.__default.Zipper2(_module._default.Zipper2$T, $LS($ly), Lit(a#0), Lit(b#0))
           == (if _module.List.Nil_q(Lit(a#0))
             then b#0
             else (var c#2 := Lit(_module.List._h1(Lit(a#0))); 
              (var x#2 := Lit(_module.List._h0(Lit(a#0))); 
                Lit(#_module.List.Cons(x#2, 
                    Lit(_module.__default.Zipper2(_module._default.Zipper2$T, $LS($ly), Lit(b#0), c#2))))))));
}

function _module.__default.Zipper2#canCall(_module._default.Zipper2$T: Ty, a#0: DatatypeType, b#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall _module._default.Zipper2$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Zipper2(_module._default.Zipper2$T, $LS($ly), a#0, b#0) } 
  _module.__default.Zipper2(_module._default.Zipper2$T, $LS($ly), a#0, b#0)
     == _module.__default.Zipper2(_module._default.Zipper2$T, $ly, a#0, b#0));

// fuel synonym axiom
axiom (forall _module._default.Zipper2$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Zipper2(_module._default.Zipper2$T, AsFuelBottom($ly), a#0, b#0) } 
  _module.__default.Zipper2(_module._default.Zipper2$T, $ly, a#0, b#0)
     == _module.__default.Zipper2(_module._default.Zipper2$T, $LZ, a#0, b#0));

function _module.__default.Zipper2#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for _module.__default.Zipper2
axiom (forall _module._default.Zipper2$T: Ty, 
    $ly: LayerType, 
    a#0: DatatypeType, 
    b#0: DatatypeType :: 
  { _module.__default.Zipper2#requires(_module._default.Zipper2$T, $ly, a#0, b#0) } 
  $Is(a#0, Tclass._module.List(_module._default.Zipper2$T))
       && $Is(b#0, Tclass._module.List(_module._default.Zipper2$T))
     ==> _module.__default.Zipper2#requires(_module._default.Zipper2$T, $ly, a#0, b#0)
       == true);

procedure {:verboseName "Zipper2 (well-formedness)"} CheckWellformed$$_module.__default.Zipper2(_module._default.Zipper2$T: Ty, 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(_module._default.Zipper2$T)), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.List(_module._default.Zipper2$T)));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Zipper2 (well-formedness)"} CheckWellformed$$_module.__default.Zipper2(_module._default.Zipper2$T: Ty, a#0: DatatypeType, b#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: Box;
  var _mcc#1#0: DatatypeType;
  var c#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var x#Z#0: Box;
  var let#1#0#0: Box;
  var ##a#0: DatatypeType;
  var ##b#0: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    if (DtRank(a#0) < DtRank(b#0))
    {
    }
    else
    {
    }

    if (DtRank(a#0) < DtRank(b#0))
    {
    }
    else
    {
    }

    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(_module.__default.Zipper2(_module._default.Zipper2$T, $LS($LZ), a#0, b#0), 
          Tclass._module.List(_module._default.Zipper2$T));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (a#0 == #_module.List.Nil())
        {
            assume {:id "id102"} _module.__default.Zipper2(_module._default.Zipper2$T, $LS($LZ), a#0, b#0) == b#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Zipper2(_module._default.Zipper2$T, $LS($LZ), a#0, b#0), 
              Tclass._module.List(_module._default.Zipper2$T));
            return;
        }
        else if (a#0 == #_module.List.Cons(_mcc#0#0, _mcc#1#0))
        {
            assume $IsBox(_mcc#0#0, _module._default.Zipper2$T);
            assume $Is(_mcc#1#0, Tclass._module.List(_module._default.Zipper2$T));
            havoc c#Z#0;
            assume {:id "id96"} let#0#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.List(_module._default.Zipper2$T));
            assume {:id "id97"} c#Z#0 == let#0#0#0;
            havoc x#Z#0;
            assume {:id "id98"} let#1#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $IsBox(let#1#0#0, _module._default.Zipper2$T);
            assume {:id "id99"} x#Z#0 == let#1#0#0;
            ##a#0 := b#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##a#0, Tclass._module.List(_module._default.Zipper2$T), $Heap);
            ##b#0 := c#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##b#0, Tclass._module.List(_module._default.Zipper2$T), $Heap);
            assert {:id "id100"} DtRank((if DtRank(##a#0) < DtRank(##b#0) then ##b#0 else ##a#0))
                 < DtRank((if DtRank(a#0) < DtRank(b#0) then b#0 else a#0))
               || (DtRank((if DtRank(##a#0) < DtRank(##b#0) then ##b#0 else ##a#0))
                   == DtRank((if DtRank(a#0) < DtRank(b#0) then b#0 else a#0))
                 && DtRank((if DtRank(##a#0) < DtRank(##b#0) then ##a#0 else ##b#0))
                   < DtRank((if DtRank(a#0) < DtRank(b#0) then a#0 else b#0)));
            assume _module.__default.Zipper2#canCall(_module._default.Zipper2$T, b#0, c#Z#0);
            assume {:id "id101"} _module.__default.Zipper2(_module._default.Zipper2$T, $LS($LZ), a#0, b#0)
               == #_module.List.Cons(x#Z#0, 
                _module.__default.Zipper2(_module._default.Zipper2$T, $LS($LZ), b#0, c#Z#0));
            assume _module.__default.Zipper2#canCall(_module._default.Zipper2$T, b#0, c#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.__default.Zipper2(_module._default.Zipper2$T, $LS($LZ), a#0, b#0), 
              Tclass._module.List(_module._default.Zipper2$T));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "WhileStar0 (well-formedness)"} CheckWellFormed$$_module.__default.WhileStar0(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "WhileStar0 (call)"} Call$$_module.__default.WhileStar0(n#0: int);
  // user-defined preconditions
  requires {:id "id104"} LitInt(2) <= n#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WhileStar0 (correctness)"} Impl$$_module.__default.WhileStar0(n#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id105"} LitInt(2) <= n#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WhileStar0 (correctness)"} Impl$$_module.__default.WhileStar0(n#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: int;
  var k#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;

    // AddMethodImpl: WhileStar0, Impl$$_module.__default.WhileStar0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(281,9)
    assume true;
    assume true;
    m#0 := n#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(282,9)
    assume true;
    assume true;
    k#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(283,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id109"} $w$loop#0 ==> LitInt(0) <= k#0;
      invariant {:id "id110"} $w$loop#0 ==> LitInt(0) <= m#0;
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
            if (LitInt(0) <= k#0)
            {
            }

            assume true;
            assume {:id "id108"} LitInt(0) <= k#0 && LitInt(0) <= m#0;
            assume true;
            assume false;
        }

        if (*)
        {
            break;
        }

        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(287,7)
        assume true;
        assume true;
        k#0 := k#0 + m#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(288,7)
        assume true;
        assume true;
        m#0 := m#0 + k#0;
        pop;
        assume true;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(290,3)
    assume true;
    assert {:id "id113"} LitInt(0) <= k#0;
}



procedure {:verboseName "WhileStar1 (well-formedness)"} CheckWellFormed$$_module.__default.WhileStar1();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "WhileStar1 (call)"} Call$$_module.__default.WhileStar1();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WhileStar1 (correctness)"} Impl$$_module.__default.WhileStar1() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WhileStar1 (correctness)"} Impl$$_module.__default.WhileStar1() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;

    // AddMethodImpl: WhileStar1, Impl$$_module.__default.WhileStar1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(295,9)
    assume true;
    assume true;
    k#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(296,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume false;
        }

        if (*)
        {
            break;
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(298,7)
        assume true;
        assume true;
        k#0 := k#0 + 1;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(299,5)
        assume true;
        if (k#0 == LitInt(17))
        {
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(299,18)
            goto after_0;
        }
        else
        {
        }

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(296,3)
        assert {:id "id116"} false;
    }

  after_0:
}



procedure {:verboseName "WhileStar2 (well-formedness)"} CheckWellFormed$$_module.__default.WhileStar2();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "WhileStar2 (call)"} Call$$_module.__default.WhileStar2();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "WhileStar2 (correctness)"} Impl$$_module.__default.WhileStar2() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "WhileStar2 (correctness)"} Impl$$_module.__default.WhileStar2() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var k#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: WhileStar2, Impl$$_module.__default.WhileStar2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(305,9)
    assume true;
    assume true;
    k#0 := LitInt(0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(306,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := 17 - k#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id119"} $w$loop#0 ==> k#0 < 17;
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
      free invariant 17 - k#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id118"} k#0 < 17;
            assume true;
            assume false;
        }

        if (*)
        {
            break;
        }

        $decr$loop#00 := 17 - k#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(310,7)
        assume true;
        assume true;
        k#0 := k#0 + 1;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(311,5)
        assume true;
        if (k#0 == LitInt(17))
        {
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(311,18)
            goto after_0;
        }
        else
        {
        }

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(306,3)
        assert {:id "id121"} 0 <= $decr$loop#00 || 17 - k#0 == $decr$loop#00;
        assert {:id "id122"} 17 - k#0 < $decr$loop#00;
        assume true;
    }

  after_0:
}



// function declaration for _module._default.ReachBack
function _module.__default.ReachBack($ly: LayerType, n#0: int) : bool
uses {
// consequence axiom for _module.__default.ReachBack
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.ReachBack($ly, n#0) } 
    _module.__default.ReachBack#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> _module.__default.ReachBack($ly, n#0));
// definition axiom for _module.__default.ReachBack (revealed)
axiom {:id "id123"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.ReachBack($LS($ly), n#0) } 
    _module.__default.ReachBack#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (forall m#0: int :: 
          { _module.__default.ReachBack($ly, m#0) } 
          LitInt(0) <= m#0 ==> m#0 < n#0 ==> _module.__default.ReachBack#canCall(m#0))
         && _module.__default.ReachBack($LS($ly), n#0)
           == (forall m#0: int :: 
            { _module.__default.ReachBack($ly, m#0) } 
            LitInt(0) <= m#0 && m#0 < n#0 ==> _module.__default.ReachBack($ly, m#0)));
// definition axiom for _module.__default.ReachBack for all literals (revealed)
axiom {:id "id124"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.ReachBack($LS($ly), LitInt(n#0)) } 
    _module.__default.ReachBack#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= LitInt(n#0))
       ==> (forall m#1: int :: 
          { _module.__default.ReachBack($LS($ly), m#1) } 
          LitInt(0) <= m#1 ==> m#1 < n#0 ==> _module.__default.ReachBack#canCall(m#1))
         && _module.__default.ReachBack($LS($ly), LitInt(n#0))
           == (forall m#1: int :: 
            { _module.__default.ReachBack($LS($ly), m#1) } 
            LitInt(0) <= m#1 && m#1 < n#0 ==> _module.__default.ReachBack($LS($ly), m#1)));
}

function _module.__default.ReachBack#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.ReachBack($LS($ly), n#0) } 
  _module.__default.ReachBack($LS($ly), n#0)
     == _module.__default.ReachBack($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.ReachBack(AsFuelBottom($ly), n#0) } 
  _module.__default.ReachBack($ly, n#0) == _module.__default.ReachBack($LZ, n#0));

function _module.__default.ReachBack#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.ReachBack
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.ReachBack#requires($ly, n#0) } 
  _module.__default.ReachBack#requires($ly, n#0) == (LitInt(0) <= n#0));

procedure {:verboseName "ReachBack (well-formedness)"} CheckWellformed$$_module.__default.ReachBack(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id125"} _module.__default.ReachBack($LS($LS($LZ)), n#0);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ReachBack (well-formedness)"} CheckWellformed$$_module.__default.ReachBack(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;
  var m#2: int;
  var ##n#1: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id126"} LitInt(0) <= n#0;
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        ##n#0 := n#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##n#0, TInt, $Heap);
        assert {:id "id127"} {:subsumption 0} LitInt(0) <= ##n#0;
        assume LitInt(0) <= ##n#0;
        assert {:id "id128"} 0 <= n#0 || ##n#0 == n#0;
        assert {:id "id129"} n#0 == n#0 || ##n#0 < n#0;
        assume n#0 == n#0 || _module.__default.ReachBack#canCall(n#0);
        assume {:id "id130"} _module.__default.ReachBack($LS($LZ), n#0);
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        // Begin Comprehension WF check
        havoc m#2;
        if (true)
        {
            if (LitInt(0) <= m#2)
            {
            }

            if (LitInt(0) <= m#2 && m#2 < n#0)
            {
                ##n#1 := m#2;
                // assume allocatedness for argument to function
                assume $IsAlloc(##n#1, TInt, $Heap);
                assert {:id "id131"} {:subsumption 0} LitInt(0) <= ##n#1;
                assume LitInt(0) <= ##n#1;
                assert {:id "id132"} 0 <= n#0 || ##n#1 == n#0;
                assert {:id "id133"} ##n#1 < n#0;
                assume _module.__default.ReachBack#canCall(m#2);
            }
        }

        // End Comprehension WF check
        assume {:id "id134"} _module.__default.ReachBack($LS($LZ), n#0)
           == (forall m#3: int :: 
            { _module.__default.ReachBack($LS($LZ), m#3) } 
            LitInt(0) <= m#3 && m#3 < n#0 ==> _module.__default.ReachBack($LS($LZ), m#3));
        assume (forall m#3: int :: 
          { _module.__default.ReachBack($LS($LZ), m#3) } 
          LitInt(0) <= m#3 ==> m#3 < n#0 ==> _module.__default.ReachBack#canCall(m#3));
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.ReachBack($LS($LZ), n#0), TBool);
        return;

        assume false;
    }
}



// function declaration for _module._default.ReachBack_Alt
function _module.__default.ReachBack__Alt($ly: LayerType, n#0: int) : bool
uses {
// definition axiom for _module.__default.ReachBack__Alt (revealed)
axiom {:id "id135"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    { _module.__default.ReachBack__Alt($LS($ly), n#0) } 
    _module.__default.ReachBack__Alt#canCall(n#0)
         || (0 < $FunctionContextHeight && LitInt(0) <= n#0)
       ==> (n#0 != LitInt(0) ==> _module.__default.ReachBack__Alt#canCall(n#0 - 1))
         && _module.__default.ReachBack__Alt($LS($ly), n#0)
           == (n#0 == LitInt(0) || _module.__default.ReachBack__Alt($ly, n#0 - 1)));
// definition axiom for _module.__default.ReachBack__Alt for all literals (revealed)
axiom {:id "id136"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, n#0: int :: 
    {:weight 3} { _module.__default.ReachBack__Alt($LS($ly), LitInt(n#0)) } 
    _module.__default.ReachBack__Alt#canCall(LitInt(n#0))
         || (0 < $FunctionContextHeight && LitInt(0) <= LitInt(n#0))
       ==> (LitInt(n#0) != LitInt(0)
           ==> _module.__default.ReachBack__Alt#canCall(LitInt(n#0 - 1)))
         && _module.__default.ReachBack__Alt($LS($ly), LitInt(n#0))
           == (LitInt(n#0) == LitInt(0)
             || _module.__default.ReachBack__Alt($LS($ly), LitInt(n#0 - 1))));
}

function _module.__default.ReachBack__Alt#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.ReachBack__Alt($LS($ly), n#0) } 
  _module.__default.ReachBack__Alt($LS($ly), n#0)
     == _module.__default.ReachBack__Alt($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.ReachBack__Alt(AsFuelBottom($ly), n#0) } 
  _module.__default.ReachBack__Alt($ly, n#0)
     == _module.__default.ReachBack__Alt($LZ, n#0));

function _module.__default.ReachBack__Alt#requires(LayerType, int) : bool;

// #requires axiom for _module.__default.ReachBack__Alt
axiom (forall $ly: LayerType, n#0: int :: 
  { _module.__default.ReachBack__Alt#requires($ly, n#0) } 
  _module.__default.ReachBack__Alt#requires($ly, n#0) == (LitInt(0) <= n#0));

procedure {:verboseName "ReachBack_Alt (well-formedness)"} CheckWellformed$$_module.__default.ReachBack__Alt(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ReachBack_Alt (well-formedness)"} CheckWellformed$$_module.__default.ReachBack__Alt(n#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var ##n#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    assume {:id "id137"} LitInt(0) <= n#0;
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
        if (n#0 != LitInt(0))
        {
            ##n#0 := n#0 - 1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            assert {:id "id138"} {:subsumption 0} LitInt(0) <= ##n#0;
            assume LitInt(0) <= ##n#0;
            assert {:id "id139"} 0 <= n#0 || ##n#0 == n#0;
            assert {:id "id140"} ##n#0 < n#0;
            assume _module.__default.ReachBack__Alt#canCall(n#0 - 1);
        }

        assume {:id "id141"} _module.__default.ReachBack__Alt($LS($LZ), n#0)
           == (n#0 == LitInt(0) || _module.__default.ReachBack__Alt($LS($LZ), n#0 - 1));
        assume n#0 != LitInt(0) ==> _module.__default.ReachBack__Alt#canCall(n#0 - 1);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.__default.ReachBack__Alt($LS($LZ), n#0), TBool);
        return;

        assume false;
    }
}



procedure {:verboseName "Lemma_ReachBack (well-formedness)"} CheckWellFormed$$_module.__default.Lemma__ReachBack();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Lemma_ReachBack (call)"} Call$$_module.__default.Lemma__ReachBack();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "Lemma_ReachBack (correctness)"} Impl$$_module.__default.Lemma__ReachBack() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Lemma_ReachBack (correctness)"} Impl$$_module.__default.Lemma__ReachBack() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: int;
  var ##n#0: int;

    // AddMethodImpl: Lemma_ReachBack, Impl$$_module.__default.Lemma__ReachBack
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(334,3)
    // Begin Comprehension WF check
    havoc m#0;
    if (true)
    {
        if (LitInt(0) <= m#0)
        {
            ##n#0 := m#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##n#0, TInt, $Heap);
            assert {:id "id142"} {:subsumption 0} LitInt(0) <= ##n#0;
            assume _module.__default.ReachBack__Alt#canCall(m#0);
        }
    }

    // End Comprehension WF check
    assume (forall m#1: int :: 
      { _module.__default.ReachBack__Alt($LS($LZ), m#1) } 
      LitInt(0) <= m#1 ==> _module.__default.ReachBack__Alt#canCall(m#1));
    assert {:id "id143"} {:subsumption 0} (forall m#1: int :: 
      { _module.__default.ReachBack__Alt($LS($LS($LZ)), m#1) } 
      (forall m$ih#0#0: int :: 
            { _module.__default.ReachBack__Alt($LS($LZ), m$ih#0#0) } 
            0 <= m$ih#0#0 && m$ih#0#0 < m#1
               ==> 
              LitInt(0) <= m$ih#0#0
               ==> _module.__default.ReachBack__Alt($LS($LZ), m$ih#0#0))
           && true
         ==> 
        LitInt(0) <= m#1
         ==> _module.__default.ReachBack__Alt($LS($LS($LZ)), m#1));
    assume {:id "id144"} (forall m#1: int :: 
      { _module.__default.ReachBack__Alt($LS($LZ), m#1) } 
      LitInt(0) <= m#1 ==> _module.__default.ReachBack__Alt($LS($LZ), m#1));
}



function Tclass._module.Tree() : Ty
uses {
// Tclass._module.Tree Tag
axiom Tag(Tclass._module.Tree()) == Tagclass._module.Tree
   && TagFamily(Tclass._module.Tree()) == tytagFamily$Tree;
}

const unique Tagclass._module.Tree: TyTag;

// Box/unbox axiom for Tclass._module.Tree
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Tree()) } 
  $IsBox(bx, Tclass._module.Tree())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Tree()));

procedure {:verboseName "ExtEvensSumToEven (well-formedness)"} CheckWellFormed$$_module.__default.ExtEvensSumToEven(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ExtEvensSumToEven (well-formedness)"} CheckWellFormed$$_module.__default.ExtEvensSumToEven(t#0: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var u#0: int;


    // AddMethodImpl: ExtEvensSumToEven, CheckWellFormed$$_module.__default.ExtEvensSumToEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc u#0;
    assume true;
    if (*)
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass._module.Tree(), $Heap);
        assume _module.Tree.Elements#canCall(t#0);
        assume {:id "id145"} Set#IsMember(_module.Tree.Elements($LS($LZ), t#0), $Box(u#0));
        assert {:id "id146"} LitInt(2) != 0;
        assume {:id "id147"} Mod(u#0, LitInt(2)) == LitInt(0);
    }
    else
    {
        assume {:id "id148"} Set#IsMember(_module.Tree.Elements($LS($LZ), t#0), $Box(u#0))
           ==> Mod(u#0, LitInt(2)) == LitInt(0);
    }

    assume {:id "id149"} (forall u#1: int :: 
      { Set#IsMember(_module.Tree.Elements($LS($LZ), t#0), $Box(u#1)) } 
      Set#IsMember(_module.Tree.Elements($LS($LZ), t#0), $Box(u#1))
         ==> Mod(u#1, LitInt(2)) == LitInt(0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(t#0), Tclass._module.Tree(), $Heap);
    assume _module.Tree.Sum#canCall(t#0);
    assert {:id "id150"} LitInt(2) != 0;
    assume {:id "id151"} Mod(_module.Tree.Sum($LS($LZ), t#0), LitInt(2)) == LitInt(0);
}



procedure {:verboseName "ExtEvensSumToEven (call)"} Call$$_module.__default.ExtEvensSumToEven(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0));
  // user-defined preconditions
  requires {:id "id152"} (forall u#1: int :: 
    { Set#IsMember(_module.Tree.Elements($LS($LS($LZ)), t#0), $Box(u#1)) } 
    Set#IsMember(_module.Tree.Elements($LS($LS($LZ)), t#0), $Box(u#1))
       ==> Mod(u#1, LitInt(2)) == LitInt(0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Tree.Sum#canCall(t#0);
  ensures {:id "id153"} Mod(_module.Tree.Sum($LS($LS($LZ)), t#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "ExtEvensSumToEven (correctness)"} Impl$$_module.__default.ExtEvensSumToEven(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tree())
         && $IsAlloc(t#0, Tclass._module.Tree(), $Heap)
         && $IsA#_module.Tree(t#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id154"} (forall u#1: int :: 
    { Set#IsMember(_module.Tree.Elements($LS($LZ), t#0), $Box(u#1)) } 
    Set#IsMember(_module.Tree.Elements($LS($LZ), t#0), $Box(u#1))
       ==> Mod(u#1, LitInt(2)) == LitInt(0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Tree.Sum#canCall(t#0);
  ensures {:id "id155"} Mod(_module.Tree.Sum($LS($LS($LZ)), t#0), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ExtEvensSumToEven (correctness)"} Impl$$_module.__default.ExtEvensSumToEven(t#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var _mcc#2#0_0: DatatypeType;
  var right#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var left#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var x#0_0: int;
  var let#0_2#0#0: int;
  var t##0_0: DatatypeType;
  var t##0_1: DatatypeType;

    // AddMethodImpl: ExtEvensSumToEven, Impl$$_module.__default.ExtEvensSumToEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0;
    if (t#0 == #_module.Tree.Empty())
    {
    }
    else if (t#0 == #_module.Tree.Node(_mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.Tree());
        assume $Is(_mcc#2#0_0, Tclass._module.Tree());
        havoc right#0_0;
        assume $Is(right#0_0, Tclass._module.Tree())
           && $IsAlloc(right#0_0, Tclass._module.Tree(), $Heap);
        assume {:id "id156"} let#0_0#0#0 == _mcc#2#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Tree());
        assume {:id "id157"} right#0_0 == let#0_0#0#0;
        havoc left#0_0;
        assume $Is(left#0_0, Tclass._module.Tree())
           && $IsAlloc(left#0_0, Tclass._module.Tree(), $Heap);
        assume {:id "id158"} let#0_1#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.Tree());
        assume {:id "id159"} left#0_0 == let#0_1#0#0;
        havoc x#0_0;
        assume {:id "id160"} let#0_2#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_2#0#0, TInt);
        assume {:id "id161"} x#0_0 == let#0_2#0#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(525,5)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass._module.Tree(), $Heap);
        assume _module.Tree.Elements#canCall(t#0);
        assume _module.Tree.Elements#canCall(t#0);
        assert {:id "id162"} {:subsumption 0} Set#IsMember(_module.Tree.Elements($LS($LS($LZ)), t#0), $Box(x#0_0));
        assume {:id "id163"} Set#IsMember(_module.Tree.Elements($LS($LZ), t#0), $Box(x#0_0));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(526,5)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(left#0_0), Tclass._module.Tree(), $Heap);
        assume _module.Tree.Elements#canCall(left#0_0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass._module.Tree(), $Heap);
        assume _module.Tree.Elements#canCall(t#0);
        assume _module.Tree.Elements#canCall(left#0_0) && _module.Tree.Elements#canCall(t#0);
        assert {:id "id164"} {:subsumption 0} Set#Subset(_module.Tree.Elements($LS($LS($LZ)), left#0_0), 
          _module.Tree.Elements($LS($LS($LZ)), t#0));
        assume {:id "id165"} Set#Subset(_module.Tree.Elements($LS($LZ), left#0_0), _module.Tree.Elements($LS($LZ), t#0));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(527,5)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(right#0_0), Tclass._module.Tree(), $Heap);
        assume _module.Tree.Elements#canCall(right#0_0);
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(t#0), Tclass._module.Tree(), $Heap);
        assume _module.Tree.Elements#canCall(t#0);
        assume _module.Tree.Elements#canCall(right#0_0) && _module.Tree.Elements#canCall(t#0);
        assert {:id "id166"} {:subsumption 0} Set#Subset(_module.Tree.Elements($LS($LS($LZ)), right#0_0), 
          _module.Tree.Elements($LS($LS($LZ)), t#0));
        assume {:id "id167"} Set#Subset(_module.Tree.Elements($LS($LZ), right#0_0), _module.Tree.Elements($LS($LZ), t#0));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(528,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        t##0_0 := left#0_0;
        assert {:id "id168"} DtRank(t##0_0) < DtRank(t#0);
        call {:id "id169"} Call$$_module.__default.ExtEvensSumToEven(t##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(529,22)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        t##0_1 := right#0_0;
        assert {:id "id170"} DtRank(t##0_1) < DtRank(t#0);
        call {:id "id171"} Call$$_module.__default.ExtEvensSumToEven(t##0_1);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "LoopyInt (well-formedness)"} CheckWellFormed$$_module.__default.LoopyInt(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopyInt (call)"} Call$$_module.__default.LoopyInt(x#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LoopyInt (correctness)"} Impl$$_module.__default.LoopyInt(x#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopyInt (correctness)"} Impl$$_module.__default.LoopyInt(x#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: LoopyInt, Impl$$_module.__default.LoopyInt
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(534,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := LitInt(58);
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
      free invariant LitInt(58) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (100 <= x#0)
        {
            break;
        }

        $decr$loop#00 := LitInt(58);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(534,3)
        assert {:id "id172"} 0 <= $decr$loop#00 || LitInt(58) == $decr$loop#00;
        assert {:id "id173"} LitInt(58) < $decr$loop#00;
    }
}



procedure {:verboseName "LoopyISet (well-formedness)"} CheckWellFormed$$_module.__default.LoopyISet(m#0: IMap
       where $Is(m#0, TIMap(TInt, TInt)) && $IsAlloc(m#0, TIMap(TInt, TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopyISet (call)"} Call$$_module.__default.LoopyISet(m#0: IMap
       where $Is(m#0, TIMap(TInt, TInt)) && $IsAlloc(m#0, TIMap(TInt, TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LoopyISet (correctness)"} Impl$$_module.__default.LoopyISet(m#0: IMap
       where $Is(m#0, TIMap(TInt, TInt)) && $IsAlloc(m#0, TIMap(TInt, TInt), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopyISet (correctness)"} Impl$$_module.__default.LoopyISet(m#0: IMap) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: ISet;
  var $w$loop#0: bool;
  var $decr$loop#00: ISet;

    // AddMethodImpl: LoopyISet, Impl$$_module.__default.LoopyISet
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(542,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := IMap#Domain(m#0);
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
      free invariant ISet#Equal(IMap#Domain(m#0), $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (IMap#Equal(m#0, IMap#Empty(): IMap))
        {
            break;
        }

        $decr$loop#00 := IMap#Domain(m#0);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(542,3)
        assert {:id "id174"} false;
    }
}



procedure {:verboseName "LoopyIMap (well-formedness)"} CheckWellFormed$$_module.__default.LoopyIMap(x#0: int, 
    m#0: IMap
       where $Is(m#0, TIMap(TInt, TInt)) && $IsAlloc(m#0, TIMap(TInt, TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopyIMap (call)"} Call$$_module.__default.LoopyIMap(x#0: int, 
    m#0: IMap
       where $Is(m#0, TIMap(TInt, TInt)) && $IsAlloc(m#0, TIMap(TInt, TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LoopyIMap (correctness)"} Impl$$_module.__default.LoopyIMap(x#0: int, 
    m#0: IMap
       where $Is(m#0, TIMap(TInt, TInt)) && $IsAlloc(m#0, TIMap(TInt, TInt), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopyIMap (correctness)"} Impl$$_module.__default.LoopyIMap(x#0: int, m#0: IMap) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: IMap;
  var $w$loop#0: bool;
  var $decr$loop#00: IMap;

    // AddMethodImpl: LoopyIMap, Impl$$_module.__default.LoopyIMap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(549,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := m#0;
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
      free invariant ISet#Equal(IMap#Domain(m#0), IMap#Domain($decr_init$loop#00));
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (100 <= x#0)
        {
            break;
        }

        $decr$loop#00 := m#0;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(549,3)
        assert {:id "id175"} false;
    }
}



procedure {:verboseName "LoopyFunction (well-formedness)"} CheckWellFormed$$_module.__default.LoopyFunction(x#0: int, 
    f#0: HandleType
       where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopyFunction (call)"} Call$$_module.__default.LoopyFunction(x#0: int, 
    f#0: HandleType
       where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LoopyFunction (correctness)"} Impl$$_module.__default.LoopyFunction(x#0: int, 
    f#0: HandleType
       where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopyFunction (correctness)"} Impl$$_module.__default.LoopyFunction(x#0: int, f#0: HandleType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: HandleType;
  var $w$loop#0: bool;
  var $decr$loop#00: HandleType;

    // AddMethodImpl: LoopyFunction, Impl$$_module.__default.LoopyFunction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(556,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := f#0;
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
      free invariant f#0 == $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (100 <= x#0)
        {
            break;
        }

        $decr$loop#00 := f#0;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(556,3)
        assert {:id "id176"} false;
    }
}



procedure {:verboseName "LoopyTypeParam (well-formedness)"} CheckWellFormed$$_module.__default.LoopyTypeParam(_module._default.LoopyTypeParam$Y: Ty, 
    x#0: int, 
    y#0: Box
       where $IsBox(y#0, _module._default.LoopyTypeParam$Y)
         && $IsAllocBox(y#0, _module._default.LoopyTypeParam$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopyTypeParam (call)"} Call$$_module.__default.LoopyTypeParam(_module._default.LoopyTypeParam$Y: Ty, 
    x#0: int, 
    y#0: Box
       where $IsBox(y#0, _module._default.LoopyTypeParam$Y)
         && $IsAllocBox(y#0, _module._default.LoopyTypeParam$Y, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LoopyTypeParam (correctness)"} Impl$$_module.__default.LoopyTypeParam(_module._default.LoopyTypeParam$Y: Ty, 
    x#0: int, 
    y#0: Box
       where $IsBox(y#0, _module._default.LoopyTypeParam$Y)
         && $IsAllocBox(y#0, _module._default.LoopyTypeParam$Y, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopyTypeParam (correctness)"} Impl$$_module.__default.LoopyTypeParam(_module._default.LoopyTypeParam$Y: Ty, x#0: int, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Box;
  var $w$loop#0: bool;
  var $decr$loop#00: Box;

    // AddMethodImpl: LoopyTypeParam, Impl$$_module.__default.LoopyTypeParam
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(563,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := y#0;
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
      free invariant y#0 == $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (100 <= x#0)
        {
            break;
        }

        $decr$loop#00 := y#0;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(563,3)
        assert {:id "id177"} false;
    }
}



function Tclass._module.ZOT() : Ty
uses {
axiom $AlwaysAllocated(Tclass._module.ZOT());
}

procedure {:verboseName "LoopyOpaqueType (well-formedness)"} CheckWellFormed$$_module.__default.LoopyOpaqueType(x#0: int, 
    z#0: Box
       where $IsBox(z#0, Tclass._module.ZOT())
         && $IsAllocBox(z#0, Tclass._module.ZOT(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopyOpaqueType (call)"} Call$$_module.__default.LoopyOpaqueType(x#0: int, 
    z#0: Box
       where $IsBox(z#0, Tclass._module.ZOT())
         && $IsAllocBox(z#0, Tclass._module.ZOT(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LoopyOpaqueType (correctness)"} Impl$$_module.__default.LoopyOpaqueType(x#0: int, 
    z#0: Box
       where $IsBox(z#0, Tclass._module.ZOT())
         && $IsAllocBox(z#0, Tclass._module.ZOT(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopyOpaqueType (correctness)"} Impl$$_module.__default.LoopyOpaqueType(x#0: int, z#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Box;
  var $w$loop#0: bool;
  var $decr$loop#00: Box;

    // AddMethodImpl: LoopyOpaqueType, Impl$$_module.__default.LoopyOpaqueType
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(571,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := z#0;
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
      free invariant z#0 == $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (100 <= x#0)
        {
            break;
        }

        $decr$loop#00 := z#0;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(571,3)
        assert {:id "id178"} false;
    }
}



function Tclass._module.SubZOT() : Ty
uses {
// Tclass._module.SubZOT Tag
axiom Tag(Tclass._module.SubZOT()) == Tagclass._module.SubZOT
   && TagFamily(Tclass._module.SubZOT()) == tytagFamily$SubZOT;
}

const unique Tagclass._module.SubZOT: TyTag;

procedure {:verboseName "LoopySubsetType (well-formedness)"} CheckWellFormed$$_module.__default.LoopySubsetType(x#0: int, 
    z#0: Box
       where $IsBox(z#0, Tclass._module.SubZOT())
         && $IsAllocBox(z#0, Tclass._module.SubZOT(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopySubsetType (call)"} Call$$_module.__default.LoopySubsetType(x#0: int, 
    z#0: Box
       where $IsBox(z#0, Tclass._module.SubZOT())
         && $IsAllocBox(z#0, Tclass._module.SubZOT(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LoopySubsetType (correctness)"} Impl$$_module.__default.LoopySubsetType(x#0: int, 
    z#0: Box
       where $IsBox(z#0, Tclass._module.SubZOT())
         && $IsAllocBox(z#0, Tclass._module.SubZOT(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopySubsetType (correctness)"} Impl$$_module.__default.LoopySubsetType(x#0: int, z#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Box;
  var $w$loop#0: bool;
  var $decr$loop#00: Box;

    // AddMethodImpl: LoopySubsetType, Impl$$_module.__default.LoopySubsetType
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(579,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := z#0;
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
      free invariant z#0 == $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (100 <= x#0)
        {
            break;
        }

        $decr$loop#00 := z#0;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(579,3)
        assert {:id "id179"} false;
    }
}



function Tclass._module.Forever() : Ty
uses {
// Tclass._module.Forever Tag
axiom Tag(Tclass._module.Forever()) == Tagclass._module.Forever
   && TagFamily(Tclass._module.Forever()) == tytagFamily$Forever;
}

const unique Tagclass._module.Forever: TyTag;

// Box/unbox axiom for Tclass._module.Forever
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Forever()) } 
  $IsBox(bx, Tclass._module.Forever())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Forever()));

procedure {:verboseName "LoopyForever (well-formedness)"} CheckWellFormed$$_module.__default.LoopyForever(x#0: int, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.Forever())
         && $IsAlloc(f#0, Tclass._module.Forever(), $Heap)
         && $IsA#_module.Forever(f#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LoopyForever (call)"} Call$$_module.__default.LoopyForever(x#0: int, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.Forever())
         && $IsAlloc(f#0, Tclass._module.Forever(), $Heap)
         && $IsA#_module.Forever(f#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LoopyForever (correctness)"} Impl$$_module.__default.LoopyForever(x#0: int, 
    f#0: DatatypeType
       where $Is(f#0, Tclass._module.Forever())
         && $IsAlloc(f#0, Tclass._module.Forever(), $Heap)
         && $IsA#_module.Forever(f#0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LoopyForever (correctness)"} Impl$$_module.__default.LoopyForever(x#0: int, f#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var f#1: DatatypeType
     where $Is(f#1, Tclass._module.Forever())
       && $IsAlloc(f#1, Tclass._module.Forever(), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: DatatypeType;
  var $w$loop#0: bool;
  var $decr$loop#00: DatatypeType;

    // AddMethodImpl: LoopyForever, Impl$$_module.__default.LoopyForever
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(588,9)
    assume true;
    assume true;
    f#1 := f#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(589,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := f#1;
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
      free invariant DtRank(f#1) <= DtRank($decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (100 <= x#0)
        {
            break;
        }

        $decr$loop#00 := f#1;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(592,7)
        assume true;
        assume _module.Forever.More_q(f#1);
        assume _module.Forever.More_q(f#1);
        f#1 := _module.Forever.next(f#1);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(589,3)
        assert {:id "id182"} DtRank(f#1) < DtRank($decr$loop#00);
    }
}



procedure {:verboseName "GoodLoop (well-formedness)"} CheckWellFormed$$_module.__default.GoodLoop(_module._default.GoodLoop$Y: Ty, 
    x#0: int, 
    y#0: Box
       where $IsBox(y#0, _module._default.GoodLoop$Y)
         && $IsAllocBox(y#0, _module._default.GoodLoop$Y, $Heap), 
    z0#0: Box
       where $IsBox(z0#0, Tclass._module.ZOT())
         && $IsAllocBox(z0#0, Tclass._module.ZOT(), $Heap), 
    z1#0: Box
       where $IsBox(z1#0, Tclass._module.SubZOT())
         && $IsAllocBox(z1#0, Tclass._module.SubZOT(), $Heap), 
    f#0: HandleType
       where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap), 
    forever#0: DatatypeType
       where $Is(forever#0, Tclass._module.Forever())
         && $IsAlloc(forever#0, Tclass._module.Forever(), $Heap)
         && $IsA#_module.Forever(forever#0), 
    m#0: IMap
       where $Is(m#0, TIMap(TInt, TInt)) && $IsAlloc(m#0, TIMap(TInt, TInt), $Heap), 
    s#0: ISet where $Is(s#0, TISet(TInt)) && $IsAlloc(s#0, TISet(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GoodLoop (call)"} Call$$_module.__default.GoodLoop(_module._default.GoodLoop$Y: Ty, 
    x#0: int, 
    y#0: Box
       where $IsBox(y#0, _module._default.GoodLoop$Y)
         && $IsAllocBox(y#0, _module._default.GoodLoop$Y, $Heap), 
    z0#0: Box
       where $IsBox(z0#0, Tclass._module.ZOT())
         && $IsAllocBox(z0#0, Tclass._module.ZOT(), $Heap), 
    z1#0: Box
       where $IsBox(z1#0, Tclass._module.SubZOT())
         && $IsAllocBox(z1#0, Tclass._module.SubZOT(), $Heap), 
    f#0: HandleType
       where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap), 
    forever#0: DatatypeType
       where $Is(forever#0, Tclass._module.Forever())
         && $IsAlloc(forever#0, Tclass._module.Forever(), $Heap)
         && $IsA#_module.Forever(forever#0), 
    m#0: IMap
       where $Is(m#0, TIMap(TInt, TInt)) && $IsAlloc(m#0, TIMap(TInt, TInt), $Heap), 
    s#0: ISet where $Is(s#0, TISet(TInt)) && $IsAlloc(s#0, TISet(TInt), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "GoodLoop (correctness)"} Impl$$_module.__default.GoodLoop(_module._default.GoodLoop$Y: Ty, 
    x#0: int, 
    y#0: Box
       where $IsBox(y#0, _module._default.GoodLoop$Y)
         && $IsAllocBox(y#0, _module._default.GoodLoop$Y, $Heap), 
    z0#0: Box
       where $IsBox(z0#0, Tclass._module.ZOT())
         && $IsAllocBox(z0#0, Tclass._module.ZOT(), $Heap), 
    z1#0: Box
       where $IsBox(z1#0, Tclass._module.SubZOT())
         && $IsAllocBox(z1#0, Tclass._module.SubZOT(), $Heap), 
    f#0: HandleType
       where $Is(f#0, Tclass._System.___hTotalFunc1(TInt, TInt))
         && $IsAlloc(f#0, Tclass._System.___hTotalFunc1(TInt, TInt), $Heap), 
    forever#0: DatatypeType
       where $Is(forever#0, Tclass._module.Forever())
         && $IsAlloc(forever#0, Tclass._module.Forever(), $Heap)
         && $IsA#_module.Forever(forever#0), 
    m#0: IMap
       where $Is(m#0, TIMap(TInt, TInt)) && $IsAlloc(m#0, TIMap(TInt, TInt), $Heap), 
    s#0: ISet where $Is(s#0, TISet(TInt)) && $IsAlloc(s#0, TISet(TInt), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "GoodLoop (correctness)"} Impl$$_module.__default.GoodLoop(_module._default.GoodLoop$Y: Ty, 
    x#0: int, 
    y#0: Box, 
    z0#0: Box, 
    z1#0: Box, 
    f#0: HandleType, 
    forever#0: DatatypeType, 
    m#0: IMap, 
    s#0: ISet)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Box;
  var $decr_init$loop#01: Box;
  var $decr_init$loop#02: Box;
  var $decr_init$loop#03: HandleType;
  var $decr_init$loop#04: DatatypeType;
  var $decr_init$loop#05: IMap;
  var $decr_init$loop#06: ISet;
  var $decr_init$loop#07: int;
  var $w$loop#0: bool;
  var $decr$loop#00: Box;
  var $decr$loop#01: Box;
  var $decr$loop#02: Box;
  var $decr$loop#03: HandleType;
  var $decr$loop#04: DatatypeType;
  var $decr$loop#05: IMap;
  var $decr$loop#06: ISet;
  var $decr$loop#07: int;

    // AddMethodImpl: GoodLoop, Impl$$_module.__default.GoodLoop
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(598,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(599,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := y#0;
    $decr_init$loop#01 := z0#0;
    $decr_init$loop#02 := z1#0;
    $decr_init$loop#03 := f#0;
    $decr_init$loop#04 := forever#0;
    $decr_init$loop#05 := m#0;
    $decr_init$loop#06 := s#0;
    $decr_init$loop#07 := x#0 - i#0;
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
      free invariant y#0 == $decr_init$loop#00
         && (y#0 == $decr_init$loop#00
           ==> z0#0 == $decr_init$loop#01
             && (z0#0 == $decr_init$loop#01
               ==> z1#0 == $decr_init$loop#02
                 && (z1#0 == $decr_init$loop#02
                   ==> f#0 == $decr_init$loop#03
                     && (f#0 == $decr_init$loop#03
                       ==> DtRank(forever#0) <= DtRank($decr_init$loop#04)
                         && (DtRank(forever#0) == DtRank($decr_init$loop#04)
                           ==> ISet#Equal(IMap#Domain(m#0), IMap#Domain($decr_init$loop#05))
                             && (ISet#Equal(IMap#Domain(m#0), IMap#Domain($decr_init$loop#05))
                               ==> ISet#Equal(s#0, $decr_init$loop#06)
                                 && (ISet#Equal(s#0, $decr_init$loop#06) ==> x#0 - i#0 <= $decr_init$loop#07)))))));
    {
        if (!$w$loop#0)
        {
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume false;
        }

        assume true;
        if (x#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := y#0;
        $decr$loop#01 := z0#0;
        $decr$loop#02 := z1#0;
        $decr$loop#03 := f#0;
        $decr$loop#04 := forever#0;
        $decr$loop#05 := m#0;
        $decr$loop#06 := s#0;
        $decr$loop#07 := x#0 - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(602,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(599,3)
        assert {:id "id185"} 0 <= $decr$loop#07
           || DtRank(forever#0) < DtRank($decr$loop#04)
           || x#0 - i#0 == $decr$loop#07;
        assert {:id "id186"} y#0 == $decr$loop#00
           && 
          z0#0 == $decr$loop#01
           && 
          z1#0 == $decr$loop#02
           && 
          f#0 == $decr$loop#03
           && (DtRank(forever#0) < DtRank($decr$loop#04)
             || (DtRank(forever#0) == DtRank($decr$loop#04)
               && 
              ISet#Equal(IMap#Domain(m#0), IMap#Domain($decr$loop#05))
               && 
              ISet#Equal(s#0, $decr$loop#06)
               && x#0 - i#0 < $decr$loop#07));
    }
}



procedure {:verboseName "Sets0 (well-formedness)"} CheckWellFormed$$_module.__default.Sets0(_module._default.Sets0$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets0$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets0$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sets0 (call)"} Call$$_module.__default.Sets0(_module._default.Sets0$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets0$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets0$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sets0 (correctness)"} Impl$$_module.__default.Sets0(_module._default.Sets0$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets0$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets0$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sets0 (correctness)"} Impl$$_module.__default.Sets0(_module._default.Sets0$_T0: Ty, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.Sets0$_T0))
       && $IsAlloc(s#0, TSet(_module._default.Sets0$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.Sets0$_T0)
         && $IsAllocBox(x#0_0, _module._default.Sets0$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: Sets0, Impl$$_module.__default.Sets0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(609,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(610,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant Set#Subset(s#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Set#Equal(s#0, Set#Empty(): Set))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(611,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.Sets0$_T0)
           && $IsAllocBox(x#0_1, _module._default.Sets0$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id188"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.Sets0$_T0)
             && Set#IsMember(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id189"} Set#IsMember(s#0, x#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(612,7)
        assume true;
        assert {:id "id190"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(610,3)
        assert {:id "id192"} Set#Subset(s#0, $decr$loop#00) && !Set#Subset($decr$loop#00, s#0);
    }
}



procedure {:verboseName "Sets1 (well-formedness)"} CheckWellFormed$$_module.__default.Sets1(_module._default.Sets1$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets1$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets1$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sets1 (call)"} Call$$_module.__default.Sets1(_module._default.Sets1$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets1$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets1$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sets1 (correctness)"} Impl$$_module.__default.Sets1(_module._default.Sets1$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets1$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets1$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sets1 (correctness)"} Impl$$_module.__default.Sets1(_module._default.Sets1$_T0: Ty, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.Sets1$_T0))
       && $IsAlloc(s#0, TSet(_module._default.Sets1$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.Sets1$_T0)
         && $IsAllocBox(x#0_0, _module._default.Sets1$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: Sets1, Impl$$_module.__default.Sets1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(617,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(618,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant Set#Subset(s#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Set#Equal(Set#Empty(): Set, s#0))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(619,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.Sets1$_T0)
           && $IsAllocBox(x#0_1, _module._default.Sets1$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id194"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.Sets1$_T0)
             && Set#IsMember(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id195"} Set#IsMember(s#0, x#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(620,7)
        assume true;
        assert {:id "id196"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(618,3)
        assert {:id "id198"} Set#Subset(s#0, $decr$loop#00) && !Set#Subset($decr$loop#00, s#0);
    }
}



procedure {:verboseName "Sets2 (well-formedness)"} CheckWellFormed$$_module.__default.Sets2(_module._default.Sets2$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets2$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets2$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sets2 (call)"} Call$$_module.__default.Sets2(_module._default.Sets2$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets2$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets2$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sets2 (correctness)"} Impl$$_module.__default.Sets2(_module._default.Sets2$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets2$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets2$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sets2 (correctness)"} Impl$$_module.__default.Sets2(_module._default.Sets2$_T0: Ty, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.Sets2$_T0))
       && $IsAlloc(s#0, TSet(_module._default.Sets2$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.Sets2$_T0)
         && $IsAllocBox(x#0_0, _module._default.Sets2$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: Sets2, Impl$$_module.__default.Sets2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(625,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(626,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Card(s#0);
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
      free invariant Set#Card(s#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := Set#Card(s#0);
            assert {:id "id200"} LitInt(0) <= newtype$check#0;
            assume true;
            assume false;
        }

        assume true;
        if (!(Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)))
        {
            break;
        }

        $decr$loop#00 := Set#Card(s#0);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(627,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.Sets2$_T0)
           && $IsAllocBox(x#0_1, _module._default.Sets2$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id201"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.Sets2$_T0)
             && Set#IsMember(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id202"} Set#IsMember(s#0, x#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(628,7)
        assume true;
        assert {:id "id203"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(626,3)
        assert {:id "id205"} 0 <= $decr$loop#00 || Set#Card(s#0) == $decr$loop#00;
        assert {:id "id206"} Set#Card(s#0) < $decr$loop#00;
    }
}



procedure {:verboseName "Sets3 (well-formedness)"} CheckWellFormed$$_module.__default.Sets3(_module._default.Sets3$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets3$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets3$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sets3 (call)"} Call$$_module.__default.Sets3(_module._default.Sets3$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets3$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets3$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sets3 (correctness)"} Impl$$_module.__default.Sets3(_module._default.Sets3$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Sets3$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Sets3$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sets3 (correctness)"} Impl$$_module.__default.Sets3(_module._default.Sets3$_T0: Ty, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.Sets3$_T0))
       && $IsAlloc(s#0, TSet(_module._default.Sets3$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.Sets3$_T0)
         && $IsAllocBox(x#0_0, _module._default.Sets3$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: Sets3, Impl$$_module.__default.Sets3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(633,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(634,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Card(s#0);
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
      free invariant Set#Card(s#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := Set#Card(s#0);
            assert {:id "id208"} LitInt(0) <= newtype$check#0;
            assume true;
            assume false;
        }

        assume true;
        if (!(Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)))
        {
            break;
        }

        $decr$loop#00 := Set#Card(s#0);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(635,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.Sets3$_T0)
           && $IsAllocBox(x#0_1, _module._default.Sets3$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id209"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.Sets3$_T0)
             && Set#IsMember(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id210"} Set#IsMember(s#0, x#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(636,7)
        assume true;
        assert {:id "id211"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(634,3)
        assert {:id "id213"} 0 <= $decr$loop#00 || Set#Card(s#0) == $decr$loop#00;
        assert {:id "id214"} Set#Card(s#0) < $decr$loop#00;
    }
}



procedure {:verboseName "SetsST0 (well-formedness)"} CheckWellFormed$$_module.__default.SetsST0(_module._default.SetsST0$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST0$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST0$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST0$Y)
         && $IsAllocBox(y#0, _module._default.SetsST0$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetsST0 (call)"} Call$$_module.__default.SetsST0(_module._default.SetsST0$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST0$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST0$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST0$Y)
         && $IsAllocBox(y#0, _module._default.SetsST0$Y, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetsST0 (correctness)"} Impl$$_module.__default.SetsST0(_module._default.SetsST0$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST0$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST0$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST0$Y)
         && $IsAllocBox(y#0, _module._default.SetsST0$Y, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetsST0 (correctness)"} Impl$$_module.__default.SetsST0(_module._default.SetsST0$Y: Ty, S#0: Set, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.SetsST0$Y))
       && $IsAlloc(s#0, TSet(_module._default.SetsST0$Y), $Heap);
  var t#0: Set
     where $Is(t#0, TSet(_module._default.SetsST0$Y))
       && $IsAlloc(t#0, TSet(_module._default.SetsST0$Y), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.SetsST0$Y)
         && $IsAllocBox(x#0_0, _module._default.SetsST0$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: SetsST0, Impl$$_module.__default.SetsST0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(641,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(642,9)
    assume true;
    assume true;
    t#0 := Set#UnionOne(Set#Empty(): Set, y#0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(643,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Card(Set#Difference(s#0, t#0));
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
      free invariant Set#Card(Set#Difference(s#0, t#0)) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := Set#Card(Set#Difference(s#0, t#0));
            assert {:id "id217"} LitInt(0) <= newtype$check#0;
            assume true;
            assume false;
        }

        assume true;
        if (!(Set#Subset(t#0, s#0) && !Set#Subset(s#0, t#0)))
        {
            break;
        }

        $decr$loop#00 := Set#Card(Set#Difference(s#0, t#0));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(644,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.SetsST0$Y)
           && $IsAllocBox(x#0_1, _module._default.SetsST0$Y, $Heap))
        {
            if (Set#IsMember(s#0, x#0_1))
            {
            }

            assume true;
        }

        assert {:id "id218"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.SetsST0$Y)
             && 
            Set#IsMember(s#0, $as#x0_0#0_0)
             && $as#x0_0#0_0 != y#0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id219"} Set#IsMember(s#0, x#0_0) && x#0_0 != y#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(645,7)
        assume true;
        assert {:id "id220"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(643,3)
        assert {:id "id222"} 0 <= $decr$loop#00 || Set#Card(Set#Difference(s#0, t#0)) == $decr$loop#00;
        assert {:id "id223"} Set#Card(Set#Difference(s#0, t#0)) < $decr$loop#00;
    }
}



procedure {:verboseName "SetsST1 (well-formedness)"} CheckWellFormed$$_module.__default.SetsST1(_module._default.SetsST1$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST1$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST1$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST1$Y)
         && $IsAllocBox(y#0, _module._default.SetsST1$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetsST1 (call)"} Call$$_module.__default.SetsST1(_module._default.SetsST1$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST1$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST1$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST1$Y)
         && $IsAllocBox(y#0, _module._default.SetsST1$Y, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetsST1 (correctness)"} Impl$$_module.__default.SetsST1(_module._default.SetsST1$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST1$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST1$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST1$Y)
         && $IsAllocBox(y#0, _module._default.SetsST1$Y, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetsST1 (correctness)"} Impl$$_module.__default.SetsST1(_module._default.SetsST1$Y: Ty, S#0: Set, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.SetsST1$Y))
       && $IsAlloc(s#0, TSet(_module._default.SetsST1$Y), $Heap);
  var t#0: Set
     where $Is(t#0, TSet(_module._default.SetsST1$Y))
       && $IsAlloc(t#0, TSet(_module._default.SetsST1$Y), $Heap);
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.SetsST1$Y)
         && $IsAllocBox(x#0_0, _module._default.SetsST1$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: SetsST1, Impl$$_module.__default.SetsST1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(650,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(651,9)
    assume true;
    assume true;
    t#0 := Set#UnionOne(Set#Empty(): Set, y#0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(652,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Card(Set#Difference(s#0, t#0));
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
      free invariant Set#Card(Set#Difference(s#0, t#0)) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := Set#Card(Set#Difference(s#0, t#0));
            assert {:id "id226"} LitInt(0) <= newtype$check#0;
            assume true;
            assume false;
        }

        assume true;
        if (!Set#Subset(t#0, s#0))
        {
            break;
        }

        $decr$loop#00 := Set#Card(Set#Difference(s#0, t#0));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(653,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.SetsST1$Y)
           && $IsAllocBox(x#0_1, _module._default.SetsST1$Y, $Heap))
        {
            if (Set#IsMember(s#0, x#0_1))
            {
                if (x#0_1 == y#0)
                {
                }
            }

            assume true;
        }

        assert {:id "id227"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.SetsST1$Y)
             && 
            Set#IsMember(s#0, $as#x0_0#0_0)
             && ($as#x0_0#0_0 != y#0 || Set#Equal(s#0, t#0)));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id228"} Set#IsMember(s#0, x#0_0) && (x#0_0 != y#0 || Set#Equal(s#0, t#0));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(654,7)
        assume true;
        assert {:id "id229"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(655,5)
        assume true;
        if (Set#Equal(s#0, Set#Empty(): Set))
        {
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(655,18)
            goto after_0;
        }
        else
        {
        }

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(652,3)
        assert {:id "id231"} 0 <= $decr$loop#00 || Set#Card(Set#Difference(s#0, t#0)) == $decr$loop#00;
        assert {:id "id232"} Set#Card(Set#Difference(s#0, t#0)) < $decr$loop#00;
    }

  after_0:
}



procedure {:verboseName "SetsST2 (well-formedness)"} CheckWellFormed$$_module.__default.SetsST2(_module._default.SetsST2$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST2$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST2$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST2$Y)
         && $IsAllocBox(y#0, _module._default.SetsST2$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetsST2 (call)"} Call$$_module.__default.SetsST2(_module._default.SetsST2$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST2$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST2$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST2$Y)
         && $IsAllocBox(y#0, _module._default.SetsST2$Y, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetsST2 (correctness)"} Impl$$_module.__default.SetsST2(_module._default.SetsST2$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST2$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST2$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST2$Y)
         && $IsAllocBox(y#0, _module._default.SetsST2$Y, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetsST2 (correctness)"} Impl$$_module.__default.SetsST2(_module._default.SetsST2$Y: Ty, S#0: Set, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.SetsST2$Y))
       && $IsAlloc(s#0, TSet(_module._default.SetsST2$Y), $Heap);
  var t#0: Set
     where $Is(t#0, TSet(_module._default.SetsST2$Y))
       && $IsAlloc(t#0, TSet(_module._default.SetsST2$Y), $Heap);
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: Set;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var $decr$loop#00: int;
  var $decr$loop#01: Set;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.SetsST2$Y)
         && $IsAllocBox(x#0_0, _module._default.SetsST2$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: SetsST2, Impl$$_module.__default.SetsST2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(660,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(661,9)
    assume true;
    assume true;
    t#0 := Set#UnionOne(Set#Empty(): Set, y#0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(662,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0));
    $decr_init$loop#01 := (if !Set#Equal(s#0, t#0) then s#0 else Set#Empty(): Set);
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
      free invariant Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
           <= $decr_init$loop#00
         && (Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
             == $decr_init$loop#00
           ==> Set#Subset((if !Set#Equal(s#0, t#0) then s#0 else Set#Empty(): Set), $decr_init$loop#01));
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := Set#Card(Set#Difference(s#0, t#0));
            assert {:id "id235"} LitInt(0) <= newtype$check#0;
            newtype$check#1 := Set#Card(Set#Difference(t#0, s#0));
            assert {:id "id236"} LitInt(0) <= newtype$check#1;
            assume true;
            if (!Set#Equal(s#0, t#0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (!Set#Equal(s#0, t#0))
        {
        }

        assume true;
        if (!(!Set#Equal(s#0, t#0) && !Set#Equal(s#0, Set#Empty(): Set)))
        {
            break;
        }

        $decr$loop#00 := Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0));
        $decr$loop#01 := (if !Set#Equal(s#0, t#0) then s#0 else Set#Empty(): Set);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(663,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.SetsST2$Y)
           && $IsAllocBox(x#0_1, _module._default.SetsST2$Y, $Heap))
        {
            assume true;
        }

        assert {:id "id237"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.SetsST2$Y)
             && Set#IsMember(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id238"} Set#IsMember(s#0, x#0_0);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(664,5)
        assert {:id "id239"} defass#x#0_0;
        assume true;
        if (x#0_0 == y#0)
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(664,17)
            pop;
            goto after_0;

            pop;
        }
        else
        {
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(665,7)
        assume true;
        assert {:id "id240"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(662,3)
        assert {:id "id242"} 0 <= $decr$loop#00
           || Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
             == $decr$loop#00;
        assert {:id "id243"} Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
             < $decr$loop#00
           || (Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
               == $decr$loop#00
             && 
            Set#Subset((if !Set#Equal(s#0, t#0) then s#0 else Set#Empty(): Set), $decr$loop#01)
             && !Set#Subset($decr$loop#01, (if !Set#Equal(s#0, t#0) then s#0 else Set#Empty(): Set)));
    }

  after_0:
}



procedure {:verboseName "SetsST3 (well-formedness)"} CheckWellFormed$$_module.__default.SetsST3(_module._default.SetsST3$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST3$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST3$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST3$Y)
         && $IsAllocBox(y#0, _module._default.SetsST3$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetsST3 (call)"} Call$$_module.__default.SetsST3(_module._default.SetsST3$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST3$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST3$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST3$Y)
         && $IsAllocBox(y#0, _module._default.SetsST3$Y, $Heap));
  // user-defined preconditions
  requires {:id "id245"} Set#IsMember(S#0, y#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetsST3 (correctness)"} Impl$$_module.__default.SetsST3(_module._default.SetsST3$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST3$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST3$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST3$Y)
         && $IsAllocBox(y#0, _module._default.SetsST3$Y, $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id246"} Set#IsMember(S#0, y#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetsST3 (correctness)"} Impl$$_module.__default.SetsST3(_module._default.SetsST3$Y: Ty, S#0: Set, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.SetsST3$Y))
       && $IsAlloc(s#0, TSet(_module._default.SetsST3$Y), $Heap);
  var t#0: Set
     where $Is(t#0, TSet(_module._default.SetsST3$Y))
       && $IsAlloc(t#0, TSet(_module._default.SetsST3$Y), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.SetsST3$Y)
         && $IsAllocBox(x#0_0, _module._default.SetsST3$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: SetsST3, Impl$$_module.__default.SetsST3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(672,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(673,9)
    assume true;
    assume true;
    t#0 := Set#UnionOne(Set#Empty(): Set, y#0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(674,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0));
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id250"} $w$loop#0 ==> Set#Subset(t#0, s#0);
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
      free invariant Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id249"} Set#Subset(t#0, s#0);
            newtype$check#0 := Set#Card(Set#Difference(s#0, t#0));
            assert {:id "id251"} LitInt(0) <= newtype$check#0;
            newtype$check#1 := Set#Card(Set#Difference(t#0, s#0));
            assert {:id "id252"} LitInt(0) <= newtype$check#1;
            assume true;
            assume false;
        }

        assume true;
        if (Set#Equal(s#0, t#0))
        {
            break;
        }

        $decr$loop#00 := Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(677,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.SetsST3$Y)
           && $IsAllocBox(x#0_1, _module._default.SetsST3$Y, $Heap))
        {
            assume true;
        }

        assert {:id "id253"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.SetsST3$Y)
             && Set#IsMember(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id254"} Set#IsMember(s#0, x#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(678,7)
        assume true;
        assert {:id "id255"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(674,3)
        assert {:id "id257"} 0 <= $decr$loop#00
           || Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
             == $decr$loop#00;
        assert {:id "id258"} Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
           < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "SetsST4 (well-formedness)"} CheckWellFormed$$_module.__default.SetsST4(_module._default.SetsST4$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST4$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST4$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST4$Y)
         && $IsAllocBox(y#0, _module._default.SetsST4$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetsST4 (call)"} Call$$_module.__default.SetsST4(_module._default.SetsST4$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST4$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST4$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST4$Y)
         && $IsAllocBox(y#0, _module._default.SetsST4$Y, $Heap));
  // user-defined preconditions
  requires {:id "id260"} Set#IsMember(S#0, y#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetsST4 (correctness)"} Impl$$_module.__default.SetsST4(_module._default.SetsST4$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST4$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST4$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST4$Y)
         && $IsAllocBox(y#0, _module._default.SetsST4$Y, $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id261"} Set#IsMember(S#0, y#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetsST4 (correctness)"} Impl$$_module.__default.SetsST4(_module._default.SetsST4$Y: Ty, S#0: Set, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.SetsST4$Y))
       && $IsAlloc(s#0, TSet(_module._default.SetsST4$Y), $Heap);
  var t#0: Set
     where $Is(t#0, TSet(_module._default.SetsST4$Y))
       && $IsAlloc(t#0, TSet(_module._default.SetsST4$Y), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.SetsST4$Y)
         && $IsAllocBox(x#0_0, _module._default.SetsST4$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: SetsST4, Impl$$_module.__default.SetsST4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(685,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(686,9)
    assume true;
    assume true;
    t#0 := Set#UnionOne(Set#Empty(): Set, y#0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(687,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0));
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id265"} $w$loop#0 ==> Set#Subset(t#0, s#0);
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
      free invariant Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id264"} Set#Subset(t#0, s#0);
            newtype$check#0 := Set#Card(Set#Difference(s#0, t#0));
            assert {:id "id266"} LitInt(0) <= newtype$check#0;
            newtype$check#1 := Set#Card(Set#Difference(t#0, s#0));
            assert {:id "id267"} LitInt(0) <= newtype$check#1;
            assume true;
            assume false;
        }

        assume true;
        if (Set#Equal(s#0, t#0))
        {
            break;
        }

        $decr$loop#00 := Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(690,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.SetsST4$Y)
           && $IsAllocBox(x#0_1, _module._default.SetsST4$Y, $Heap))
        {
            if (Set#IsMember(s#0, x#0_1))
            {
            }

            assume true;
        }

        assert {:id "id268"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.SetsST4$Y)
             && 
            Set#IsMember(s#0, $as#x0_0#0_0)
             && $as#x0_0#0_0 != y#0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id269"} Set#IsMember(s#0, x#0_0) && x#0_0 != y#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(691,7)
        assume true;
        assert {:id "id270"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(687,3)
        assert {:id "id272"} 0 <= $decr$loop#00
           || Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
             == $decr$loop#00;
        assert {:id "id273"} Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
           < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "SetsST5 (well-formedness)"} CheckWellFormed$$_module.__default.SetsST5(_module._default.SetsST5$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST5$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST5$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST5$Y)
         && $IsAllocBox(y#0, _module._default.SetsST5$Y, $Heap), 
    P#0: Set
       where $Is(P#0, TSet(_module._default.SetsST5$Y))
         && $IsAlloc(P#0, TSet(_module._default.SetsST5$Y), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SetsST5 (call)"} Call$$_module.__default.SetsST5(_module._default.SetsST5$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST5$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST5$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST5$Y)
         && $IsAllocBox(y#0, _module._default.SetsST5$Y, $Heap), 
    P#0: Set
       where $Is(P#0, TSet(_module._default.SetsST5$Y))
         && $IsAlloc(P#0, TSet(_module._default.SetsST5$Y), $Heap));
  // user-defined preconditions
  requires {:id "id277"} Set#IsMember(S#0, y#0);
  requires {:id "id278"} !Set#Equal(P#0, Set#Empty(): Set);
  requires {:id "id279"} Set#Disjoint(S#0, P#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SetsST5 (correctness)"} Impl$$_module.__default.SetsST5(_module._default.SetsST5$Y: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.SetsST5$Y))
         && $IsAlloc(S#0, TSet(_module._default.SetsST5$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.SetsST5$Y)
         && $IsAllocBox(y#0, _module._default.SetsST5$Y, $Heap), 
    P#0: Set
       where $Is(P#0, TSet(_module._default.SetsST5$Y))
         && $IsAlloc(P#0, TSet(_module._default.SetsST5$Y), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id280"} Set#IsMember(S#0, y#0);
  requires {:id "id281"} !Set#Equal(P#0, Set#Empty(): Set);
  requires {:id "id282"} Set#Disjoint(S#0, P#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SetsST5 (correctness)"} Impl$$_module.__default.SetsST5(_module._default.SetsST5$Y: Ty, S#0: Set, y#0: Box, P#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.SetsST5$Y))
       && $IsAlloc(s#0, TSet(_module._default.SetsST5$Y), $Heap);
  var t#0: Set
     where $Is(t#0, TSet(_module._default.SetsST5$Y))
       && $IsAlloc(t#0, TSet(_module._default.SetsST5$Y), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var $decr$loop#00: int;
  var defass#z#0_0: bool;
  var z#0_0: Box
     where defass#z#0_0
       ==> $IsBox(z#0_0, _module._default.SetsST5$Y)
         && $IsAllocBox(z#0_0, _module._default.SetsST5$Y, $Heap);
  var z#0_1: Box;
  var $rhs#0_0: Set;
  var $rhs#0_1: Set;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.SetsST5$Y)
         && $IsAllocBox(x#0_0, _module._default.SetsST5$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: SetsST5, Impl$$_module.__default.SetsST5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(698,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(699,9)
    assume true;
    assume true;
    t#0 := Set#UnionOne(Set#Empty(): Set, y#0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(700,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0));
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id286"} $w$loop#0 ==> Set#Subset(Set#Intersection(s#0, P#0), t#0);
      invariant {:id "id287"} $w$loop#0 ==> Set#Subset(t#0, s#0);
      invariant {:id "id288"} $w$loop#0 ==> Set#IsMember(t#0, y#0);
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
      free invariant Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (Set#Subset(Set#Intersection(s#0, P#0), t#0))
            {
            }

            if (Set#Subset(Set#Intersection(s#0, P#0), t#0) && Set#Subset(t#0, s#0))
            {
            }

            assume true;
            assume {:id "id285"} Set#Subset(Set#Intersection(s#0, P#0), t#0)
               && Set#Subset(t#0, s#0)
               && Set#IsMember(t#0, y#0);
            newtype$check#0 := Set#Card(Set#Difference(s#0, t#0));
            assert {:id "id289"} LitInt(0) <= newtype$check#0;
            newtype$check#1 := Set#Card(Set#Difference(t#0, s#0));
            assert {:id "id290"} LitInt(0) <= newtype$check#1;
            assume true;
            assume false;
        }

        assume true;
        if (Set#Equal(s#0, t#0))
        {
            break;
        }

        $decr$loop#00 := Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(703,11)
        havoc z#0_1;
        if ($IsBox(z#0_1, _module._default.SetsST5$Y)
           && $IsAllocBox(z#0_1, _module._default.SetsST5$Y, $Heap))
        {
            assume true;
        }

        assert {:id "id291"} (exists $as#z0_0#0_0: Box :: 
          $IsBox($as#z0_0#0_0, _module._default.SetsST5$Y)
             && Set#IsMember(P#0, $as#z0_0#0_0));
        defass#z#0_0 := true;
        havoc z#0_0;
        assume {:id "id292"} Set#IsMember(P#0, z#0_0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(704,5)
        assert {:id "id293"} defass#z#0_0;
        assert {:id "id294"} defass#z#0_0;
        assume true;
        assert {:id "id295"} Set#Equal(Set#Difference(s#0, t#0), 
          Set#Difference(Set#Union(s#0, Set#UnionOne(Set#Empty(): Set, z#0_0)), 
            Set#Union(t#0, Set#UnionOne(Set#Empty(): Set, z#0_0))));
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(705,10)
        assume true;
        assume true;
        assert {:id "id296"} defass#z#0_0;
        assume true;
        $rhs#0_0 := Set#Union(s#0, Set#UnionOne(Set#Empty(): Set, z#0_0));
        assert {:id "id298"} defass#z#0_0;
        assume true;
        $rhs#0_1 := Set#Union(t#0, Set#UnionOne(Set#Empty(): Set, z#0_0));
        s#0 := $rhs#0_0;
        t#0 := $rhs#0_1;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(707,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.SetsST5$Y)
           && $IsAllocBox(x#0_1, _module._default.SetsST5$Y, $Heap))
        {
            if (Set#IsMember(s#0, x#0_1))
            {
            }

            assume true;
        }

        assert {:id "id302"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.SetsST5$Y)
             && 
            Set#IsMember(s#0, $as#x0_0#0_0)
             && !Set#IsMember(t#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id303"} Set#IsMember(s#0, x#0_0) && !Set#IsMember(t#0, x#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(708,7)
        assume true;
        assert {:id "id304"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(700,3)
        assert {:id "id306"} 0 <= $decr$loop#00
           || Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
             == $decr$loop#00;
        assert {:id "id307"} Set#Card(Set#Difference(s#0, t#0)) + Set#Card(Set#Difference(t#0, s#0))
           < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "ISets0 (well-formedness)"} CheckWellFormed$$_module.__default.ISets0(_module._default.ISets0$_T0: Ty, 
    S#0: ISet
       where $Is(S#0, TISet(_module._default.ISets0$_T0))
         && $IsAlloc(S#0, TISet(_module._default.ISets0$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ISets0 (call)"} Call$$_module.__default.ISets0(_module._default.ISets0$_T0: Ty, 
    S#0: ISet
       where $Is(S#0, TISet(_module._default.ISets0$_T0))
         && $IsAlloc(S#0, TISet(_module._default.ISets0$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ISets0 (correctness)"} Impl$$_module.__default.ISets0(_module._default.ISets0$_T0: Ty, 
    S#0: ISet
       where $Is(S#0, TISet(_module._default.ISets0$_T0))
         && $IsAlloc(S#0, TISet(_module._default.ISets0$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ISets0 (correctness)"} Impl$$_module.__default.ISets0(_module._default.ISets0$_T0: Ty, S#0: ISet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: ISet
     where $Is(s#0, TISet(_module._default.ISets0$_T0))
       && $IsAlloc(s#0, TISet(_module._default.ISets0$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.ISets0$_T0)
         && $IsAllocBox(x#0_0, _module._default.ISets0$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: ISets0, Impl$$_module.__default.ISets0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(713,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(714,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume false;
        }

        assume true;
        if (ISet#Equal(s#0, ISet#Empty(): ISet))
        {
            break;
        }

        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(715,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.ISets0$_T0)
           && $IsAllocBox(x#0_1, _module._default.ISets0$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id309"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.ISets0$_T0) && s#0[$as#x0_0#0_0]);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id310"} s#0[x#0_0];
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(716,7)
        assume true;
        assert {:id "id311"} defass#x#0_0;
        assume true;
        s#0 := ISet#Difference(s#0, ISet#UnionOne(ISet#Empty(): ISet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(714,3)
        assert {:id "id313"} false;
    }
}



procedure {:verboseName "ISets1 (well-formedness)"} CheckWellFormed$$_module.__default.ISets1(_module._default.ISets1$_T0: Ty, 
    S#0: ISet
       where $Is(S#0, TISet(_module._default.ISets1$_T0))
         && $IsAlloc(S#0, TISet(_module._default.ISets1$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ISets1 (call)"} Call$$_module.__default.ISets1(_module._default.ISets1$_T0: Ty, 
    S#0: ISet
       where $Is(S#0, TISet(_module._default.ISets1$_T0))
         && $IsAlloc(S#0, TISet(_module._default.ISets1$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ISets1 (correctness)"} Impl$$_module.__default.ISets1(_module._default.ISets1$_T0: Ty, 
    S#0: ISet
       where $Is(S#0, TISet(_module._default.ISets1$_T0))
         && $IsAlloc(S#0, TISet(_module._default.ISets1$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ISets1 (correctness)"} Impl$$_module.__default.ISets1(_module._default.ISets1$_T0: Ty, S#0: ISet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: ISet
     where $Is(s#0, TISet(_module._default.ISets1$_T0))
       && $IsAlloc(s#0, TISet(_module._default.ISets1$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.ISets1$_T0)
         && $IsAllocBox(x#0_0, _module._default.ISets1$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: ISets1, Impl$$_module.__default.ISets1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(721,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(722,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume false;
        }

        assume true;
        if (!(ISet#Subset(ISet#Empty(): ISet, s#0) && !ISet#Subset(s#0, ISet#Empty(): ISet)))
        {
            break;
        }

        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(723,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.ISets1$_T0)
           && $IsAllocBox(x#0_1, _module._default.ISets1$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id315"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.ISets1$_T0) && s#0[$as#x0_0#0_0]);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id316"} s#0[x#0_0];
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(724,7)
        assume true;
        assert {:id "id317"} defass#x#0_0;
        assume true;
        s#0 := ISet#Difference(s#0, ISet#UnionOne(ISet#Empty(): ISet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(722,3)
        assert {:id "id319"} false;
    }
}



procedure {:verboseName "ISets2 (well-formedness)"} CheckWellFormed$$_module.__default.ISets2(_module._default.ISets2$_T0: Ty, 
    S#0: ISet
       where $Is(S#0, TISet(_module._default.ISets2$_T0))
         && $IsAlloc(S#0, TISet(_module._default.ISets2$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ISets2 (call)"} Call$$_module.__default.ISets2(_module._default.ISets2$_T0: Ty, 
    S#0: ISet
       where $Is(S#0, TISet(_module._default.ISets2$_T0))
         && $IsAlloc(S#0, TISet(_module._default.ISets2$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ISets2 (correctness)"} Impl$$_module.__default.ISets2(_module._default.ISets2$_T0: Ty, 
    S#0: ISet
       where $Is(S#0, TISet(_module._default.ISets2$_T0))
         && $IsAlloc(S#0, TISet(_module._default.ISets2$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ISets2 (correctness)"} Impl$$_module.__default.ISets2(_module._default.ISets2$_T0: Ty, S#0: ISet) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: ISet
     where $Is(s#0, TISet(_module._default.ISets2$_T0))
       && $IsAlloc(s#0, TISet(_module._default.ISets2$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: ISet;
  var $w$loop#0: bool;
  var $decr$loop#00: ISet;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.ISets2$_T0)
         && $IsAllocBox(x#0_0, _module._default.ISets2$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: ISets2, Impl$$_module.__default.ISets2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(729,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(730,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant ISet#Equal(s#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (ISet#Equal(s#0, ISet#Empty(): ISet))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(733,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.ISets2$_T0)
           && $IsAllocBox(x#0_1, _module._default.ISets2$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id321"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.ISets2$_T0) && s#0[$as#x0_0#0_0]);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id322"} s#0[x#0_0];
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(734,7)
        assume true;
        assert {:id "id323"} defass#x#0_0;
        assume true;
        s#0 := ISet#Difference(s#0, ISet#UnionOne(ISet#Empty(): ISet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(730,3)
        assert {:id "id325"} false;
    }
}



procedure {:verboseName "Multisets0 (well-formedness)"} CheckWellFormed$$_module.__default.Multisets0(_module._default.Multisets0$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets0$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets0$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Multisets0 (call)"} Call$$_module.__default.Multisets0(_module._default.Multisets0$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets0$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets0$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Multisets0 (correctness)"} Impl$$_module.__default.Multisets0(_module._default.Multisets0$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets0$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets0$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Multisets0 (correctness)"} Impl$$_module.__default.Multisets0(_module._default.Multisets0$_T0: Ty, S#0: MultiSet)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.Multisets0$_T0))
       && $IsAlloc(s#0, TMultiSet(_module._default.Multisets0$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: MultiSet;
  var $w$loop#0: bool;
  var $decr$loop#00: MultiSet;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.Multisets0$_T0)
         && $IsAllocBox(x#0_0, _module._default.Multisets0$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: Multisets0, Impl$$_module.__default.Multisets0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(741,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(742,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant MultiSet#Subset(s#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(743,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.Multisets0$_T0)
           && $IsAllocBox(x#0_1, _module._default.Multisets0$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id327"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.Multisets0$_T0)
             && MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id328"} MultiSet#Multiplicity(s#0, x#0_0) > 0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(744,7)
        assume true;
        assert {:id "id329"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(742,3)
        assert {:id "id331"} MultiSet#Subset(s#0, $decr$loop#00) && !MultiSet#Equal(s#0, $decr$loop#00);
    }
}



procedure {:verboseName "Multisets1 (well-formedness)"} CheckWellFormed$$_module.__default.Multisets1(_module._default.Multisets1$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets1$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets1$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Multisets1 (call)"} Call$$_module.__default.Multisets1(_module._default.Multisets1$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets1$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets1$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Multisets1 (correctness)"} Impl$$_module.__default.Multisets1(_module._default.Multisets1$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets1$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets1$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Multisets1 (correctness)"} Impl$$_module.__default.Multisets1(_module._default.Multisets1$_T0: Ty, S#0: MultiSet)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.Multisets1$_T0))
       && $IsAlloc(s#0, TMultiSet(_module._default.Multisets1$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: MultiSet;
  var $w$loop#0: bool;
  var $decr$loop#00: MultiSet;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.Multisets1$_T0)
         && $IsAllocBox(x#0_0, _module._default.Multisets1$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: Multisets1, Impl$$_module.__default.Multisets1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(749,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(750,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant MultiSet#Subset(s#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (MultiSet#Equal(MultiSet#Empty(): MultiSet, s#0))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(751,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.Multisets1$_T0)
           && $IsAllocBox(x#0_1, _module._default.Multisets1$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id333"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.Multisets1$_T0)
             && MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id334"} MultiSet#Multiplicity(s#0, x#0_0) > 0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(752,7)
        assume true;
        assert {:id "id335"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(750,3)
        assert {:id "id337"} MultiSet#Subset(s#0, $decr$loop#00) && !MultiSet#Equal(s#0, $decr$loop#00);
    }
}



procedure {:verboseName "Multisets2 (well-formedness)"} CheckWellFormed$$_module.__default.Multisets2(_module._default.Multisets2$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets2$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets2$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Multisets2 (call)"} Call$$_module.__default.Multisets2(_module._default.Multisets2$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets2$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets2$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Multisets2 (correctness)"} Impl$$_module.__default.Multisets2(_module._default.Multisets2$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets2$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets2$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Multisets2 (correctness)"} Impl$$_module.__default.Multisets2(_module._default.Multisets2$_T0: Ty, S#0: MultiSet)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.Multisets2$_T0))
       && $IsAlloc(s#0, TMultiSet(_module._default.Multisets2$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.Multisets2$_T0)
         && $IsAllocBox(x#0_0, _module._default.Multisets2$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: Multisets2, Impl$$_module.__default.Multisets2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(757,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(758,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := MultiSet#Card(s#0);
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
      free invariant MultiSet#Card(s#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := MultiSet#Card(s#0);
            assert {:id "id339"} LitInt(0) <= newtype$check#0;
            assume true;
            assume false;
        }

        assume true;
        if (!(MultiSet#Subset(MultiSet#Empty(): MultiSet, s#0)
           && !MultiSet#Equal(MultiSet#Empty(): MultiSet, s#0)))
        {
            break;
        }

        $decr$loop#00 := MultiSet#Card(s#0);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(759,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.Multisets2$_T0)
           && $IsAllocBox(x#0_1, _module._default.Multisets2$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id340"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.Multisets2$_T0)
             && MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id341"} MultiSet#Multiplicity(s#0, x#0_0) > 0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(760,7)
        assume true;
        assert {:id "id342"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(758,3)
        assert {:id "id344"} 0 <= $decr$loop#00 || MultiSet#Card(s#0) == $decr$loop#00;
        assert {:id "id345"} MultiSet#Card(s#0) < $decr$loop#00;
    }
}



procedure {:verboseName "Multisets3 (well-formedness)"} CheckWellFormed$$_module.__default.Multisets3(_module._default.Multisets3$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets3$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets3$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Multisets3 (call)"} Call$$_module.__default.Multisets3(_module._default.Multisets3$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets3$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets3$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Multisets3 (correctness)"} Impl$$_module.__default.Multisets3(_module._default.Multisets3$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.Multisets3$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.Multisets3$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Multisets3 (correctness)"} Impl$$_module.__default.Multisets3(_module._default.Multisets3$_T0: Ty, S#0: MultiSet)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.Multisets3$_T0))
       && $IsAlloc(s#0, TMultiSet(_module._default.Multisets3$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.Multisets3$_T0)
         && $IsAllocBox(x#0_0, _module._default.Multisets3$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: Multisets3, Impl$$_module.__default.Multisets3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(765,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(766,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := MultiSet#Card(s#0);
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
      free invariant MultiSet#Card(s#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := MultiSet#Card(s#0);
            assert {:id "id347"} LitInt(0) <= newtype$check#0;
            assume true;
            assume false;
        }

        assume true;
        if (!(MultiSet#Subset(MultiSet#Empty(): MultiSet, s#0)
           && !MultiSet#Equal(MultiSet#Empty(): MultiSet, s#0)))
        {
            break;
        }

        $decr$loop#00 := MultiSet#Card(s#0);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(767,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.Multisets3$_T0)
           && $IsAllocBox(x#0_1, _module._default.Multisets3$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id348"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.Multisets3$_T0)
             && MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id349"} MultiSet#Multiplicity(s#0, x#0_0) > 0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(768,7)
        assume true;
        assert {:id "id350"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(766,3)
        assert {:id "id352"} 0 <= $decr$loop#00 || MultiSet#Card(s#0) == $decr$loop#00;
        assert {:id "id353"} MultiSet#Card(s#0) < $decr$loop#00;
    }
}



procedure {:verboseName "MultisetsST0 (well-formedness)"} CheckWellFormed$$_module.__default.MultisetsST0(_module._default.MultisetsST0$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST0$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST0$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST0$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST0$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetsST0 (call)"} Call$$_module.__default.MultisetsST0(_module._default.MultisetsST0$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST0$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST0$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST0$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST0$Y, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetsST0 (correctness)"} Impl$$_module.__default.MultisetsST0(_module._default.MultisetsST0$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST0$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST0$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST0$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST0$Y, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetsST0 (correctness)"} Impl$$_module.__default.MultisetsST0(_module._default.MultisetsST0$Y: Ty, S#0: MultiSet, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.MultisetsST0$Y))
       && $IsAlloc(s#0, TMultiSet(_module._default.MultisetsST0$Y), $Heap);
  var t#0: MultiSet
     where $Is(t#0, TMultiSet(_module._default.MultisetsST0$Y))
       && $IsAlloc(t#0, TMultiSet(_module._default.MultisetsST0$Y), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.MultisetsST0$Y)
         && $IsAllocBox(x#0_0, _module._default.MultisetsST0$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: MultisetsST0, Impl$$_module.__default.MultisetsST0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(773,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(774,9)
    assume true;
    assume true;
    t#0 := MultiSet#UnionOne(MultiSet#Empty(): MultiSet, y#0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(775,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0));
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
      free invariant MultiSet#Card(MultiSet#Difference(s#0, t#0)) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := MultiSet#Card(MultiSet#Difference(s#0, t#0));
            assert {:id "id356"} LitInt(0) <= newtype$check#0;
            assume true;
            assume false;
        }

        assume true;
        if (!(MultiSet#Subset(t#0, s#0) && !MultiSet#Equal(t#0, s#0)))
        {
            break;
        }

        $decr$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(776,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.MultisetsST0$Y)
           && $IsAllocBox(x#0_1, _module._default.MultisetsST0$Y, $Heap))
        {
            if (MultiSet#Multiplicity(s#0, x#0_1) > 0)
            {
                if (x#0_1 == y#0)
                {
                }
            }

            assume true;
        }

        assert {:id "id357"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.MultisetsST0$Y)
             && 
            MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0
             && ($as#x0_0#0_0 != y#0 || LitInt(2) <= MultiSet#Multiplicity(s#0, y#0)));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id358"} MultiSet#Multiplicity(s#0, x#0_0) > 0
           && (x#0_0 != y#0 || LitInt(2) <= MultiSet#Multiplicity(s#0, y#0));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(777,7)
        assume true;
        assert {:id "id359"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(775,3)
        assert {:id "id361"} 0 <= $decr$loop#00
           || MultiSet#Card(MultiSet#Difference(s#0, t#0)) == $decr$loop#00;
        assert {:id "id362"} MultiSet#Card(MultiSet#Difference(s#0, t#0)) < $decr$loop#00;
    }
}



procedure {:verboseName "MultisetsST1 (well-formedness)"} CheckWellFormed$$_module.__default.MultisetsST1(_module._default.MultisetsST1$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST1$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST1$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST1$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST1$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetsST1 (call)"} Call$$_module.__default.MultisetsST1(_module._default.MultisetsST1$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST1$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST1$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST1$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST1$Y, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetsST1 (correctness)"} Impl$$_module.__default.MultisetsST1(_module._default.MultisetsST1$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST1$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST1$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST1$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST1$Y, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetsST1 (correctness)"} Impl$$_module.__default.MultisetsST1(_module._default.MultisetsST1$Y: Ty, S#0: MultiSet, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.MultisetsST1$Y))
       && $IsAlloc(s#0, TMultiSet(_module._default.MultisetsST1$Y), $Heap);
  var t#0: MultiSet
     where $Is(t#0, TMultiSet(_module._default.MultisetsST1$Y))
       && $IsAlloc(t#0, TMultiSet(_module._default.MultisetsST1$Y), $Heap);
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.MultisetsST1$Y)
         && $IsAllocBox(x#0_0, _module._default.MultisetsST1$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: MultisetsST1, Impl$$_module.__default.MultisetsST1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(782,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(783,9)
    assume true;
    assume true;
    t#0 := MultiSet#UnionOne(MultiSet#Empty(): MultiSet, y#0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(784,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0));
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
      free invariant MultiSet#Card(MultiSet#Difference(s#0, t#0)) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := MultiSet#Card(MultiSet#Difference(s#0, t#0));
            assert {:id "id365"} LitInt(0) <= newtype$check#0;
            assume true;
            assume false;
        }

        assume true;
        if (!MultiSet#Subset(t#0, s#0))
        {
            break;
        }

        $decr$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(785,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.MultisetsST1$Y)
           && $IsAllocBox(x#0_1, _module._default.MultisetsST1$Y, $Heap))
        {
            if (MultiSet#Multiplicity(s#0, x#0_1) > 0)
            {
                if (x#0_1 == y#0)
                {
                }

                if (!(x#0_1 != y#0 || LitInt(2) <= MultiSet#Multiplicity(s#0, y#0)))
                {
                }
            }

            assume true;
        }

        assert {:id "id366"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.MultisetsST1$Y)
             && 
            MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0
             && (
              $as#x0_0#0_0 != y#0
               || LitInt(2) <= MultiSet#Multiplicity(s#0, y#0)
               || MultiSet#Equal(s#0, t#0)));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id367"} MultiSet#Multiplicity(s#0, x#0_0) > 0
           && (
            x#0_0 != y#0
             || LitInt(2) <= MultiSet#Multiplicity(s#0, y#0)
             || MultiSet#Equal(s#0, t#0));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(786,7)
        assume true;
        assert {:id "id368"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(787,5)
        assume true;
        if (MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet))
        {
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(787,26)
            goto after_0;
        }
        else
        {
        }

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(784,3)
        assert {:id "id370"} 0 <= $decr$loop#00
           || MultiSet#Card(MultiSet#Difference(s#0, t#0)) == $decr$loop#00;
        assert {:id "id371"} MultiSet#Card(MultiSet#Difference(s#0, t#0)) < $decr$loop#00;
    }

  after_0:
}



procedure {:verboseName "MultisetsST2 (well-formedness)"} CheckWellFormed$$_module.__default.MultisetsST2(_module._default.MultisetsST2$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST2$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST2$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST2$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST2$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetsST2 (call)"} Call$$_module.__default.MultisetsST2(_module._default.MultisetsST2$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST2$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST2$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST2$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST2$Y, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetsST2 (correctness)"} Impl$$_module.__default.MultisetsST2(_module._default.MultisetsST2$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST2$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST2$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST2$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST2$Y, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetsST2 (correctness)"} Impl$$_module.__default.MultisetsST2(_module._default.MultisetsST2$Y: Ty, S#0: MultiSet, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.MultisetsST2$Y))
       && $IsAlloc(s#0, TMultiSet(_module._default.MultisetsST2$Y), $Heap);
  var t#0: MultiSet
     where $Is(t#0, TMultiSet(_module._default.MultisetsST2$Y))
       && $IsAlloc(t#0, TMultiSet(_module._default.MultisetsST2$Y), $Heap);
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: MultiSet;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var $decr$loop#00: int;
  var $decr$loop#01: MultiSet;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.MultisetsST2$Y)
         && $IsAllocBox(x#0_0, _module._default.MultisetsST2$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: MultisetsST2, Impl$$_module.__default.MultisetsST2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(792,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(793,9)
    assume true;
    assume true;
    t#0 := MultiSet#UnionOne(MultiSet#Empty(): MultiSet, y#0);
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(794,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0))
       + MultiSet#Card(MultiSet#Difference(t#0, s#0));
    $decr_init$loop#01 := (if !MultiSet#Equal(s#0, t#0) then s#0 else MultiSet#Empty(): MultiSet);
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
      free invariant MultiSet#Card(MultiSet#Difference(s#0, t#0))
             + MultiSet#Card(MultiSet#Difference(t#0, s#0))
           <= $decr_init$loop#00
         && (MultiSet#Card(MultiSet#Difference(s#0, t#0))
               + MultiSet#Card(MultiSet#Difference(t#0, s#0))
             == $decr_init$loop#00
           ==> MultiSet#Subset((if !MultiSet#Equal(s#0, t#0) then s#0 else MultiSet#Empty(): MultiSet), 
            $decr_init$loop#01));
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := MultiSet#Card(MultiSet#Difference(s#0, t#0));
            assert {:id "id374"} LitInt(0) <= newtype$check#0;
            newtype$check#1 := MultiSet#Card(MultiSet#Difference(t#0, s#0));
            assert {:id "id375"} LitInt(0) <= newtype$check#1;
            assume true;
            if (!MultiSet#Equal(s#0, t#0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (!MultiSet#Equal(s#0, t#0))
        {
        }

        assume true;
        if (!(!MultiSet#Equal(s#0, t#0) && !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet)))
        {
            break;
        }

        $decr$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0))
           + MultiSet#Card(MultiSet#Difference(t#0, s#0));
        $decr$loop#01 := (if !MultiSet#Equal(s#0, t#0) then s#0 else MultiSet#Empty(): MultiSet);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(795,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.MultisetsST2$Y)
           && $IsAllocBox(x#0_1, _module._default.MultisetsST2$Y, $Heap))
        {
            assume true;
        }

        assert {:id "id376"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.MultisetsST2$Y)
             && MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id377"} MultiSet#Multiplicity(s#0, x#0_0) > 0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(796,5)
        assert {:id "id378"} defass#x#0_0;
        assume true;
        if (x#0_0 == y#0)
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(796,17)
            pop;
            goto after_0;

            pop;
        }
        else
        {
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(797,7)
        assume true;
        assert {:id "id379"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(794,3)
        assert {:id "id381"} 0 <= $decr$loop#00
           || MultiSet#Card(MultiSet#Difference(s#0, t#0))
               + MultiSet#Card(MultiSet#Difference(t#0, s#0))
             == $decr$loop#00;
        assert {:id "id382"} MultiSet#Card(MultiSet#Difference(s#0, t#0))
               + MultiSet#Card(MultiSet#Difference(t#0, s#0))
             < $decr$loop#00
           || (MultiSet#Card(MultiSet#Difference(s#0, t#0))
                 + MultiSet#Card(MultiSet#Difference(t#0, s#0))
               == $decr$loop#00
             && 
            MultiSet#Subset((if !MultiSet#Equal(s#0, t#0) then s#0 else MultiSet#Empty(): MultiSet), 
              $decr$loop#01)
             && !MultiSet#Equal((if !MultiSet#Equal(s#0, t#0) then s#0 else MultiSet#Empty(): MultiSet), 
              $decr$loop#01));
    }

  after_0:
}



procedure {:verboseName "MultisetsST3 (well-formedness)"} CheckWellFormed$$_module.__default.MultisetsST3(_module._default.MultisetsST3$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST3$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST3$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST3$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST3$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetsST3 (call)"} Call$$_module.__default.MultisetsST3(_module._default.MultisetsST3$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST3$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST3$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST3$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST3$Y, $Heap));
  // user-defined preconditions
  requires {:id "id384"} MultiSet#Multiplicity(S#0, y#0) > 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetsST3 (correctness)"} Impl$$_module.__default.MultisetsST3(_module._default.MultisetsST3$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST3$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST3$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST3$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST3$Y, $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id385"} MultiSet#Multiplicity(S#0, y#0) > 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetsST3 (correctness)"} Impl$$_module.__default.MultisetsST3(_module._default.MultisetsST3$Y: Ty, S#0: MultiSet, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.MultisetsST3$Y))
       && $IsAlloc(s#0, TMultiSet(_module._default.MultisetsST3$Y), $Heap);
  var t#0: MultiSet
     where $Is(t#0, TMultiSet(_module._default.MultisetsST3$Y))
       && $IsAlloc(t#0, TMultiSet(_module._default.MultisetsST3$Y), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.MultisetsST3$Y)
         && $IsAllocBox(x#0_0, _module._default.MultisetsST3$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: MultisetsST3, Impl$$_module.__default.MultisetsST3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(804,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(805,9)
    assume true;
    assume true;
    t#0 := MultiSet#UnionOne(MultiSet#Empty(): MultiSet, y#0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(806,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0))
       + MultiSet#Card(MultiSet#Difference(t#0, s#0));
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id389"} $w$loop#0 ==> MultiSet#Subset(t#0, s#0);
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
      free invariant MultiSet#Card(MultiSet#Difference(s#0, t#0))
           + MultiSet#Card(MultiSet#Difference(t#0, s#0))
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id388"} MultiSet#Subset(t#0, s#0);
            newtype$check#0 := MultiSet#Card(MultiSet#Difference(s#0, t#0));
            assert {:id "id390"} LitInt(0) <= newtype$check#0;
            newtype$check#1 := MultiSet#Card(MultiSet#Difference(t#0, s#0));
            assert {:id "id391"} LitInt(0) <= newtype$check#1;
            assume true;
            assume false;
        }

        assume true;
        if (MultiSet#Equal(s#0, t#0))
        {
            break;
        }

        $decr$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0))
           + MultiSet#Card(MultiSet#Difference(t#0, s#0));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(809,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.MultisetsST3$Y)
           && $IsAllocBox(x#0_1, _module._default.MultisetsST3$Y, $Heap))
        {
            assume true;
        }

        assert {:id "id392"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.MultisetsST3$Y)
             && MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id393"} MultiSet#Multiplicity(s#0, x#0_0) > 0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(810,7)
        assume true;
        assert {:id "id394"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(806,3)
        assert {:id "id396"} 0 <= $decr$loop#00
           || MultiSet#Card(MultiSet#Difference(s#0, t#0))
               + MultiSet#Card(MultiSet#Difference(t#0, s#0))
             == $decr$loop#00;
        assert {:id "id397"} MultiSet#Card(MultiSet#Difference(s#0, t#0))
             + MultiSet#Card(MultiSet#Difference(t#0, s#0))
           < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "MultisetsST4 (well-formedness)"} CheckWellFormed$$_module.__default.MultisetsST4(_module._default.MultisetsST4$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST4$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST4$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST4$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST4$Y, $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetsST4 (call)"} Call$$_module.__default.MultisetsST4(_module._default.MultisetsST4$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST4$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST4$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST4$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST4$Y, $Heap));
  // user-defined preconditions
  requires {:id "id399"} MultiSet#Multiplicity(S#0, y#0) == LitInt(1);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetsST4 (correctness)"} Impl$$_module.__default.MultisetsST4(_module._default.MultisetsST4$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST4$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST4$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST4$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST4$Y, $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id400"} MultiSet#Multiplicity(S#0, y#0) == LitInt(1);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetsST4 (correctness)"} Impl$$_module.__default.MultisetsST4(_module._default.MultisetsST4$Y: Ty, S#0: MultiSet, y#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.MultisetsST4$Y))
       && $IsAlloc(s#0, TMultiSet(_module._default.MultisetsST4$Y), $Heap);
  var t#0: MultiSet
     where $Is(t#0, TMultiSet(_module._default.MultisetsST4$Y))
       && $IsAlloc(t#0, TMultiSet(_module._default.MultisetsST4$Y), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.MultisetsST4$Y)
         && $IsAllocBox(x#0_0, _module._default.MultisetsST4$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: MultisetsST4, Impl$$_module.__default.MultisetsST4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(817,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(818,9)
    assume true;
    assume true;
    t#0 := MultiSet#UnionOne(MultiSet#Empty(): MultiSet, y#0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(819,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0))
       + MultiSet#Card(MultiSet#Difference(t#0, s#0));
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id404"} $w$loop#0 ==> MultiSet#Subset(t#0, s#0);
      invariant {:id "id405"} $w$loop#0 ==> MultiSet#Multiplicity(s#0, y#0) <= LitInt(1);
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
      free invariant MultiSet#Card(MultiSet#Difference(s#0, t#0))
           + MultiSet#Card(MultiSet#Difference(t#0, s#0))
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (MultiSet#Subset(t#0, s#0))
            {
            }

            assume true;
            assume {:id "id403"} MultiSet#Subset(t#0, s#0) && MultiSet#Multiplicity(s#0, y#0) <= LitInt(1);
            newtype$check#0 := MultiSet#Card(MultiSet#Difference(s#0, t#0));
            assert {:id "id406"} LitInt(0) <= newtype$check#0;
            newtype$check#1 := MultiSet#Card(MultiSet#Difference(t#0, s#0));
            assert {:id "id407"} LitInt(0) <= newtype$check#1;
            assume true;
            assume false;
        }

        assume true;
        if (MultiSet#Equal(s#0, t#0))
        {
            break;
        }

        $decr$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0))
           + MultiSet#Card(MultiSet#Difference(t#0, s#0));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(822,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.MultisetsST4$Y)
           && $IsAllocBox(x#0_1, _module._default.MultisetsST4$Y, $Heap))
        {
            if (MultiSet#Multiplicity(s#0, x#0_1) > 0)
            {
            }

            assume true;
        }

        assert {:id "id408"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.MultisetsST4$Y)
             && 
            MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0
             && $as#x0_0#0_0 != y#0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id409"} MultiSet#Multiplicity(s#0, x#0_0) > 0 && x#0_0 != y#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(823,7)
        assume true;
        assert {:id "id410"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(819,3)
        assert {:id "id412"} 0 <= $decr$loop#00
           || MultiSet#Card(MultiSet#Difference(s#0, t#0))
               + MultiSet#Card(MultiSet#Difference(t#0, s#0))
             == $decr$loop#00;
        assert {:id "id413"} MultiSet#Card(MultiSet#Difference(s#0, t#0))
             + MultiSet#Card(MultiSet#Difference(t#0, s#0))
           < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "MultisetsST5 (well-formedness)"} CheckWellFormed$$_module.__default.MultisetsST5(_module._default.MultisetsST5$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST5$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST5$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST5$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST5$Y, $Heap), 
    P#0: MultiSet
       where $Is(P#0, TMultiSet(_module._default.MultisetsST5$Y))
         && $IsAlloc(P#0, TMultiSet(_module._default.MultisetsST5$Y), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultisetsST5 (call)"} Call$$_module.__default.MultisetsST5(_module._default.MultisetsST5$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST5$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST5$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST5$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST5$Y, $Heap), 
    P#0: MultiSet
       where $Is(P#0, TMultiSet(_module._default.MultisetsST5$Y))
         && $IsAlloc(P#0, TMultiSet(_module._default.MultisetsST5$Y), $Heap));
  // user-defined preconditions
  requires {:id "id417"} MultiSet#Multiplicity(S#0, y#0) == LitInt(1);
  requires {:id "id418"} !MultiSet#Equal(P#0, MultiSet#Empty(): MultiSet);
  requires {:id "id419"} MultiSet#Disjoint(S#0, P#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultisetsST5 (correctness)"} Impl$$_module.__default.MultisetsST5(_module._default.MultisetsST5$Y: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultisetsST5$Y))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultisetsST5$Y), $Heap), 
    y#0: Box
       where $IsBox(y#0, _module._default.MultisetsST5$Y)
         && $IsAllocBox(y#0, _module._default.MultisetsST5$Y, $Heap), 
    P#0: MultiSet
       where $Is(P#0, TMultiSet(_module._default.MultisetsST5$Y))
         && $IsAlloc(P#0, TMultiSet(_module._default.MultisetsST5$Y), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id420"} MultiSet#Multiplicity(S#0, y#0) == LitInt(1);
  requires {:id "id421"} !MultiSet#Equal(P#0, MultiSet#Empty(): MultiSet);
  requires {:id "id422"} MultiSet#Disjoint(S#0, P#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultisetsST5 (correctness)"} Impl$$_module.__default.MultisetsST5(_module._default.MultisetsST5$Y: Ty, S#0: MultiSet, y#0: Box, P#0: MultiSet)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.MultisetsST5$Y))
       && $IsAlloc(s#0, TMultiSet(_module._default.MultisetsST5$Y), $Heap);
  var t#0: MultiSet
     where $Is(t#0, TMultiSet(_module._default.MultisetsST5$Y))
       && $IsAlloc(t#0, TMultiSet(_module._default.MultisetsST5$Y), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var $decr$loop#00: int;
  var defass#z#0_0: bool;
  var z#0_0: Box
     where defass#z#0_0
       ==> $IsBox(z#0_0, _module._default.MultisetsST5$Y)
         && $IsAllocBox(z#0_0, _module._default.MultisetsST5$Y, $Heap);
  var z#0_1: Box;
  var $rhs#0_0: MultiSet;
  var $rhs#0_1: MultiSet;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.MultisetsST5$Y)
         && $IsAllocBox(x#0_0, _module._default.MultisetsST5$Y, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: MultisetsST5, Impl$$_module.__default.MultisetsST5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(830,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(831,9)
    assume true;
    assume true;
    t#0 := MultiSet#UnionOne(MultiSet#Empty(): MultiSet, y#0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(832,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0))
       + MultiSet#Card(MultiSet#Difference(t#0, s#0));
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id426"} $w$loop#0 ==> MultiSet#Subset(MultiSet#Intersection(s#0, P#0), t#0);
      invariant {:id "id427"} $w$loop#0 ==> MultiSet#Subset(t#0, s#0);
      invariant {:id "id428"} $w$loop#0 ==> MultiSet#Multiplicity(s#0, y#0) <= MultiSet#Multiplicity(t#0, y#0);
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
      free invariant MultiSet#Card(MultiSet#Difference(s#0, t#0))
           + MultiSet#Card(MultiSet#Difference(t#0, s#0))
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (MultiSet#Subset(MultiSet#Intersection(s#0, P#0), t#0))
            {
            }

            if (MultiSet#Subset(MultiSet#Intersection(s#0, P#0), t#0)
               && MultiSet#Subset(t#0, s#0))
            {
            }

            assume true;
            assume {:id "id425"} MultiSet#Subset(MultiSet#Intersection(s#0, P#0), t#0)
               && MultiSet#Subset(t#0, s#0)
               && MultiSet#Multiplicity(s#0, y#0) <= MultiSet#Multiplicity(t#0, y#0);
            newtype$check#0 := MultiSet#Card(MultiSet#Difference(s#0, t#0));
            assert {:id "id429"} LitInt(0) <= newtype$check#0;
            newtype$check#1 := MultiSet#Card(MultiSet#Difference(t#0, s#0));
            assert {:id "id430"} LitInt(0) <= newtype$check#1;
            assume true;
            assume false;
        }

        assume true;
        if (MultiSet#Equal(s#0, t#0))
        {
            break;
        }

        $decr$loop#00 := MultiSet#Card(MultiSet#Difference(s#0, t#0))
           + MultiSet#Card(MultiSet#Difference(t#0, s#0));
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(835,11)
        havoc z#0_1;
        if ($IsBox(z#0_1, _module._default.MultisetsST5$Y)
           && $IsAllocBox(z#0_1, _module._default.MultisetsST5$Y, $Heap))
        {
            assume true;
        }

        assert {:id "id431"} (exists $as#z0_0#0_0: Box :: 
          $IsBox($as#z0_0#0_0, _module._default.MultisetsST5$Y)
             && MultiSet#Multiplicity(P#0, $as#z0_0#0_0) > 0);
        defass#z#0_0 := true;
        havoc z#0_0;
        assume {:id "id432"} MultiSet#Multiplicity(P#0, z#0_0) > 0;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(836,10)
        assume true;
        assume true;
        assert {:id "id433"} defass#z#0_0;
        assume true;
        $rhs#0_0 := MultiSet#Union(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, z#0_0));
        assert {:id "id435"} defass#z#0_0;
        assume true;
        $rhs#0_1 := MultiSet#Union(t#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, z#0_0));
        s#0 := $rhs#0_0;
        t#0 := $rhs#0_1;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(838,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.MultisetsST5$Y)
           && $IsAllocBox(x#0_1, _module._default.MultisetsST5$Y, $Heap))
        {
            if (MultiSet#Multiplicity(s#0, x#0_1) > 0)
            {
            }

            assume true;
        }

        assert {:id "id439"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.MultisetsST5$Y)
             && 
            MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0
             && MultiSet#Multiplicity(t#0, $as#x0_0#0_0)
               < MultiSet#Multiplicity(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id440"} MultiSet#Multiplicity(s#0, x#0_0) > 0
           && MultiSet#Multiplicity(t#0, x#0_0) < MultiSet#Multiplicity(s#0, x#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(839,7)
        assume true;
        assert {:id "id441"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(832,3)
        assert {:id "id443"} 0 <= $decr$loop#00
           || MultiSet#Card(MultiSet#Difference(s#0, t#0))
               + MultiSet#Card(MultiSet#Difference(t#0, s#0))
             == $decr$loop#00;
        assert {:id "id444"} MultiSet#Card(MultiSet#Difference(s#0, t#0))
             + MultiSet#Card(MultiSet#Difference(t#0, s#0))
           < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "Sequences0 (well-formedness)"} CheckWellFormed$$_module.__default.Sequences0(_module._default.Sequences0$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences0$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences0$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sequences0 (call)"} Call$$_module.__default.Sequences0(_module._default.Sequences0$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences0$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences0$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sequences0 (correctness)"} Impl$$_module.__default.Sequences0(_module._default.Sequences0$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences0$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences0$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sequences0 (correctness)"} Impl$$_module.__default.Sequences0(_module._default.Sequences0$_T0: Ty, S#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq
     where $Is(s#0, TSeq(_module._default.Sequences0$_T0))
       && $IsAlloc(s#0, TSeq(_module._default.Sequences0$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Seq;
  var $w$loop#0: bool;
  var $decr$loop#00: Seq;
  var i#0_0: int;
  var i#0_1: int;

    // AddMethodImpl: Sequences0, Impl$$_module.__default.Sequences0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(846,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(847,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant Seq#Rank(s#0) <= Seq#Rank($decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Equal(s#0, Seq#Empty(): Seq))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(848,11)
        havoc i#0_1;
        if (true)
        {
            if (LitInt(0) <= i#0_1)
            {
            }

            assume true;
        }

        assert {:id "id446"} ($Is(Seq#Length(s#0) - 1, TInt)
             && 
            LitInt(0) <= Seq#Length(s#0) - 1
             && Seq#Length(s#0) - 1 < Seq#Length(s#0))
           || 
          ($Is(LitInt(0), TInt) && LitInt(0) <= LitInt(0) && 0 < Seq#Length(s#0))
           || 
          ($Is(LitInt(0), TInt) && LitInt(0) <= LitInt(0) && 0 < Seq#Length(s#0))
           || (exists $as#i0_0#0_0: int :: 
            LitInt(0) <= $as#i0_0#0_0 && $as#i0_0#0_0 < Seq#Length(s#0));
        havoc i#0_0;
        assume {:id "id447"} LitInt(0) <= i#0_0 && i#0_0 < Seq#Length(s#0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(849,7)
        assume true;
        assert {:id "id448"} 0 <= i#0_0 && i#0_0 <= Seq#Length(s#0);
        assert {:id "id449"} 0 <= i#0_0 + 1 && i#0_0 + 1 <= Seq#Length(s#0);
        assume true;
        s#0 := Seq#Append(Seq#Take(s#0, i#0_0), Seq#Drop(s#0, i#0_0 + 1));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(847,3)
        assert {:id "id451"} Seq#Rank(s#0) < Seq#Rank($decr$loop#00);
    }
}



procedure {:verboseName "Sequences1 (well-formedness)"} CheckWellFormed$$_module.__default.Sequences1(_module._default.Sequences1$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences1$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences1$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sequences1 (call)"} Call$$_module.__default.Sequences1(_module._default.Sequences1$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences1$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences1$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sequences1 (correctness)"} Impl$$_module.__default.Sequences1(_module._default.Sequences1$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences1$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences1$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sequences1 (correctness)"} Impl$$_module.__default.Sequences1(_module._default.Sequences1$_T0: Ty, S#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq
     where $Is(s#0, TSeq(_module._default.Sequences1$_T0))
       && $IsAlloc(s#0, TSeq(_module._default.Sequences1$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Seq;
  var $w$loop#0: bool;
  var $decr$loop#00: Seq;

    // AddMethodImpl: Sequences1, Impl$$_module.__default.Sequences1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(854,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(855,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant Seq#Rank(s#0) <= Seq#Rank($decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Seq#Equal(Seq#Empty(): Seq, s#0))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(856,7)
        assume true;
        assert {:id "id453"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(s#0);
        assume true;
        s#0 := Seq#Drop(s#0, LitInt(1));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(855,3)
        assert {:id "id455"} Seq#Rank(s#0) < Seq#Rank($decr$loop#00);
    }
}



procedure {:verboseName "Sequences2 (well-formedness)"} CheckWellFormed$$_module.__default.Sequences2(_module._default.Sequences2$T: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences2$T))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences2$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sequences2 (call)"} Call$$_module.__default.Sequences2(_module._default.Sequences2$T: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences2$T))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences2$T), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sequences2 (correctness)"} Impl$$_module.__default.Sequences2(_module._default.Sequences2$T: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences2$T))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences2$T), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sequences2 (correctness)"} Impl$$_module.__default.Sequences2(_module._default.Sequences2$T: Ty, S#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq
     where $Is(s#0, TSeq(_module._default.Sequences2$T))
       && $IsAlloc(s#0, TSeq(_module._default.Sequences2$T), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Seq;
  var $w$loop#0: bool;
  var $decr$loop#00: Seq;

    // AddMethodImpl: Sequences2, Impl$$_module.__default.Sequences2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(861,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(862,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant Seq#Rank(s#0) <= Seq#Rank($decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (!(Seq#Length(Seq#Empty(): Seq) < Seq#Length(s#0)
           && Seq#SameUntil(Seq#Empty(): Seq, s#0, Seq#Length(Seq#Empty(): Seq))))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(863,7)
        assume true;
        assert {:id "id457"} 0 <= Seq#Length(s#0) - 1 && Seq#Length(s#0) - 1 <= Seq#Length(s#0);
        assume true;
        s#0 := Seq#Take(s#0, Seq#Length(s#0) - 1);
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(862,3)
        assert {:id "id459"} Seq#Rank(s#0) < Seq#Rank($decr$loop#00);
    }
}



procedure {:verboseName "Sequences3 (well-formedness)"} CheckWellFormed$$_module.__default.Sequences3(_module._default.Sequences3$T: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences3$T))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences3$T), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sequences3 (call)"} Call$$_module.__default.Sequences3(_module._default.Sequences3$T: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences3$T))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences3$T), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sequences3 (correctness)"} Impl$$_module.__default.Sequences3(_module._default.Sequences3$T: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences3$T))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences3$T), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sequences3 (correctness)"} Impl$$_module.__default.Sequences3(_module._default.Sequences3$T: Ty, S#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq
     where $Is(s#0, TSeq(_module._default.Sequences3$T))
       && $IsAlloc(s#0, TSeq(_module._default.Sequences3$T), $Heap);
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Seq;
  var $w$loop#0: bool;
  var $decr$loop#00: Seq;

    // AddMethodImpl: Sequences3, Impl$$_module.__default.Sequences3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(868,9)
    assume true;
    assume true;
    s#0 := S#0;
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(869,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant Seq#Rank(s#0) <= Seq#Rank($decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (!(Seq#Length(Seq#Empty(): Seq) <= Seq#Length(s#0)
           && Seq#SameUntil(Seq#Empty(): Seq, s#0, Seq#Length(Seq#Empty(): Seq))))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(870,5)
        assume true;
        if (Seq#Equal(s#0, Seq#Empty(): Seq))
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(870,18)
            pop;
            goto after_0;

            pop;
        }
        else
        {
        }

        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(871,7)
        assume true;
        assert {:id "id461"} LitInt(2) != 0;
        assert {:id "id462"} 0 <= Div(Seq#Length(s#0), LitInt(2))
           && Div(Seq#Length(s#0), LitInt(2)) <= Seq#Length(s#0);
        assume true;
        s#0 := Seq#Take(s#0, Div(Seq#Length(s#0), LitInt(2)));

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(869,3)
        assert {:id "id464"} Seq#Rank(s#0) < Seq#Rank($decr$loop#00);
    }

  after_0:
}



procedure {:verboseName "Sequences4 (well-formedness)"} CheckWellFormed$$_module.__default.Sequences4(_module._default.Sequences4$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences4$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences4$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Sequences4 (call)"} Call$$_module.__default.Sequences4(_module._default.Sequences4$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences4$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences4$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Sequences4 (correctness)"} Impl$$_module.__default.Sequences4(_module._default.Sequences4$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.Sequences4$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.Sequences4$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Sequences4 (correctness)"} Impl$$_module.__default.Sequences4(_module._default.Sequences4$_T0: Ty, S#0: Seq) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Seq;
  var $w$loop#0: bool;
  var $decr$loop#00: Seq;

    // AddMethodImpl: Sequences4, Impl$$_module.__default.Sequences4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(876,9)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(877,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Seq#Drop(S#0, i#0);
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id467"} $w$loop#0 ==> LitInt(0) <= i#0;
      invariant {:id "id468"} $w$loop#0 ==> i#0 <= Seq#Length(S#0);
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
      free invariant Seq#Rank(Seq#Drop(S#0, i#0)) <= Seq#Rank($decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= i#0)
            {
            }

            assume true;
            assume {:id "id466"} LitInt(0) <= i#0 && i#0 <= Seq#Length(S#0);
            assert {:id "id469"} 0 <= i#0 && i#0 <= Seq#Length(S#0);
            assume true;
            assume false;
        }

        assert {:id "id470"} 0 <= i#0 && i#0 <= Seq#Length(S#0);
        assume true;
        if (Seq#Equal(Seq#Drop(S#0, i#0), Seq#Empty(): Seq))
        {
            break;
        }

        $decr$loop#00 := Seq#Drop(S#0, i#0);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(880,5)
        assert {:id "id471"} {:subsumption 0} 0 <= i#0 + 1 && i#0 + 1 <= Seq#Length(S#0);
        assert {:id "id472"} {:subsumption 0} 0 <= i#0 && i#0 <= Seq#Length(S#0);
        assert {:id "id473"} {:subsumption 0} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(Seq#Drop(S#0, i#0));
        assume true;
        assert {:id "id474"} Seq#Equal(Seq#Drop(S#0, i#0 + 1), Seq#Drop(Seq#Drop(S#0, i#0), LitInt(1)));
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(881,7)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(877,3)
        assert {:id "id476"} Seq#Rank(Seq#Drop(S#0, i#0)) < Seq#Rank($decr$loop#00);
        assume true;
    }
}



procedure {:verboseName "Negation0 (well-formedness)"} CheckWellFormed$$_module.__default.Negation0(_module._default.Negation0$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Negation0$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Negation0$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Negation0 (call)"} Call$$_module.__default.Negation0(_module._default.Negation0$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Negation0$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Negation0$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Negation0 (correctness)"} Impl$$_module.__default.Negation0(_module._default.Negation0$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Negation0$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Negation0$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Negation0 (correctness)"} Impl$$_module.__default.Negation0(_module._default.Negation0$_T0: Ty, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.Negation0$_T0))
       && $IsAlloc(s#0, TSet(_module._default.Negation0$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.Negation0$_T0)
         && $IsAllocBox(x#0_0, _module._default.Negation0$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: Negation0, Impl$$_module.__default.Negation0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(888,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(889,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant Set#Subset(s#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Set#Equal(s#0, Set#Empty(): Set))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(890,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.Negation0$_T0)
           && $IsAllocBox(x#0_1, _module._default.Negation0$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id478"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.Negation0$_T0)
             && Set#IsMember(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id479"} Set#IsMember(s#0, x#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(891,7)
        assume true;
        assert {:id "id480"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(889,3)
        assert {:id "id482"} Set#Subset(s#0, $decr$loop#00) && !Set#Subset($decr$loop#00, s#0);
    }
}



procedure {:verboseName "Negation1 (well-formedness)"} CheckWellFormed$$_module.__default.Negation1(_module._default.Negation1$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Negation1$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Negation1$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Negation1 (call)"} Call$$_module.__default.Negation1(_module._default.Negation1$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Negation1$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Negation1$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Negation1 (correctness)"} Impl$$_module.__default.Negation1(_module._default.Negation1$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.Negation1$_T0))
         && $IsAlloc(S#0, TSet(_module._default.Negation1$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Negation1 (correctness)"} Impl$$_module.__default.Negation1(_module._default.Negation1$_T0: Ty, S#0: Set) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.Negation1$_T0))
       && $IsAlloc(s#0, TSet(_module._default.Negation1$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.Negation1$_T0)
         && $IsAllocBox(x#0_0, _module._default.Negation1$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: Negation1, Impl$$_module.__default.Negation1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(896,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(897,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant Set#Subset(s#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (!!Set#Equal(s#0, Set#Empty(): Set))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(898,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.Negation1$_T0)
           && $IsAllocBox(x#0_1, _module._default.Negation1$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id484"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.Negation1$_T0)
             && Set#IsMember(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id485"} Set#IsMember(s#0, x#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(899,7)
        assume true;
        assert {:id "id486"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(897,3)
        assert {:id "id488"} Set#Subset(s#0, $decr$loop#00) && !Set#Subset($decr$loop#00, s#0);
    }
}



procedure {:verboseName "MultipleGuardConjuncts0 (well-formedness)"} CheckWellFormed$$_module.__default.MultipleGuardConjuncts0(N#0: int where LitInt(0) <= N#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultipleGuardConjuncts0 (call)"} Call$$_module.__default.MultipleGuardConjuncts0(N#0: int where LitInt(0) <= N#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultipleGuardConjuncts0 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts0(N#0: int where LitInt(0) <= N#0) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleGuardConjuncts0 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts0(N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: int where LitInt(0) <= s#0;
  var b#0: bool;
  var $rhs#0: int;
  var $rhs#1: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#0_0: int;
  var newtype$check#0_0: int;
  var $rhs#0_1: bool;

    // AddMethodImpl: MultipleGuardConjuncts0, Impl$$_module.__default.MultipleGuardConjuncts0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(922,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := N#0;
    havoc $rhs#1;
    s#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(923,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if b#0 then (if s#0 <= LitInt(0) then 0 - s#0 else s#0 - 0) else 0 - 1);
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
      free invariant (if b#0 then (if s#0 <= LitInt(0) then 0 - s#0 else s#0 - 0) else 0 - 1)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (b#0)
            {
                if (s#0 <= LitInt(0))
                {
                }
                else
                {
                }
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (b#0)
        {
        }

        assume true;
        if (!(b#0 && s#0 != 0))
        {
            break;
        }

        $decr$loop#00 := (if b#0 then (if s#0 <= LitInt(0) then 0 - s#0 else s#0 - 0) else 0 - 1);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(924,10)
        assume true;
        assume true;
        newtype$check#0_0 := s#0 - 1;
        assert {:id "id492"} LitInt(0) <= newtype$check#0_0;
        assume true;
        $rhs#0_0 := s#0 - 1;
        havoc $rhs#0_1;
        s#0 := $rhs#0_0;
        b#0 := $rhs#0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(923,3)
        assert {:id "id496"} 0 <= $decr$loop#00
           || (if b#0 then (if s#0 <= LitInt(0) then 0 - s#0 else s#0 - 0) else 0 - 1)
             == $decr$loop#00;
        assert {:id "id497"} (if b#0 then (if s#0 <= LitInt(0) then 0 - s#0 else s#0 - 0) else 0 - 1)
           < $decr$loop#00;
    }
}



procedure {:verboseName "MultipleGuardConjuncts0' (well-formedness)"} CheckWellFormed$$_module.__default.MultipleGuardConjuncts0_k(N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultipleGuardConjuncts0' (call)"} Call$$_module.__default.MultipleGuardConjuncts0_k(N#0: int);
  // user-defined preconditions
  requires {:id "id499"} LitInt(0) <= N#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultipleGuardConjuncts0' (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts0_k(N#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id500"} LitInt(0) <= N#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleGuardConjuncts0' (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts0_k(N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: int;
  var b#0: bool;
  var $rhs#0: int;
  var $rhs#1: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $rhs#0_0: int;
  var $rhs#0_1: bool;

    // AddMethodImpl: MultipleGuardConjuncts0', Impl$$_module.__default.MultipleGuardConjuncts0_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(932,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := N#0;
    havoc $rhs#1;
    s#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(933,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if b#0 then (if s#0 <= LitInt(0) then 0 - s#0 else s#0 - 0) else 0 - 1);
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
      free invariant (if b#0 then (if s#0 <= LitInt(0) then 0 - s#0 else s#0 - 0) else 0 - 1)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (b#0)
            {
                if (s#0 <= LitInt(0))
                {
                }
                else
                {
                }
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (b#0)
        {
        }

        assume true;
        if (!(b#0 && s#0 != 0))
        {
            break;
        }

        $decr$loop#00 := (if b#0 then (if s#0 <= LitInt(0) then 0 - s#0 else s#0 - 0) else 0 - 1);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(934,10)
        assume true;
        assume true;
        assume true;
        $rhs#0_0 := s#0 - 1;
        havoc $rhs#0_1;
        s#0 := $rhs#0_0;
        b#0 := $rhs#0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(933,3)
        assert {:id "id507"} 0 <= $decr$loop#00
           || (if b#0 then (if s#0 <= LitInt(0) then 0 - s#0 else s#0 - 0) else 0 - 1)
             == $decr$loop#00;
        assert {:id "id508"} (if b#0 then (if s#0 <= LitInt(0) then 0 - s#0 else s#0 - 0) else 0 - 1)
           < $decr$loop#00;
    }
}



procedure {:verboseName "MultipleGuardConjuncts1 (well-formedness)"} CheckWellFormed$$_module.__default.MultipleGuardConjuncts1(N#0: int where LitInt(23) <= N#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultipleGuardConjuncts1 (call)"} Call$$_module.__default.MultipleGuardConjuncts1(N#0: int where LitInt(23) <= N#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultipleGuardConjuncts1 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts1(N#0: int where LitInt(23) <= N#0) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleGuardConjuncts1 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts1(N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: int where LitInt(23) <= s#0;
  var b#0: bool;
  var $rhs#0: int;
  var $rhs#1: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var newtype$check#1: int;
  var newtype$check#2: int;
  var newtype$check#3: int;
  var $decr$loop#00: int;
  var $rhs#0_0: int;
  var newtype$check#0_0: int;
  var newtype$check#0_1: int;
  var $rhs#0_1: bool;

    // AddMethodImpl: MultipleGuardConjuncts1, Impl$$_module.__default.MultipleGuardConjuncts1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(941,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := N#0;
    havoc $rhs#1;
    s#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(942,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if b#0 then (if s#0 <= LitInt(23) then 23 - s#0 else s#0 - 23) else 0 - 1);
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
      free invariant (if b#0 then (if s#0 <= LitInt(23) then 23 - s#0 else s#0 - 23) else 0 - 1)
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (b#0)
            {
                newtype$check#0 := LitInt(23);
                assert {:id "id512"} LitInt(23) <= newtype$check#0;
                if (s#0 <= LitInt(23))
                {
                    newtype$check#1 := LitInt(23);
                    assert {:id "id513"} LitInt(23) <= newtype$check#1;
                }
                else
                {
                    newtype$check#2 := LitInt(23);
                    assert {:id "id514"} LitInt(23) <= newtype$check#2;
                }
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (b#0)
        {
            newtype$check#3 := LitInt(23);
            assert {:id "id515"} LitInt(23) <= newtype$check#3;
        }

        assume true;
        if (!(b#0 && s#0 != 23))
        {
            break;
        }

        $decr$loop#00 := (if b#0 then (if s#0 <= LitInt(23) then 23 - s#0 else s#0 - 23) else 0 - 1);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(943,10)
        assume true;
        assume true;
        newtype$check#0_0 := s#0 - 1;
        assert {:id "id516"} LitInt(23) <= newtype$check#0_0;
        newtype$check#0_1 := s#0 - 1;
        assert {:id "id517"} LitInt(23) <= newtype$check#0_1;
        assume true;
        $rhs#0_0 := s#0 - 1;
        havoc $rhs#0_1;
        s#0 := $rhs#0_0;
        b#0 := $rhs#0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(942,3)
        assert {:id "id521"} 0 <= $decr$loop#00
           || (if b#0 then (if s#0 <= LitInt(23) then 23 - s#0 else s#0 - 23) else 0 - 1)
             == $decr$loop#00;
        assert {:id "id522"} (if b#0 then (if s#0 <= LitInt(23) then 23 - s#0 else s#0 - 23) else 0 - 1)
           < $decr$loop#00;
    }
}



procedure {:verboseName "MultipleGuardConjuncts2 (well-formedness)"} CheckWellFormed$$_module.__default.MultipleGuardConjuncts2(S#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultipleGuardConjuncts2 (call)"} Call$$_module.__default.MultipleGuardConjuncts2(S#0: real);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultipleGuardConjuncts2 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts2(S#0: real) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleGuardConjuncts2 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts2(S#0: real) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: real;
  var b#0: bool;
  var $rhs#0: real;
  var $rhs#1: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: real;
  var $w$loop#0: bool;
  var $decr$loop#00: real;

    // AddMethodImpl: MultipleGuardConjuncts2, Impl$$_module.__default.MultipleGuardConjuncts2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(948,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := LitReal(0e0);
    havoc $rhs#1;
    s#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(949,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if b#0 then S#0 - s#0 else -1e0);
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
      free invariant (if b#0 then S#0 - s#0 else -1e0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (b#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (b#0)
        {
        }

        assume true;
        if (!(b#0 && s#0 < S#0))
        {
            break;
        }

        $decr$loop#00 := (if b#0 then S#0 - s#0 else -1e0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(950,7)
        assume true;
        assume true;
        s#0 := s#0 + 1e0;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(949,3)
        assert {:id "id527"} 0e0 <= $decr$loop#00 || (if b#0 then S#0 - s#0 else -1e0) == $decr$loop#00;
        assert {:id "id528"} (if b#0 then S#0 - s#0 else -1e0) <= $decr$loop#00 - 1e0;
    }
}



procedure {:verboseName "MultipleGuardConjuncts3 (well-formedness)"} CheckWellFormed$$_module.__default.MultipleGuardConjuncts3(S#0: real where LitReal(1e1) <= S#0);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultipleGuardConjuncts3 (call)"} Call$$_module.__default.MultipleGuardConjuncts3(S#0: real where LitReal(1e1) <= S#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultipleGuardConjuncts3 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts3(S#0: real where LitReal(1e1) <= S#0) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleGuardConjuncts3 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts3(S#0: real) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: real where LitReal(1e1) <= s#0;
  var b#0: bool;
  var $rhs#0: real;
  var newtype$check#0: real;
  var $rhs#1: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: real;
  var $w$loop#0: bool;
  var $decr$loop#00: real;
  var newtype$check#0_0: real;

    // AddMethodImpl: MultipleGuardConjuncts3, Impl$$_module.__default.MultipleGuardConjuncts3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(957,12)
    assume true;
    assume true;
    newtype$check#0 := LitReal(13e0);
    assert {:id "id529"} LitReal(1e1) <= newtype$check#0;
    assume true;
    $rhs#0 := LitReal(13e0);
    havoc $rhs#1;
    s#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(958,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if b#0 then S#0 - s#0 else -1e0);
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
      free invariant (if b#0 then S#0 - s#0 else -1e0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            if (b#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (b#0)
        {
        }

        assume true;
        if (!(b#0 && s#0 < S#0))
        {
            break;
        }

        $decr$loop#00 := (if b#0 then S#0 - s#0 else -1e0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(959,7)
        assume true;
        newtype$check#0_0 := s#0 + s#0;
        assert {:id "id533"} LitReal(1e1) <= newtype$check#0_0;
        assume true;
        s#0 := s#0 + s#0;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(958,3)
        assert {:id "id535"} 0e0 <= $decr$loop#00 || (if b#0 then S#0 - s#0 else -1e0) == $decr$loop#00;
        assert {:id "id536"} (if b#0 then S#0 - s#0 else -1e0) <= $decr$loop#00 - 1e0;
    }
}



procedure {:verboseName "MultipleGuardConjuncts4 (well-formedness)"} CheckWellFormed$$_module.__default.MultipleGuardConjuncts4(_module._default.MultipleGuardConjuncts4$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.MultipleGuardConjuncts4$_T0))
         && $IsAlloc(S#0, TSet(_module._default.MultipleGuardConjuncts4$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultipleGuardConjuncts4 (call)"} Call$$_module.__default.MultipleGuardConjuncts4(_module._default.MultipleGuardConjuncts4$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.MultipleGuardConjuncts4$_T0))
         && $IsAlloc(S#0, TSet(_module._default.MultipleGuardConjuncts4$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultipleGuardConjuncts4 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts4(_module._default.MultipleGuardConjuncts4$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.MultipleGuardConjuncts4$_T0))
         && $IsAlloc(S#0, TSet(_module._default.MultipleGuardConjuncts4$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleGuardConjuncts4 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts4(_module._default.MultipleGuardConjuncts4$_T0: Ty, S#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.MultipleGuardConjuncts4$_T0))
       && $IsAlloc(s#0, TSet(_module._default.MultipleGuardConjuncts4$_T0), $Heap);
  var b#0: bool;
  var $rhs#0: Set;
  var $rhs#1: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.MultipleGuardConjuncts4$_T0)
         && $IsAllocBox(x#0_0, _module._default.MultipleGuardConjuncts4$_T0, $Heap);
  var x#0_1: Box;
  var $rhs#0_0: Set;
  var $rhs#0_1: bool;

    // AddMethodImpl: MultipleGuardConjuncts4, Impl$$_module.__default.MultipleGuardConjuncts4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(964,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := S#0;
    havoc $rhs#1;
    s#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(965,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if b#0 then s#0 else Set#Empty(): Set);
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
      free invariant Set#Subset((if b#0 then s#0 else Set#Empty(): Set), $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            if (b#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (b#0)
        {
        }

        assume true;
        if (!(b#0 && !Set#Equal(s#0, Set#Empty(): Set)))
        {
            break;
        }

        $decr$loop#00 := (if b#0 then s#0 else Set#Empty(): Set);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(966,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.MultipleGuardConjuncts4$_T0)
           && $IsAllocBox(x#0_1, _module._default.MultipleGuardConjuncts4$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id540"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.MultipleGuardConjuncts4$_T0)
             && Set#IsMember(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id541"} Set#IsMember(s#0, x#0_0);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(967,10)
        assume true;
        assume true;
        assert {:id "id542"} defass#x#0_0;
        assume true;
        $rhs#0_0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        havoc $rhs#0_1;
        s#0 := $rhs#0_0;
        b#0 := $rhs#0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(965,3)
        assert {:id "id546"} Set#Subset((if b#0 then s#0 else Set#Empty(): Set), $decr$loop#00)
           && !Set#Subset($decr$loop#00, (if b#0 then s#0 else Set#Empty(): Set));
    }
}



procedure {:verboseName "MultipleGuardConjuncts5 (well-formedness)"} CheckWellFormed$$_module.__default.MultipleGuardConjuncts5(_module._default.MultipleGuardConjuncts5$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultipleGuardConjuncts5$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultipleGuardConjuncts5$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultipleGuardConjuncts5 (call)"} Call$$_module.__default.MultipleGuardConjuncts5(_module._default.MultipleGuardConjuncts5$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultipleGuardConjuncts5$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultipleGuardConjuncts5$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultipleGuardConjuncts5 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts5(_module._default.MultipleGuardConjuncts5$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.MultipleGuardConjuncts5$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.MultipleGuardConjuncts5$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleGuardConjuncts5 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts5(_module._default.MultipleGuardConjuncts5$_T0: Ty, S#0: MultiSet)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.MultipleGuardConjuncts5$_T0))
       && $IsAlloc(s#0, TMultiSet(_module._default.MultipleGuardConjuncts5$_T0), $Heap);
  var b#0: bool;
  var $rhs#0: MultiSet;
  var $rhs#1: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: MultiSet;
  var $w$loop#0: bool;
  var $decr$loop#00: MultiSet;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.MultipleGuardConjuncts5$_T0)
         && $IsAllocBox(x#0_0, _module._default.MultipleGuardConjuncts5$_T0, $Heap);
  var x#0_1: Box;
  var $rhs#0_0: MultiSet;
  var $rhs#0_1: bool;

    // AddMethodImpl: MultipleGuardConjuncts5, Impl$$_module.__default.MultipleGuardConjuncts5
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(972,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := S#0;
    havoc $rhs#1;
    s#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(973,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if b#0 then s#0 else MultiSet#Empty(): MultiSet);
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
      free invariant MultiSet#Subset((if b#0 then s#0 else MultiSet#Empty(): MultiSet), $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            if (b#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (b#0)
        {
        }

        assume true;
        if (!(b#0 && !MultiSet#Equal(s#0, MultiSet#Empty(): MultiSet)))
        {
            break;
        }

        $decr$loop#00 := (if b#0 then s#0 else MultiSet#Empty(): MultiSet);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(974,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.MultipleGuardConjuncts5$_T0)
           && $IsAllocBox(x#0_1, _module._default.MultipleGuardConjuncts5$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id550"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.MultipleGuardConjuncts5$_T0)
             && MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id551"} MultiSet#Multiplicity(s#0, x#0_0) > 0;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(975,10)
        assume true;
        assume true;
        assert {:id "id552"} defass#x#0_0;
        assume true;
        $rhs#0_0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        havoc $rhs#0_1;
        s#0 := $rhs#0_0;
        b#0 := $rhs#0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(973,3)
        assert {:id "id556"} MultiSet#Subset((if b#0 then s#0 else MultiSet#Empty(): MultiSet), $decr$loop#00)
           && !MultiSet#Equal((if b#0 then s#0 else MultiSet#Empty(): MultiSet), $decr$loop#00);
    }
}



procedure {:verboseName "MultipleGuardConjuncts6 (well-formedness)"} CheckWellFormed$$_module.__default.MultipleGuardConjuncts6(_module._default.MultipleGuardConjuncts6$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.MultipleGuardConjuncts6$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.MultipleGuardConjuncts6$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MultipleGuardConjuncts6 (call)"} Call$$_module.__default.MultipleGuardConjuncts6(_module._default.MultipleGuardConjuncts6$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.MultipleGuardConjuncts6$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.MultipleGuardConjuncts6$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MultipleGuardConjuncts6 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts6(_module._default.MultipleGuardConjuncts6$_T0: Ty, 
    S#0: Seq
       where $Is(S#0, TSeq(_module._default.MultipleGuardConjuncts6$_T0))
         && $IsAlloc(S#0, TSeq(_module._default.MultipleGuardConjuncts6$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MultipleGuardConjuncts6 (correctness)"} Impl$$_module.__default.MultipleGuardConjuncts6(_module._default.MultipleGuardConjuncts6$_T0: Ty, S#0: Seq)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Seq
     where $Is(s#0, TSeq(_module._default.MultipleGuardConjuncts6$_T0))
       && $IsAlloc(s#0, TSeq(_module._default.MultipleGuardConjuncts6$_T0), $Heap);
  var b#0: bool;
  var $rhs#0: Seq;
  var $rhs#1: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Seq;
  var $w$loop#0: bool;
  var $decr$loop#00: Seq;
  var $rhs#0_0: Seq;
  var $rhs#0_1: bool;

    // AddMethodImpl: MultipleGuardConjuncts6, Impl$$_module.__default.MultipleGuardConjuncts6
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(980,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := S#0;
    havoc $rhs#1;
    s#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(981,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if b#0 then s#0 else Seq#Empty(): Seq);
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
      free invariant Seq#Rank((if b#0 then s#0 else Seq#Empty(): Seq))
         <= Seq#Rank($decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            if (b#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (b#0)
        {
        }

        assume true;
        if (!(b#0 && !Seq#Equal(s#0, Seq#Empty(): Seq)))
        {
            break;
        }

        $decr$loop#00 := (if b#0 then s#0 else Seq#Empty(): Seq);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(982,5)
        assert {:id "id560"} {:subsumption 0} 0 <= LitInt(0) && LitInt(0) <= Seq#Length(s#0);
        assume true;
        assert {:id "id561"} Seq#Equal(Seq#Take(s#0, LitInt(0)), Seq#Empty(): Seq);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(983,10)
        assume true;
        assume true;
        assert {:id "id562"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(s#0);
        assume true;
        $rhs#0_0 := Seq#Drop(s#0, LitInt(1));
        assume true;
        $rhs#0_1 := Lit(true);
        s#0 := $rhs#0_0;
        b#0 := $rhs#0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(981,3)
        assert {:id "id567"} Seq#Rank((if b#0 then s#0 else Seq#Empty(): Seq)) < Seq#Rank($decr$loop#00);
    }
}



procedure {:verboseName "LexicographicTuples0 (well-formedness)"} CheckWellFormed$$_module.__default.LexicographicTuples0(A#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LexicographicTuples0 (call)"} Call$$_module.__default.LexicographicTuples0(A#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LexicographicTuples0 (correctness)"} Impl$$_module.__default.LexicographicTuples0(A#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LexicographicTuples0 (correctness)"} Impl$$_module.__default.LexicographicTuples0(A#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var $rhs#0_1_0: int;
  var $rhs#0_1_1: int;

    // AddMethodImpl: LexicographicTuples0, Impl$$_module.__default.LexicographicTuples0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(988,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    havoc $rhs#1;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(989,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := a#0 - 0;
    $decr_init$loop#01 := (if 0 < a#0 then b#0 - 0 else 0 - 1);
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
      free invariant a#0 - 0 <= $decr_init$loop#00
         && (a#0 - 0 == $decr_init$loop#00
           ==> (if 0 < a#0 then b#0 - 0 else 0 - 1) <= $decr_init$loop#01);
    {
        if (!$w$loop#0)
        {
            assume true;
            if (0 < a#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (0 < a#0)
        {
        }

        assume true;
        if (!(0 < a#0 && 0 < b#0))
        {
            break;
        }

        $decr$loop#00 := a#0 - 0;
        $decr$loop#01 := (if 0 < a#0 then b#0 - 0 else 0 - 1);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(990,5)
        assume true;
        if (0 < b#0)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(991,9)
            assume true;
            assume true;
            b#0 := b#0 - 1;
        }
        else
        {
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(993,12)
            assume true;
            assume true;
            assume true;
            $rhs#0_1_0 := a#0 - 1;
            havoc $rhs#0_1_1;
            a#0 := $rhs#0_1_0;
            b#0 := $rhs#0_1_1;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(989,3)
        assert {:id "id575"} 0 <= $decr$loop#00 || a#0 - 0 == $decr$loop#00;
        assert {:id "id576"} 0 <= $decr$loop#01
           || a#0 - 0 < $decr$loop#00
           || (if 0 < a#0 then b#0 - 0 else 0 - 1) == $decr$loop#01;
        assert {:id "id577"} a#0 - 0 < $decr$loop#00
           || (a#0 - 0 == $decr$loop#00
             && (if 0 < a#0 then b#0 - 0 else 0 - 1) < $decr$loop#01);
    }
}



procedure {:verboseName "LexicographicTuples1 (well-formedness)"} CheckWellFormed$$_module.__default.LexicographicTuples1(A#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LexicographicTuples1 (call)"} Call$$_module.__default.LexicographicTuples1(A#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LexicographicTuples1 (correctness)"} Impl$$_module.__default.LexicographicTuples1(A#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LexicographicTuples1 (correctness)"} Impl$$_module.__default.LexicographicTuples1(A#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var $rhs#0_1_0: int;
  var $rhs#0_1_1: int;

    // AddMethodImpl: LexicographicTuples1, Impl$$_module.__default.LexicographicTuples1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(999,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    havoc $rhs#1;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1000,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := a#0 - 0;
    $decr_init$loop#01 := (if 0 < a#0 then b#0 - Div(10, a#0) else 0 - 1);
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
      free invariant a#0 - 0 <= $decr_init$loop#00
         && (a#0 - 0 == $decr_init$loop#00
           ==> (if 0 < a#0 then b#0 - Div(10, a#0) else 0 - 1) <= $decr_init$loop#01);
    {
        if (!$w$loop#0)
        {
            assume true;
            if (0 < a#0)
            {
                assert {:id "id581"} a#0 != 0;
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (0 < a#0)
        {
            assert {:id "id582"} a#0 != 0;
        }

        assume true;
        if (!(0 < a#0 && Div(10, a#0) < b#0))
        {
            break;
        }

        $decr$loop#00 := a#0 - 0;
        $decr$loop#01 := (if 0 < a#0 then b#0 - Div(10, a#0) else 0 - 1);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1001,5)
        assume true;
        if (0 < b#0)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1002,9)
            assume true;
            assume true;
            b#0 := b#0 - 1;
        }
        else
        {
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1004,12)
            assume true;
            assume true;
            assume true;
            $rhs#0_1_0 := a#0 - 1;
            havoc $rhs#0_1_1;
            a#0 := $rhs#0_1_0;
            b#0 := $rhs#0_1_1;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1000,3)
        assert {:id "id587"} 0 <= $decr$loop#00 || a#0 - 0 == $decr$loop#00;
        assert {:id "id588"} 0 <= $decr$loop#01
           || a#0 - 0 < $decr$loop#00
           || (if 0 < a#0 then b#0 - Div(10, a#0) else 0 - 1) == $decr$loop#01;
        assert {:id "id589"} a#0 - 0 < $decr$loop#00
           || (a#0 - 0 == $decr$loop#00
             && (if 0 < a#0 then b#0 - Div(10, a#0) else 0 - 1) < $decr$loop#01);
    }
}



procedure {:verboseName "LexicographicTuples2 (well-formedness)"} CheckWellFormed$$_module.__default.LexicographicTuples2(A#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LexicographicTuples2 (call)"} Call$$_module.__default.LexicographicTuples2(A#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LexicographicTuples2 (correctness)"} Impl$$_module.__default.LexicographicTuples2(A#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LexicographicTuples2 (correctness)"} Impl$$_module.__default.LexicographicTuples2(A#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var c#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $decr_init$loop#02: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var $decr$loop#02: int;
  var $rhs#0_1_1_0: int;
  var $rhs#0_1_1_1: int;

    // AddMethodImpl: LexicographicTuples2, Impl$$_module.__default.LexicographicTuples2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1010,15)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    havoc $rhs#1;
    havoc $rhs#2;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    c#0 := $rhs#2;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1011,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := a#0 - 0;
    $decr_init$loop#01 := (if 0 < a#0 then b#0 - 0 else 0 - 1);
    $decr_init$loop#02 := (if 0 < a#0 && 0 < b#0 then c#0 - 0 else 0 - 1);
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
      free invariant a#0 - 0 <= $decr_init$loop#00
         && (a#0 - 0 == $decr_init$loop#00
           ==> (if 0 < a#0 then b#0 - 0 else 0 - 1) <= $decr_init$loop#01
             && ((if 0 < a#0 then b#0 - 0 else 0 - 1) == $decr_init$loop#01
               ==> (if 0 < a#0 && 0 < b#0 then c#0 - 0 else 0 - 1) <= $decr_init$loop#02));
    {
        if (!$w$loop#0)
        {
            assume true;
            if (0 < a#0)
            {
            }
            else
            {
            }

            assume true;
            if (0 < a#0)
            {
            }

            if (0 < a#0 && 0 < b#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (0 < a#0)
        {
        }

        if (0 < a#0 && 0 < b#0)
        {
        }

        assume true;
        if (!(0 < a#0 && 0 < b#0 && 0 < c#0))
        {
            break;
        }

        $decr$loop#00 := a#0 - 0;
        $decr$loop#01 := (if 0 < a#0 then b#0 - 0 else 0 - 1);
        $decr$loop#02 := (if 0 < a#0 && 0 < b#0 then c#0 - 0 else 0 - 1);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1012,5)
        assume true;
        if (0 < c#0)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1013,9)
            assume true;
            assume true;
            c#0 := c#0 - 1;
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1014,12)
            assume true;
            if (0 < b#0)
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1015,9)
                assume true;
                assume true;
                b#0 := b#0 - 1;
            }
            else
            {
                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1017,12)
                assume true;
                assume true;
                assume true;
                $rhs#0_1_1_0 := a#0 - 1;
                havoc $rhs#0_1_1_1;
                a#0 := $rhs#0_1_1_0;
                b#0 := $rhs#0_1_1_1;
            }
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1011,3)
        assert {:id "id599"} 0 <= $decr$loop#00 || a#0 - 0 == $decr$loop#00;
        assert {:id "id600"} 0 <= $decr$loop#01
           || a#0 - 0 < $decr$loop#00
           || (if 0 < a#0 then b#0 - 0 else 0 - 1) == $decr$loop#01;
        assert {:id "id601"} 0 <= $decr$loop#02
           || a#0 - 0 < $decr$loop#00
           || (if 0 < a#0 then b#0 - 0 else 0 - 1) < $decr$loop#01
           || (if 0 < a#0 && 0 < b#0 then c#0 - 0 else 0 - 1) == $decr$loop#02;
        assert {:id "id602"} a#0 - 0 < $decr$loop#00
           || (a#0 - 0 == $decr$loop#00
             && ((if 0 < a#0 then b#0 - 0 else 0 - 1) < $decr$loop#01
               || ((if 0 < a#0 then b#0 - 0 else 0 - 1) == $decr$loop#01
                 && (if 0 < a#0 && 0 < b#0 then c#0 - 0 else 0 - 1) < $decr$loop#02)));
    }
}



procedure {:verboseName "LexicographicTuples3 (well-formedness)"} CheckWellFormed$$_module.__default.LexicographicTuples3(A#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "LexicographicTuples3 (call)"} Call$$_module.__default.LexicographicTuples3(A#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "LexicographicTuples3 (correctness)"} Impl$$_module.__default.LexicographicTuples3(A#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "LexicographicTuples3 (correctness)"} Impl$$_module.__default.LexicographicTuples3(A#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int;
  var b#0: int;
  var c#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var u#0: bool;
  var v#0: bool;
  var w#0: bool;
  var x#0: bool;
  var y#0: bool;
  var z#0: bool;
  var omega#0: bool;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $decr_init$loop#02: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var $decr$loop#02: int;
  var $rhs#0_1_1_0: int;
  var $rhs#0_1_1_1: int;
  var $rhs#0_0: bool;
  var $rhs#0_1: bool;
  var $rhs#0_2: bool;
  var $rhs#0_3: bool;
  var $rhs#0_4: bool;
  var $rhs#0_5: bool;
  var $rhs#0_6: bool;

    // AddMethodImpl: LexicographicTuples3, Impl$$_module.__default.LexicographicTuples3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1023,15)
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    havoc $rhs#1;
    havoc $rhs#2;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    c#0 := $rhs#2;
    havoc u#0, v#0, w#0, x#0, y#0, z#0, omega#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1025,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if u#0 && v#0 then a#0 - 0 else 0 - 1);
    $decr_init$loop#01 := (if u#0 && v#0 && 0 < a#0 && w#0 && x#0 then b#0 - 0 else 0 - 1);
    $decr_init$loop#02 := (if u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0 && y#0 && z#0
       then c#0 - 0
       else 0 - 1);
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
      free invariant (if u#0 && v#0 then a#0 - 0 else 0 - 1) <= $decr_init$loop#00
         && ((if u#0 && v#0 then a#0 - 0 else 0 - 1) == $decr_init$loop#00
           ==> (if u#0 && v#0 && 0 < a#0 && w#0 && x#0 then b#0 - 0 else 0 - 1)
               <= $decr_init$loop#01
             && ((if u#0 && v#0 && 0 < a#0 && w#0 && x#0 then b#0 - 0 else 0 - 1)
                 == $decr_init$loop#01
               ==> (if u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0 && y#0 && z#0
                   then c#0 - 0
                   else 0 - 1)
                 <= $decr_init$loop#02));
    {
        if (!$w$loop#0)
        {
            if (u#0)
            {
            }

            if (u#0 && v#0)
            {
            }
            else
            {
            }

            assume true;
            if (u#0)
            {
            }

            if (u#0 && v#0)
            {
            }

            if (u#0 && v#0 && 0 < a#0)
            {
            }

            if (u#0 && v#0 && 0 < a#0 && w#0)
            {
            }

            if (u#0 && v#0 && 0 < a#0 && w#0 && x#0)
            {
            }
            else
            {
            }

            assume true;
            if (u#0)
            {
            }

            if (u#0 && v#0)
            {
            }

            if (u#0 && v#0 && 0 < a#0)
            {
            }

            if (u#0 && v#0 && 0 < a#0 && w#0)
            {
            }

            if (u#0 && v#0 && 0 < a#0 && w#0 && x#0)
            {
            }

            if (u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0)
            {
            }

            if (u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0 && y#0)
            {
            }

            if (u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0 && y#0 && z#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (u#0)
        {
        }

        if (u#0 && v#0)
        {
        }

        if (u#0 && v#0 && 0 < a#0)
        {
        }

        if (u#0 && v#0 && 0 < a#0 && w#0)
        {
        }

        if (u#0 && v#0 && 0 < a#0 && w#0 && x#0)
        {
        }

        if (u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0)
        {
        }

        if (u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0 && y#0)
        {
        }

        if (u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0 && y#0 && z#0)
        {
        }

        if (u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0 && y#0 && z#0 && 0 < c#0)
        {
        }

        assume true;
        if (!(
          u#0
           && v#0
           && 0 < a#0
           && w#0
           && x#0
           && 0 < b#0
           && y#0
           && z#0
           && 0 < c#0
           && omega#0))
        {
            break;
        }

        $decr$loop#00 := (if u#0 && v#0 then a#0 - 0 else 0 - 1);
        $decr$loop#01 := (if u#0 && v#0 && 0 < a#0 && w#0 && x#0 then b#0 - 0 else 0 - 1);
        $decr$loop#02 := (if u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0 && y#0 && z#0
           then c#0 - 0
           else 0 - 1);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1026,5)
        assume true;
        if (0 < c#0)
        {
            push;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1027,9)
            assume true;
            assume true;
            c#0 := c#0 - 1;
            pop;
        }
        else
        {
            push;
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1028,12)
            assume true;
            if (0 < b#0)
            {
                push;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1029,9)
                assume true;
                assume true;
                b#0 := b#0 - 1;
                pop;
            }
            else
            {
                push;
                // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1031,12)
                assume true;
                assume true;
                assume true;
                $rhs#0_1_1_0 := a#0 - 1;
                havoc $rhs#0_1_1_1;
                a#0 := $rhs#0_1_1_0;
                b#0 := $rhs#0_1_1_1;
                pop;
            }

            pop;
        }

        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1033,29)
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        assume true;
        havoc $rhs#0_0;
        havoc $rhs#0_1;
        havoc $rhs#0_2;
        havoc $rhs#0_3;
        havoc $rhs#0_4;
        havoc $rhs#0_5;
        havoc $rhs#0_6;
        u#0 := $rhs#0_0;
        v#0 := $rhs#0_1;
        w#0 := $rhs#0_2;
        x#0 := $rhs#0_3;
        y#0 := $rhs#0_4;
        z#0 := $rhs#0_5;
        omega#0 := $rhs#0_6;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1025,3)
        assert {:id "id619"} 0 <= $decr$loop#00 || (if u#0 && v#0 then a#0 - 0 else 0 - 1) == $decr$loop#00;
        assert {:id "id620"} 0 <= $decr$loop#01
           || (if u#0 && v#0 then a#0 - 0 else 0 - 1) < $decr$loop#00
           || (if u#0 && v#0 && 0 < a#0 && w#0 && x#0 then b#0 - 0 else 0 - 1)
             == $decr$loop#01;
        assert {:id "id621"} 0 <= $decr$loop#02
           || (if u#0 && v#0 then a#0 - 0 else 0 - 1) < $decr$loop#00
           || (if u#0 && v#0 && 0 < a#0 && w#0 && x#0 then b#0 - 0 else 0 - 1) < $decr$loop#01
           || (if u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0 && y#0 && z#0
               then c#0 - 0
               else 0 - 1)
             == $decr$loop#02;
        assert {:id "id622"} (if u#0 && v#0 then a#0 - 0 else 0 - 1) < $decr$loop#00
           || ((if u#0 && v#0 then a#0 - 0 else 0 - 1) == $decr$loop#00
             && ((if u#0 && v#0 && 0 < a#0 && w#0 && x#0 then b#0 - 0 else 0 - 1) < $decr$loop#01
               || ((if u#0 && v#0 && 0 < a#0 && w#0 && x#0 then b#0 - 0 else 0 - 1)
                   == $decr$loop#01
                 && (if u#0 && v#0 && 0 < a#0 && w#0 && x#0 && 0 < b#0 && y#0 && z#0
                     then c#0 - 0
                     else 0 - 1)
                   < $decr$loop#02)));
    }
}



procedure {:verboseName "NegationNormalForm0 (well-formedness)"} CheckWellFormed$$_module.__default.NegationNormalForm0(A#0: int where LitInt(0) <= A#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NegationNormalForm0 (call)"} Call$$_module.__default.NegationNormalForm0(A#0: int where LitInt(0) <= A#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NegationNormalForm0 (correctness)"} Impl$$_module.__default.NegationNormalForm0(A#0: int where LitInt(0) <= A#0) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NegationNormalForm0 (correctness)"} Impl$$_module.__default.NegationNormalForm0(A#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: int where LitInt(0) <= a#0;
  var b#0: int where LitInt(0) <= b#0;
  var $rhs#0: int;
  var $rhs#1: int where LitInt(0) <= $rhs#1;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var $rhs#0_1_0: int;
  var $rhs#0_1_1: int where LitInt(0) <= $rhs#0_1_1;

    // AddMethodImpl: NegationNormalForm0, Impl$$_module.__default.NegationNormalForm0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1038,22)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    havoc $rhs#1 /* where LitInt(0) <= $rhs#1 */;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1039,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if a#0 <= LitInt(0) then 0 - a#0 else a#0 - 0);
    $decr_init$loop#01 := (if a#0 != 0 then (if b#0 <= LitInt(0) then 0 - b#0 else b#0 - 0) else 0 - 1);
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
      free invariant (if a#0 <= LitInt(0) then 0 - a#0 else a#0 - 0) <= $decr_init$loop#00
         && ((if a#0 <= LitInt(0) then 0 - a#0 else a#0 - 0) == $decr_init$loop#00
           ==> (if a#0 != 0 then (if b#0 <= LitInt(0) then 0 - b#0 else b#0 - 0) else 0 - 1)
             <= $decr_init$loop#01);
    {
        if (!$w$loop#0)
        {
            if (a#0 <= LitInt(0))
            {
            }
            else
            {
            }

            assume true;
            if (a#0 != 0)
            {
                if (b#0 <= LitInt(0))
                {
                }
                else
                {
                }
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (a#0 != LitInt(0))
        {
        }

        assume true;
        if (a#0 == LitInt(0) || b#0 == LitInt(0))
        {
            break;
        }

        $decr$loop#00 := (if a#0 <= LitInt(0) then 0 - a#0 else a#0 - 0);
        $decr$loop#01 := (if a#0 != 0 then (if b#0 <= LitInt(0) then 0 - b#0 else b#0 - 0) else 0 - 1);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1040,5)
        assume true;
        if (0 < b#0)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1041,9)
            assume true;
            assert {:id "id626"} $Is(b#0 - 1, Tclass._System.nat());
            assume true;
            b#0 := b#0 - 1;
        }
        else
        {
            // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1043,12)
            assume true;
            assume true;
            assert {:id "id628"} $Is(a#0 - 1, Tclass._System.nat());
            assume true;
            $rhs#0_1_0 := a#0 - 1;
            havoc $rhs#0_1_1 /* where LitInt(0) <= $rhs#0_1_1 */;
            a#0 := $rhs#0_1_0;
            b#0 := $rhs#0_1_1;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1039,3)
        assert {:id "id632"} 0 <= $decr$loop#00
           || (if a#0 <= LitInt(0) then 0 - a#0 else a#0 - 0) == $decr$loop#00;
        assert {:id "id633"} 0 <= $decr$loop#01
           || (if a#0 <= LitInt(0) then 0 - a#0 else a#0 - 0) < $decr$loop#00
           || (if a#0 != 0 then (if b#0 <= LitInt(0) then 0 - b#0 else b#0 - 0) else 0 - 1)
             == $decr$loop#01;
        assert {:id "id634"} (if a#0 <= LitInt(0) then 0 - a#0 else a#0 - 0) < $decr$loop#00
           || ((if a#0 <= LitInt(0) then 0 - a#0 else a#0 - 0) == $decr$loop#00
             && (if a#0 != 0 then (if b#0 <= LitInt(0) then 0 - b#0 else b#0 - 0) else 0 - 1)
               < $decr$loop#01);
    }
}



procedure {:verboseName "NegationNormalForm1 (well-formedness)"} CheckWellFormed$$_module.__default.NegationNormalForm1(_module._default.NegationNormalForm1$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.NegationNormalForm1$_T0))
         && $IsAlloc(S#0, TSet(_module._default.NegationNormalForm1$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NegationNormalForm1 (call)"} Call$$_module.__default.NegationNormalForm1(_module._default.NegationNormalForm1$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.NegationNormalForm1$_T0))
         && $IsAlloc(S#0, TSet(_module._default.NegationNormalForm1$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NegationNormalForm1 (correctness)"} Impl$$_module.__default.NegationNormalForm1(_module._default.NegationNormalForm1$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.NegationNormalForm1$_T0))
         && $IsAlloc(S#0, TSet(_module._default.NegationNormalForm1$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NegationNormalForm1 (correctness)"} Impl$$_module.__default.NegationNormalForm1(_module._default.NegationNormalForm1$_T0: Ty, S#0: Set)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.NegationNormalForm1$_T0))
       && $IsAlloc(s#0, TSet(_module._default.NegationNormalForm1$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Set;
  var $w$loop#0: bool;
  var $decr$loop#00: Set;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.NegationNormalForm1$_T0)
         && $IsAllocBox(x#0_0, _module._default.NegationNormalForm1$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: NegationNormalForm1, Impl$$_module.__default.NegationNormalForm1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1049,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1050,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := s#0;
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
      free invariant Set#Subset(s#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (Set#Equal(s#0, Set#Empty(): Set))
        {
            break;
        }

        $decr$loop#00 := s#0;
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1051,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.NegationNormalForm1$_T0)
           && $IsAllocBox(x#0_1, _module._default.NegationNormalForm1$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id636"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.NegationNormalForm1$_T0)
             && Set#IsMember(s#0, $as#x0_0#0_0));
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id637"} Set#IsMember(s#0, x#0_0);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1052,7)
        assume true;
        assert {:id "id638"} defass#x#0_0;
        assume true;
        s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1050,3)
        assert {:id "id640"} Set#Subset(s#0, $decr$loop#00) && !Set#Subset($decr$loop#00, s#0);
    }
}



procedure {:verboseName "NegationNormalForm2 (well-formedness)"} CheckWellFormed$$_module.__default.NegationNormalForm2(_module._default.NegationNormalForm2$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.NegationNormalForm2$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.NegationNormalForm2$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NegationNormalForm2 (call)"} Call$$_module.__default.NegationNormalForm2(_module._default.NegationNormalForm2$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.NegationNormalForm2$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.NegationNormalForm2$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NegationNormalForm2 (correctness)"} Impl$$_module.__default.NegationNormalForm2(_module._default.NegationNormalForm2$_T0: Ty, 
    S#0: MultiSet
       where $Is(S#0, TMultiSet(_module._default.NegationNormalForm2$_T0))
         && $IsAlloc(S#0, TMultiSet(_module._default.NegationNormalForm2$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NegationNormalForm2 (correctness)"} Impl$$_module.__default.NegationNormalForm2(_module._default.NegationNormalForm2$_T0: Ty, S#0: MultiSet)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: MultiSet
     where $Is(s#0, TMultiSet(_module._default.NegationNormalForm2$_T0))
       && $IsAlloc(s#0, TMultiSet(_module._default.NegationNormalForm2$_T0), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module._default.NegationNormalForm2$_T0)
         && $IsAllocBox(x#0_0, _module._default.NegationNormalForm2$_T0, $Heap);
  var x#0_1: Box;

    // AddMethodImpl: NegationNormalForm2, Impl$$_module.__default.NegationNormalForm2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1057,9)
    assume true;
    assume true;
    s#0 := S#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1058,3)
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
        if (MultiSet#Card(s#0) == LitInt(0))
        {
            break;
        }

        $decr$loop#00 := (if MultiSet#Card(s#0) <= LitInt(0)
           then 0 - MultiSet#Card(s#0)
           else MultiSet#Card(s#0) - 0);
        // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1059,11)
        havoc x#0_1;
        if ($IsBox(x#0_1, _module._default.NegationNormalForm2$_T0)
           && $IsAllocBox(x#0_1, _module._default.NegationNormalForm2$_T0, $Heap))
        {
            assume true;
        }

        assert {:id "id642"} (exists $as#x0_0#0_0: Box :: 
          $IsBox($as#x0_0#0_0, _module._default.NegationNormalForm2$_T0)
             && MultiSet#Multiplicity(s#0, $as#x0_0#0_0) > 0);
        defass#x#0_0 := true;
        havoc x#0_0;
        assume {:id "id643"} MultiSet#Multiplicity(s#0, x#0_0) > 0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1060,7)
        assume true;
        assert {:id "id644"} defass#x#0_0;
        assume true;
        s#0 := MultiSet#Difference(s#0, MultiSet#UnionOne(MultiSet#Empty(): MultiSet, x#0_0));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1058,3)
        assert {:id "id646"} 0 <= $decr$loop#00
           || (if MultiSet#Card(s#0) <= LitInt(0)
               then 0 - MultiSet#Card(s#0)
               else MultiSet#Card(s#0) - 0)
             == $decr$loop#00;
        assert {:id "id647"} (if MultiSet#Card(s#0) <= LitInt(0)
             then 0 - MultiSet#Card(s#0)
             else MultiSet#Card(s#0) - 0)
           < $decr$loop#00;
    }
}



procedure {:verboseName "NegationNormalForm3 (well-formedness)"} CheckWellFormed$$_module.__default.NegationNormalForm3(_module._default.NegationNormalForm3$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.NegationNormalForm3$_T0))
         && $IsAlloc(S#0, TSet(_module._default.NegationNormalForm3$_T0), $Heap), 
    Q#0: Seq
       where $Is(Q#0, TSeq(_module._default.NegationNormalForm3$_T0))
         && $IsAlloc(Q#0, TSeq(_module._default.NegationNormalForm3$_T0), $Heap), 
    A#0: int where LitInt(0) <= A#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NegationNormalForm3 (call)"} Call$$_module.__default.NegationNormalForm3(_module._default.NegationNormalForm3$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.NegationNormalForm3$_T0))
         && $IsAlloc(S#0, TSet(_module._default.NegationNormalForm3$_T0), $Heap), 
    Q#0: Seq
       where $Is(Q#0, TSeq(_module._default.NegationNormalForm3$_T0))
         && $IsAlloc(Q#0, TSeq(_module._default.NegationNormalForm3$_T0), $Heap), 
    A#0: int where LitInt(0) <= A#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NegationNormalForm3 (correctness)"} Impl$$_module.__default.NegationNormalForm3(_module._default.NegationNormalForm3$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.NegationNormalForm3$_T0))
         && $IsAlloc(S#0, TSet(_module._default.NegationNormalForm3$_T0), $Heap), 
    Q#0: Seq
       where $Is(Q#0, TSeq(_module._default.NegationNormalForm3$_T0))
         && $IsAlloc(Q#0, TSeq(_module._default.NegationNormalForm3$_T0), $Heap), 
    A#0: int where LitInt(0) <= A#0)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NegationNormalForm3 (correctness)"} Impl$$_module.__default.NegationNormalForm3(_module._default.NegationNormalForm3$_T0: Ty, S#0: Set, Q#0: Seq, A#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.NegationNormalForm3$_T0))
       && $IsAlloc(s#0, TSet(_module._default.NegationNormalForm3$_T0), $Heap);
  var q#0: Seq
     where $Is(q#0, TSeq(_module._default.NegationNormalForm3$_T0))
       && $IsAlloc(q#0, TSeq(_module._default.NegationNormalForm3$_T0), $Heap);
  var b#0: bool;
  var a#0: int;
  var $rhs#0: Set;
  var $rhs#1: Seq;
  var $rhs#2: bool;
  var $rhs#3: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var eg$x#0_2_0: Box;
  var x#0_2_0: Box
     where $IsBox(x#0_2_0, _module._default.NegationNormalForm3$_T0)
       && $IsAllocBox(x#0_2_0, _module._default.NegationNormalForm3$_T0, $Heap);

    // AddMethodImpl: NegationNormalForm3, Impl$$_module.__default.NegationNormalForm3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1065,18)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := S#0;
    assume true;
    $rhs#1 := Q#0;
    havoc $rhs#2;
    assume true;
    $rhs#3 := A#0;
    s#0 := $rhs#0;
    q#0 := $rhs#1;
    b#0 := $rhs#2;
    a#0 := $rhs#3;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1066,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Card(s#0);
    $decr_init$loop#01 := (if Set#Subset(Set#Empty(): Set, s#0)
         && !Set#Subset(s#0, Set#Empty(): Set)
         && Seq#Equal(q#0, Seq#Empty(): Seq)
         && b#0
       then 1000 - a#0
       else 0 - 1);
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
      free invariant Set#Card(s#0) <= $decr_init$loop#00
         && (Set#Card(s#0) == $decr_init$loop#00
           ==> (if Set#Subset(Set#Empty(): Set, s#0)
                 && !Set#Subset(s#0, Set#Empty(): Set)
                 && Seq#Equal(q#0, Seq#Empty(): Seq)
                 && b#0
               then 1000 - a#0
               else 0 - 1)
             <= $decr_init$loop#01);
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := Set#Card(s#0);
            assert {:id "id655"} LitInt(0) <= newtype$check#0;
            assume true;
            if (Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set))
            {
            }

            if (Set#Subset(Set#Empty(): Set, s#0)
               && !Set#Subset(s#0, Set#Empty(): Set)
               && Seq#Equal(q#0, Seq#Empty(): Seq))
            {
            }

            if (Set#Subset(Set#Empty(): Set, s#0)
               && !Set#Subset(s#0, Set#Empty(): Set)
               && Seq#Equal(q#0, Seq#Empty(): Seq)
               && b#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set))
        {
        }

        if (!(Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
           ==> !Seq#Equal(q#0, Seq#Empty(): Seq)))
        {
        }

        if (!(Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
             ==> !Seq#Equal(q#0, Seq#Empty(): Seq))
           && b#0)
        {
        }

        assume true;
        if (!(
          !(Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
             ==> !Seq#Equal(q#0, Seq#Empty(): Seq))
           && b#0
           && !!(a#0 < 1000)))
        {
            break;
        }

        $decr$loop#00 := Set#Card(s#0);
        $decr$loop#01 := (if Set#Subset(Set#Empty(): Set, s#0)
             && !Set#Subset(s#0, Set#Empty(): Set)
             && Seq#Equal(q#0, Seq#Empty(): Seq)
             && b#0
           then 1000 - a#0
           else 0 - 1);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1067,7)
        assume true;
        havoc b#0;
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1068,5)
        havoc x#0_2_0 /* where $IsBox(x#0_2_0, _module._default.NegationNormalForm3$_T0)
           && $IsAllocBox(x#0_2_0, _module._default.NegationNormalForm3$_T0, $Heap) */;
        if (*)
        {
            // Begin Comprehension WF check
            havoc eg$x#0_2_0;
            if ($IsBox(eg$x#0_2_0, _module._default.NegationNormalForm3$_T0)
               && $IsAllocBox(eg$x#0_2_0, _module._default.NegationNormalForm3$_T0, $Heap))
            {
            }

            // End Comprehension WF check
            assume true;
            assume Set#IsMember(s#0, x#0_2_0);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1070,9)
            assume true;
            assume true;
            s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_2_0));
        }
        else if (*)
        {
            assume true;
            assume {:id "id659"} Seq#Length(q#0) > 0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1072,9)
            assume true;
            assert {:id "id660"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(q#0);
            assume true;
            q#0 := Seq#Drop(q#0, LitInt(1));
        }
        else if (*)
        {
            assume true;
            assume {:id "id657"} a#0 < 123456;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1074,9)
            assume true;
            assume true;
            a#0 := a#0 + 1;
        }
        else
        {
            assume true;
            assume true;
            assume true;
            assume !(exists eg$x#0_0: Box :: 
                $IsBox(eg$x#0_0, _module._default.NegationNormalForm3$_T0)
                   && Set#IsMember(s#0, eg$x#0_0))
               && 0 >= Seq#Length(q#0)
               && 123456 <= a#0;
            assert {:id "id656"} false;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1066,3)
        assert {:id "id663"} 0 <= $decr$loop#00 || Set#Card(s#0) == $decr$loop#00;
        assert {:id "id664"} 0 <= $decr$loop#01
           || Set#Card(s#0) < $decr$loop#00
           || (if Set#Subset(Set#Empty(): Set, s#0)
                 && !Set#Subset(s#0, Set#Empty(): Set)
                 && Seq#Equal(q#0, Seq#Empty(): Seq)
                 && b#0
               then 1000 - a#0
               else 0 - 1)
             == $decr$loop#01;
        assert {:id "id665"} Set#Card(s#0) < $decr$loop#00
           || (Set#Card(s#0) == $decr$loop#00
             && (if Set#Subset(Set#Empty(): Set, s#0)
                   && !Set#Subset(s#0, Set#Empty(): Set)
                   && Seq#Equal(q#0, Seq#Empty(): Seq)
                   && b#0
                 then 1000 - a#0
                 else 0 - 1)
               < $decr$loop#01);
    }
}



procedure {:verboseName "NegationNormalForm4 (well-formedness)"} CheckWellFormed$$_module.__default.NegationNormalForm4(_module._default.NegationNormalForm4$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.NegationNormalForm4$_T0))
         && $IsAlloc(S#0, TSet(_module._default.NegationNormalForm4$_T0), $Heap), 
    Q#0: Seq
       where $Is(Q#0, TSeq(_module._default.NegationNormalForm4$_T0))
         && $IsAlloc(Q#0, TSeq(_module._default.NegationNormalForm4$_T0), $Heap), 
    A#0: int where LitInt(0) <= A#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NegationNormalForm4 (call)"} Call$$_module.__default.NegationNormalForm4(_module._default.NegationNormalForm4$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.NegationNormalForm4$_T0))
         && $IsAlloc(S#0, TSet(_module._default.NegationNormalForm4$_T0), $Heap), 
    Q#0: Seq
       where $Is(Q#0, TSeq(_module._default.NegationNormalForm4$_T0))
         && $IsAlloc(Q#0, TSeq(_module._default.NegationNormalForm4$_T0), $Heap), 
    A#0: int where LitInt(0) <= A#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NegationNormalForm4 (correctness)"} Impl$$_module.__default.NegationNormalForm4(_module._default.NegationNormalForm4$_T0: Ty, 
    S#0: Set
       where $Is(S#0, TSet(_module._default.NegationNormalForm4$_T0))
         && $IsAlloc(S#0, TSet(_module._default.NegationNormalForm4$_T0), $Heap), 
    Q#0: Seq
       where $Is(Q#0, TSeq(_module._default.NegationNormalForm4$_T0))
         && $IsAlloc(Q#0, TSeq(_module._default.NegationNormalForm4$_T0), $Heap), 
    A#0: int where LitInt(0) <= A#0)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NegationNormalForm4 (correctness)"} Impl$$_module.__default.NegationNormalForm4(_module._default.NegationNormalForm4$_T0: Ty, S#0: Set, Q#0: Seq, A#0: int)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var s#0: Set
     where $Is(s#0, TSet(_module._default.NegationNormalForm4$_T0))
       && $IsAlloc(s#0, TSet(_module._default.NegationNormalForm4$_T0), $Heap);
  var q#0: Seq
     where $Is(q#0, TSeq(_module._default.NegationNormalForm4$_T0))
       && $IsAlloc(q#0, TSeq(_module._default.NegationNormalForm4$_T0), $Heap);
  var b#0: bool;
  var a#0: int;
  var $rhs#0: Set;
  var $rhs#1: Seq;
  var $rhs#2: bool;
  var $rhs#3: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: Seq;
  var $decr_init$loop#02: int;
  var $w$loop#0: bool;
  var newtype$check#0: int;
  var $decr$loop#00: int;
  var $decr$loop#01: Seq;
  var $decr$loop#02: int;
  var eg$x#0_2_0: Box;
  var x#0_2_0: Box
     where $IsBox(x#0_2_0, _module._default.NegationNormalForm4$_T0)
       && $IsAllocBox(x#0_2_0, _module._default.NegationNormalForm4$_T0, $Heap);

    // AddMethodImpl: NegationNormalForm4, Impl$$_module.__default.NegationNormalForm4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1079,18)
    assume true;
    assume true;
    assume true;
    assume true;
    assume true;
    $rhs#0 := S#0;
    assume true;
    $rhs#1 := Q#0;
    havoc $rhs#2;
    assume true;
    $rhs#3 := A#0;
    s#0 := $rhs#0;
    q#0 := $rhs#1;
    b#0 := $rhs#2;
    a#0 := $rhs#3;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1080,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := Set#Card(s#0);
    $decr_init$loop#01 := (if Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
       then q#0
       else Seq#Empty(): Seq);
    $decr_init$loop#02 := (if Set#Subset(Set#Empty(): Set, s#0)
         && !Set#Subset(s#0, Set#Empty(): Set)
         && !Seq#Equal(q#0, Seq#Empty(): Seq)
         && b#0
       then 1000 - a#0
       else 0 - 1);
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
      free invariant Set#Card(s#0) <= $decr_init$loop#00
         && (Set#Card(s#0) == $decr_init$loop#00
           ==> Seq#Rank((if Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
                   then q#0
                   else Seq#Empty(): Seq))
               <= Seq#Rank($decr_init$loop#01)
             && (Seq#Rank((if Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
                     then q#0
                     else Seq#Empty(): Seq))
                 == Seq#Rank($decr_init$loop#01)
               ==> (if Set#Subset(Set#Empty(): Set, s#0)
                     && !Set#Subset(s#0, Set#Empty(): Set)
                     && !Seq#Equal(q#0, Seq#Empty(): Seq)
                     && b#0
                   then 1000 - a#0
                   else 0 - 1)
                 <= $decr_init$loop#02));
    {
        if (!$w$loop#0)
        {
            newtype$check#0 := Set#Card(s#0);
            assert {:id "id673"} LitInt(0) <= newtype$check#0;
            assume true;
            if (Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set))
            {
            }
            else
            {
            }

            assume true;
            if (Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set))
            {
            }

            if (Set#Subset(Set#Empty(): Set, s#0)
               && !Set#Subset(s#0, Set#Empty(): Set)
               && !Seq#Equal(q#0, Seq#Empty(): Seq))
            {
            }

            if (Set#Subset(Set#Empty(): Set, s#0)
               && !Set#Subset(s#0, Set#Empty(): Set)
               && !Seq#Equal(q#0, Seq#Empty(): Seq)
               && b#0)
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        if (Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set))
        {
        }

        if (!(Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
           ==> !!Seq#Equal(q#0, Seq#Empty(): Seq)))
        {
        }

        if (!(Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
             ==> !!Seq#Equal(q#0, Seq#Empty(): Seq))
           && b#0)
        {
        }

        assume true;
        if (!(
          !(Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
             ==> !!Seq#Equal(q#0, Seq#Empty(): Seq))
           && b#0
           && !!(a#0 < 1000)))
        {
            break;
        }

        $decr$loop#00 := Set#Card(s#0);
        $decr$loop#01 := (if Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
           then q#0
           else Seq#Empty(): Seq);
        $decr$loop#02 := (if Set#Subset(Set#Empty(): Set, s#0)
             && !Set#Subset(s#0, Set#Empty(): Set)
             && !Seq#Equal(q#0, Seq#Empty(): Seq)
             && b#0
           then 1000 - a#0
           else 0 - 1);
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1081,7)
        assume true;
        havoc b#0;
        // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1082,5)
        havoc x#0_2_0 /* where $IsBox(x#0_2_0, _module._default.NegationNormalForm4$_T0)
           && $IsAllocBox(x#0_2_0, _module._default.NegationNormalForm4$_T0, $Heap) */;
        if (*)
        {
            // Begin Comprehension WF check
            havoc eg$x#0_2_0;
            if ($IsBox(eg$x#0_2_0, _module._default.NegationNormalForm4$_T0)
               && $IsAllocBox(eg$x#0_2_0, _module._default.NegationNormalForm4$_T0, $Heap))
            {
            }

            // End Comprehension WF check
            assume true;
            assume Set#IsMember(s#0, x#0_2_0);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1084,9)
            assume true;
            assume true;
            s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, x#0_2_0));
        }
        else if (*)
        {
            assume true;
            assume {:id "id677"} Seq#Length(q#0) > 0;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1086,9)
            assume true;
            assert {:id "id678"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(q#0);
            assume true;
            q#0 := Seq#Drop(q#0, LitInt(1));
        }
        else if (*)
        {
            assume true;
            assume {:id "id675"} a#0 < 123456;
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1088,9)
            assume true;
            assume true;
            a#0 := a#0 + 1;
        }
        else
        {
            assume true;
            assume true;
            assume true;
            assume !(exists eg$x#0_0: Box :: 
                $IsBox(eg$x#0_0, _module._default.NegationNormalForm4$_T0)
                   && Set#IsMember(s#0, eg$x#0_0))
               && 0 >= Seq#Length(q#0)
               && 123456 <= a#0;
            assert {:id "id674"} false;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1080,3)
        assert {:id "id681"} 0 <= $decr$loop#00 || Set#Card(s#0) == $decr$loop#00;
        assert {:id "id682"} 0 <= $decr$loop#02
           || Set#Card(s#0) < $decr$loop#00
           || Seq#Rank((if Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
                 then q#0
                 else Seq#Empty(): Seq))
             < Seq#Rank($decr$loop#01)
           || (if Set#Subset(Set#Empty(): Set, s#0)
                 && !Set#Subset(s#0, Set#Empty(): Set)
                 && !Seq#Equal(q#0, Seq#Empty(): Seq)
                 && b#0
               then 1000 - a#0
               else 0 - 1)
             == $decr$loop#02;
        assert {:id "id683"} Set#Card(s#0) < $decr$loop#00
           || (Set#Card(s#0) == $decr$loop#00
             && (Seq#Rank((if Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
                     then q#0
                     else Seq#Empty(): Seq))
                 < Seq#Rank($decr$loop#01)
               || (Seq#Rank((if Set#Subset(Set#Empty(): Set, s#0) && !Set#Subset(s#0, Set#Empty(): Set)
                       then q#0
                       else Seq#Empty(): Seq))
                   == Seq#Rank($decr$loop#01)
                 && (if Set#Subset(Set#Empty(): Set, s#0)
                       && !Set#Subset(s#0, Set#Empty(): Set)
                       && !Seq#Equal(q#0, Seq#Empty(): Seq)
                       && b#0
                     then 1000 - a#0
                     else 0 - 1)
                   < $decr$loop#02)));
    }
}



procedure {:verboseName "Bitvectors0 (well-formedness)"} CheckWellFormed$$_module.__default.Bitvectors0(A#0: bv3, B#0: bv3);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Bitvectors0 (call)"} Call$$_module.__default.Bitvectors0(A#0: bv3, B#0: bv3);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Bitvectors0 (correctness)"} Impl$$_module.__default.Bitvectors0(A#0: bv3, B#0: bv3) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Bitvectors0 (correctness)"} Impl$$_module.__default.Bitvectors0(A#0: bv3, B#0: bv3) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: bv3;
  var b#0: bv3;
  var $rhs#0: bv3;
  var $rhs#1: bv3;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: Bitvectors0, Impl$$_module.__default.Bitvectors0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1095,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    assume true;
    $rhs#1 := B#0;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1096,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := nat_from_bv3(b#0) - nat_from_bv3(a#0);
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
      free invariant nat_from_bv3(b#0) - nat_from_bv3(a#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (!lt_bv3(a#0, b#0))
        {
            break;
        }

        $decr$loop#00 := nat_from_bv3(b#0) - nat_from_bv3(a#0);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1097,5)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1098,9)
            assume true;
            assume true;
            b#0 := sub_bv3(b#0, 1bv3);
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1100,9)
            assume true;
            assume true;
            a#0 := add_bv3(a#0, 1bv3);
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1096,3)
        assert {:id "id690"} 0 <= $decr$loop#00 || nat_from_bv3(b#0) - nat_from_bv3(a#0) == $decr$loop#00;
        assert {:id "id691"} nat_from_bv3(b#0) - nat_from_bv3(a#0) < $decr$loop#00;
    }
}



procedure {:verboseName "Bitvectors1 (well-formedness)"} CheckWellFormed$$_module.__default.Bitvectors1(A#0: bv3, B#0: bv3);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Bitvectors1 (call)"} Call$$_module.__default.Bitvectors1(A#0: bv3, B#0: bv3);
  // user-defined preconditions
  requires {:id "id693"} le_bv3(A#0, B#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Bitvectors1 (correctness)"} Impl$$_module.__default.Bitvectors1(A#0: bv3, B#0: bv3) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id694"} le_bv3(A#0, B#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Bitvectors1 (correctness)"} Impl$$_module.__default.Bitvectors1(A#0: bv3, B#0: bv3) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: bv3;
  var b#0: bv3;
  var $rhs#0: bv3;
  var $rhs#1: bv3;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: Bitvectors1, Impl$$_module.__default.Bitvectors1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1108,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    assume true;
    $rhs#1 := B#0;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1109,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if le_bv3(a#0, b#0)
       then nat_from_bv3(b#0) - nat_from_bv3(a#0)
       else nat_from_bv3(a#0) - nat_from_bv3(b#0));
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id700"} $w$loop#0 ==> le_bv3(a#0, b#0);
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
      free invariant (if le_bv3(a#0, b#0)
           then nat_from_bv3(b#0) - nat_from_bv3(a#0)
           else nat_from_bv3(a#0) - nat_from_bv3(b#0))
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id699"} le_bv3(a#0, b#0);
            if (le_bv3(a#0, b#0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (a#0 == b#0)
        {
            break;
        }

        $decr$loop#00 := (if le_bv3(a#0, b#0)
           then nat_from_bv3(b#0) - nat_from_bv3(a#0)
           else nat_from_bv3(a#0) - nat_from_bv3(b#0));
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1112,5)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1113,9)
            assume true;
            assume true;
            b#0 := sub_bv3(b#0, 1bv3);
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1115,9)
            assume true;
            assume true;
            a#0 := add_bv3(a#0, 1bv3);
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1109,3)
        assert {:id "id703"} 0 <= $decr$loop#00
           || (if le_bv3(a#0, b#0)
               then nat_from_bv3(b#0) - nat_from_bv3(a#0)
               else nat_from_bv3(a#0) - nat_from_bv3(b#0))
             == $decr$loop#00;
        assert {:id "id704"} (if le_bv3(a#0, b#0)
             then nat_from_bv3(b#0) - nat_from_bv3(a#0)
             else nat_from_bv3(a#0) - nat_from_bv3(b#0))
           < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "Chars0 (well-formedness)"} CheckWellFormed$$_module.__default.Chars0(A#0: char where $Is(A#0, TChar), B#0: char where $Is(B#0, TChar));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Chars0 (call)"} Call$$_module.__default.Chars0(A#0: char where $Is(A#0, TChar), B#0: char where $Is(B#0, TChar));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Chars0 (correctness)"} Impl$$_module.__default.Chars0(A#0: char where $Is(A#0, TChar), B#0: char where $Is(B#0, TChar))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Chars0 (correctness)"} Impl$$_module.__default.Chars0(A#0: char, B#0: char) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: char where $Is(a#0, TChar);
  var b#0: char where $Is(b#0, TChar);
  var $rhs#0: char;
  var $rhs#1: char;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var newtype$check#0_0_0: int;
  var newtype$check#0_1_0: int;

    // AddMethodImpl: Chars0, Impl$$_module.__default.Chars0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1121,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    assume true;
    $rhs#1 := B#0;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1122,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := char#ToInt(b#0) - char#ToInt(a#0);
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
      free invariant char#ToInt(b#0) - char#ToInt(a#0) <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (char#ToInt(b#0) <= char#ToInt(a#0))
        {
            break;
        }

        $decr$loop#00 := char#ToInt(b#0) - char#ToInt(a#0);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1123,5)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1124,9)
            assume true;
            newtype$check#0_0_0 := LitInt(1);
            assert {:id "id709"} char#IsChar(newtype$check#0_0_0);
            assert {:id "id710"} char#IsChar(char#ToInt(b#0) - char#ToInt(char#FromInt(LitInt(1))));
            assume true;
            b#0 := char#Minus(b#0, char#FromInt(LitInt(1)));
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1126,9)
            assume true;
            newtype$check#0_1_0 := LitInt(1);
            assert {:id "id712"} char#IsChar(newtype$check#0_1_0);
            assert {:id "id713"} char#IsChar(char#ToInt(a#0) + char#ToInt(char#FromInt(LitInt(1))));
            assume true;
            a#0 := char#Plus(a#0, char#FromInt(LitInt(1)));
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1122,3)
        assert {:id "id715"} 0 <= $decr$loop#00 || char#ToInt(b#0) - char#ToInt(a#0) == $decr$loop#00;
        assert {:id "id716"} char#ToInt(b#0) - char#ToInt(a#0) < $decr$loop#00;
    }
}



procedure {:verboseName "Chars1 (well-formedness)"} CheckWellFormed$$_module.__default.Chars1(A#0: char where $Is(A#0, TChar), B#0: char where $Is(B#0, TChar));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Chars1 (call)"} Call$$_module.__default.Chars1(A#0: char where $Is(A#0, TChar), B#0: char where $Is(B#0, TChar));
  // user-defined preconditions
  requires {:id "id718"} char#ToInt(A#0) <= char#ToInt(B#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Chars1 (correctness)"} Impl$$_module.__default.Chars1(A#0: char where $Is(A#0, TChar), B#0: char where $Is(B#0, TChar))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id719"} char#ToInt(A#0) <= char#ToInt(B#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Chars1 (correctness)"} Impl$$_module.__default.Chars1(A#0: char, B#0: char) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: char where $Is(a#0, TChar);
  var b#0: char where $Is(b#0, TChar);
  var $rhs#0: char;
  var $rhs#1: char;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var newtype$check#0_0_0: int;
  var newtype$check#0_1_0: int;

    // AddMethodImpl: Chars1, Impl$$_module.__default.Chars1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1134,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    assume true;
    $rhs#1 := B#0;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1135,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := (if char#ToInt(a#0) <= char#ToInt(b#0)
       then char#ToInt(b#0) - char#ToInt(a#0)
       else char#ToInt(a#0) - char#ToInt(b#0));
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id725"} $w$loop#0 ==> char#ToInt(a#0) <= char#ToInt(b#0);
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
      free invariant (if char#ToInt(a#0) <= char#ToInt(b#0)
           then char#ToInt(b#0) - char#ToInt(a#0)
           else char#ToInt(a#0) - char#ToInt(b#0))
         <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id724"} char#ToInt(a#0) <= char#ToInt(b#0);
            if (char#ToInt(a#0) <= char#ToInt(b#0))
            {
            }
            else
            {
            }

            assume true;
            assume false;
        }

        assume true;
        if (a#0 == b#0)
        {
            break;
        }

        $decr$loop#00 := (if char#ToInt(a#0) <= char#ToInt(b#0)
           then char#ToInt(b#0) - char#ToInt(a#0)
           else char#ToInt(a#0) - char#ToInt(b#0));
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1138,5)
        if (*)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1139,9)
            assume true;
            newtype$check#0_0_0 := LitInt(1);
            assert {:id "id726"} char#IsChar(newtype$check#0_0_0);
            assert {:id "id727"} char#IsChar(char#ToInt(b#0) - char#ToInt(char#FromInt(LitInt(1))));
            assume true;
            b#0 := char#Minus(b#0, char#FromInt(LitInt(1)));
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1141,9)
            assume true;
            newtype$check#0_1_0 := LitInt(1);
            assert {:id "id729"} char#IsChar(newtype$check#0_1_0);
            assert {:id "id730"} char#IsChar(char#ToInt(a#0) + char#ToInt(char#FromInt(LitInt(1))));
            assume true;
            a#0 := char#Plus(a#0, char#FromInt(LitInt(1)));
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1135,3)
        assert {:id "id732"} 0 <= $decr$loop#00
           || (if char#ToInt(a#0) <= char#ToInt(b#0)
               then char#ToInt(b#0) - char#ToInt(a#0)
               else char#ToInt(a#0) - char#ToInt(b#0))
             == $decr$loop#00;
        assert {:id "id733"} (if char#ToInt(a#0) <= char#ToInt(b#0)
             then char#ToInt(b#0) - char#ToInt(a#0)
             else char#ToInt(a#0) - char#ToInt(b#0))
           < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "BigOrdinals0 (well-formedness)"} CheckWellFormed$$_module.__default.BigOrdinals0(B#0: Box);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BigOrdinals0 (call)"} Call$$_module.__default.BigOrdinals0(B#0: Box);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BigOrdinals0 (correctness)"} Impl$$_module.__default.BigOrdinals0(B#0: Box) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BigOrdinals0 (correctness)"} Impl$$_module.__default.BigOrdinals0(B#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0: Box;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Box;
  var $w$loop#0: bool;
  var $decr$loop#00: Box;
  var c#0_0_0: Box;
  var c#0_0_1: Box;

    // AddMethodImpl: BigOrdinals0, Impl$$_module.__default.BigOrdinals0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1148,9)
    assume true;
    assume true;
    b#0 := B#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1149,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := b#0;
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
      free invariant b#0 == $decr_init$loop#00 || ORD#Less(b#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (!ORD#Less(ORD#FromNat(0), b#0))
        {
            break;
        }

        $decr$loop#00 := b#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1151,5)
        assume true;
        if (ORD#IsLimit(b#0))
        {
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1152,13)
            havoc c#0_0_1;
            if (true)
            {
                assume true;
            }

            assert {:id "id735"} (exists $as#c0_0_0#0_0_0: Box :: ORD#Less($as#c0_0_0#0_0_0, b#0));
            havoc c#0_0_0;
            assume {:id "id736"} ORD#Less(c#0_0_0, b#0);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1153,9)
            assume true;
            assume true;
            b#0 := c#0_0_0;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1155,9)
            assume true;
            assert {:id "id738"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id739"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(b#0);
            assume true;
            b#0 := ORD#Minus(b#0, ORD#FromNat(1));
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1149,3)
        assert {:id "id741"} ORD#Less(b#0, $decr$loop#00);
    }
}



procedure {:verboseName "BigOrdinals1 (well-formedness)"} CheckWellFormed$$_module.__default.BigOrdinals1(B#0: Box);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BigOrdinals1 (call)"} Call$$_module.__default.BigOrdinals1(B#0: Box);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BigOrdinals1 (correctness)"} Impl$$_module.__default.BigOrdinals1(B#0: Box) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BigOrdinals1 (correctness)"} Impl$$_module.__default.BigOrdinals1(B#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0: Box;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Box;
  var $w$loop#0: bool;
  var $decr$loop#00: Box;
  var c#0_0_0: Box;
  var c#0_0_1: Box;

    // AddMethodImpl: BigOrdinals1, Impl$$_module.__default.BigOrdinals1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1162,9)
    assume true;
    assume true;
    b#0 := B#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1163,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := b#0;
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
      free invariant b#0 == $decr_init$loop#00 || ORD#Less(b#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (b#0 == ORD#FromNat(0))
        {
            break;
        }

        $decr$loop#00 := b#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1165,5)
        assume true;
        assert {:id "id743"} ORD#Less(ORD#FromNat(0), b#0);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1166,5)
        assume true;
        if (ORD#IsLimit(b#0))
        {
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1167,13)
            havoc c#0_0_1;
            if (true)
            {
                assume true;
            }

            assert {:id "id744"} (exists $as#c0_0_0#0_0_0: Box :: ORD#Less($as#c0_0_0#0_0_0, b#0));
            havoc c#0_0_0;
            assume {:id "id745"} ORD#Less(c#0_0_0, b#0);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1168,9)
            assume true;
            assume true;
            b#0 := c#0_0_0;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1170,9)
            assume true;
            assert {:id "id747"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id748"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(b#0);
            assume true;
            b#0 := ORD#Minus(b#0, ORD#FromNat(1));
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1163,3)
        assert {:id "id750"} ORD#Less(b#0, $decr$loop#00);
    }
}



procedure {:verboseName "BigOrdinals2 (well-formedness)"} CheckWellFormed$$_module.__default.BigOrdinals2(B#0: Box);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BigOrdinals2 (call)"} Call$$_module.__default.BigOrdinals2(B#0: Box);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BigOrdinals2 (correctness)"} Impl$$_module.__default.BigOrdinals2(B#0: Box) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BigOrdinals2 (correctness)"} Impl$$_module.__default.BigOrdinals2(B#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0: Box;
  var zero#0: Box;
  var $rhs#0: Box;
  var $rhs#1: Box;
  var $PreLoopHeap$loop#0: Heap;
  var $w$loop#0: bool;
  var c#0_0_0: Box;
  var c#0_0_1: Box;

    // AddMethodImpl: BigOrdinals2, Impl$$_module.__default.BigOrdinals2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1177,15)
    assume true;
    assume true;
    assume true;
    $rhs#0 := B#0;
    assume true;
    $rhs#1 := Lit(ORD#FromNat(0));
    b#0 := $rhs#0;
    zero#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1178,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
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
      free invariant true;
    {
        if (!$w$loop#0)
        {
            assume false;
        }

        assume true;
        if (b#0 == zero#0)
        {
            break;
        }

        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1180,5)
        assume true;
        assert {:id "id755"} ORD#Less(ORD#FromNat(0), b#0);
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1181,5)
        assume true;
        if (ORD#IsLimit(b#0))
        {
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1182,13)
            havoc c#0_0_1;
            if (true)
            {
                assume true;
            }

            assert {:id "id756"} (exists $as#c0_0_0#0_0_0: Box :: ORD#Less($as#c0_0_0#0_0_0, b#0));
            havoc c#0_0_0;
            assume {:id "id757"} ORD#Less(c#0_0_0, b#0);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1183,9)
            assume true;
            assume true;
            b#0 := c#0_0_0;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1185,9)
            assume true;
            assert {:id "id759"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id760"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(b#0);
            assume true;
            b#0 := ORD#Minus(b#0, ORD#FromNat(1));
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1178,3)
        assert {:id "id762"} false;
    }
}



procedure {:verboseName "BigOrdinals3 (well-formedness)"} CheckWellFormed$$_module.__default.BigOrdinals3(A#0: Box, B#0: Box);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BigOrdinals3 (call)"} Call$$_module.__default.BigOrdinals3(A#0: Box, B#0: Box);
  // user-defined preconditions
  requires {:id "id764"} A#0 == B#0 || ORD#Less(A#0, B#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BigOrdinals3 (correctness)"} Impl$$_module.__default.BigOrdinals3(A#0: Box, B#0: Box) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id765"} A#0 == B#0 || ORD#Less(A#0, B#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BigOrdinals3 (correctness)"} Impl$$_module.__default.BigOrdinals3(A#0: Box, B#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Box;
  var b#0: Box;
  var $rhs#0: Box;
  var $rhs#1: Box;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Box;
  var $w$loop#0: bool;
  var $decr$loop#00: Box;

    // AddMethodImpl: BigOrdinals3, Impl$$_module.__default.BigOrdinals3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1193,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    assume true;
    $rhs#1 := B#0;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1194,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := b#0;
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
      free invariant b#0 == $decr_init$loop#00 || ORD#Less(b#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (!ORD#Less(a#0, b#0))
        {
            break;
        }

        $decr$loop#00 := b#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1196,7)
        assume true;
        assume true;
        a#0 := ORD#Plus(a#0, ORD#FromNat(1));
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1194,3)
        assert {:id "id771"} ORD#Less(b#0, $decr$loop#00);
    }
}



procedure {:verboseName "BigOrdinals4 (well-formedness)"} CheckWellFormed$$_module.__default.BigOrdinals4(A#0: Box, B#0: Box);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "BigOrdinals4 (call)"} Call$$_module.__default.BigOrdinals4(A#0: Box, B#0: Box);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "BigOrdinals4 (correctness)"} Impl$$_module.__default.BigOrdinals4(A#0: Box, B#0: Box) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "BigOrdinals4 (correctness)"} Impl$$_module.__default.BigOrdinals4(A#0: Box, B#0: Box) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: Box;
  var b#0: Box;
  var $rhs#0: Box;
  var $rhs#1: Box;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: Box;
  var $w$loop#0: bool;
  var $decr$loop#00: Box;
  var c#0_0_0: Box;
  var c#0_0_1: Box;

    // AddMethodImpl: BigOrdinals4, Impl$$_module.__default.BigOrdinals4
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1201,12)
    assume true;
    assume true;
    assume true;
    $rhs#0 := A#0;
    assume true;
    $rhs#1 := B#0;
    a#0 := $rhs#0;
    b#0 := $rhs#1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1202,3)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := b#0;
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
      free invariant b#0 == $decr_init$loop#00 || ORD#Less(b#0, $decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume true;
        if (!ORD#Less(a#0, b#0))
        {
            break;
        }

        $decr$loop#00 := b#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1204,5)
        assume true;
        if (ORD#IsLimit(b#0))
        {
            // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1205,13)
            havoc c#0_0_1;
            if (true)
            {
                assume true;
            }

            assert {:id "id776"} (exists $as#c0_0_0#0_0_0: Box :: ORD#Less($as#c0_0_0#0_0_0, b#0));
            havoc c#0_0_0;
            assume {:id "id777"} ORD#Less(c#0_0_0, b#0);
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1206,9)
            assume true;
            assume true;
            b#0 := c#0_0_0;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1208,9)
            assume true;
            assert {:id "id779"} ORD#IsNat(Lit(ORD#FromNat(1)));
            assert {:id "id780"} ORD#Offset(Lit(ORD#FromNat(1))) <= ORD#Offset(b#0);
            assume true;
            b#0 := ORD#Minus(b#0, ORD#FromNat(1));
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(1202,3)
        assert {:id "id782"} ORD#Less(b#0, $decr$loop#00);
    }
}



const unique class._module.Termination?: ClassName;

function Tclass._module.Termination?() : Ty
uses {
// Tclass._module.Termination? Tag
axiom Tag(Tclass._module.Termination?()) == Tagclass._module.Termination?
   && TagFamily(Tclass._module.Termination?()) == tytagFamily$Termination;
}

const unique Tagclass._module.Termination?: TyTag;

// Box/unbox axiom for Tclass._module.Termination?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Termination?()) } 
  $IsBox(bx, Tclass._module.Termination?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Termination?()));

// $Is axiom for class Termination
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Termination?()) } 
  $Is($o, Tclass._module.Termination?())
     <==> $o == null || dtype($o) == Tclass._module.Termination?());

// $IsAlloc axiom for class Termination
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Termination?(), $h) } 
  $IsAlloc($o, Tclass._module.Termination?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass._module.Termination() : Ty
uses {
// Tclass._module.Termination Tag
axiom Tag(Tclass._module.Termination()) == Tagclass._module.Termination
   && TagFamily(Tclass._module.Termination()) == tytagFamily$Termination;
}

const unique Tagclass._module.Termination: TyTag;

// Box/unbox axiom for Tclass._module.Termination
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Termination()) } 
  $IsBox(bx, Tclass._module.Termination())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.Termination()));

procedure {:verboseName "Termination.A (well-formedness)"} CheckWellFormed$$_module.Termination.A(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Termination.A (call)"} Call$$_module.Termination.A(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    N#0: int);
  // user-defined preconditions
  requires {:id "id784"} LitInt(0) <= N#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Termination.A (correctness)"} Impl$$_module.Termination.A(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    N#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id785"} LitInt(0) <= N#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Termination.A (correctness)"} Impl$$_module.Termination.A(this: ref, N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: A, Impl$$_module.Termination.A
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(8,11)
    assume true;
    assume true;
    i#0 := LitInt(0);
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(9,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := N#0 - i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id788"} $w$loop#0 ==> i#0 <= N#0;
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
      free invariant N#0 - i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id787"} i#0 <= N#0;
            assume true;
            assume false;
        }

        assume true;
        if (N#0 <= i#0)
        {
            break;
        }

        $decr$loop#00 := N#0 - i#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(13,9)
        assume true;
        assume true;
        i#0 := i#0 + 1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(9,5)
        assert {:id "id790"} 0 <= $decr$loop#00 || N#0 - i#0 == $decr$loop#00;
        assert {:id "id791"} N#0 - i#0 < $decr$loop#00;
        assume true;
    }
}



procedure {:verboseName "Termination.B (well-formedness)"} CheckWellFormed$$_module.Termination.B(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    N#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Termination.B (call)"} Call$$_module.Termination.B(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    N#0: int);
  // user-defined preconditions
  requires {:id "id793"} LitInt(0) <= N#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Termination.B (correctness)"} Impl$$_module.Termination.B(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    N#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id794"} LitInt(0) <= N#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Termination.B (correctness)"} Impl$$_module.Termination.B(this: ref, N#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int;
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;

    // AddMethodImpl: B, Impl$$_module.Termination.B
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(20,11)
    assume true;
    assume true;
    i#0 := N#0;
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(21,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := i#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id797"} $w$loop#0 ==> LitInt(0) <= i#0;
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
      free invariant i#0 <= $decr_init$loop#00;
    {
        if (!$w$loop#0)
        {
            assume true;
            assume {:id "id796"} LitInt(0) <= i#0;
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := i#0;
        push;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(25,9)
        assume true;
        assume true;
        i#0 := i#0 - 1;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(26,7)
        assume true;
        if (!(LitInt(0) <= i#0))
        {
            push;
            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(27,9)
            pop;
            pop;
            goto after_0;

            pop;
        }
        else
        {
        }

        pop;

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(21,5)
        assert {:id "id799"} 0 <= $decr$loop#00 || i#0 == $decr$loop#00;
        assert {:id "id800"} i#0 < $decr$loop#00;
        assume true;
    }

  after_0:
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(30,5)
    assume true;
    assert {:id "id801"} i#0 == LitInt(-1);
}



procedure {:verboseName "Termination.Lex (well-formedness)"} CheckWellFormed$$_module.Termination.Lex(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Termination.Lex (call)"} Call$$_module.Termination.Lex(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Termination.Lex (correctness)"} Impl$$_module.Termination.Lex(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Termination.Lex (correctness)"} Impl$$_module.Termination.Lex(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;
  var $rhs##0: int;
  var y#0: int;
  var $rhs##1: int;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: int;
  var $decr_init$loop#01: int;
  var $w$loop#0: bool;
  var $decr$loop#00: int;
  var $decr$loop#01: int;
  var $rhs##0_1_0: int;

    // AddMethodImpl: Lex, Impl$$_module.Termination.Lex
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(34,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id802"} $rhs##0 := Call$$_module.Termination.Update(this);
    // TrCallStmt: After ProcessCallStmt
    x#0 := $rhs##0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(35,20)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    call {:id "id804"} $rhs##1 := Call$$_module.Termination.Update(this);
    // TrCallStmt: After ProcessCallStmt
    y#0 := $rhs##1;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(36,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := x#0;
    $decr_init$loop#01 := y#0;
    havoc $w$loop#0;
    while (true)
      free invariant true;
      invariant {:id "id807"} $w$loop#0 ==> LitInt(0) <= x#0;
      invariant {:id "id808"} $w$loop#0 ==> LitInt(0) <= y#0;
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
      free invariant x#0 <= $decr_init$loop#00
         && (x#0 == $decr_init$loop#00 ==> y#0 <= $decr_init$loop#01);
    {
        if (!$w$loop#0)
        {
            if (LitInt(0) <= x#0)
            {
            }

            assume true;
            assume {:id "id806"} LitInt(0) <= x#0 && LitInt(0) <= y#0;
            assume true;
            assume true;
            assume false;
        }

        if (x#0 == LitInt(0))
        {
        }

        assume true;
        if (x#0 == LitInt(0) && y#0 == LitInt(0))
        {
            break;
        }

        $decr$loop#00 := x#0;
        $decr$loop#01 := y#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(40,7)
        assume true;
        if (0 < y#0)
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(41,11)
            assume true;
            assume true;
            y#0 := y#0 - 1;
        }
        else
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(43,11)
            assume true;
            assume true;
            x#0 := x#0 - 1;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(44,20)
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            call {:id "id811"} $rhs##0_1_0 := Call$$_module.Termination.Update(this);
            // TrCallStmt: After ProcessCallStmt
            y#0 := $rhs##0_1_0;
        }

        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(36,5)
        assert {:id "id813"} 0 <= $decr$loop#00 || x#0 == $decr$loop#00;
        assert {:id "id814"} 0 <= $decr$loop#01 || x#0 < $decr$loop#00 || y#0 == $decr$loop#01;
        assert {:id "id815"} x#0 < $decr$loop#00 || (x#0 == $decr$loop#00 && y#0 < $decr$loop#01);
        assume true;
    }
}



procedure {:verboseName "Termination.Update (well-formedness)"} CheckWellFormed$$_module.Termination.Update(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap))
   returns (r#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Termination.Update (call)"} Call$$_module.Termination.Update(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap))
   returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id817"} LitInt(0) <= r#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Termination.Update (correctness)"} Impl$$_module.Termination.Update(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap))
   returns (r#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id818"} LitInt(0) <= r#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Termination.Update (correctness)"} Impl$$_module.Termination.Update(this: ref) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Update, Impl$$_module.Termination.Update
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(52,7)
    assume true;
    assume true;
    r#0 := LitInt(8);
}



procedure {:verboseName "Termination.M (well-formedness)"} CheckWellFormed$$_module.Termination.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Termination.M (call)"} Call$$_module.Termination.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Termination.M (correctness)"} Impl$$_module.Termination.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Termination.M (correctness)"} Impl$$_module.Termination.M(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var b#0: bool;
  var i#0: int;
  var r#0: ref
     where $Is(r#0, Tclass._module.Termination?())
       && $IsAlloc(r#0, Tclass._module.Termination?(), $Heap);
  var $nw: ref;
  var s#0: Set where $Is(s#0, TSet(TInt)) && $IsAlloc(s#0, TSet(TInt), $Heap);
  var q#0: Seq where $Is(q#0, TSeq(TInt)) && $IsAlloc(q#0, TSeq(TInt), $Heap);
  var $Heap_at_0: Heap;
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: bool;
  var $decr_init$loop#01: int;
  var $decr_init$loop#02: ref;
  var $decr_init$loop#03: Set;
  var $decr_init$loop#04: Seq;
  var $w$loop#0: bool;
  var $decr$loop#00: bool;
  var $decr$loop#01: int;
  var $decr$loop#02: ref;
  var $decr$loop#03: Set;
  var $decr$loop#04: Seq;
  var newtype$check#0_1_1_1_0: ref;
  var newtype$check#0_1_1_1_0_0: ref;

    // AddMethodImpl: M, Impl$$_module.Termination.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(56,11)
    assume true;
    assume true;
    b#0 := Lit(true);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(57,11)
    assume true;
    assume true;
    i#0 := LitInt(500);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(58,11)
    assume true;
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._module.Termination?());
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    r#0 := $nw;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(59,11)
    assume true;
    assume true;
    s#0 := Lit(Set#UnionOne(Set#UnionOne(Set#Empty(): Set, $Box(LitInt(12))), $Box(LitInt(200))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(60,11)
    assume true;
    assume true;
    q#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(5))), $Box(LitInt(8))), 
        $Box(LitInt(13))));
    $Heap_at_0 := $Heap;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(61,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := b#0;
    $decr_init$loop#01 := i#0;
    $decr_init$loop#02 := r#0;
    $decr_init$loop#03 := s#0;
    $decr_init$loop#04 := q#0;
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
      free invariant (b#0 ==> $decr_init$loop#00)
         && ((b#0 <==> $decr_init$loop#00)
           ==> i#0 <= $decr_init$loop#01
             && (i#0 == $decr_init$loop#01
               ==> (r#0 != null ==> $decr_init$loop#02 != null)
                 && ((r#0 != null <==> $decr_init$loop#02 != null)
                   ==> Set#Subset(s#0, $decr_init$loop#03)
                     && (Set#Equal(s#0, $decr_init$loop#03)
                       ==> Seq#Rank(q#0) <= Seq#Rank($decr_init$loop#04)))));
    {
        if (!$w$loop#0)
        {
            assume true;
            assume true;
            assume true;
            assume true;
            assume true;
            assume false;
        }

        assume true;
        if (!Lit(true))
        {
            break;
        }

        $decr$loop#00 := b#0;
        $decr$loop#01 := i#0;
        $decr$loop#02 := r#0;
        $decr$loop#03 := s#0;
        $decr$loop#04 := q#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(66,7)
        assume true;
        if (Set#IsMember(s#0, $Box(LitInt(12))))
        {
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(67,11)
            assume true;
            assume true;
            s#0 := Set#Difference(s#0, Set#UnionOne(Set#Empty(): Set, $Box(LitInt(12))));
        }
        else
        {
            // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(68,14)
            assume true;
            if (b#0)
            {
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(69,11)
                assume true;
                assume true;
                b#0 := !b#0;
                // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(70,11)
                assume true;
                assume true;
                i#0 := i#0 + 1;
            }
            else
            {
                // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(71,14)
                assume true;
                if (LitInt(20) <= i#0)
                {
                    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(72,11)
                    assume true;
                    assume true;
                    i#0 := i#0 - 20;
                }
                else
                {
                    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(73,14)
                    newtype$check#0_1_1_1_0 := null;
                    assume true;
                    if (r#0 != null)
                    {
                        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(74,11)
                        assume true;
                        newtype$check#0_1_1_1_0_0 := null;
                        assume true;
                        r#0 := null;
                    }
                    else
                    {
                        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(75,14)
                        assume true;
                        if (Seq#Length(q#0) != 0)
                        {
                            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(76,11)
                            assume true;
                            assert {:id "id830"} 0 <= LitInt(1) && LitInt(1) <= Seq#Length(q#0);
                            assume true;
                            q#0 := Seq#Drop(q#0, LitInt(1));
                        }
                        else
                        {
                            // ----- break statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(78,9)
                            goto after_0;
                        }
                    }
                }
            }
        }

      continue_0:
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(61,5)
        assert {:id "id832"} 0 <= $decr$loop#01 || (!b#0 && $decr$loop#00) || i#0 == $decr$loop#01;
        assert {:id "id833"} (!b#0 && $decr$loop#00)
           || ((b#0 <==> $decr$loop#00)
             && (i#0 < $decr$loop#01
               || (i#0 == $decr$loop#01
                 && ((r#0 == null && $decr$loop#02 != null)
                   || ((r#0 != null <==> $decr$loop#02 != null)
                     && ((Set#Subset(s#0, $decr$loop#03) && !Set#Subset($decr$loop#03, s#0))
                       || (Set#Equal(s#0, $decr$loop#03) && Seq#Rank(q#0) < Seq#Rank($decr$loop#04))))))));
    }

  after_0:
}



procedure {:verboseName "Termination.Q (well-formedness)"} CheckWellFormed$$_module.Termination.Q(_module.Termination.Q$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    list#0: DatatypeType
       where $Is(list#0, Tclass._module.List(_module.Termination.Q$T))
         && $IsAlloc(list#0, Tclass._module.List(_module.Termination.Q$T), $Heap)
         && $IsA#_module.List(list#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Termination.Q (call)"} Call$$_module.Termination.Q(_module.Termination.Q$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    list#0: DatatypeType
       where $Is(list#0, Tclass._module.List(_module.Termination.Q$T))
         && $IsAlloc(list#0, Tclass._module.List(_module.Termination.Q$T), $Heap)
         && $IsA#_module.List(list#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Termination.Q (correctness)"} Impl$$_module.Termination.Q(_module.Termination.Q$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    list#0: DatatypeType
       where $Is(list#0, Tclass._module.List(_module.Termination.Q$T))
         && $IsAlloc(list#0, Tclass._module.List(_module.Termination.Q$T), $Heap)
         && $IsA#_module.List(list#0))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Termination.Q (correctness)"} Impl$$_module.Termination.Q(_module.Termination.Q$T: Ty, this: ref, list#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var l#0: DatatypeType
     where $Is(l#0, Tclass._module.List(_module.Termination.Q$T))
       && $IsAlloc(l#0, Tclass._module.List(_module.Termination.Q$T), $Heap);
  var $PreLoopHeap$loop#0: Heap;
  var $decr_init$loop#00: DatatypeType;
  var $w$loop#0: bool;
  var $decr$loop#00: DatatypeType;
  var defass#x#0_0: bool;
  var x#0_0: Box
     where defass#x#0_0
       ==> $IsBox(x#0_0, _module.Termination.Q$T)
         && $IsAllocBox(x#0_0, _module.Termination.Q$T, $Heap);
  var $rhs##0_0: Box;
  var $rhs##0_1: DatatypeType;
  var a##0_0: DatatypeType;

    // AddMethodImpl: Q, Impl$$_module.Termination.Q
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(84,11)
    assume true;
    assume true;
    l#0 := list#0;
    // ----- while statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(85,5)
    // Assume Fuel Constant
    $PreLoopHeap$loop#0 := $Heap;
    $decr_init$loop#00 := l#0;
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
      free invariant DtRank(l#0) <= DtRank($decr_init$loop#00);
    {
        if (!$w$loop#0)
        {
            assume true;
            assume false;
        }

        assume $IsA#_module.List(l#0);
        if (_module.List#Equal(l#0, #_module.List.Nil()))
        {
            break;
        }

        $decr$loop#00 := l#0;
        havoc x#0_0 /* where defass#x#0_0
           ==> $IsBox(x#0_0, _module.Termination.Q$T)
             && $IsAllocBox(x#0_0, _module.Termination.Q$T, $Heap) */;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(89,23)
        assume true;
        assume true;
        // TrCallStmt: Adding lhs with type T
        // TrCallStmt: Adding lhs with type List<T>
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := l#0;
        call {:id "id835"} $rhs##0_0, $rhs##0_1 := Call$$_module.Termination.Traverse(_module.Termination.Q$T, this, a##0_0);
        // TrCallStmt: After ProcessCallStmt
        x#0_0 := $rhs##0_0;
        defass#x#0_0 := true;
        l#0 := $rhs##0_1;
        // ----- loop termination check ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(85,5)
        assert {:id "id838"} DtRank(l#0) < DtRank($decr$loop#00);
    }
}



procedure {:verboseName "Termination.Traverse (well-formedness)"} CheckWellFormed$$_module.Termination.Traverse(_module.Termination.Traverse$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(_module.Termination.Traverse$T))
         && $IsAlloc(a#0, Tclass._module.List(_module.Termination.Traverse$T), $Heap)
         && $IsA#_module.List(a#0))
   returns (val#0: Box
       where $IsBox(val#0, _module.Termination.Traverse$T)
         && $IsAllocBox(val#0, _module.Termination.Traverse$T, $Heap), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.List(_module.Termination.Traverse$T))
         && $IsAlloc(b#0, Tclass._module.List(_module.Termination.Traverse$T), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Termination.Traverse (call)"} Call$$_module.Termination.Traverse(_module.Termination.Traverse$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(_module.Termination.Traverse$T))
         && $IsAlloc(a#0, Tclass._module.List(_module.Termination.Traverse$T), $Heap)
         && $IsA#_module.List(a#0))
   returns (val#0: Box
       where $IsBox(val#0, _module.Termination.Traverse$T)
         && $IsAllocBox(val#0, _module.Termination.Traverse$T, $Heap), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.List(_module.Termination.Traverse$T))
         && $IsAlloc(b#0, Tclass._module.List(_module.Termination.Traverse$T), $Heap));
  // user-defined preconditions
  requires {:id "id841"} !_module.List#Equal(a#0, #_module.List.Nil());
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(a#0);
  ensures {:id "id842"} _module.List#Equal(a#0, #_module.List.Cons(val#0, b#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Termination.Traverse (correctness)"} Impl$$_module.Termination.Traverse(_module.Termination.Traverse$T: Ty, 
    this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Termination())
         && $IsAlloc(this, Tclass._module.Termination(), $Heap), 
    a#0: DatatypeType
       where $Is(a#0, Tclass._module.List(_module.Termination.Traverse$T))
         && $IsAlloc(a#0, Tclass._module.List(_module.Termination.Traverse$T), $Heap)
         && $IsA#_module.List(a#0))
   returns (defass#val#0: bool, 
    val#0: Box
       where defass#val#0
         ==> $IsBox(val#0, _module.Termination.Traverse$T)
           && $IsAllocBox(val#0, _module.Termination.Traverse$T, $Heap), 
    b#0: DatatypeType
       where $Is(b#0, Tclass._module.List(_module.Termination.Traverse$T))
         && $IsAlloc(b#0, Tclass._module.List(_module.Termination.Traverse$T), $Heap), 
    $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id843"} !_module.List#Equal(a#0, #_module.List.Nil());
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#_module.List(a#0);
  ensures {:id "id844"} _module.List#Equal(a#0, #_module.List.Cons(val#0, b#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Termination.Traverse (correctness)"} Impl$$_module.Termination.Traverse(_module.Termination.Traverse$T: Ty, this: ref, a#0: DatatypeType)
   returns (defass#val#0: bool, val#0: Box, b#0: DatatypeType, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: Box;
  var _mcc#1#0_0: DatatypeType;
  var r#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var v#0_0: Box;
  var let#0_1#0#0: Box;

    // AddMethodImpl: Traverse, Impl$$_module.Termination.Traverse
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0;
    if (a#0 == #_module.List.Cons(_mcc#0#0_0, _mcc#1#0_0))
    {
        assume $IsBox(_mcc#0#0_0, _module.Termination.Traverse$T)
           && $IsAllocBox(_mcc#0#0_0, _module.Termination.Traverse$T, $Heap);
        assume $Is(_mcc#1#0_0, Tclass._module.List(_module.Termination.Traverse$T))
           && $IsAlloc(_mcc#1#0_0, Tclass._module.List(_module.Termination.Traverse$T), $Heap);
        havoc r#0_0;
        assume $Is(r#0_0, Tclass._module.List(_module.Termination.Traverse$T))
           && $IsAlloc(r#0_0, Tclass._module.List(_module.Termination.Traverse$T), $Heap);
        assume {:id "id846"} let#0_0#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.List(_module.Termination.Traverse$T));
        assume {:id "id847"} r#0_0 == let#0_0#0#0;
        havoc v#0_0;
        assume $IsBox(v#0_0, _module.Termination.Traverse$T)
           && $IsAllocBox(v#0_0, _module.Termination.Traverse$T, $Heap);
        assume {:id "id848"} let#0_1#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $IsBox(let#0_1#0#0, _module.Termination.Traverse$T);
        assume {:id "id849"} v#0_0 == let#0_1#0#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(98,30)
        assume true;
        assume true;
        val#0 := v#0_0;
        defass#val#0 := true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(98,38)
        assume true;
        assume true;
        b#0 := r#0_0;
    }
    else if (a#0 == #_module.List.Nil())
    {
        assert {:id "id845"} false;
    }
    else
    {
        assume false;
    }

    assert {:id "id852"} defass#val#0;
}



// $Is axiom for non-null type _module.Termination
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Termination()) } 
    { $Is(c#0, Tclass._module.Termination?()) } 
  $Is(c#0, Tclass._module.Termination())
     <==> $Is(c#0, Tclass._module.Termination?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Termination
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Termination(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Termination?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Termination(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Termination?(), $h));

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
  { $IsAllocBox(_module.List._h0(d), _module.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAllocBox(_module.List._h0(d), _module.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.List$T: Ty, $h: Heap :: 
  { $IsAlloc(_module.List._h1(d), Tclass._module.List(_module.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      _module.List.Cons_q(d)
       && $IsAlloc(d, Tclass._module.List(_module.List$T), $h)
     ==> $IsAlloc(_module.List._h1(d), Tclass._module.List(_module.List$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #_module.List.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#_module.List.Cons(a#7#0#0, a#7#1#0)));

function _module.List._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #_module.List.Cons(a#8#0#0, a#8#1#0) } 
  _module.List._h0(#_module.List.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #_module.List.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#_module.List.Cons(a#9#0#0, a#9#1#0)));

function _module.List._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #_module.List.Cons(a#10#0#0, a#10#1#0) } 
  _module.List._h1(#_module.List.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

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
       <==> _module.List._h0(a) == _module.List._h0(b)
         && _module.List#Equal(_module.List._h1(a), _module.List._h1(b))));

// Datatype extensionality axiom: _module.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.List#Equal(a, b) } 
  _module.List#Equal(a, b) <==> a == b);

const unique class._module.List: ClassName;

const unique class._module.Node?: ClassName;

function Tclass._module.Node?() : Ty
uses {
// Tclass._module.Node? Tag
axiom Tag(Tclass._module.Node?()) == Tagclass._module.Node?
   && TagFamily(Tclass._module.Node?()) == tytagFamily$Node;
}

const unique Tagclass._module.Node?: TyTag;

// Box/unbox axiom for Tclass._module.Node?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node?()) } 
  $IsBox(bx, Tclass._module.Node?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node?()));

// $Is axiom for class Node
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Node?()) } 
  $Is($o, Tclass._module.Node?())
     <==> $o == null || dtype($o) == Tclass._module.Node?());

// $IsAlloc axiom for class Node
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Node?(), $h) } 
  $IsAlloc($o, Tclass._module.Node?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Node.next: Field
uses {
axiom FDim(_module.Node.next) == 0
   && FieldOfDecl(class._module.Node?, field$next) == _module.Node.next
   && !$IsGhostField(_module.Node.next);
}

// Node.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?()));

// Node.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.next)): ref, Tclass._module.Node?(), $h));

const _module.Node.footprint: Field
uses {
axiom FDim(_module.Node.footprint) == 0
   && FieldOfDecl(class._module.Node?, field$footprint) == _module.Node.footprint
   && !$IsGhostField(_module.Node.footprint);
}

// Node.footprint: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.footprint)): Set } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Node?()
     ==> $Is($Unbox(read($h, $o, _module.Node.footprint)): Set, TSet(Tclass._module.Node?())));

// Node.footprint: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Node.footprint)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Node?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Node.footprint)): Set, 
      TSet(Tclass._module.Node?()), 
      $h));

// function declaration for _module.Node.Valid
function _module.Node.Valid($ly: LayerType, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.Node.Valid (revealed)
axiom {:id "id853"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.Node.Valid($LS($ly), $Heap, this), $IsGoodHeap($Heap) } 
    _module.Node.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.Node())
           && $IsAlloc(this, Tclass._module.Node(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(this))
           ==> 
          !Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(null))
           ==> 
          $Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
            read($Heap, this, _module.Node.next))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
              $Unbox(read($Heap, this, _module.Node.footprint)): Set)
             && !Set#Subset($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
            $Box(this))
           ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref))
         && _module.Node.Valid($LS($ly), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(this))
             && !Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(null))
             && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                  read($Heap, this, _module.Node.next))
                 && 
                Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
                  $Unbox(read($Heap, this, _module.Node.footprint)): Set)
                 && !Set#Subset($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
                  $Box(this))
                 && _module.Node.Valid($ly, $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref))));
}

function _module.Node.Valid#canCall($heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid($LS($ly), $Heap, this) } 
  _module.Node.Valid($LS($ly), $Heap, this)
     == _module.Node.Valid($ly, $Heap, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid(AsFuelBottom($ly), $Heap, this) } 
  _module.Node.Valid($ly, $Heap, this) == _module.Node.Valid($LZ, $Heap, this));

function Tclass._module.Node() : Ty
uses {
// Tclass._module.Node Tag
axiom Tag(Tclass._module.Node()) == Tagclass._module.Node
   && TagFamily(Tclass._module.Node()) == tytagFamily$Node;
}

const unique Tagclass._module.Node: TyTag;

// Box/unbox axiom for Tclass._module.Node
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Node()) } 
  $IsBox(bx, Tclass._module.Node())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Node()));

// frame axiom for _module.Node.Valid
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.Node.Valid($ly, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.Node())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.Node.footprint)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.Node.Valid($ly, $h0, this) == _module.Node.Valid($ly, $h1, this));

function _module.Node.Valid#requires(LayerType, Heap, ref) : bool;

// #requires axiom for _module.Node.Valid
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.Node.Valid#requires($ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.Node())
       && $IsAlloc(this, Tclass._module.Node(), $Heap)
     ==> _module.Node.Valid#requires($ly, $Heap, this) == true);

procedure {:verboseName "Node.Valid (well-formedness)"} CheckWellformed$$_module.Node.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Node())
         && $IsAlloc(this, Tclass._module.Node(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Node.Valid (well-formedness)"} CheckWellformed$$_module.Node.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.Node.footprint];
    assert {:id "id854"} b$reqreads#0;
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
        b$reqreads#1 := $_ReadsFrame[this, _module.Node.footprint];
        if (Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(this)))
        {
            newtype$check#0 := null;
            b$reqreads#2 := $_ReadsFrame[this, _module.Node.footprint];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(this))
           && !Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(null)))
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.Node.next];
            newtype$check#1 := null;
            if ($Unbox(read($Heap, this, _module.Node.next)): ref != null)
            {
                b$reqreads#4 := $_ReadsFrame[this, _module.Node.next];
                b$reqreads#5 := $_ReadsFrame[this, _module.Node.footprint];
                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                  read($Heap, this, _module.Node.next)))
                {
                    b$reqreads#6 := $_ReadsFrame[this, _module.Node.next];
                    assert {:id "id855"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                    b$reqreads#7 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint];
                    b$reqreads#8 := $_ReadsFrame[this, _module.Node.footprint];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                    read($Heap, this, _module.Node.next))
                   && 
                  Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
                    $Unbox(read($Heap, this, _module.Node.footprint)): Set)
                   && !Set#Subset($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set))
                {
                    b$reqreads#9 := $_ReadsFrame[this, _module.Node.next];
                    assert {:id "id856"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                    b$reqreads#10 := $_ReadsFrame[$Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                    read($Heap, this, _module.Node.next))
                   && 
                  Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
                    $Unbox(read($Heap, this, _module.Node.footprint)): Set)
                   && !Set#Subset($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                    $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set)
                   && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
                    $Box(this)))
                {
                    b$reqreads#11 := $_ReadsFrame[this, _module.Node.next];
                    assert {:id "id857"} $Unbox(read($Heap, this, _module.Node.next)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.Node.next), Tclass._module.Node?(), $Heap);
                    b$reqreads#12 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.Node.next)): ref
                             || Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id858"} Set#Subset(Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.next))), 
                        Set#Union($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.Node.next))));
                    assume _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
                }
            }
        }

        assume {:id "id859"} _module.Node.Valid($LS($LZ), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(this))
             && !Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(null))
             && ($Unbox(read($Heap, this, _module.Node.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                  read($Heap, this, _module.Node.next))
                 && 
                Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
                  $Unbox(read($Heap, this, _module.Node.footprint)): Set)
                 && !Set#Subset($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
                  $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set)
                 && !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
                  $Box(this))
                 && _module.Node.Valid($LS($LZ), $Heap, $Unbox(read($Heap, this, _module.Node.next)): ref)));
        assume Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(this))
           ==> 
          !Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, $Box(null))
           ==> 
          $Unbox(read($Heap, this, _module.Node.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
            read($Heap, this, _module.Node.next))
           ==> 
          Set#Subset($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
              $Unbox(read($Heap, this, _module.Node.footprint)): Set)
             && !Set#Subset($Unbox(read($Heap, this, _module.Node.footprint)): Set, 
              $Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref, _module.Node.footprint)): Set, 
            $Box(this))
           ==> _module.Node.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.Node.next)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.Node.Valid($LS($LZ), $Heap, this), TBool);
        assert {:id "id860"} b$reqreads#1;
        assert {:id "id861"} b$reqreads#2;
        assert {:id "id862"} b$reqreads#3;
        assert {:id "id863"} b$reqreads#4;
        assert {:id "id864"} b$reqreads#5;
        assert {:id "id865"} b$reqreads#6;
        assert {:id "id866"} b$reqreads#7;
        assert {:id "id867"} b$reqreads#8;
        assert {:id "id868"} b$reqreads#9;
        assert {:id "id869"} b$reqreads#10;
        assert {:id "id870"} b$reqreads#11;
        assert {:id "id871"} b$reqreads#12;
        return;

        assume false;
    }
}



// $Is axiom for non-null type _module.Node
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Node()) } { $Is(c#0, Tclass._module.Node?()) } 
  $Is(c#0, Tclass._module.Node())
     <==> $Is(c#0, Tclass._module.Node?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Node
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Node(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Node?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Node(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Node?(), $h));

const unique class._module.TopElements?: ClassName;

function Tclass._module.TopElements?() : Ty
uses {
// Tclass._module.TopElements? Tag
axiom Tag(Tclass._module.TopElements?()) == Tagclass._module.TopElements?
   && TagFamily(Tclass._module.TopElements?()) == tytagFamily$TopElements;
}

const unique Tagclass._module.TopElements?: TyTag;

// Box/unbox axiom for Tclass._module.TopElements?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.TopElements?()) } 
  $IsBox(bx, Tclass._module.TopElements?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.TopElements?()));

// $Is axiom for class TopElements
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.TopElements?()) } 
  $Is($o, Tclass._module.TopElements?())
     <==> $o == null || dtype($o) == Tclass._module.TopElements?());

// $IsAlloc axiom for class TopElements
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.TopElements?(), $h) } 
  $IsAlloc($o, Tclass._module.TopElements?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.TopElements.count: Field
uses {
axiom FDim(_module.TopElements.count) == 0
   && FieldOfDecl(class._module.TopElements?, field$count)
     == _module.TopElements.count
   && !$IsGhostField(_module.TopElements.count);
}

// TopElements.count: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.TopElements.count)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.TopElements?()
     ==> $Is($Unbox(read($h, $o, _module.TopElements.count)): int, TInt));

// TopElements.count: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.TopElements.count)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.TopElements?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.TopElements.count)): int, TInt, $h));

function Tclass._module.TopElements() : Ty
uses {
// Tclass._module.TopElements Tag
axiom Tag(Tclass._module.TopElements()) == Tagclass._module.TopElements
   && TagFamily(Tclass._module.TopElements()) == tytagFamily$TopElements;
}

const unique Tagclass._module.TopElements: TyTag;

// Box/unbox axiom for Tclass._module.TopElements
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.TopElements()) } 
  $IsBox(bx, Tclass._module.TopElements())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.TopElements()));

procedure {:verboseName "TopElements.OuterOld (well-formedness)"} CheckWellFormed$$_module.TopElements.OuterOld(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TopElements.OuterOld (call)"} Call$$_module.TopElements.OuterOld(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TopElements.OuterOld (correctness)"} Impl$$_module.TopElements.OuterOld(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TopElements.OuterOld (correctness)"} Impl$$_module.TopElements.OuterOld(this: ref, a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var a##0: int;
  var b##0: int;

    // AddMethodImpl: OuterOld, Impl$$_module.TopElements.OuterOld
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(213,11)
    assume true;
    assert {:id "id872"} $_ModifiesFrame[this, _module.TopElements.count];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.TopElements.count)): int + 1;
    $Heap := update($Heap, this, _module.TopElements.count, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(214,13)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := $Unbox(read($Heap, this, _module.TopElements.count)): int;
    assert {:id "id875"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
         ==> $_ModifiesFrame[$o, $f]);
    assert {:id "id876"} 0 <= a#0 || a##0 == a#0;
    assert {:id "id877"} a##0 <= a#0 && (a##0 == a#0 ==> Lit(false) ==> Lit(true));
    call {:id "id878"} Call$$_module.TopElements.InnerOld(this, a##0, b##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TopElements.InnerOld (well-formedness)"} CheckWellFormed$$_module.TopElements.InnerOld(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int, 
    b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TopElements.InnerOld (call)"} Call$$_module.TopElements.InnerOld(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int, 
    b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TopElements.InnerOld (correctness)"} Impl$$_module.TopElements.InnerOld(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int, 
    b#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TopElements.InnerOld (correctness)"} Impl$$_module.TopElements.InnerOld(this: ref, a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var a##0_0: int;
  var a##1_0_0: int;
  var b##1_0_0: int;

    // AddMethodImpl: InnerOld, Impl$$_module.TopElements.InnerOld
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(221,11)
    assume true;
    assert {:id "id879"} $_ModifiesFrame[this, _module.TopElements.count];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.TopElements.count)): int + 1;
    $Heap := update($Heap, this, _module.TopElements.count, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(222,5)
    if (b#0 == LitInt(0))
    {
    }

    assume true;
    if (b#0 == LitInt(0) && LitInt(1) <= a#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(223,15)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := a#0 - 1;
        assert {:id "id882"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id883"} 0 <= a#0 || a##0_0 == a#0;
        assert {:id "id884"} a##0_0 < a#0 || (a##0_0 == a#0 && !Lit(true) && Lit(false));
        call {:id "id885"} Call$$_module.TopElements.OuterOld(this, a##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(224,12)
        assume true;
        if (LitInt(1) <= b#0)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(225,15)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_0_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##1_0_0 := b#0 - 1;
            assert {:id "id886"} (forall $o: ref, $f: Field :: 
              $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
                 ==> $_ModifiesFrame[$o, $f]);
            assert {:id "id887"} 0 <= a#0 || a##1_0_0 == a#0;
            assert {:id "id888"} 0 <= b#0 || a##1_0_0 < a#0 || (!Lit(false) && Lit(false)) || b##1_0_0 == b#0;
            assert {:id "id889"} a##1_0_0 < a#0
               || (a##1_0_0 == a#0
                 && ((!Lit(false) && Lit(false))
                   || ((Lit(false) <==> Lit(false)) && b##1_0_0 < b#0)));
            call {:id "id890"} Call$$_module.TopElements.InnerOld(this, a##1_0_0, b##1_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
        }
    }
}



procedure {:verboseName "TopElements.Outer (well-formedness)"} CheckWellFormed$$_module.TopElements.Outer(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TopElements.Outer (call)"} Call$$_module.TopElements.Outer(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TopElements.Outer (correctness)"} Impl$$_module.TopElements.Outer(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TopElements.Outer (correctness)"} Impl$$_module.TopElements.Outer(this: ref, a#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var a##0: int;
  var b##0: int;

    // AddMethodImpl: Outer, Impl$$_module.TopElements.Outer
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(234,11)
    assume true;
    assert {:id "id891"} $_ModifiesFrame[this, _module.TopElements.count];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.TopElements.count)): int + 1;
    $Heap := update($Heap, this, _module.TopElements.count, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(235,10)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := a#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := $Unbox(read($Heap, this, _module.TopElements.count)): int;
    assert {:id "id894"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
         ==> $_ModifiesFrame[$o, $f]);
    assert {:id "id895"} 0 <= a#0 || a##0 == a#0;
    assert {:id "id896"} a##0 <= a#0;
    call {:id "id897"} Call$$_module.TopElements.Inner(this, a##0, b##0);
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "TopElements.Inner (well-formedness)"} CheckWellFormed$$_module.TopElements.Inner(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int, 
    b#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TopElements.Inner (call)"} Call$$_module.TopElements.Inner(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int, 
    b#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TopElements.Inner (correctness)"} Impl$$_module.TopElements.Inner(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.TopElements())
         && $IsAlloc(this, Tclass._module.TopElements(), $Heap), 
    a#0: int, 
    b#0: int)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TopElements.Inner (correctness)"} Impl$$_module.TopElements.Inner(this: ref, a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var a##0_0: int;
  var a##1_0_0: int;
  var b##1_0_0: int;

    // AddMethodImpl: Inner, Impl$$_module.TopElements.Inner
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(241,11)
    assume true;
    assert {:id "id898"} $_ModifiesFrame[this, _module.TopElements.count];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.TopElements.count)): int + 1;
    $Heap := update($Heap, this, _module.TopElements.count, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(242,5)
    if (b#0 == LitInt(0))
    {
    }

    assume true;
    if (b#0 == LitInt(0) && LitInt(1) <= a#0)
    {
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(243,12)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##0_0 := a#0 - 1;
        assert {:id "id901"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id902"} 0 <= a#0 || a##0_0 == a#0;
        assert {:id "id903"} a##0_0 < a#0;
        call {:id "id904"} Call$$_module.TopElements.Outer(this, a##0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(244,12)
        assume true;
        if (LitInt(1) <= b#0)
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(245,12)
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            a##1_0_0 := a#0;
            assume true;
            // ProcessCallStmt: CheckSubrange
            b##1_0_0 := b#0 - 1;
            assert {:id "id905"} (forall $o: ref, $f: Field :: 
              $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
                 ==> $_ModifiesFrame[$o, $f]);
            assert {:id "id906"} 0 <= a#0 || a##1_0_0 == a#0;
            assert {:id "id907"} 0 <= b#0 || a##1_0_0 < a#0 || b##1_0_0 == b#0;
            assert {:id "id908"} a##1_0_0 < a#0 || (a##1_0_0 == a#0 && b##1_0_0 < b#0);
            call {:id "id909"} Call$$_module.TopElements.Inner(this, a##1_0_0, b##1_0_0);
            // TrCallStmt: After ProcessCallStmt
        }
        else
        {
        }
    }
}



// $Is axiom for non-null type _module.TopElements
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.TopElements()) } 
    { $Is(c#0, Tclass._module.TopElements?()) } 
  $Is(c#0, Tclass._module.TopElements())
     <==> $Is(c#0, Tclass._module.TopElements?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.TopElements
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.TopElements(), $h) } 
    { $IsAlloc(c#0, Tclass._module.TopElements?(), $h) } 
  $IsAlloc(c#0, Tclass._module.TopElements(), $h)
     <==> $IsAlloc(c#0, Tclass._module.TopElements?(), $h));

const unique class._module.DefaultDecreasesFunction?: ClassName;

function Tclass._module.DefaultDecreasesFunction?() : Ty
uses {
// Tclass._module.DefaultDecreasesFunction? Tag
axiom Tag(Tclass._module.DefaultDecreasesFunction?())
     == Tagclass._module.DefaultDecreasesFunction?
   && TagFamily(Tclass._module.DefaultDecreasesFunction?())
     == tytagFamily$DefaultDecreasesFunction;
}

const unique Tagclass._module.DefaultDecreasesFunction?: TyTag;

// Box/unbox axiom for Tclass._module.DefaultDecreasesFunction?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DefaultDecreasesFunction?()) } 
  $IsBox(bx, Tclass._module.DefaultDecreasesFunction?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.DefaultDecreasesFunction?()));

// $Is axiom for class DefaultDecreasesFunction
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.DefaultDecreasesFunction?()) } 
  $Is($o, Tclass._module.DefaultDecreasesFunction?())
     <==> $o == null || dtype($o) == Tclass._module.DefaultDecreasesFunction?());

// $IsAlloc axiom for class DefaultDecreasesFunction
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.DefaultDecreasesFunction?(), $h) } 
  $IsAlloc($o, Tclass._module.DefaultDecreasesFunction?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.DefaultDecreasesFunction.data: Field
uses {
axiom FDim(_module.DefaultDecreasesFunction.data) == 0
   && FieldOfDecl(class._module.DefaultDecreasesFunction?, field$data)
     == _module.DefaultDecreasesFunction.data
   && !$IsGhostField(_module.DefaultDecreasesFunction.data);
}

// DefaultDecreasesFunction.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DefaultDecreasesFunction.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DefaultDecreasesFunction?()
     ==> $Is($Unbox(read($h, $o, _module.DefaultDecreasesFunction.data)): int, TInt));

// DefaultDecreasesFunction.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DefaultDecreasesFunction.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DefaultDecreasesFunction?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DefaultDecreasesFunction.data)): int, TInt, $h));

const _module.DefaultDecreasesFunction.Repr: Field
uses {
axiom FDim(_module.DefaultDecreasesFunction.Repr) == 0
   && FieldOfDecl(class._module.DefaultDecreasesFunction?, field$Repr)
     == _module.DefaultDecreasesFunction.Repr
   && $IsGhostField(_module.DefaultDecreasesFunction.Repr);
}

// DefaultDecreasesFunction.Repr: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DefaultDecreasesFunction.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DefaultDecreasesFunction?()
     ==> $Is($Unbox(read($h, $o, _module.DefaultDecreasesFunction.Repr)): Set, 
      TSet(Tclass._System.object?())));

// DefaultDecreasesFunction.Repr: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DefaultDecreasesFunction.Repr)): Set } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DefaultDecreasesFunction?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DefaultDecreasesFunction.Repr)): Set, 
      TSet(Tclass._System.object?()), 
      $h));

const _module.DefaultDecreasesFunction.next: Field
uses {
axiom FDim(_module.DefaultDecreasesFunction.next) == 0
   && FieldOfDecl(class._module.DefaultDecreasesFunction?, field$next)
     == _module.DefaultDecreasesFunction.next
   && !$IsGhostField(_module.DefaultDecreasesFunction.next);
}

// DefaultDecreasesFunction.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DefaultDecreasesFunction.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DefaultDecreasesFunction?()
     ==> $Is($Unbox(read($h, $o, _module.DefaultDecreasesFunction.next)): ref, 
      Tclass._module.DefaultDecreasesFunction?()));

// DefaultDecreasesFunction.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DefaultDecreasesFunction.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DefaultDecreasesFunction?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DefaultDecreasesFunction.next)): ref, 
      Tclass._module.DefaultDecreasesFunction?(), 
      $h));

// function declaration for _module.DefaultDecreasesFunction.Valid
function _module.DefaultDecreasesFunction.Valid($ly: LayerType, $heap: Heap, this: ref) : bool
uses {
// definition axiom for _module.DefaultDecreasesFunction.Valid (revealed)
axiom {:id "id910"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref :: 
    { _module.DefaultDecreasesFunction.Valid($LS($ly), $Heap, this), $IsGoodHeap($Heap) } 
    _module.DefaultDecreasesFunction.Valid#canCall($Heap, this)
         || (0 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.DefaultDecreasesFunction())
           && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap))
       ==> (Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
            $Box(this))
           ==> 
          !Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
            $Box(null))
           ==> 
          $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
            read($Heap, this, _module.DefaultDecreasesFunction.next))
           ==> 
          Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                _module.DefaultDecreasesFunction.Repr)): Set, 
            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                _module.DefaultDecreasesFunction.Repr)): Set, 
            $Box(this))
           ==> _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref))
         && _module.DefaultDecreasesFunction.Valid($LS($ly), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
              $Box(this))
             && !Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
              $Box(null))
             && ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                  read($Heap, this, _module.DefaultDecreasesFunction.next))
                 && Set#Subset($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.Repr)): Set, 
                  $Box(this))
                 && _module.DefaultDecreasesFunction.Valid($ly, 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref))));
}

function _module.DefaultDecreasesFunction.Valid#canCall($heap: Heap, this: ref) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.DefaultDecreasesFunction.Valid($LS($ly), $Heap, this) } 
  _module.DefaultDecreasesFunction.Valid($LS($ly), $Heap, this)
     == _module.DefaultDecreasesFunction.Valid($ly, $Heap, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.DefaultDecreasesFunction.Valid(AsFuelBottom($ly), $Heap, this) } 
  _module.DefaultDecreasesFunction.Valid($ly, $Heap, this)
     == _module.DefaultDecreasesFunction.Valid($LZ, $Heap, this));

function Tclass._module.DefaultDecreasesFunction() : Ty
uses {
// Tclass._module.DefaultDecreasesFunction Tag
axiom Tag(Tclass._module.DefaultDecreasesFunction())
     == Tagclass._module.DefaultDecreasesFunction
   && TagFamily(Tclass._module.DefaultDecreasesFunction())
     == tytagFamily$DefaultDecreasesFunction;
}

const unique Tagclass._module.DefaultDecreasesFunction: TyTag;

// Box/unbox axiom for Tclass._module.DefaultDecreasesFunction
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DefaultDecreasesFunction()) } 
  $IsBox(bx, Tclass._module.DefaultDecreasesFunction())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.DefaultDecreasesFunction()));

// frame axiom for _module.DefaultDecreasesFunction.Valid
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.DefaultDecreasesFunction.Valid($ly, $h1, this) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.DefaultDecreasesFunction())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.DefaultDecreasesFunction.Valid($ly, $h0, this)
       == _module.DefaultDecreasesFunction.Valid($ly, $h1, this));

function _module.DefaultDecreasesFunction.Valid#requires(LayerType, Heap, ref) : bool;

// #requires axiom for _module.DefaultDecreasesFunction.Valid
axiom (forall $ly: LayerType, $Heap: Heap, this: ref :: 
  { _module.DefaultDecreasesFunction.Valid#requires($ly, $Heap, this), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.DefaultDecreasesFunction())
       && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap)
     ==> _module.DefaultDecreasesFunction.Valid#requires($ly, $Heap, this) == true);

procedure {:verboseName "DefaultDecreasesFunction.Valid (well-formedness)"} CheckWellformed$$_module.DefaultDecreasesFunction.Valid(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DefaultDecreasesFunction())
         && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultDecreasesFunction.Valid (well-formedness)"} CheckWellformed$$_module.DefaultDecreasesFunction.Valid(this: ref)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var b$reqreads#1: bool;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;
  var b$reqreads#8: bool;
  var b$reqreads#9: bool;
  var b$reqreads#10: bool;
  var b$reqreads#11: bool;
  var b$reqreads#12: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;
    b$reqreads#8 := true;
    b$reqreads#9 := true;
    b$reqreads#10 := true;
    b$reqreads#11 := true;
    b$reqreads#12 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    b$reqreads#0 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.Repr];
    assert {:id "id911"} b$reqreads#0;
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
        b$reqreads#1 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.Repr];
        if (Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
          $Box(this)))
        {
            newtype$check#0 := null;
            b$reqreads#2 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.Repr];
        }

        if (Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
            $Box(this))
           && !Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
            $Box(null)))
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
            newtype$check#1 := null;
            if ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null)
            {
                b$reqreads#4 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
                b$reqreads#5 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.Repr];
                if (Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                  read($Heap, this, _module.DefaultDecreasesFunction.next)))
                {
                    b$reqreads#6 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
                    assert {:id "id912"} $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null;
                    b$reqreads#7 := $_ReadsFrame[$Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, _module.DefaultDecreasesFunction.Repr];
                    b$reqreads#8 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    read($Heap, this, _module.DefaultDecreasesFunction.next))
                   && Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set))
                {
                    b$reqreads#9 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
                    assert {:id "id913"} $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null;
                    b$reqreads#10 := $_ReadsFrame[$Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, _module.DefaultDecreasesFunction.Repr];
                }

                if (Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    read($Heap, this, _module.DefaultDecreasesFunction.next))
                   && Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set)
                   && !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    $Box(this)))
                {
                    b$reqreads#11 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
                    assert {:id "id914"} $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null;
                    // assume allocatedness for receiver argument to function
                    assume $IsAllocBox(read($Heap, this, _module.DefaultDecreasesFunction.next), 
                      Tclass._module.DefaultDecreasesFunction?(), 
                      $Heap);
                    b$reqreads#12 := (forall $o: ref, $f: Field :: 
                      $o != null
                           && $Unbox(read($Heap, $o, alloc)): bool
                           && ($o == $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref
                             || Set#IsMember($Unbox(read($Heap, 
                                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                                  _module.DefaultDecreasesFunction.Repr)): Set, 
                              $Box($o)))
                         ==> $_ReadsFrame[$o, $f]);
                    assert {:id "id915"} Set#Subset(Set#Union($Unbox(read($Heap, 
                              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                              _module.DefaultDecreasesFunction.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next))), 
                        Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))))
                       && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                        Set#Union($Unbox(read($Heap, 
                              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                              _module.DefaultDecreasesFunction.Repr)): Set, 
                          Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next))));
                    assume _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref);
                }
            }
        }

        assume {:id "id916"} _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this)
           == (
            Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
              $Box(this))
             && !Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
              $Box(null))
             && ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null
               ==> Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                  read($Heap, this, _module.DefaultDecreasesFunction.next))
                 && Set#Subset($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.Repr)): Set, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set)
                 && !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.Repr)): Set, 
                  $Box(this))
                 && _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)));
        assume Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
            $Box(this))
           ==> 
          !Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
            $Box(null))
           ==> 
          $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null
           ==> 
          Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
            read($Heap, this, _module.DefaultDecreasesFunction.next))
           ==> 
          Set#Subset($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                _module.DefaultDecreasesFunction.Repr)): Set, 
            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set)
           ==> 
          !Set#IsMember($Unbox(read($Heap, 
                $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                _module.DefaultDecreasesFunction.Repr)): Set, 
            $Box(this))
           ==> _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref);
        // CheckWellformedWithResult: any expression
        assume $Is(_module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this), TBool);
        assert {:id "id917"} b$reqreads#1;
        assert {:id "id918"} b$reqreads#2;
        assert {:id "id919"} b$reqreads#3;
        assert {:id "id920"} b$reqreads#4;
        assert {:id "id921"} b$reqreads#5;
        assert {:id "id922"} b$reqreads#6;
        assert {:id "id923"} b$reqreads#7;
        assert {:id "id924"} b$reqreads#8;
        assert {:id "id925"} b$reqreads#9;
        assert {:id "id926"} b$reqreads#10;
        assert {:id "id927"} b$reqreads#11;
        assert {:id "id928"} b$reqreads#12;
        return;

        assume false;
    }
}



// function declaration for _module.DefaultDecreasesFunction.F
function _module.DefaultDecreasesFunction.F($ly: LayerType, $heap: Heap, this: ref, x#0: int) : int
uses {
// definition axiom for _module.DefaultDecreasesFunction.F (revealed)
axiom {:id "id929"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
    { _module.DefaultDecreasesFunction.F($LS($ly), $Heap, this, x#0), $IsGoodHeap($Heap) } 
    _module.DefaultDecreasesFunction.F#canCall($Heap, this, x#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.DefaultDecreasesFunction())
           && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap)
           && _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this))
       ==> (!($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref == null
             || x#0 < 0)
           ==> _module.DefaultDecreasesFunction.F#canCall($Heap, 
            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
            x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int))
         && _module.DefaultDecreasesFunction.F($LS($ly), $Heap, this, x#0)
           == (if $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref == null
               || x#0 < 0
             then x#0
             else _module.DefaultDecreasesFunction.F($ly, 
              $Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
              x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int)));
}

function _module.DefaultDecreasesFunction.F#canCall($heap: Heap, this: ref, x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.DefaultDecreasesFunction.F($LS($ly), $Heap, this, x#0) } 
  _module.DefaultDecreasesFunction.F($LS($ly), $Heap, this, x#0)
     == _module.DefaultDecreasesFunction.F($ly, $Heap, this, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.DefaultDecreasesFunction.F(AsFuelBottom($ly), $Heap, this, x#0) } 
  _module.DefaultDecreasesFunction.F($ly, $Heap, this, x#0)
     == _module.DefaultDecreasesFunction.F($LZ, $Heap, this, x#0));

// frame axiom for _module.DefaultDecreasesFunction.F
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref, x#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.DefaultDecreasesFunction.F($ly, $h1, this, x#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.DefaultDecreasesFunction())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.DefaultDecreasesFunction.F($ly, $h0, this, x#0)
       == _module.DefaultDecreasesFunction.F($ly, $h1, this, x#0));

function _module.DefaultDecreasesFunction.F#requires(LayerType, Heap, ref, int) : bool;

// #requires axiom for _module.DefaultDecreasesFunction.F
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.DefaultDecreasesFunction.F#requires($ly, $Heap, this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.DefaultDecreasesFunction())
       && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap)
     ==> _module.DefaultDecreasesFunction.F#requires($ly, $Heap, this, x#0)
       == _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this));

procedure {:verboseName "DefaultDecreasesFunction.F (well-formedness)"} CheckWellformed$$_module.DefaultDecreasesFunction.F(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DefaultDecreasesFunction())
         && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultDecreasesFunction.F (well-formedness)"} CheckWellformed$$_module.DefaultDecreasesFunction.F(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var newtype$check#0: ref;
  var ##x#0: int;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DefaultDecreasesFunction?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.DefaultDecreasesFunction.Valid#canCall($Heap, this);
    assume {:id "id930"} _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this);
    assert {:id "id931"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.Repr];
    assert {:id "id932"} b$reqreads#1;
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
        b$reqreads#2 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
        newtype$check#0 := null;
        if ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null)
        {
        }

        if ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref == null
           || x#0 < 0)
        {
            assume {:id "id933"} _module.DefaultDecreasesFunction.F($LS($LZ), $Heap, this, x#0) == x#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.DefaultDecreasesFunction.F($LS($LZ), $Heap, this, x#0), TInt);
            assert {:id "id934"} b$reqreads#2;
            return;
        }
        else
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
            assert {:id "id935"} $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.DefaultDecreasesFunction.next), 
              Tclass._module.DefaultDecreasesFunction?(), 
              $Heap);
            b$reqreads#4 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.data];
            ##x#0 := x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assert {:id "id936"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.Repr)): Set, 
                  read($Heap, this, _module.DefaultDecreasesFunction.next));
            assert {:id "id937"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.Repr)): Set, 
                  $Box(null));
            assert {:id "id938"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.next)));
            assert {:id "id939"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, 
                            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                            _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set));
            assert {:id "id940"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, 
                            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                            _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    read($Heap, this, _module.DefaultDecreasesFunction.next)));
            assert {:id "id941"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> _module.DefaultDecreasesFunction.Valid($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref));
            assume _module.DefaultDecreasesFunction.Valid($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref);
            b$reqreads#5 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref
                     || Set#IsMember($Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                          _module.DefaultDecreasesFunction.Repr)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assert {:id "id942"} 0 <= x#0
               || (Set#Subset(Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next))), 
                  Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next)))))
               || ##x#0 == x#0;
            assert {:id "id943"} (Set#Subset(Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next))), 
                  Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next)))))
               || (Set#Equal(Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next))), 
                  Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && ##x#0 < x#0);
            assume _module.DefaultDecreasesFunction.F#canCall($Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
              x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int);
            assume {:id "id944"} _module.DefaultDecreasesFunction.F($LS($LZ), $Heap, this, x#0)
               == _module.DefaultDecreasesFunction.F($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int);
            assume _module.DefaultDecreasesFunction.F#canCall($Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
              x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.DefaultDecreasesFunction.F($LS($LZ), $Heap, this, x#0), TInt);
            assert {:id "id945"} b$reqreads#2;
            assert {:id "id946"} b$reqreads#3;
            assert {:id "id947"} b$reqreads#4;
            assert {:id "id948"} b$reqreads#5;
            return;
        }

        assume false;
    }
}



// function declaration for _module.DefaultDecreasesFunction.G
function _module.DefaultDecreasesFunction.G($ly: LayerType, $heap: Heap, this: ref, x#0: int) : int
uses {
// definition axiom for _module.DefaultDecreasesFunction.G (revealed)
axiom {:id "id949"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
    { _module.DefaultDecreasesFunction.G($LS($ly), $Heap, this, x#0), $IsGoodHeap($Heap) } 
    _module.DefaultDecreasesFunction.G#canCall($Heap, this, x#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.DefaultDecreasesFunction())
           && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap)
           && _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this))
       ==> (!($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref == null
             || x#0 < 0)
           ==> _module.DefaultDecreasesFunction.G#canCall($Heap, 
            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
            x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int))
         && _module.DefaultDecreasesFunction.G($LS($ly), $Heap, this, x#0)
           == (if $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref == null
               || x#0 < 0
             then x#0
             else _module.DefaultDecreasesFunction.G($ly, 
              $Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
              x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int)));
}

function _module.DefaultDecreasesFunction.G#canCall($heap: Heap, this: ref, x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.DefaultDecreasesFunction.G($LS($ly), $Heap, this, x#0) } 
  _module.DefaultDecreasesFunction.G($LS($ly), $Heap, this, x#0)
     == _module.DefaultDecreasesFunction.G($ly, $Heap, this, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.DefaultDecreasesFunction.G(AsFuelBottom($ly), $Heap, this, x#0) } 
  _module.DefaultDecreasesFunction.G($ly, $Heap, this, x#0)
     == _module.DefaultDecreasesFunction.G($LZ, $Heap, this, x#0));

// frame axiom for _module.DefaultDecreasesFunction.G
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref, x#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.DefaultDecreasesFunction.G($ly, $h1, this, x#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.DefaultDecreasesFunction())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.DefaultDecreasesFunction.G($ly, $h0, this, x#0)
       == _module.DefaultDecreasesFunction.G($ly, $h1, this, x#0));

function _module.DefaultDecreasesFunction.G#requires(LayerType, Heap, ref, int) : bool;

// #requires axiom for _module.DefaultDecreasesFunction.G
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.DefaultDecreasesFunction.G#requires($ly, $Heap, this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.DefaultDecreasesFunction())
       && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap)
     ==> _module.DefaultDecreasesFunction.G#requires($ly, $Heap, this, x#0)
       == _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this));

procedure {:verboseName "DefaultDecreasesFunction.G (well-formedness)"} CheckWellformed$$_module.DefaultDecreasesFunction.G(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DefaultDecreasesFunction())
         && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultDecreasesFunction.G (well-formedness)"} CheckWellformed$$_module.DefaultDecreasesFunction.G(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var newtype$check#0: ref;
  var ##x#0: int;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DefaultDecreasesFunction?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.DefaultDecreasesFunction.Valid#canCall($Heap, this);
    assume {:id "id950"} _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this);
    assert {:id "id951"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.Repr];
    assert {:id "id952"} b$reqreads#1;
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
        b$reqreads#2 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
        newtype$check#0 := null;
        if ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null)
        {
        }

        if ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref == null
           || x#0 < 0)
        {
            assume {:id "id953"} _module.DefaultDecreasesFunction.G($LS($LZ), $Heap, this, x#0) == x#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.DefaultDecreasesFunction.G($LS($LZ), $Heap, this, x#0), TInt);
            assert {:id "id954"} b$reqreads#2;
            return;
        }
        else
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
            assert {:id "id955"} $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.DefaultDecreasesFunction.next), 
              Tclass._module.DefaultDecreasesFunction?(), 
              $Heap);
            b$reqreads#4 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.data];
            ##x#0 := x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assert {:id "id956"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.Repr)): Set, 
                  read($Heap, this, _module.DefaultDecreasesFunction.next));
            assert {:id "id957"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.Repr)): Set, 
                  $Box(null));
            assert {:id "id958"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.next)));
            assert {:id "id959"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, 
                            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                            _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set));
            assert {:id "id960"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, 
                            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                            _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    read($Heap, this, _module.DefaultDecreasesFunction.next)));
            assert {:id "id961"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> _module.DefaultDecreasesFunction.Valid($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref));
            assume _module.DefaultDecreasesFunction.Valid($LS($LZ), 
              $Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref);
            b$reqreads#5 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref
                     || Set#IsMember($Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                          _module.DefaultDecreasesFunction.Repr)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assert {:id "id962"} 0 <= x#0 || ##x#0 == x#0;
            assert {:id "id963"} ##x#0 < x#0;
            assume _module.DefaultDecreasesFunction.G#canCall($Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
              x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int);
            assume {:id "id964"} _module.DefaultDecreasesFunction.G($LS($LZ), $Heap, this, x#0)
               == _module.DefaultDecreasesFunction.G($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int);
            assume _module.DefaultDecreasesFunction.G#canCall($Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
              x#0 + $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.DefaultDecreasesFunction.G($LS($LZ), $Heap, this, x#0), TInt);
            assert {:id "id965"} b$reqreads#2;
            assert {:id "id966"} b$reqreads#3;
            assert {:id "id967"} b$reqreads#4;
            assert {:id "id968"} b$reqreads#5;
            return;
        }

        assume false;
    }
}



// function declaration for _module.DefaultDecreasesFunction.H
function _module.DefaultDecreasesFunction.H($ly: LayerType, $heap: Heap, this: ref, x#0: int) : int
uses {
// definition axiom for _module.DefaultDecreasesFunction.H (revealed)
axiom {:id "id969"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
    { _module.DefaultDecreasesFunction.H($LS($ly), $Heap, this, x#0), $IsGoodHeap($Heap) } 
    _module.DefaultDecreasesFunction.H#canCall($Heap, this, x#0)
         || (1 < $FunctionContextHeight
           && 
          $IsGoodHeap($Heap)
           && 
          this != null
           && 
          $Is(this, Tclass._module.DefaultDecreasesFunction())
           && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap)
           && 
          _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this)
           && LitInt(0) <= x#0)
       ==> ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null
           ==> _module.DefaultDecreasesFunction.Abs#canCall(this, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int)
             && _module.DefaultDecreasesFunction.H#canCall($Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
              _module.DefaultDecreasesFunction.Abs(this, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int)))
         && ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref == null
           ==> 
          78 <= x#0
           ==> _module.DefaultDecreasesFunction.H#canCall($Heap, this, x#0 - 1))
         && _module.DefaultDecreasesFunction.H($LS($ly), $Heap, this, x#0)
           == (if $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null
             then _module.DefaultDecreasesFunction.H($ly, 
              $Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
              _module.DefaultDecreasesFunction.Abs(this, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int))
             else (if x#0 < 78
               then $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int + x#0
               else _module.DefaultDecreasesFunction.H($ly, $Heap, this, x#0 - 1))));
}

function _module.DefaultDecreasesFunction.H#canCall($heap: Heap, this: ref, x#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.DefaultDecreasesFunction.H($LS($ly), $Heap, this, x#0) } 
  _module.DefaultDecreasesFunction.H($LS($ly), $Heap, this, x#0)
     == _module.DefaultDecreasesFunction.H($ly, $Heap, this, x#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.DefaultDecreasesFunction.H(AsFuelBottom($ly), $Heap, this, x#0) } 
  _module.DefaultDecreasesFunction.H($ly, $Heap, this, x#0)
     == _module.DefaultDecreasesFunction.H($LZ, $Heap, this, x#0));

// frame axiom for _module.DefaultDecreasesFunction.H
axiom (forall $ly: LayerType, $h0: Heap, $h1: Heap, this: ref, x#0: int :: 
  { $IsHeapAnchor($h0), $HeapSucc($h0, $h1), _module.DefaultDecreasesFunction.H($ly, $h1, this, x#0) } 
  $IsGoodHeap($h0)
       && $IsGoodHeap($h1)
       && 
      this != null
       && $Is(this, Tclass._module.DefaultDecreasesFunction())
       && 
      $IsHeapAnchor($h0)
       && $HeapSucc($h0, $h1)
     ==> 
    (forall $o: ref, $f: Field :: 
      $o != null
           && ($o == this
             || Set#IsMember($Unbox(read($h0, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)))
         ==> read($h0, $o, $f) == read($h1, $o, $f))
     ==> _module.DefaultDecreasesFunction.H($ly, $h0, this, x#0)
       == _module.DefaultDecreasesFunction.H($ly, $h1, this, x#0));

function _module.DefaultDecreasesFunction.H#requires(LayerType, Heap, ref, int) : bool;

// #requires axiom for _module.DefaultDecreasesFunction.H
axiom (forall $ly: LayerType, $Heap: Heap, this: ref, x#0: int :: 
  { _module.DefaultDecreasesFunction.H#requires($ly, $Heap, this, x#0), $IsGoodHeap($Heap) } 
  $IsGoodHeap($Heap)
       && 
      this != null
       && 
      $Is(this, Tclass._module.DefaultDecreasesFunction())
       && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap)
     ==> _module.DefaultDecreasesFunction.H#requires($ly, $Heap, this, x#0)
       == (_module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this)
         && LitInt(0) <= x#0));

procedure {:verboseName "DefaultDecreasesFunction.H (well-formedness)"} CheckWellformed$$_module.DefaultDecreasesFunction.H(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DefaultDecreasesFunction())
         && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap), 
    x#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DefaultDecreasesFunction.H (well-formedness)"} CheckWellformed$$_module.DefaultDecreasesFunction.H(this: ref, x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;
  var b$reqreads#0: bool;
  var b$reqreads#1: bool;
  var newtype$check#0: ref;
  var ##x#0: int;
  var ##x#1: int;
  var ##x#2: int;
  var b$reqreads#2: bool;
  var b$reqreads#3: bool;
  var b$reqreads#4: bool;
  var b$reqreads#5: bool;
  var b$reqreads#6: bool;
  var b$reqreads#7: bool;

    b$reqreads#0 := true;
    b$reqreads#1 := true;
    b$reqreads#2 := true;
    b$reqreads#3 := true;
    b$reqreads#4 := true;
    b$reqreads#5 := true;
    b$reqreads#6 := true;
    b$reqreads#7 := true;

    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == this
           || Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)));
    // Check well-formedness of preconditions, and then assume them
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.DefaultDecreasesFunction?(), $Heap);
    b$reqreads#0 := (forall $o: ref, $f: Field :: 
      $o != null
           && $Unbox(read($Heap, $o, alloc)): bool
           && ($o == this
             || Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)))
         ==> $_ReadsFrame[$o, $f]);
    assume _module.DefaultDecreasesFunction.Valid#canCall($Heap, this);
    assume {:id "id970"} _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this);
    assume {:id "id971"} LitInt(0) <= x#0;
    assert {:id "id972"} b$reqreads#0;
    // Check well-formedness of the reads clause
    b$reqreads#1 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.Repr];
    assert {:id "id973"} b$reqreads#1;
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
        b$reqreads#2 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
        newtype$check#0 := null;
        if ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null)
        {
            b$reqreads#3 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.next];
            assert {:id "id974"} $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox(read($Heap, this, _module.DefaultDecreasesFunction.next), 
              Tclass._module.DefaultDecreasesFunction?(), 
              $Heap);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(this), Tclass._module.DefaultDecreasesFunction?(), $Heap);
            b$reqreads#4 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.data];
            ##x#1 := $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int;
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#1, TInt, $Heap);
            assume _module.DefaultDecreasesFunction.Abs#canCall(this, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int);
            ##x#0 := _module.DefaultDecreasesFunction.Abs(this, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int);
            // assume allocatedness for argument to function
            assume $IsAlloc(##x#0, TInt, $Heap);
            assert {:id "id975"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.Repr)): Set, 
                  read($Heap, this, _module.DefaultDecreasesFunction.next));
            assert {:id "id976"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || !Set#IsMember($Unbox(read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.Repr)): Set, 
                  $Box(null));
            assert {:id "id977"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    read($Heap, 
                      $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                      _module.DefaultDecreasesFunction.next)));
            assert {:id "id978"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> Set#Subset($Unbox(read($Heap, 
                        $Unbox(read($Heap, 
                            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                            _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set));
            assert {:id "id979"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> !Set#IsMember($Unbox(read($Heap, 
                        $Unbox(read($Heap, 
                            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                            _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    read($Heap, this, _module.DefaultDecreasesFunction.next)));
            assert {:id "id980"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                  $Heap, 
                  $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
                 || ($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref
                     != null
                   ==> _module.DefaultDecreasesFunction.Valid($LS($LS($LZ)), 
                    $Heap, 
                    $Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.next)): ref));
            assert {:id "id981"} {:subsumption 0} LitInt(0) <= ##x#0;
            assume _module.DefaultDecreasesFunction.Valid($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref)
               && LitInt(0) <= ##x#0;
            b$reqreads#5 := (forall $o: ref, $f: Field :: 
              $o != null
                   && $Unbox(read($Heap, $o, alloc)): bool
                   && ($o == $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref
                     || Set#IsMember($Unbox(read($Heap, 
                          $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                          _module.DefaultDecreasesFunction.Repr)): Set, 
                      $Box($o)))
                 ==> $_ReadsFrame[$o, $f]);
            assert {:id "id982"} 0 <= x#0
               || (Set#Subset(Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next))), 
                  Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next)))))
               || ##x#0 == x#0;
            assert {:id "id983"} (Set#Subset(Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next))), 
                  Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                  Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next)))))
               || (Set#Equal(Set#Union($Unbox(read($Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                        _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, read($Heap, this, _module.DefaultDecreasesFunction.next))), 
                  Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                    Set#UnionOne(Set#Empty(): Set, $Box(this))))
                 && ##x#0 < x#0);
            assume _module.DefaultDecreasesFunction.H#canCall($Heap, 
              $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
              _module.DefaultDecreasesFunction.Abs(this, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int));
            assume {:id "id984"} _module.DefaultDecreasesFunction.H($LS($LZ), $Heap, this, x#0)
               == _module.DefaultDecreasesFunction.H($LS($LZ), 
                $Heap, 
                $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                _module.DefaultDecreasesFunction.Abs(this, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int));
            assume _module.DefaultDecreasesFunction.Abs#canCall(this, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int)
               && _module.DefaultDecreasesFunction.H#canCall($Heap, 
                $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                _module.DefaultDecreasesFunction.Abs(this, $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int));
            // CheckWellformedWithResult: any expression
            assume $Is(_module.DefaultDecreasesFunction.H($LS($LZ), $Heap, this, x#0), TInt);
            assert {:id "id985"} b$reqreads#2;
            assert {:id "id986"} b$reqreads#3;
            assert {:id "id987"} b$reqreads#4;
            assert {:id "id988"} b$reqreads#5;
            return;
        }
        else
        {
            if (x#0 < 78)
            {
                b$reqreads#6 := $_ReadsFrame[this, _module.DefaultDecreasesFunction.data];
                assume {:id "id989"} _module.DefaultDecreasesFunction.H($LS($LZ), $Heap, this, x#0)
                   == $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.data)): int + x#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(_module.DefaultDecreasesFunction.H($LS($LZ), $Heap, this, x#0), TInt);
                assert {:id "id990"} b$reqreads#2;
                assert {:id "id991"} b$reqreads#3;
                assert {:id "id992"} b$reqreads#4;
                assert {:id "id993"} b$reqreads#5;
                assert {:id "id994"} b$reqreads#6;
                return;
            }
            else
            {
                // assume allocatedness for receiver argument to function
                assume $IsAllocBox($Box(this), Tclass._module.DefaultDecreasesFunction?(), $Heap);
                ##x#2 := x#0 - 1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##x#2, TInt, $Heap);
                assert {:id "id995"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, this)
                   ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this)
                     || Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                      $Box(this));
                assert {:id "id996"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, this)
                   ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this)
                     || !Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                      $Box(null));
                assert {:id "id997"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, this)
                   ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this)
                     || ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null
                       ==> Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        read($Heap, this, _module.DefaultDecreasesFunction.next)));
                assert {:id "id998"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, this)
                   ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this)
                     || ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null
                       ==> Set#Subset($Unbox(read($Heap, 
                            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                            _module.DefaultDecreasesFunction.Repr)): Set, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set));
                assert {:id "id999"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, this)
                   ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this)
                     || ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null
                       ==> !Set#IsMember($Unbox(read($Heap, 
                            $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref, 
                            _module.DefaultDecreasesFunction.Repr)): Set, 
                        $Box(this)));
                assert {:id "id1000"} {:subsumption 0} _module.DefaultDecreasesFunction.Valid#canCall($Heap, this)
                   ==> _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this)
                     || ($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref != null
                       ==> _module.DefaultDecreasesFunction.Valid($LS($LS($LZ)), 
                        $Heap, 
                        $Unbox(read($Heap, this, _module.DefaultDecreasesFunction.next)): ref));
                assert {:id "id1001"} {:subsumption 0} LitInt(0) <= ##x#2;
                assume _module.DefaultDecreasesFunction.Valid($LS($LZ), $Heap, this)
                   && LitInt(0) <= ##x#2;
                b$reqreads#7 := (forall $o: ref, $f: Field :: 
                  $o != null
                       && $Unbox(read($Heap, $o, alloc)): bool
                       && ($o == this
                         || Set#IsMember($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, $Box($o)))
                     ==> $_ReadsFrame[$o, $f]);
                assert {:id "id1002"} 0 <= x#0
                   || (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                      Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(this))))
                     && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                      Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(this)))))
                   || ##x#2 == x#0;
                assert {:id "id1003"} (Set#Subset(Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                      Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(this))))
                     && !Set#Subset(Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                      Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(this)))))
                   || (Set#Equal(Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(this))), 
                      Set#Union($Unbox(read($Heap, this, _module.DefaultDecreasesFunction.Repr)): Set, 
                        Set#UnionOne(Set#Empty(): Set, $Box(this))))
                     && ##x#2 < x#0);
                assume _module.DefaultDecreasesFunction.H#canCall($Heap, this, x#0 - 1);
                assume {:id "id1004"} _module.DefaultDecreasesFunction.H($LS($LZ), $Heap, this, x#0)
                   == _module.DefaultDecreasesFunction.H($LS($LZ), $Heap, this, x#0 - 1);
                assume _module.DefaultDecreasesFunction.H#canCall($Heap, this, x#0 - 1);
                // CheckWellformedWithResult: any expression
                assume $Is(_module.DefaultDecreasesFunction.H($LS($LZ), $Heap, this, x#0), TInt);
                assert {:id "id1005"} b$reqreads#2;
                assert {:id "id1006"} b$reqreads#3;
                assert {:id "id1007"} b$reqreads#4;
                assert {:id "id1008"} b$reqreads#5;
                assert {:id "id1009"} b$reqreads#6;
                assert {:id "id1010"} b$reqreads#7;
                return;
            }
        }

        assume false;
    }
}



// function declaration for _module.DefaultDecreasesFunction.Abs
function _module.DefaultDecreasesFunction.Abs(this: ref, x#0: int) : int
uses {
// definition axiom for _module.DefaultDecreasesFunction.Abs (revealed)
axiom {:id "id1011"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    { _module.DefaultDecreasesFunction.Abs(this, x#0) } 
    _module.DefaultDecreasesFunction.Abs#canCall(this, x#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DefaultDecreasesFunction()))
       ==> _module.DefaultDecreasesFunction.Abs(this, x#0)
         == (if x#0 < 0 then 0 - x#0 else x#0));
// definition axiom for _module.DefaultDecreasesFunction.Abs for decreasing-related literals (revealed)
axiom {:id "id1012"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.DefaultDecreasesFunction.Abs(this, LitInt(x#0)) } 
    _module.DefaultDecreasesFunction.Abs#canCall(this, LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DefaultDecreasesFunction()))
       ==> _module.DefaultDecreasesFunction.Abs(this, LitInt(x#0))
         == (if x#0 < 0 then 0 - x#0 else x#0));
// definition axiom for _module.DefaultDecreasesFunction.Abs for all literals (revealed)
axiom {:id "id1013"} 0 <= $FunctionContextHeight
   ==> (forall this: ref, x#0: int :: 
    {:weight 3} { _module.DefaultDecreasesFunction.Abs(Lit(this), LitInt(x#0)) } 
    _module.DefaultDecreasesFunction.Abs#canCall(Lit(this), LitInt(x#0))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DefaultDecreasesFunction()))
       ==> _module.DefaultDecreasesFunction.Abs(Lit(this), LitInt(x#0))
         == (if x#0 < 0 then 0 - x#0 else x#0));
}

function _module.DefaultDecreasesFunction.Abs#canCall(this: ref, x#0: int) : bool;

function _module.DefaultDecreasesFunction.Abs#requires(ref, int) : bool;

// #requires axiom for _module.DefaultDecreasesFunction.Abs
axiom (forall this: ref, x#0: int :: 
  { _module.DefaultDecreasesFunction.Abs#requires(this, x#0) } 
  this != null && $Is(this, Tclass._module.DefaultDecreasesFunction())
     ==> _module.DefaultDecreasesFunction.Abs#requires(this, x#0) == true);

procedure {:verboseName "DefaultDecreasesFunction.Abs (well-formedness)"} CheckWellformed$$_module.DefaultDecreasesFunction.Abs(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DefaultDecreasesFunction())
         && $IsAlloc(this, Tclass._module.DefaultDecreasesFunction(), $Heap), 
    x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// $Is axiom for non-null type _module.DefaultDecreasesFunction
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.DefaultDecreasesFunction()) } 
    { $Is(c#0, Tclass._module.DefaultDecreasesFunction?()) } 
  $Is(c#0, Tclass._module.DefaultDecreasesFunction())
     <==> $Is(c#0, Tclass._module.DefaultDecreasesFunction?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.DefaultDecreasesFunction
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.DefaultDecreasesFunction(), $h) } 
    { $IsAlloc(c#0, Tclass._module.DefaultDecreasesFunction?(), $h) } 
  $IsAlloc(c#0, Tclass._module.DefaultDecreasesFunction(), $h)
     <==> $IsAlloc(c#0, Tclass._module.DefaultDecreasesFunction?(), $h));

const unique class._module.C?: ClassName;

function Tclass._module.C?() : Ty
uses {
// Tclass._module.C? Tag
axiom Tag(Tclass._module.C?()) == Tagclass._module.C?
   && TagFamily(Tclass._module.C?()) == tytagFamily$C;
}

const unique Tagclass._module.C?: TyTag;

// Box/unbox axiom for Tclass._module.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C?()) } 
  $IsBox(bx, Tclass._module.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.C?()) } 
  $Is($o, Tclass._module.C?()) <==> $o == null || dtype($o) == Tclass._module.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.C?(), $h) } 
  $IsAlloc($o, Tclass._module.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.C.v: Field
uses {
axiom FDim(_module.C.v) == 0
   && FieldOfDecl(class._module.C?, field$v) == _module.C.v
   && !$IsGhostField(_module.C.v);
}

// C.v: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.v)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.C?()
     ==> $Is($Unbox(read($h, $o, _module.C.v)): int, Tclass._System.nat()));

// C.v: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.C.v)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.C.v)): int, Tclass._System.nat(), $h));

function Tclass._module.C() : Ty
uses {
// Tclass._module.C Tag
axiom Tag(Tclass._module.C()) == Tagclass._module.C
   && TagFamily(Tclass._module.C()) == tytagFamily$C;
}

const unique Tagclass._module.C: TyTag;

// Box/unbox axiom for Tclass._module.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.C()) } 
  $IsBox(bx, Tclass._module.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.C()));

procedure {:verboseName "C.Terminate (well-formedness)"} CheckWellFormed$$_module.C.Terminate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "C.Terminate (call)"} Call$$_module.C.Terminate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "C.Terminate (correctness)"} Impl$$_module.C.Terminate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.C())
         && $IsAlloc(this, Tclass._module.C(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "C.Terminate (correctness)"} Impl$$_module.C.Terminate(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0_0: int;

    // AddMethodImpl: Terminate, Impl$$_module.C.Terminate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(428,5)
    assume true;
    if ($Unbox(read($Heap, this, _module.C.v)): int != 0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(429,9)
        assume true;
        assert {:id "id1016"} $_ModifiesFrame[this, _module.C.v];
        assert {:id "id1017"} $Is($Unbox(read($Heap, this, _module.C.v)): int - 1, Tclass._System.nat());
        assume true;
        $rhs#0_0 := $Unbox(read($Heap, this, _module.C.v)): int - 1;
        $Heap := update($Heap, this, _module.C.v, $Box($rhs#0_0));
        assume $IsGoodHeap($Heap);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(430,16)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1020"} (forall $o: ref, $f: Field :: 
          $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == this
             ==> $_ModifiesFrame[$o, $f]);
        assert {:id "id1021"} 0 <= $Unbox(read(old($Heap), this, _module.C.v)): int
           || $Unbox(read($Heap, this, _module.C.v)): int
             == $Unbox(read(old($Heap), this, _module.C.v)): int;
        assert {:id "id1022"} $Unbox(read($Heap, this, _module.C.v)): int
           < $Unbox(read(old($Heap), this, _module.C.v)): int;
        call {:id "id1023"} Call$$_module.C.Terminate(this);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
    }
}



// $Is axiom for non-null type _module.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.C()) } { $Is(c#0, Tclass._module.C?()) } 
  $Is(c#0, Tclass._module.C()) <==> $Is(c#0, Tclass._module.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.C(), $h) } 
    { $IsAlloc(c#0, Tclass._module.C?(), $h) } 
  $IsAlloc(c#0, Tclass._module.C(), $h)
     <==> $IsAlloc(c#0, Tclass._module.C?(), $h));

// Constructor function declaration
function #_module.Tree.Empty() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Tree.Empty()) == ##_module.Tree.Empty;
// Constructor $Is
axiom $Is(#_module.Tree.Empty(), Tclass._module.Tree());
// Constructor literal
axiom #_module.Tree.Empty() == Lit(#_module.Tree.Empty());
}

const unique ##_module.Tree.Empty: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#_module.Tree.Empty()) == ##_module.Tree.Empty;
}

function _module.Tree.Empty_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Tree.Empty_q(d) } 
  _module.Tree.Empty_q(d) <==> DatatypeCtorId(d) == ##_module.Tree.Empty);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Tree.Empty_q(d) } 
  _module.Tree.Empty_q(d) ==> d == #_module.Tree.Empty());

// Constructor function declaration
function #_module.Tree.Node(int, DatatypeType, DatatypeType) : DatatypeType;

const unique ##_module.Tree.Node: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: int, a#4#1#0: DatatypeType, a#4#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#4#0#0, a#4#1#0, a#4#2#0) } 
  DatatypeCtorId(#_module.Tree.Node(a#4#0#0, a#4#1#0, a#4#2#0))
     == ##_module.Tree.Node);
}

function _module.Tree.Node_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Tree.Node_q(d) } 
  _module.Tree.Node_q(d) <==> DatatypeCtorId(d) == ##_module.Tree.Node);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Tree.Node_q(d) } 
  _module.Tree.Node_q(d)
     ==> (exists a#5#0#0: int, a#5#1#0: DatatypeType, a#5#2#0: DatatypeType :: 
      d == #_module.Tree.Node(a#5#0#0, a#5#1#0, a#5#2#0)));

// Constructor $Is
axiom (forall a#6#0#0: int, a#6#1#0: DatatypeType, a#6#2#0: DatatypeType :: 
  { $Is(#_module.Tree.Node(a#6#0#0, a#6#1#0, a#6#2#0), Tclass._module.Tree()) } 
  $Is(#_module.Tree.Node(a#6#0#0, a#6#1#0, a#6#2#0), Tclass._module.Tree())
     <==> $Is(a#6#0#0, TInt)
       && $Is(a#6#1#0, Tclass._module.Tree())
       && $Is(a#6#2#0, Tclass._module.Tree()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree.root(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Node_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree.root(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree.left(d), Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Node_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree.left(d), Tclass._module.Tree(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tree.right(d), Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tree.Node_q(d)
       && $IsAlloc(d, Tclass._module.Tree(), $h)
     ==> $IsAlloc(_module.Tree.right(d), Tclass._module.Tree(), $h));

// Constructor literal
axiom (forall a#7#0#0: int, a#7#1#0: DatatypeType, a#7#2#0: DatatypeType :: 
  { #_module.Tree.Node(LitInt(a#7#0#0), Lit(a#7#1#0), Lit(a#7#2#0)) } 
  #_module.Tree.Node(LitInt(a#7#0#0), Lit(a#7#1#0), Lit(a#7#2#0))
     == Lit(#_module.Tree.Node(a#7#0#0, a#7#1#0, a#7#2#0)));

function _module.Tree.root(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#8#0#0: int, a#8#1#0: DatatypeType, a#8#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#8#0#0, a#8#1#0, a#8#2#0) } 
  _module.Tree.root(#_module.Tree.Node(a#8#0#0, a#8#1#0, a#8#2#0)) == a#8#0#0);

function _module.Tree.left(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#9#0#0: int, a#9#1#0: DatatypeType, a#9#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#9#0#0, a#9#1#0, a#9#2#0) } 
  _module.Tree.left(#_module.Tree.Node(a#9#0#0, a#9#1#0, a#9#2#0)) == a#9#1#0);

// Inductive rank
axiom (forall a#10#0#0: int, a#10#1#0: DatatypeType, a#10#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#10#0#0, a#10#1#0, a#10#2#0) } 
  DtRank(a#10#1#0) < DtRank(#_module.Tree.Node(a#10#0#0, a#10#1#0, a#10#2#0)));

function _module.Tree.right(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#11#0#0: int, a#11#1#0: DatatypeType, a#11#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#11#0#0, a#11#1#0, a#11#2#0) } 
  _module.Tree.right(#_module.Tree.Node(a#11#0#0, a#11#1#0, a#11#2#0)) == a#11#2#0);

// Inductive rank
axiom (forall a#12#0#0: int, a#12#1#0: DatatypeType, a#12#2#0: DatatypeType :: 
  { #_module.Tree.Node(a#12#0#0, a#12#1#0, a#12#2#0) } 
  DtRank(a#12#2#0) < DtRank(#_module.Tree.Node(a#12#0#0, a#12#1#0, a#12#2#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Tree(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Tree())
     ==> $IsAlloc(d, Tclass._module.Tree(), $h));

// Depth-one case-split function
function $IsA#_module.Tree(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Tree(d) } 
  $IsA#_module.Tree(d) ==> _module.Tree.Empty_q(d) || _module.Tree.Node_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Tree.Node_q(d), $Is(d, Tclass._module.Tree()) } 
    { _module.Tree.Empty_q(d), $Is(d, Tclass._module.Tree()) } 
  $Is(d, Tclass._module.Tree())
     ==> _module.Tree.Empty_q(d) || _module.Tree.Node_q(d));

// Datatype extensional equality declaration
function _module.Tree#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Tree.Empty
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b), _module.Tree.Empty_q(a) } 
    { _module.Tree#Equal(a, b), _module.Tree.Empty_q(b) } 
  _module.Tree.Empty_q(a) && _module.Tree.Empty_q(b) ==> _module.Tree#Equal(a, b));

// Datatype extensional equality definition: #_module.Tree.Node
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b), _module.Tree.Node_q(a) } 
    { _module.Tree#Equal(a, b), _module.Tree.Node_q(b) } 
  _module.Tree.Node_q(a) && _module.Tree.Node_q(b)
     ==> (_module.Tree#Equal(a, b)
       <==> _module.Tree.root(a) == _module.Tree.root(b)
         && _module.Tree#Equal(_module.Tree.left(a), _module.Tree.left(b))
         && _module.Tree#Equal(_module.Tree.right(a), _module.Tree.right(b))));

// Datatype extensionality axiom: _module.Tree
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tree#Equal(a, b) } 
  _module.Tree#Equal(a, b) <==> a == b);

const unique class._module.Tree: ClassName;

// function declaration for _module.Tree.Elements
function _module.Tree.Elements($ly: LayerType, this: DatatypeType) : Set
uses {
// consequence axiom for _module.Tree.Elements
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: DatatypeType :: 
    { _module.Tree.Elements($ly, this) } 
    _module.Tree.Elements#canCall(this)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Tree()))
       ==> $Is(_module.Tree.Elements($ly, this), TSet(TInt)));
// definition axiom for _module.Tree.Elements (revealed)
axiom {:id "id1024"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: DatatypeType :: 
    { _module.Tree.Elements($LS($ly), this) } 
    _module.Tree.Elements#canCall(this)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Tree()))
       ==> (!_module.Tree.Empty_q(this)
           ==> (var right#1 := _module.Tree.right(this); 
            (var left#1 := _module.Tree.left(this); 
              _module.Tree.Elements#canCall(left#1) && _module.Tree.Elements#canCall(right#1))))
         && _module.Tree.Elements($LS($ly), this)
           == (if _module.Tree.Empty_q(this)
             then Set#Empty(): Set
             else (var right#0 := _module.Tree.right(this); 
              (var left#0 := _module.Tree.left(this); 
                (var x#0 := _module.Tree.root(this); 
                  Set#Union(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(x#0)), _module.Tree.Elements($ly, left#0)), 
                    _module.Tree.Elements($ly, right#0)))))));
// definition axiom for _module.Tree.Elements for all literals (revealed)
axiom {:id "id1025"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: DatatypeType :: 
    {:weight 3} { _module.Tree.Elements($LS($ly), Lit(this)) } 
    _module.Tree.Elements#canCall(Lit(this))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Tree()))
       ==> (!Lit(_module.Tree.Empty_q(Lit(this)))
           ==> (var right#3 := Lit(_module.Tree.right(Lit(this))); 
            (var left#3 := Lit(_module.Tree.left(Lit(this))); 
              _module.Tree.Elements#canCall(left#3) && _module.Tree.Elements#canCall(right#3))))
         && _module.Tree.Elements($LS($ly), Lit(this))
           == (if _module.Tree.Empty_q(Lit(this))
             then Set#Empty(): Set
             else (var right#2 := Lit(_module.Tree.right(Lit(this))); 
              (var left#2 := Lit(_module.Tree.left(Lit(this))); 
                (var x#2 := LitInt(_module.Tree.root(Lit(this))); 
                  Set#Union(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(x#2)), 
                      _module.Tree.Elements($LS($ly), left#2)), 
                    _module.Tree.Elements($LS($ly), right#2)))))));
}

function _module.Tree.Elements#canCall(this: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: DatatypeType :: 
  { _module.Tree.Elements($LS($ly), this) } 
  _module.Tree.Elements($LS($ly), this) == _module.Tree.Elements($ly, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: DatatypeType :: 
  { _module.Tree.Elements(AsFuelBottom($ly), this) } 
  _module.Tree.Elements($ly, this) == _module.Tree.Elements($LZ, this));

function _module.Tree.Elements#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.Tree.Elements
axiom (forall $ly: LayerType, this: DatatypeType :: 
  { _module.Tree.Elements#requires($ly, this) } 
  $Is(this, Tclass._module.Tree())
     ==> _module.Tree.Elements#requires($ly, this) == true);

procedure {:verboseName "Tree.Elements (well-formedness)"} CheckWellformed$$_module.Tree.Elements(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.Elements (well-formedness)"} CheckWellformed$$_module.Tree.Elements(this: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var right#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var left#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var x#Z#0: int;
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
        assume $Is(_module.Tree.Elements($LS($LZ), this), TSet(TInt));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (this == #_module.Tree.Empty())
        {
            assume {:id "id1035"} _module.Tree.Elements($LS($LZ), this) == Lit(Set#Empty(): Set);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Tree.Elements($LS($LZ), this), TSet(TInt));
            return;
        }
        else if (this == #_module.Tree.Node(_mcc#0#0, _mcc#1#0, _mcc#2#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.Tree());
            assume $Is(_mcc#2#0, Tclass._module.Tree());
            havoc right#Z#0;
            assume {:id "id1026"} let#0#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Tree());
            assume {:id "id1027"} right#Z#0 == let#0#0#0;
            havoc left#Z#0;
            assume {:id "id1028"} let#1#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Tree());
            assume {:id "id1029"} left#Z#0 == let#1#0#0;
            havoc x#Z#0;
            assume {:id "id1030"} let#2#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TInt);
            assume {:id "id1031"} x#Z#0 == let#2#0#0;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(left#Z#0), Tclass._module.Tree(), $Heap);
            assert {:id "id1032"} DtRank(left#Z#0) < DtRank(this);
            assume _module.Tree.Elements#canCall(left#Z#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(right#Z#0), Tclass._module.Tree(), $Heap);
            assert {:id "id1033"} DtRank(right#Z#0) < DtRank(this);
            assume _module.Tree.Elements#canCall(right#Z#0);
            assume {:id "id1034"} _module.Tree.Elements($LS($LZ), this)
               == Set#Union(Set#Union(Set#UnionOne(Set#Empty(): Set, $Box(x#Z#0)), 
                  _module.Tree.Elements($LS($LZ), left#Z#0)), 
                _module.Tree.Elements($LS($LZ), right#Z#0));
            assume _module.Tree.Elements#canCall(left#Z#0)
               && _module.Tree.Elements#canCall(right#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Tree.Elements($LS($LZ), this), TSet(TInt));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



// function declaration for _module.Tree.Sum
function _module.Tree.Sum($ly: LayerType, this: DatatypeType) : int
uses {
// definition axiom for _module.Tree.Sum (revealed)
axiom {:id "id1036"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: DatatypeType :: 
    { _module.Tree.Sum($LS($ly), this) } 
    _module.Tree.Sum#canCall(this)
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Tree()))
       ==> (!_module.Tree.Empty_q(this)
           ==> (var right#1 := _module.Tree.right(this); 
            (var left#1 := _module.Tree.left(this); 
              _module.Tree.Sum#canCall(left#1) && _module.Tree.Sum#canCall(right#1))))
         && _module.Tree.Sum($LS($ly), this)
           == (if _module.Tree.Empty_q(this)
             then 0
             else (var right#0 := _module.Tree.right(this); 
              (var left#0 := _module.Tree.left(this); 
                (var x#0 := _module.Tree.root(this); 
                  x#0 + _module.Tree.Sum($ly, left#0) + _module.Tree.Sum($ly, right#0))))));
// definition axiom for _module.Tree.Sum for all literals (revealed)
axiom {:id "id1037"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: DatatypeType :: 
    {:weight 3} { _module.Tree.Sum($LS($ly), Lit(this)) } 
    _module.Tree.Sum#canCall(Lit(this))
         || (1 < $FunctionContextHeight && $Is(this, Tclass._module.Tree()))
       ==> (!Lit(_module.Tree.Empty_q(Lit(this)))
           ==> (var right#3 := Lit(_module.Tree.right(Lit(this))); 
            (var left#3 := Lit(_module.Tree.left(Lit(this))); 
              _module.Tree.Sum#canCall(left#3) && _module.Tree.Sum#canCall(right#3))))
         && _module.Tree.Sum($LS($ly), Lit(this))
           == (if _module.Tree.Empty_q(Lit(this))
             then 0
             else (var right#2 := Lit(_module.Tree.right(Lit(this))); 
              (var left#2 := Lit(_module.Tree.left(Lit(this))); 
                (var x#2 := LitInt(_module.Tree.root(Lit(this))); 
                  LitInt(x#2 + _module.Tree.Sum($LS($ly), left#2) + _module.Tree.Sum($LS($ly), right#2)))))));
}

function _module.Tree.Sum#canCall(this: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: DatatypeType :: 
  { _module.Tree.Sum($LS($ly), this) } 
  _module.Tree.Sum($LS($ly), this) == _module.Tree.Sum($ly, this));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: DatatypeType :: 
  { _module.Tree.Sum(AsFuelBottom($ly), this) } 
  _module.Tree.Sum($ly, this) == _module.Tree.Sum($LZ, this));

function _module.Tree.Sum#requires(LayerType, DatatypeType) : bool;

// #requires axiom for _module.Tree.Sum
axiom (forall $ly: LayerType, this: DatatypeType :: 
  { _module.Tree.Sum#requires($ly, this) } 
  $Is(this, Tclass._module.Tree())
     ==> _module.Tree.Sum#requires($ly, this) == true);

procedure {:verboseName "Tree.Sum (well-formedness)"} CheckWellformed$$_module.Tree.Sum(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.Sum (well-formedness)"} CheckWellformed$$_module.Tree.Sum(this: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#0#0: int;
  var _mcc#1#0: DatatypeType;
  var _mcc#2#0: DatatypeType;
  var right#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var left#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var x#Z#0: int;
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
        if (this == #_module.Tree.Empty())
        {
            assume {:id "id1047"} _module.Tree.Sum($LS($LZ), this) == LitInt(0);
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Tree.Sum($LS($LZ), this), TInt);
            return;
        }
        else if (this == #_module.Tree.Node(_mcc#0#0, _mcc#1#0, _mcc#2#0))
        {
            assume $Is(_mcc#1#0, Tclass._module.Tree());
            assume $Is(_mcc#2#0, Tclass._module.Tree());
            havoc right#Z#0;
            assume {:id "id1038"} let#0#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass._module.Tree());
            assume {:id "id1039"} right#Z#0 == let#0#0#0;
            havoc left#Z#0;
            assume {:id "id1040"} let#1#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass._module.Tree());
            assume {:id "id1041"} left#Z#0 == let#1#0#0;
            havoc x#Z#0;
            assume {:id "id1042"} let#2#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, TInt);
            assume {:id "id1043"} x#Z#0 == let#2#0#0;
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(left#Z#0), Tclass._module.Tree(), $Heap);
            assert {:id "id1044"} DtRank(left#Z#0) < DtRank(this);
            assume _module.Tree.Sum#canCall(left#Z#0);
            // assume allocatedness for receiver argument to function
            assume $IsAllocBox($Box(right#Z#0), Tclass._module.Tree(), $Heap);
            assert {:id "id1045"} DtRank(right#Z#0) < DtRank(this);
            assume _module.Tree.Sum#canCall(right#Z#0);
            assume {:id "id1046"} _module.Tree.Sum($LS($LZ), this)
               == x#Z#0
                 + _module.Tree.Sum($LS($LZ), left#Z#0)
                 + _module.Tree.Sum($LS($LZ), right#Z#0);
            assume _module.Tree.Sum#canCall(left#Z#0) && _module.Tree.Sum#canCall(right#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(_module.Tree.Sum($LS($LZ), this), TInt);
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



procedure {:verboseName "Tree.ComputeSum (well-formedness)"} CheckWellFormed$$_module.Tree.ComputeSum(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns (s#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Tree.ComputeSum (call)"} Call$$_module.Tree.ComputeSum(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns (s#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Tree.ComputeSum (correctness)"} Impl$$_module.Tree.ComputeSum(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap), 
    n#0: int where LitInt(0) <= n#0)
   returns (s#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.ComputeSum (correctness)"} Impl$$_module.Tree.ComputeSum(this: DatatypeType, n#0: int) returns (s#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var _mcc#2#0_0: DatatypeType;
  var right#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var left#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var x#0_0: int;
  var let#0_2#0#0: int;
  var l#0_0_0: int;
  var $rhs##0_0_0: int;
  var n##0_0_0: int;
  var r#0_0_0: int;
  var $rhs##0_0_1: int;
  var n##0_0_1: int;
  var $rhs##0_1_0: int;
  var n##0_1_0: int;

    // AddMethodImpl: ComputeSum, Impl$$_module.Tree.ComputeSum
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0;
    if (this == #_module.Tree.Empty())
    {
        // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(479,7)
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(479,7)
        assume true;
        assume true;
        s#0 := LitInt(0);
        return;
    }
    else if (this == #_module.Tree.Node(_mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.Tree())
           && $IsAlloc(_mcc#1#0_0, Tclass._module.Tree(), $Heap);
        assume $Is(_mcc#2#0_0, Tclass._module.Tree())
           && $IsAlloc(_mcc#2#0_0, Tclass._module.Tree(), $Heap);
        havoc right#0_0;
        assume $Is(right#0_0, Tclass._module.Tree())
           && $IsAlloc(right#0_0, Tclass._module.Tree(), $Heap);
        assume {:id "id1048"} let#0_0#0#0 == _mcc#2#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Tree());
        assume {:id "id1049"} right#0_0 == let#0_0#0#0;
        havoc left#0_0;
        assume $Is(left#0_0, Tclass._module.Tree())
           && $IsAlloc(left#0_0, Tclass._module.Tree(), $Heap);
        assume {:id "id1050"} let#0_1#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.Tree());
        assume {:id "id1051"} left#0_0 == let#0_1#0#0;
        havoc x#0_0;
        assume {:id "id1052"} let#0_2#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_2#0#0, TInt);
        assume {:id "id1053"} x#0_0 == let#0_2#0#0;
        // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(481,7)
        assume true;
        if (n#0 == LitInt(0))
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(482,33)
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id1054"} $Is(LitInt(28), Tclass._System.nat());
            n##0_0_0 := LitInt(28);
            assert {:id "id1055"} 0 <= n#0 || DtRank(left#0_0) < DtRank(this) || n##0_0_0 == n#0;
            assert {:id "id1056"} DtRank(left#0_0) < DtRank(this)
               || (DtRank(left#0_0) == DtRank(this) && n##0_0_0 < n#0);
            call {:id "id1057"} $rhs##0_0_0 := Call$$_module.Tree.ComputeSum(left#0_0, n##0_0_0);
            // TrCallStmt: After ProcessCallStmt
            l#0_0_0 := $rhs##0_0_0;
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(483,34)
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id1059"} $Is(LitInt(19), Tclass._System.nat());
            n##0_0_1 := LitInt(19);
            assert {:id "id1060"} 0 <= n#0 || DtRank(right#0_0) < DtRank(this) || n##0_0_1 == n#0;
            assert {:id "id1061"} DtRank(right#0_0) < DtRank(this)
               || (DtRank(right#0_0) == DtRank(this) && n##0_0_1 < n#0);
            call {:id "id1062"} $rhs##0_0_1 := Call$$_module.Tree.ComputeSum(right#0_0, n##0_0_1);
            // TrCallStmt: After ProcessCallStmt
            r#0_0_0 := $rhs##0_0_1;
            // ----- return statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(484,9)
            // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(484,9)
            assume true;
            assume true;
            s#0 := x#0_0 + l#0_0_0 + r#0_0_0;
            return;
        }
        else
        {
            // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(486,24)
            assume true;
            // TrCallStmt: Adding lhs with type int
            // TrCallStmt: Before ProcessCallStmt
            assume true;
            assume true;
            // ProcessCallStmt: CheckSubrange
            assert {:id "id1065"} $Is(n#0 - 1, Tclass._System.nat());
            n##0_1_0 := n#0 - 1;
            assert {:id "id1066"} 0 <= n#0 || DtRank(this) < DtRank(this) || n##0_1_0 == n#0;
            assert {:id "id1067"} DtRank(this) < DtRank(this) || (DtRank(this) == DtRank(this) && n##0_1_0 < n#0);
            call {:id "id1068"} $rhs##0_1_0 := Call$$_module.Tree.ComputeSum(this, n##0_1_0);
            // TrCallStmt: After ProcessCallStmt
            s#0 := $rhs##0_1_0;
        }
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Tree.EvensSumToEven (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$_module.Tree.EvensSumToEven(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.EvensSumToEven (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$_module.Tree.EvensSumToEven(this: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var u#0: int;


    // AddMethodImpl: EvensSumToEven, CheckWellFormed$$_module.Tree.EvensSumToEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc u#0;
    assume true;
    if (*)
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Tree(), $Heap);
        assume _module.Tree.Elements#canCall(this);
        assume {:id "id1071"} Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#0));
        assert {:id "id1072"} LitInt(2) != 0;
        assume {:id "id1073"} Mod(u#0, LitInt(2)) == LitInt(0);
    }
    else
    {
        assume {:id "id1074"} Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#0))
           ==> Mod(u#0, LitInt(2)) == LitInt(0);
    }

    assume {:id "id1075"} (forall u#1: int :: 
      { Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#1)) } 
      Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#1))
         ==> Mod(u#1, LitInt(2)) == LitInt(0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Tree(), $Heap);
    assume _module.Tree.Sum#canCall(this);
    assert {:id "id1076"} LitInt(2) != 0;
    assume {:id "id1077"} Mod(_module.Tree.Sum($LS($LZ), this), LitInt(2)) == LitInt(0);
}



procedure {:verboseName "Tree.EvensSumToEven (call)"} {:vcs_split_on_every_assert} Call$$_module.Tree.EvensSumToEven(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap));
  // user-defined preconditions
  requires {:id "id1078"} (forall u#1: int :: 
    { Set#IsMember(_module.Tree.Elements($LS($LS($LZ)), this), $Box(u#1)) } 
    Set#IsMember(_module.Tree.Elements($LS($LS($LZ)), this), $Box(u#1))
       ==> Mod(u#1, LitInt(2)) == LitInt(0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Tree.Sum#canCall(this);
  ensures {:id "id1079"} Mod(_module.Tree.Sum($LS($LS($LZ)), this), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Tree.EvensSumToEven (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.Tree.EvensSumToEven(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1080"} (forall u#1: int :: 
    { Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#1)) } 
    Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#1))
       ==> Mod(u#1, LitInt(2)) == LitInt(0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Tree.Sum#canCall(this);
  ensures {:id "id1081"} Mod(_module.Tree.Sum($LS($LS($LZ)), this), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.EvensSumToEven (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.Tree.EvensSumToEven(this: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var _mcc#2#0_0: DatatypeType;
  var right#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var left#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var x#0_0: int;
  var let#0_2#0#0: int;

    // AddMethodImpl: EvensSumToEven, Impl$$_module.Tree.EvensSumToEven
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#this0#0: DatatypeType :: 
      { _module.Tree.Sum($LS($LZ), $ih#this0#0) } 
        { _module.Tree.Elements($LS($LZ), $ih#this0#0) } 
      $Is($ih#this0#0, Tclass._module.Tree())
           && (forall u#2: int :: 
            { Set#IsMember(_module.Tree.Elements($LS($LZ), $ih#this0#0), $Box(u#2)) } 
            Set#IsMember(_module.Tree.Elements($LS($LZ), $ih#this0#0), $Box(u#2))
               ==> Mod(u#2, LitInt(2)) == LitInt(0))
           && DtRank($ih#this0#0) < DtRank(this)
         ==> Mod(_module.Tree.Sum($LS($LZ), $ih#this0#0), LitInt(2)) == LitInt(0));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0;
    if (this == #_module.Tree.Empty())
    {
    }
    else if (this == #_module.Tree.Node(_mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.Tree());
        assume $Is(_mcc#2#0_0, Tclass._module.Tree());
        havoc right#0_0;
        assume $Is(right#0_0, Tclass._module.Tree())
           && $IsAlloc(right#0_0, Tclass._module.Tree(), $Heap);
        assume {:id "id1082"} let#0_0#0#0 == _mcc#2#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Tree());
        assume {:id "id1083"} right#0_0 == let#0_0#0#0;
        havoc left#0_0;
        assume $Is(left#0_0, Tclass._module.Tree())
           && $IsAlloc(left#0_0, Tclass._module.Tree(), $Heap);
        assume {:id "id1084"} let#0_1#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.Tree());
        assume {:id "id1085"} left#0_0 == let#0_1#0#0;
        havoc x#0_0;
        assume {:id "id1086"} let#0_2#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_2#0#0, TInt);
        assume {:id "id1087"} x#0_0 == let#0_2#0#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(498,7)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Tree(), $Heap);
        assume _module.Tree.Elements#canCall(this);
        assume _module.Tree.Elements#canCall(this);
        assert {:id "id1088"} {:subsumption 0} Set#IsMember(_module.Tree.Elements($LS($LS($LZ)), this), $Box(x#0_0));
        assume {:id "id1089"} Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(x#0_0));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(499,26)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1090"} DtRank(left#0_0) < DtRank(this);
        call {:id "id1091"} Call$$_module.Tree.EvensSumToEven(left#0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(500,27)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1092"} DtRank(right#0_0) < DtRank(this);
        call {:id "id1093"} Call$$_module.Tree.EvensSumToEven(right#0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Tree.EvensSumToEvenAutoInduction (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$_module.Tree.EvensSumToEvenAutoInduction(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.EvensSumToEvenAutoInduction (well-formedness)"} {:vcs_split_on_every_assert} CheckWellFormed$$_module.Tree.EvensSumToEvenAutoInduction(this: DatatypeType)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var u#0: int;


    // AddMethodImpl: EvensSumToEvenAutoInduction, CheckWellFormed$$_module.Tree.EvensSumToEvenAutoInduction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    havoc u#0;
    assume true;
    if (*)
    {
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Tree(), $Heap);
        assume _module.Tree.Elements#canCall(this);
        assume {:id "id1094"} Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#0));
        assert {:id "id1095"} LitInt(2) != 0;
        assume {:id "id1096"} Mod(u#0, LitInt(2)) == LitInt(0);
    }
    else
    {
        assume {:id "id1097"} Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#0))
           ==> Mod(u#0, LitInt(2)) == LitInt(0);
    }

    assume {:id "id1098"} (forall u#1: int :: 
      { Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#1)) } 
      Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#1))
         ==> Mod(u#1, LitInt(2)) == LitInt(0));
    havoc $Heap;
    assume old($Heap) == $Heap;
    // assume allocatedness for receiver argument to function
    assume $IsAllocBox($Box(this), Tclass._module.Tree(), $Heap);
    assume _module.Tree.Sum#canCall(this);
    assert {:id "id1099"} LitInt(2) != 0;
    assume {:id "id1100"} Mod(_module.Tree.Sum($LS($LZ), this), LitInt(2)) == LitInt(0);
}



procedure {:verboseName "Tree.EvensSumToEvenAutoInduction (call)"} {:vcs_split_on_every_assert} Call$$_module.Tree.EvensSumToEvenAutoInduction(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap));
  // user-defined preconditions
  requires {:id "id1101"} (forall u#1: int :: 
    { Set#IsMember(_module.Tree.Elements($LS($LS($LZ)), this), $Box(u#1)) } 
    Set#IsMember(_module.Tree.Elements($LS($LS($LZ)), this), $Box(u#1))
       ==> Mod(u#1, LitInt(2)) == LitInt(0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Tree.Sum#canCall(this);
  ensures {:id "id1102"} Mod(_module.Tree.Sum($LS($LS($LZ)), this), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Tree.EvensSumToEvenAutoInduction (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.Tree.EvensSumToEvenAutoInduction(this: DatatypeType
       where $Is(this, Tclass._module.Tree()) && $IsAlloc(this, Tclass._module.Tree(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id1103"} (forall u#1: int :: 
    { Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#1)) } 
    Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(u#1))
       ==> Mod(u#1, LitInt(2)) == LitInt(0));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Tree.Sum#canCall(this);
  ensures {:id "id1104"} Mod(_module.Tree.Sum($LS($LS($LZ)), this), LitInt(2)) == LitInt(0);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Tree.EvensSumToEvenAutoInduction (correctness)"} {:vcs_split_on_every_assert} Impl$$_module.Tree.EvensSumToEvenAutoInduction(this: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _mcc#0#0_0: int;
  var _mcc#1#0_0: DatatypeType;
  var _mcc#2#0_0: DatatypeType;
  var right#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var left#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var x#0_0: int;
  var let#0_2#0#0: int;

    // AddMethodImpl: EvensSumToEvenAutoInduction, Impl$$_module.Tree.EvensSumToEvenAutoInduction
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#this0#0: DatatypeType :: 
      { _module.Tree.Sum($LS($LZ), $ih#this0#0) } 
        { _module.Tree.Elements($LS($LZ), $ih#this0#0) } 
      $Is($ih#this0#0, Tclass._module.Tree())
           && (forall u#2: int :: 
            { Set#IsMember(_module.Tree.Elements($LS($LZ), $ih#this0#0), $Box(u#2)) } 
            Set#IsMember(_module.Tree.Elements($LS($LZ), $ih#this0#0), $Box(u#2))
               ==> Mod(u#2, LitInt(2)) == LitInt(0))
           && DtRank($ih#this0#0) < DtRank(this)
         ==> Mod(_module.Tree.Sum($LS($LZ), $ih#this0#0), LitInt(2)) == LitInt(0));
    $_reverifyPost := false;
    assume true;
    havoc _mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0;
    if (this == #_module.Tree.Empty())
    {
    }
    else if (this == #_module.Tree.Node(_mcc#0#0_0, _mcc#1#0_0, _mcc#2#0_0))
    {
        assume $Is(_mcc#1#0_0, Tclass._module.Tree());
        assume $Is(_mcc#2#0_0, Tclass._module.Tree());
        havoc right#0_0;
        assume $Is(right#0_0, Tclass._module.Tree())
           && $IsAlloc(right#0_0, Tclass._module.Tree(), $Heap);
        assume {:id "id1105"} let#0_0#0#0 == _mcc#2#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass._module.Tree());
        assume {:id "id1106"} right#0_0 == let#0_0#0#0;
        havoc left#0_0;
        assume $Is(left#0_0, Tclass._module.Tree())
           && $IsAlloc(left#0_0, Tclass._module.Tree(), $Heap);
        assume {:id "id1107"} let#0_1#0#0 == _mcc#1#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass._module.Tree());
        assume {:id "id1108"} left#0_0 == let#0_1#0#0;
        havoc x#0_0;
        assume {:id "id1109"} let#0_2#0#0 == _mcc#0#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_2#0#0, TInt);
        assume {:id "id1110"} x#0_0 == let#0_2#0#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(511,7)
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), Tclass._module.Tree(), $Heap);
        assume _module.Tree.Elements#canCall(this);
        assume _module.Tree.Elements#canCall(this);
        assert {:id "id1111"} {:subsumption 0} Set#IsMember(_module.Tree.Elements($LS($LS($LZ)), this), $Box(x#0_0));
        assume {:id "id1112"} Set#IsMember(_module.Tree.Elements($LS($LZ), this), $Box(x#0_0));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(512,39)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1113"} DtRank(left#0_0) < DtRank(this);
        call {:id "id1114"} Call$$_module.Tree.EvensSumToEvenAutoInduction(left#0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Termination.dfy(513,40)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assert {:id "id1115"} DtRank(right#0_0) < DtRank(this);
        call {:id "id1116"} Call$$_module.Tree.EvensSumToEvenAutoInduction(right#0_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



const unique class._module.ZOT: ClassName;

procedure {:verboseName "SubZOT (well-formedness)"} CheckWellFormed$$_module.SubZOT(z#0: Box);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SubZOT (well-formedness)"} CheckWellFormed$$_module.SubZOT(z#0: Box)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for subset type SubZOT
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of subset type constraint
        assume $IsBox(z#0, Tclass._module.ZOT());
        assume {:id "id1117"} true;
        assume false;
    }

    if (*)
    {
        // check well-formedness of subset type witness, and that it satisfies the constraint
        assert {:id "id1118"} false;
        assume false;
    }
}



// $Is axiom for subset type _module.SubZOT
axiom (forall z#0: Box :: 
  { $IsBox(z#0, Tclass._module.SubZOT()) } 
  $IsBox(z#0, Tclass._module.SubZOT())
     <==> $IsBox(z#0, Tclass._module.ZOT()) && Lit(true));

// $IsAlloc axiom for subset type _module.SubZOT
axiom (forall z#0: Box, $h: Heap :: 
  { $IsAllocBox(z#0, Tclass._module.SubZOT(), $h) } 
  $IsAllocBox(z#0, Tclass._module.SubZOT(), $h)
     <==> $IsAllocBox(z#0, Tclass._module.ZOT(), $h));

// Constructor function declaration
function #_module.Forever.More(DatatypeType) : DatatypeType;

const unique ##_module.Forever.More: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: DatatypeType :: 
  { #_module.Forever.More(a#0#0#0) } 
  DatatypeCtorId(#_module.Forever.More(a#0#0#0)) == ##_module.Forever.More);
}

function _module.Forever.More_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Forever.More_q(d) } 
  _module.Forever.More_q(d) <==> DatatypeCtorId(d) == ##_module.Forever.More);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Forever.More_q(d) } 
  _module.Forever.More_q(d)
     ==> (exists a#1#0#0: DatatypeType :: d == #_module.Forever.More(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: DatatypeType :: 
  { $Is(#_module.Forever.More(a#2#0#0), Tclass._module.Forever()) } 
  $Is(#_module.Forever.More(a#2#0#0), Tclass._module.Forever())
     <==> $Is(a#2#0#0, Tclass._module.Forever()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Forever.next(d), Tclass._module.Forever(), $h) } 
  $IsGoodHeap($h)
       && 
      _module.Forever.More_q(d)
       && $IsAlloc(d, Tclass._module.Forever(), $h)
     ==> $IsAlloc(_module.Forever.next(d), Tclass._module.Forever(), $h));

function _module.Forever.next(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#3#0#0: DatatypeType :: 
  { #_module.Forever.More(a#3#0#0) } 
  _module.Forever.next(#_module.Forever.More(a#3#0#0)) == a#3#0#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass._module.Forever(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass._module.Forever())
     ==> $IsAlloc(d, Tclass._module.Forever(), $h));

// Depth-one case-split function
function $IsA#_module.Forever(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Forever(d) } 
  $IsA#_module.Forever(d) ==> _module.Forever.More_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { _module.Forever.More_q(d), $Is(d, Tclass._module.Forever()) } 
  $Is(d, Tclass._module.Forever()) ==> _module.Forever.More_q(d));

function $Eq#_module.Forever(LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Forever($LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Forever()) && $Is(d1, Tclass._module.Forever())
     ==> ($Eq#_module.Forever($LS(ly), d0, d1)
       <==> _module.Forever.More_q(d0)
         && _module.Forever.More_q(d1)
         && (_module.Forever.More_q(d0) && _module.Forever.More_q(d1)
           ==> $Eq#_module.Forever(ly, _module.Forever.next(d0), _module.Forever.next(d1)))));

// Unbump layer co-equality axiom
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Forever($LS(ly), d0, d1) } 
  $Eq#_module.Forever($LS(ly), d0, d1) <==> $Eq#_module.Forever(ly, d0, d1));

// Equality for codatatypes
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Forever($LS(ly), d0, d1) } 
  $Eq#_module.Forever($LS(ly), d0, d1) <==> d0 == d1);

function $PrefixEq#_module.Forever(Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.Forever(k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass._module.Forever()) && $Is(d1, Tclass._module.Forever())
     ==> ($PrefixEq#_module.Forever(k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> _module.Forever.More_q(d0)
             && _module.Forever.More_q(d1)
             && (_module.Forever.More_q(d0) && _module.Forever.More_q(d1)
               ==> $PrefixEq#_module.Forever(ORD#Minus(k, ORD#FromNat(1)), 
                ly, 
                _module.Forever.next(d0), 
                _module.Forever.next(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k) ==> $Eq#_module.Forever(ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.Forever(k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#_module.Forever(k, $LS(ly), d0, d1)
       <==> $PrefixEq#_module.Forever(k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Forever($LS(ly), d0, d1) } 
  $Eq#_module.Forever($LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#_module.Forever(k, $LS(ly), d0, d1) } 
      $PrefixEq#_module.Forever(k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $Eq#_module.Forever($LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#_module.Forever(ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k ==> $PrefixEq#_module.Forever(ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#_module.Forever($LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType, m: Box :: 
  { $PrefixEq#_module.Forever(k, $LS(ly), d0, d1), $PrefixEq#_module.Forever(m, $LS(ly), d0, d1) } 
  ORD#Less(k, m) && $PrefixEq#_module.Forever(m, $LS(ly), d0, d1)
     ==> $PrefixEq#_module.Forever(k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall k: Box, ly: LayerType, d0: DatatypeType, d1: DatatypeType :: 
  { $PrefixEq#_module.Forever(k, $LS(ly), d0, d1) } 
  d0 == d1 ==> $PrefixEq#_module.Forever(k, $LS(ly), d0, d1));

const unique class._module.Forever: ClassName;

procedure {:verboseName "QuitePositive (well-formedness)"} CheckWellFormed$$_module.QuitePositive(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "QuitePositive (well-formedness)"} CheckWellFormed$$_module.QuitePositive(x#0: int)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype QuitePositive
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume {:id "id1119"} LitInt(23) <= x#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1120"} LitInt(23) <= LitInt(29);
        assume false;
    }
}



function Tclass._module.QuitePositive() : Ty
uses {
// Tclass._module.QuitePositive Tag
axiom Tag(Tclass._module.QuitePositive()) == Tagclass._module.QuitePositive
   && TagFamily(Tclass._module.QuitePositive()) == tytagFamily$QuitePositive;
}

const unique Tagclass._module.QuitePositive: TyTag;

// Box/unbox axiom for Tclass._module.QuitePositive
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.QuitePositive()) } 
  $IsBox(bx, Tclass._module.QuitePositive())
     ==> $Box($Unbox(bx): int) == bx
       && $Is($Unbox(bx): int, Tclass._module.QuitePositive()));

// $Is axiom for newtype _module.QuitePositive
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass._module.QuitePositive()) } 
  $Is(x#0, Tclass._module.QuitePositive()) <==> LitInt(23) <= x#0);

// $IsAlloc axiom for newtype _module.QuitePositive
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass._module.QuitePositive(), $h) } 
  $IsAlloc(x#0, Tclass._module.QuitePositive(), $h));

const unique class._module.QuitePositive: ClassName;

procedure {:verboseName "SoReal (well-formedness)"} CheckWellFormed$$_module.SoReal(r#0: real);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SoReal (well-formedness)"} CheckWellFormed$$_module.SoReal(r#0: real)
{
  var $_ReadsFrame: [ref,Field]bool;


    // AddWellformednessCheck for newtype SoReal
    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    if (*)
    {
        // check well-formedness of newtype constraint
        assume {:id "id1121"} LitReal(1e1) <= r#0;
        assume false;
    }

    if (*)
    {
        // check well-formedness of newtype witness, and that it satisfies the constraint
        assume true;
        assert {:id "id1122"} LitReal(1e1) <= LitReal(122e-1);
        assume false;
    }
}



function Tclass._module.SoReal() : Ty
uses {
// Tclass._module.SoReal Tag
axiom Tag(Tclass._module.SoReal()) == Tagclass._module.SoReal
   && TagFamily(Tclass._module.SoReal()) == tytagFamily$SoReal;
}

const unique Tagclass._module.SoReal: TyTag;

// Box/unbox axiom for Tclass._module.SoReal
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.SoReal()) } 
  $IsBox(bx, Tclass._module.SoReal())
     ==> $Box($Unbox(bx): real) == bx && $Is($Unbox(bx): real, Tclass._module.SoReal()));

// $Is axiom for newtype _module.SoReal
axiom (forall r#0: real :: 
  { $Is(r#0, Tclass._module.SoReal()) } 
  $Is(r#0, Tclass._module.SoReal()) <==> LitReal(1e1) <= r#0);

// $IsAlloc axiom for newtype _module.SoReal
axiom (forall r#0: real, $h: Heap :: 
  { $IsAlloc(r#0, Tclass._module.SoReal(), $h) } 
  $IsAlloc(r#0, Tclass._module.SoReal(), $h));

const unique class._module.SoReal: ClassName;

const unique class.MultisetTests.__default: ClassName;

// function declaration for MultisetTests._default.F
function MultisetTests.__default.F($ly: LayerType, a#0: MultiSet, n#0: int) : int;

function MultisetTests.__default.F#canCall(a#0: MultiSet, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: MultiSet, n#0: int :: 
  { MultisetTests.__default.F($LS($ly), a#0, n#0) } 
  MultisetTests.__default.F($LS($ly), a#0, n#0)
     == MultisetTests.__default.F($ly, a#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: MultiSet, n#0: int :: 
  { MultisetTests.__default.F(AsFuelBottom($ly), a#0, n#0) } 
  MultisetTests.__default.F($ly, a#0, n#0)
     == MultisetTests.__default.F($LZ, a#0, n#0));

function MultisetTests.__default.F#requires(LayerType, MultiSet, int) : bool;

// #requires axiom for MultisetTests.__default.F
axiom (forall $ly: LayerType, a#0: MultiSet, n#0: int :: 
  { MultisetTests.__default.F#requires($ly, a#0, n#0) } 
  $Is(a#0, TMultiSet(TInt)) && LitInt(0) <= n#0
     ==> MultisetTests.__default.F#requires($ly, a#0, n#0) == true);

// definition axiom for MultisetTests.__default.F (revealed)
axiom {:id "id1123"} (forall $ly: LayerType, a#0: MultiSet, n#0: int :: 
  { MultisetTests.__default.F($LS($ly), a#0, n#0) } 
  MultisetTests.__default.F#canCall(a#0, n#0)
       || ($Is(a#0, TMultiSet(TInt)) && LitInt(0) <= n#0)
     ==> (n#0 != LitInt(0) ==> MultisetTests.__default.F#canCall(a#0, n#0 - 1))
       && MultisetTests.__default.F($LS($ly), a#0, n#0)
         == (if n#0 == LitInt(0) then 0 else MultisetTests.__default.F($ly, a#0, n#0 - 1)));

// definition axiom for MultisetTests.__default.F for all literals (revealed)
axiom {:id "id1124"} (forall $ly: LayerType, a#0: MultiSet, n#0: int :: 
  {:weight 3} { MultisetTests.__default.F($LS($ly), Lit(a#0), LitInt(n#0)) } 
  MultisetTests.__default.F#canCall(Lit(a#0), LitInt(n#0))
       || ($Is(a#0, TMultiSet(TInt)) && LitInt(0) <= n#0)
     ==> (LitInt(n#0) != LitInt(0)
         ==> MultisetTests.__default.F#canCall(Lit(a#0), LitInt(n#0 - 1)))
       && MultisetTests.__default.F($LS($ly), Lit(a#0), LitInt(n#0))
         == (if LitInt(n#0) == LitInt(0)
           then 0
           else MultisetTests.__default.F($LS($ly), Lit(a#0), LitInt(n#0 - 1))));

// function declaration for MultisetTests._default.F'
function MultisetTests.__default.F_k($ly: LayerType, a#0: MultiSet, n#0: int) : int;

function MultisetTests.__default.F_k#canCall(a#0: MultiSet, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: MultiSet, n#0: int :: 
  { MultisetTests.__default.F_k($LS($ly), a#0, n#0) } 
  MultisetTests.__default.F_k($LS($ly), a#0, n#0)
     == MultisetTests.__default.F_k($ly, a#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: MultiSet, n#0: int :: 
  { MultisetTests.__default.F_k(AsFuelBottom($ly), a#0, n#0) } 
  MultisetTests.__default.F_k($ly, a#0, n#0)
     == MultisetTests.__default.F_k($LZ, a#0, n#0));

function MultisetTests.__default.F_k#requires(LayerType, MultiSet, int) : bool;

// #requires axiom for MultisetTests.__default.F_k
axiom (forall $ly: LayerType, a#0: MultiSet, n#0: int :: 
  { MultisetTests.__default.F_k#requires($ly, a#0, n#0) } 
  $Is(a#0, TMultiSet(TInt)) && LitInt(0) <= n#0
     ==> MultisetTests.__default.F_k#requires($ly, a#0, n#0) == true);

// definition axiom for MultisetTests.__default.F_k (revealed)
axiom {:id "id1125"} (forall $ly: LayerType, a#0: MultiSet, n#0: int :: 
  { MultisetTests.__default.F_k($LS($ly), a#0, n#0) } 
  MultisetTests.__default.F_k#canCall(a#0, n#0)
       || ($Is(a#0, TMultiSet(TInt)) && LitInt(0) <= n#0)
     ==> (n#0 != LitInt(0) ==> MultisetTests.__default.F_k#canCall(a#0, n#0 - 1))
       && MultisetTests.__default.F_k($LS($ly), a#0, n#0)
         == (if n#0 == LitInt(0) then 0 else MultisetTests.__default.F_k($ly, a#0, n#0 - 1)));

// definition axiom for MultisetTests.__default.F_k for all literals (revealed)
axiom {:id "id1126"} (forall $ly: LayerType, a#0: MultiSet, n#0: int :: 
  {:weight 3} { MultisetTests.__default.F_k($LS($ly), Lit(a#0), LitInt(n#0)) } 
  MultisetTests.__default.F_k#canCall(Lit(a#0), LitInt(n#0))
       || ($Is(a#0, TMultiSet(TInt)) && LitInt(0) <= n#0)
     ==> (LitInt(n#0) != LitInt(0)
         ==> MultisetTests.__default.F_k#canCall(Lit(a#0), LitInt(n#0 - 1)))
       && MultisetTests.__default.F_k($LS($ly), Lit(a#0), LitInt(n#0))
         == (if LitInt(n#0) == LitInt(0)
           then 0
           else MultisetTests.__default.F_k($LS($ly), Lit(a#0), LitInt(n#0 - 1))));

const unique class.MapTests.__default: ClassName;

// function declaration for MapTests._default.F
function MapTests.__default.F($ly: LayerType, a#0: Map, n#0: int) : int;

function MapTests.__default.F#canCall(a#0: Map, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: Map, n#0: int :: 
  { MapTests.__default.F($LS($ly), a#0, n#0) } 
  MapTests.__default.F($LS($ly), a#0, n#0) == MapTests.__default.F($ly, a#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: Map, n#0: int :: 
  { MapTests.__default.F(AsFuelBottom($ly), a#0, n#0) } 
  MapTests.__default.F($ly, a#0, n#0) == MapTests.__default.F($LZ, a#0, n#0));

function MapTests.__default.F#requires(LayerType, Map, int) : bool;

// #requires axiom for MapTests.__default.F
axiom (forall $ly: LayerType, a#0: Map, n#0: int :: 
  { MapTests.__default.F#requires($ly, a#0, n#0) } 
  $Is(a#0, TMap(TInt, TInt)) && LitInt(0) <= n#0
     ==> MapTests.__default.F#requires($ly, a#0, n#0) == true);

// definition axiom for MapTests.__default.F (revealed)
axiom {:id "id1127"} (forall $ly: LayerType, a#0: Map, n#0: int :: 
  { MapTests.__default.F($LS($ly), a#0, n#0) } 
  MapTests.__default.F#canCall(a#0, n#0)
       || ($Is(a#0, TMap(TInt, TInt)) && LitInt(0) <= n#0)
     ==> (n#0 != LitInt(0) ==> MapTests.__default.F#canCall(a#0, n#0 - 1))
       && MapTests.__default.F($LS($ly), a#0, n#0)
         == (if n#0 == LitInt(0) then 0 else MapTests.__default.F($ly, a#0, n#0 - 1)));

// definition axiom for MapTests.__default.F for all literals (revealed)
axiom {:id "id1128"} (forall $ly: LayerType, a#0: Map, n#0: int :: 
  {:weight 3} { MapTests.__default.F($LS($ly), Lit(a#0), LitInt(n#0)) } 
  MapTests.__default.F#canCall(Lit(a#0), LitInt(n#0))
       || ($Is(a#0, TMap(TInt, TInt)) && LitInt(0) <= n#0)
     ==> (LitInt(n#0) != LitInt(0)
         ==> MapTests.__default.F#canCall(Lit(a#0), LitInt(n#0 - 1)))
       && MapTests.__default.F($LS($ly), Lit(a#0), LitInt(n#0))
         == (if LitInt(n#0) == LitInt(0)
           then 0
           else MapTests.__default.F($LS($ly), Lit(a#0), LitInt(n#0 - 1))));

// function declaration for MapTests._default.F'
function MapTests.__default.F_k($ly: LayerType, a#0: Map, n#0: int) : int;

function MapTests.__default.F_k#canCall(a#0: Map, n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, a#0: Map, n#0: int :: 
  { MapTests.__default.F_k($LS($ly), a#0, n#0) } 
  MapTests.__default.F_k($LS($ly), a#0, n#0)
     == MapTests.__default.F_k($ly, a#0, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, a#0: Map, n#0: int :: 
  { MapTests.__default.F_k(AsFuelBottom($ly), a#0, n#0) } 
  MapTests.__default.F_k($ly, a#0, n#0) == MapTests.__default.F_k($LZ, a#0, n#0));

function MapTests.__default.F_k#requires(LayerType, Map, int) : bool;

// #requires axiom for MapTests.__default.F_k
axiom (forall $ly: LayerType, a#0: Map, n#0: int :: 
  { MapTests.__default.F_k#requires($ly, a#0, n#0) } 
  $Is(a#0, TMap(TInt, TInt)) && LitInt(0) <= n#0
     ==> MapTests.__default.F_k#requires($ly, a#0, n#0) == true);

// definition axiom for MapTests.__default.F_k (revealed)
axiom {:id "id1129"} (forall $ly: LayerType, a#0: Map, n#0: int :: 
  { MapTests.__default.F_k($LS($ly), a#0, n#0) } 
  MapTests.__default.F_k#canCall(a#0, n#0)
       || ($Is(a#0, TMap(TInt, TInt)) && LitInt(0) <= n#0)
     ==> (n#0 != LitInt(0) ==> MapTests.__default.F_k#canCall(a#0, n#0 - 1))
       && MapTests.__default.F_k($LS($ly), a#0, n#0)
         == (if n#0 == LitInt(0) then 0 else MapTests.__default.F_k($ly, a#0, n#0 - 1)));

// definition axiom for MapTests.__default.F_k for all literals (revealed)
axiom {:id "id1130"} (forall $ly: LayerType, a#0: Map, n#0: int :: 
  {:weight 3} { MapTests.__default.F_k($LS($ly), Lit(a#0), LitInt(n#0)) } 
  MapTests.__default.F_k#canCall(Lit(a#0), LitInt(n#0))
       || ($Is(a#0, TMap(TInt, TInt)) && LitInt(0) <= n#0)
     ==> (LitInt(n#0) != LitInt(0)
         ==> MapTests.__default.F_k#canCall(Lit(a#0), LitInt(n#0 - 1)))
       && MapTests.__default.F_k($LS($ly), Lit(a#0), LitInt(n#0))
         == (if LitInt(n#0) == LitInt(0)
           then 0
           else MapTests.__default.F_k($LS($ly), Lit(a#0), LitInt(n#0 - 1))));

const unique class.TerminationRefinement0.__default: ClassName;

const unique class.TerminationRefinement1.__default: ClassName;

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

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Tree: TyTagFamily;

const unique tytagFamily$SubZOT: TyTagFamily;

const unique tytagFamily$Forever: TyTagFamily;

const unique tytagFamily$Termination: TyTagFamily;

const unique tytagFamily$Node: TyTagFamily;

const unique tytagFamily$TopElements: TyTagFamily;

const unique tytagFamily$DefaultDecreasesFunction: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$QuitePositive: TyTagFamily;

const unique tytagFamily$SoReal: TyTagFamily;

const unique field$next: NameFamily;

const unique field$footprint: NameFamily;

const unique field$count: NameFamily;

const unique field$data: NameFamily;

const unique field$Repr: NameFamily;

const unique field$v: NameFamily;
