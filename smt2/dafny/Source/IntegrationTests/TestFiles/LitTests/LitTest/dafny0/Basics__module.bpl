// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy

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

procedure {:verboseName "TestCalls (well-formedness)"} CheckWellFormed$$_module.__default.TestCalls(k#0: int where LitInt(0) <= k#0);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestCalls (call)"} Call$$_module.__default.TestCalls(k#0: int where LitInt(0) <= k#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestCalls (correctness)"} Impl$$_module.__default.TestCalls(k#0: int where LitInt(0) <= k#0) returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Global?() : Ty
uses {
// Tclass._module.Global? Tag
axiom Tag(Tclass._module.Global?()) == Tagclass._module.Global?
   && TagFamily(Tclass._module.Global?()) == tytagFamily$Global;
}

const unique Tagclass._module.Global?: TyTag;

// Box/unbox axiom for Tclass._module.Global?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Global?()) } 
  $IsBox(bx, Tclass._module.Global?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Global?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestCalls (correctness)"} Impl$$_module.__default.TestCalls(k#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var g#0: ref
     where $Is(g#0, Tclass._module.Global?())
       && $IsAlloc(g#0, Tclass._module.Global?(), $Heap);
  var h#0: ref
     where $Is(h#0, Tclass._module.Global?())
       && $IsAlloc(h#0, Tclass._module.Global?(), $Heap);
  var r#0: int;
  var s#0: int;
  var ##x#0: int;
  var $rhs##0: int;
  var x##0: int;
  var $rhs##1: int;
  var x##1: int;
  var $rhs##2: int;
  var x##2: int;
  var newtype$check#0: ref;
  var $rhs##3: int;
  var x##3: int;
  var $rhs##4: int;
  var x##4: int;

    // AddMethodImpl: TestCalls, Impl$$_module.__default.TestCalls
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc g#0 /* where $Is(g#0, Tclass._module.Global?())
       && $IsAlloc(g#0, Tclass._module.Global?(), $Heap) */, h#0 /* where $Is(h#0, Tclass._module.Global?())
       && $IsAlloc(h#0, Tclass._module.Global?(), $Heap) */;
    // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(25,3)
    assume true;
    assume {:id "id294"} g#0 != h#0;
    havoc r#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(27,15)
    assume true;
    ##x#0 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##x#0, TInt, $Heap);
    assume _module.Global.G#canCall(k#0);
    assume _module.Global.G#canCall(k#0);
    s#0 := _module.Global.G(k#0);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(29,16)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := k#0;
    call {:id "id296"} $rhs##0 := Call$$_module.Global.N(x##0);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(30,3)
    assume true;
    assert {:id "id298"} r#0 == s#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(32,11)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##1 := k#0;
    call {:id "id299"} $rhs##1 := Call$$_module.Global.N(x##1);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(33,3)
    assume true;
    assert {:id "id301"} r#0 == s#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(34,11)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##2 := k#0;
    call {:id "id302"} $rhs##2 := Call$$_module.Global.N(x##2);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##2;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(35,3)
    assume true;
    assert {:id "id304"} r#0 == s#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(37,5)
    assume true;
    newtype$check#0 := null;
    assume true;
    g#0 := null;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(38,11)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##3 := k#0;
    call {:id "id306"} $rhs##3 := Call$$_module.Global.N(x##3);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##3;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(39,3)
    assume true;
    assert {:id "id308"} r#0 == s#0;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(41,16)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##4 := r#0;
    call {:id "id309"} $rhs##4 := Call$$_module.Global.N(x##4);
    // TrCallStmt: After ProcessCallStmt
    r#0 := $rhs##4;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(42,3)
    assume true;
    if (k#0 == LitInt(0))
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(43,5)
        assume true;
        assert {:id "id311"} r#0 == s#0;
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(45,5)
        assume true;
        assert {:id "id312"} r#0 == s#0;
    }
}



// function declaration for _module._default.UpTruth
function _module.__default.UpTruth(j#0: int, k#0: int) : bool
uses {
// definition axiom for _module.__default.UpTruth (revealed)
axiom {:id "id313"} 0 <= $FunctionContextHeight
   ==> (forall j#0: int, k#0: int :: 
    { _module.__default.UpTruth(j#0, k#0) } 
    _module.__default.UpTruth#canCall(j#0, k#0)
         || (0 < $FunctionContextHeight
           && 
          LitInt(10) <= j#0
           && j#0 < 180
           && 180 < 220
           && LitInt(220) <= k#0)
       ==> _module.__default.UpTruth(j#0, k#0)
         == (
          0 < 2
           && LitInt(2) <= LitInt(2)
           && 2 < j#0
           && j#0 != 200
           && 200 < k#0
           && k#0 < k#0 + 1));
// definition axiom for _module.__default.UpTruth for all literals (revealed)
axiom {:id "id314"} 0 <= $FunctionContextHeight
   ==> (forall j#0: int, k#0: int :: 
    {:weight 3} { _module.__default.UpTruth(LitInt(j#0), LitInt(k#0)) } 
    _module.__default.UpTruth#canCall(LitInt(j#0), LitInt(k#0))
         || (0 < $FunctionContextHeight
           && 
          LitInt(10) <= LitInt(j#0)
           && j#0 < 180
           && 180 < 220
           && LitInt(220) <= LitInt(k#0))
       ==> _module.__default.UpTruth(LitInt(j#0), LitInt(k#0))
         == (
          0 < 2
           && LitInt(2) <= LitInt(2)
           && 2 < j#0
           && j#0 != 200
           && 200 < k#0
           && k#0 < k#0 + 1));
}

function _module.__default.UpTruth#canCall(j#0: int, k#0: int) : bool;

function _module.__default.UpTruth#requires(int, int) : bool;

// #requires axiom for _module.__default.UpTruth
axiom (forall j#0: int, k#0: int :: 
  { _module.__default.UpTruth#requires(j#0, k#0) } 
  _module.__default.UpTruth#requires(j#0, k#0)
     == (LitInt(10) <= j#0 && j#0 < 180 && 180 < 220 && LitInt(220) <= k#0));

procedure {:verboseName "UpTruth (well-formedness)"} CheckWellformed$$_module.__default.UpTruth(j#0: int, k#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.DownTruth
function _module.__default.DownTruth(j#0: int, k#0: int) : bool
uses {
// definition axiom for _module.__default.DownTruth (revealed)
axiom {:id "id317"} 0 <= $FunctionContextHeight
   ==> (forall j#0: int, k#0: int :: 
    { _module.__default.DownTruth(j#0, k#0) } 
    _module.__default.DownTruth#canCall(j#0, k#0)
         || (0 < $FunctionContextHeight
           && 
          k#0 >= LitInt(220)
           && 220 > 180
           && 180 > j#0
           && j#0 >= LitInt(10))
       ==> _module.__default.DownTruth(j#0, k#0)
         == (
          k#0 + 1 > k#0
           && k#0 > 200
           && 200 != j#0
           && j#0 > 2
           && LitInt(2) >= LitInt(2)
           && 2 > 0));
// definition axiom for _module.__default.DownTruth for all literals (revealed)
axiom {:id "id318"} 0 <= $FunctionContextHeight
   ==> (forall j#0: int, k#0: int :: 
    {:weight 3} { _module.__default.DownTruth(LitInt(j#0), LitInt(k#0)) } 
    _module.__default.DownTruth#canCall(LitInt(j#0), LitInt(k#0))
         || (0 < $FunctionContextHeight
           && 
          LitInt(k#0) >= LitInt(220)
           && 220 > 180
           && 180 > j#0
           && LitInt(j#0) >= LitInt(10))
       ==> _module.__default.DownTruth(LitInt(j#0), LitInt(k#0))
         == (
          k#0 + 1 > k#0
           && k#0 > 200
           && 200 != j#0
           && j#0 > 2
           && LitInt(2) >= LitInt(2)
           && 2 > 0));
}

function _module.__default.DownTruth#canCall(j#0: int, k#0: int) : bool;

function _module.__default.DownTruth#requires(int, int) : bool;

// #requires axiom for _module.__default.DownTruth
axiom (forall j#0: int, k#0: int :: 
  { _module.__default.DownTruth#requires(j#0, k#0) } 
  _module.__default.DownTruth#requires(j#0, k#0)
     == (k#0 >= LitInt(220) && 220 > 180 && 180 > j#0 && j#0 >= LitInt(10)));

procedure {:verboseName "DownTruth (well-formedness)"} CheckWellformed$$_module.__default.DownTruth(j#0: int, k#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ChallengeTruth (well-formedness)"} CheckWellFormed$$_module.__default.ChallengeTruth(j#0: int, k#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ChallengeTruth (call)"} Call$$_module.__default.ChallengeTruth(j#0: int, k#0: int);
  // user-defined preconditions
  requires {:id "id323"} LitInt(80) <= j#0;
  requires {:id "id324"} j#0 < 150;
  requires {:id "id325"} LitInt(250) <= k#0;
  requires {:id "id326"} k#0 < 1000;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ChallengeTruth (correctness)"} Impl$$_module.__default.ChallengeTruth(j#0: int, k#0: int) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id327"} LitInt(80) <= j#0;
  requires {:id "id328"} j#0 < 150;
  requires {:id "id329"} LitInt(250) <= k#0;
  requires {:id "id330"} k#0 < 1000;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ChallengeTruth (correctness)"} Impl$$_module.__default.ChallengeTruth(j#0: int, k#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##j#0: int;
  var ##k#0: int;
  var ##j#1: int;
  var ##k#1: int;

    // AddMethodImpl: ChallengeTruth, Impl$$_module.__default.ChallengeTruth
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(66,3)
    ##j#0 := j#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##j#0, TInt, $Heap);
    ##k#0 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#0, TInt, $Heap);
    assert {:id "id331"} {:subsumption 0} LitInt(10) <= ##j#0;
    assert {:id "id332"} {:subsumption 0} ##j#0 < 180;
    assert {:id "id333"} {:subsumption 0} Lit(180 < 220);
    assert {:id "id334"} {:subsumption 0} LitInt(220) <= ##k#0;
    assume _module.__default.UpTruth#canCall(j#0, k#0);
    assume _module.__default.UpTruth#canCall(j#0, k#0);
    assert {:id "id335"} {:subsumption 0} _module.__default.UpTruth#canCall(j#0, k#0)
       ==> _module.__default.UpTruth(j#0, k#0) || Lit(0 < 2);
    assert {:id "id336"} {:subsumption 0} _module.__default.UpTruth#canCall(j#0, k#0)
       ==> _module.__default.UpTruth(j#0, k#0) || LitInt(2) <= LitInt(2);
    assert {:id "id337"} {:subsumption 0} _module.__default.UpTruth#canCall(j#0, k#0)
       ==> _module.__default.UpTruth(j#0, k#0) || 2 < j#0;
    assert {:id "id338"} {:subsumption 0} _module.__default.UpTruth#canCall(j#0, k#0)
       ==> _module.__default.UpTruth(j#0, k#0) || j#0 != 200;
    assert {:id "id339"} {:subsumption 0} _module.__default.UpTruth#canCall(j#0, k#0)
       ==> _module.__default.UpTruth(j#0, k#0) || 200 < k#0;
    assert {:id "id340"} {:subsumption 0} _module.__default.UpTruth#canCall(j#0, k#0)
       ==> _module.__default.UpTruth(j#0, k#0) || k#0 < k#0 + 1;
    assume {:id "id341"} _module.__default.UpTruth(j#0, k#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(67,3)
    ##j#1 := j#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##j#1, TInt, $Heap);
    ##k#1 := k#0;
    // assume allocatedness for argument to function
    assume $IsAlloc(##k#1, TInt, $Heap);
    assert {:id "id342"} {:subsumption 0} ##k#1 >= LitInt(220);
    assert {:id "id343"} {:subsumption 0} Lit(220 > 180);
    assert {:id "id344"} {:subsumption 0} 180 > ##j#1;
    assert {:id "id345"} {:subsumption 0} ##j#1 >= LitInt(10);
    assume _module.__default.DownTruth#canCall(j#0, k#0);
    assume _module.__default.DownTruth#canCall(j#0, k#0);
    assert {:id "id346"} {:subsumption 0} _module.__default.DownTruth#canCall(j#0, k#0)
       ==> _module.__default.DownTruth(j#0, k#0) || k#0 + 1 > k#0;
    assert {:id "id347"} {:subsumption 0} _module.__default.DownTruth#canCall(j#0, k#0)
       ==> _module.__default.DownTruth(j#0, k#0) || k#0 > 200;
    assert {:id "id348"} {:subsumption 0} _module.__default.DownTruth#canCall(j#0, k#0)
       ==> _module.__default.DownTruth(j#0, k#0) || 200 != j#0;
    assert {:id "id349"} {:subsumption 0} _module.__default.DownTruth#canCall(j#0, k#0)
       ==> _module.__default.DownTruth(j#0, k#0) || j#0 > 2;
    assert {:id "id350"} {:subsumption 0} _module.__default.DownTruth#canCall(j#0, k#0)
       ==> _module.__default.DownTruth(j#0, k#0) || LitInt(2) >= LitInt(2);
    assert {:id "id351"} {:subsumption 0} _module.__default.DownTruth#canCall(j#0, k#0)
       ==> _module.__default.DownTruth(j#0, k#0) || Lit(2 > 0);
    assume {:id "id352"} _module.__default.DownTruth(j#0, k#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(69,3)
    if (j#0 <= j#0 + k#0)
    {
    }

    if (j#0 <= j#0 + k#0 && j#0 + k#0 != k#0 + j#0 + 1)
    {
    }

    if (j#0 <= j#0 + k#0
       && j#0 + k#0 != k#0 + j#0 + 1
       && k#0 + j#0 + 1 < k#0 + k#0 + j#0)
    {
    }

    if (j#0 <= j#0 + k#0
       && j#0 + k#0 != k#0 + j#0 + 1
       && k#0 + j#0 + 1 < k#0 + k#0 + j#0
       && k#0 + k#0 + j#0 <= j#0 + j#0 + k#0)
    {
    }

    if (j#0 <= j#0 + k#0
       && j#0 + k#0 != k#0 + j#0 + 1
       && k#0 + j#0 + 1 < k#0 + k#0 + j#0
       && k#0 + k#0 + j#0 <= j#0 + j#0 + k#0
       && j#0 + j#0 + k#0 < k#0 + k#0 + j#0 + j#0)
    {
    }

    if (j#0 <= j#0 + k#0
       && j#0 + k#0 != k#0 + j#0 + 1
       && k#0 + j#0 + 1 < k#0 + k#0 + j#0
       && k#0 + k#0 + j#0 <= j#0 + j#0 + k#0
       && j#0 + j#0 + k#0 < k#0 + k#0 + j#0 + j#0
       && k#0 + k#0 + j#0 + j#0 == Mul(LitInt(2), k#0) + Mul(LitInt(2), j#0))
    {
    }

    assume true;
    assert {:id "id353"} {:subsumption 0} j#0 <= j#0 + k#0;
    assert {:id "id354"} {:subsumption 0} j#0 + k#0 != k#0 + j#0 + 1;
    assert {:id "id355"} {:subsumption 0} k#0 + j#0 + 1 < k#0 + k#0 + j#0;
    assert {:id "id356"} {:subsumption 0} k#0 + k#0 + j#0 <= j#0 + j#0 + k#0;
    assert {:id "id357"} {:subsumption 0} j#0 + j#0 + k#0 < k#0 + k#0 + j#0 + j#0;
    assert {:id "id358"} {:subsumption 0} k#0 + k#0 + j#0 + j#0 == Mul(LitInt(2), k#0) + Mul(LitInt(2), j#0);
    assert {:id "id359"} {:subsumption 0} Mul(LitInt(2), k#0) + Mul(LitInt(2), j#0) == Mul(LitInt(2), k#0 + j#0);
    assume {:id "id360"} j#0 <= j#0 + k#0
       && j#0 + k#0 != k#0 + j#0 + 1
       && k#0 + j#0 + 1 < k#0 + k#0 + j#0
       && k#0 + k#0 + j#0 <= j#0 + j#0 + k#0
       && j#0 + j#0 + k#0 < k#0 + k#0 + j#0 + j#0
       && k#0 + k#0 + j#0 + j#0 == Mul(LitInt(2), k#0) + Mul(LitInt(2), j#0)
       && Mul(LitInt(2), k#0) + Mul(LitInt(2), j#0) == Mul(LitInt(2), k#0 + j#0);
}



procedure {:verboseName "Explies (well-formedness)"} CheckWellFormed$$_module.__default.Explies(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    i#0: int where LitInt(0) <= i#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Explies (call)"} Call$$_module.__default.Explies(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    i#0: int where LitInt(0) <= i#0);
  // user-defined preconditions
  requires {:id "id365"} (forall x#1: int :: 
    { Seq#Contains(s#0, $Box(x#1)) } 
    Seq#Contains(s#0, $Box(x#1)) ==> x#1 > 0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Explies (correctness)"} Impl$$_module.__default.Explies(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap), 
    i#0: int where LitInt(0) <= i#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id366"} (forall x#1: int :: 
    { Seq#Contains(s#0, $Box(x#1)) } 
    Seq#Contains(s#0, $Box(x#1)) ==> x#1 > 0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Explies (correctness)"} Impl$$_module.__default.Explies(s#0: Seq, i#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var a#0: bool;
  var b#0: bool;
  var c#0: bool;

    // AddMethodImpl: Explies, Impl$$_module.__default.Explies
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc a#0, b#0, c#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(78,3)
    if (Lit(false))
    {
        if (c#0)
        {
            if (b#0)
            {
            }
        }
    }

    assume true;
    assert {:id "id367"} {:subsumption 0} Lit(false) ==> c#0 ==> b#0 ==> a#0;
    assume {:id "id368"} false ==> c#0 ==> b#0 ==> a#0;
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(79,36)
        if (i#0 < Seq#Length(s#0))
        {
            assert {:id "id369"} {:subsumption 0} 0 <= i#0 && i#0 < Seq#Length(s#0);
        }

        assume true;
        assert {:id "id370"} {:subsumption 0} i#0 < Seq#Length(s#0) ==> Seq#Contains(s#0, Seq#Index(s#0, i#0));
        assume {:id "id371"} i#0 < Seq#Length(s#0) ==> Seq#Contains(s#0, Seq#Index(s#0, i#0));
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(79,3)
        if (i#0 < Seq#Length(s#0))
        {
            assert {:id "id372"} {:subsumption 0} 0 <= i#0 && i#0 < Seq#Length(s#0);
        }

        assume true;
        assert {:id "id373"} {:subsumption 0} i#0 < Seq#Length(s#0) ==> $Unbox(Seq#Index(s#0, i#0)): int > 0;
        assume {:id "id374"} i#0 < Seq#Length(s#0) ==> $Unbox(Seq#Index(s#0, i#0)): int > 0;
        assume false;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(79,3)
    if (i#0 < Seq#Length(s#0))
    {
        assume {:id "id375"} {:subsumption 0} 0 <= i#0 && i#0 < Seq#Length(s#0);
    }

    assume true;
    assume true;
    assume {:id "id376"} i#0 < Seq#Length(s#0) ==> $Unbox(Seq#Index(s#0, i#0)): int > 0;
}



procedure {:verboseName "ExpliesAssociativityM (well-formedness)"} CheckWellFormed$$_module.__default.ExpliesAssociativityM(A#0: bool, B#0: bool, C#0: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ExpliesAssociativityM (call)"} Call$$_module.__default.ExpliesAssociativityM(A#0: bool, B#0: bool, C#0: bool);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ExpliesAssociativityM (correctness)"} Impl$$_module.__default.ExpliesAssociativityM(A#0: bool, B#0: bool, C#0: bool) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ExpliesAssociativityM (correctness)"} Impl$$_module.__default.ExpliesAssociativityM(A#0: bool, B#0: bool, C#0: bool) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: bool;
  var y#0: bool;
  var z#0: bool;

    // AddMethodImpl: ExpliesAssociativityM, Impl$$_module.__default.ExpliesAssociativityM
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(83,9)
    assume true;
    if (A#0)
    {
    }

    assume true;
    x#0 := A#0 ==> B#0;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(84,9)
    assume true;
    if (A#0)
    {
    }

    assume true;
    y#0 := A#0 ==> B#0;
    havoc z#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(86,3)
    assume true;
    assert {:id "id379"} x#0 == y#0;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(88,3)
    if (*)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(89,7)
        assume true;
        if (A#0)
        {
            if (B#0)
            {
            }
        }

        assume true;
        x#0 := A#0 ==> B#0 ==> C#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(90,7)
        assume true;
        if (A#0)
        {
            if (B#0)
            {
            }
        }

        assume true;
        y#0 := A#0 ==> B#0 ==> C#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(91,7)
        assume true;
        if (A#0)
        {
        }

        if (A#0 ==> B#0)
        {
        }

        assume true;
        z#0 := (A#0 ==> B#0) ==> C#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(92,5)
        assume true;
        assert {:id "id383"} x#0 == y#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(93,5)
        assume true;
        assert {:id "id384"} x#0 == z#0;
    }
    else
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(95,7)
        assume true;
        if (A#0)
        {
            if (B#0)
            {
            }
        }

        assume true;
        x#0 := A#0 ==> B#0 ==> C#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(96,7)
        assume true;
        if (A#0)
        {
            if (B#0)
            {
            }
        }

        assume true;
        y#0 := A#0 ==> B#0 ==> C#0;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(97,7)
        assume true;
        if (A#0)
        {
        }

        if (A#0 ==> B#0)
        {
        }

        assume true;
        z#0 := (A#0 ==> B#0) ==> C#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(98,5)
        assume true;
        assert {:id "id388"} x#0 == y#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(99,5)
        assume true;
        assert {:id "id389"} x#0 == z#0;
    }
}



procedure {:verboseName "ExpliesShortCircuiting (well-formedness)"} CheckWellFormed$$_module.__default.ExpliesShortCircuiting(_module._default.ExpliesShortCircuiting$_T0: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array?(_module._default.ExpliesShortCircuiting$_T0))
         && $IsAlloc(a#0, Tclass._System.array?(_module._default.ExpliesShortCircuiting$_T0), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "ExpliesShortCircuiting (call)"} Call$$_module.__default.ExpliesShortCircuiting(_module._default.ExpliesShortCircuiting$_T0: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array?(_module._default.ExpliesShortCircuiting$_T0))
         && $IsAlloc(a#0, Tclass._System.array?(_module._default.ExpliesShortCircuiting$_T0), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "ExpliesShortCircuiting (correctness)"} Impl$$_module.__default.ExpliesShortCircuiting(_module._default.ExpliesShortCircuiting$_T0: Ty, 
    a#0: ref
       where $Is(a#0, Tclass._System.array?(_module._default.ExpliesShortCircuiting$_T0))
         && $IsAlloc(a#0, Tclass._System.array?(_module._default.ExpliesShortCircuiting$_T0), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "ExpliesShortCircuiting (correctness)"} Impl$$_module.__default.ExpliesShortCircuiting(_module._default.ExpliesShortCircuiting$_T0: Ty, a#0: ref)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;
  var newtype$check#1: ref;
  var newtype$check#2: ref;
  var newtype$check#0_0: ref;
  var newtype$check#1_0: ref;

    // AddMethodImpl: ExpliesShortCircuiting, Impl$$_module.__default.ExpliesShortCircuiting
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(105,3)
    newtype$check#0 := null;
    if (a#0 != null)
    {
        assert {:id "id390"} {:subsumption 0} a#0 != null;
    }

    assume true;
    assert {:id "id391"} a#0 == null || LitInt(0) <= _System.array.Length(a#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(106,3)
    newtype$check#1 := null;
    if (a#0 != null)
    {
        assert {:id "id392"} {:subsumption 0} a#0 != null;
    }

    assume true;
    assert {:id "id393"} {:subsumption 0} a#0 != null ==> LitInt(0) <= _System.array.Length(a#0);
    assume {:id "id394"} a#0 != null ==> LitInt(0) <= _System.array.Length(a#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(107,3)
    newtype$check#2 := null;
    if (a#0 != null)
    {
        assert {:id "id395"} {:subsumption 0} a#0 != null;
    }

    assume true;
    assert {:id "id396"} {:subsumption 0} a#0 != null ==> LitInt(0) <= _System.array.Length(a#0);
    assume {:id "id397"} a#0 != null ==> LitInt(0) <= _System.array.Length(a#0);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(111,3)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(112,5)
        assert {:id "id398"} {:subsumption 0} a#0 != null;
        if (_System.array.Length(a#0) < 0)
        {
            newtype$check#0_0 := null;
        }

        assume true;
        assert {:id "id399"} {:subsumption 0} _System.array.Length(a#0) < 0 ==> a#0 == null;
        assume {:id "id400"} _System.array.Length(a#0) < 0 ==> a#0 == null;
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(114,5)
        assert {:id "id401"} {:subsumption 0} a#0 != null;
        if (_System.array.Length(a#0) < 0)
        {
            newtype$check#1_0 := null;
        }

        assume true;
        assert {:id "id402"} {:subsumption 0} _System.array.Length(a#0) < 0 ==> a#0 == null;
        assume {:id "id403"} _System.array.Length(a#0) < 0 ==> a#0 == null;
    }
}



function Tclass._module.Multi() : Ty
uses {
// Tclass._module.Multi Tag
axiom Tag(Tclass._module.Multi()) == Tagclass._module.Multi
   && TagFamily(Tclass._module.Multi()) == tytagFamily$Multi;
}

const unique Tagclass._module.Multi: TyTag;

// Box/unbox axiom for Tclass._module.Multi
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Multi()) } 
  $IsBox(bx, Tclass._module.Multi())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Multi()));

procedure {:verboseName "TestMulti (well-formedness)"} CheckWellFormed$$_module.__default.TestMulti(m#0: ref
       where $Is(m#0, Tclass._module.Multi()) && $IsAlloc(m#0, Tclass._module.Multi(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Multi()) && $IsAlloc(p#0, Tclass._module.Multi(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestMulti (call)"} Call$$_module.__default.TestMulti(m#0: ref
       where $Is(m#0, Tclass._module.Multi()) && $IsAlloc(m#0, Tclass._module.Multi(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Multi()) && $IsAlloc(p#0, Tclass._module.Multi(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == m#0 || $o == p#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestMulti (correctness)"} Impl$$_module.__default.TestMulti(m#0: ref
       where $Is(m#0, Tclass._module.Multi()) && $IsAlloc(m#0, Tclass._module.Multi(), $Heap), 
    p#0: ref
       where $Is(p#0, Tclass._module.Multi()) && $IsAlloc(p#0, Tclass._module.Multi(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == m#0 || $o == p#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestMulti (correctness)"} Impl$$_module.__default.TestMulti(m#0: ref, p#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $rhs#3: int;
  var t#0: int;
  var u#0: int;
  var $obj1: ref;
  var $rhs#4: int;
  var $rhs#5: int;
  var $rhs#6: int;
  var $rhs#7: int;
  var $rhs#8: int;
  var $rhs#9: int;
  var $rhs#10: int;
  var $obj0: ref;
  var $rhs#1_0: int;
  var $rhs#1_1: int;
  var $rhs#2_0: int;
  var $rhs#2_1: int;
  var $rhs#2_2: int;
  var $rhs#2_3: int;
  var a#0: ref
     where $Is(a#0, Tclass._System.array(TInt))
       && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap);
  var b#0: ref
     where $Is(b#0, Tclass._System.array(TInt))
       && $IsAlloc(b#0, Tclass._System.array(TInt), $Heap);
  var $rhs#11: ref;
  var $nw: ref;
  var $rhs#12: ref;
  var $index0: Field;
  var $index1: Field;
  var $obj2: ref;
  var $index2: Field;
  var $obj3: ref;
  var $index3: Field;
  var $obj4: ref;
  var $index4: Field;
  var $rhs#13: int;
  var $rhs#14: int;
  var $rhs#15: int;
  var $rhs#16: int;
  var $rhs#17: int;
  var $rhs#18: int;
  var $rhs#19: int;
  var $rhs#20: int;
  var $rhs#21: int;

    // AddMethodImpl: TestMulti, Impl$$_module.__default.TestMulti
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == m#0 || $o == p#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(142,7)
    assert {:id "id404"} m#0 != null;
    assume true;
    assert {:id "id405"} $_ModifiesFrame[m#0, _module.Multi.x];
    assume true;
    $rhs#0 := LitInt(10);
    $Heap := update($Heap, m#0, _module.Multi.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(143,7)
    assert {:id "id408"} m#0 != null;
    assume true;
    assert {:id "id409"} $_ModifiesFrame[m#0, _module.Multi.y];
    assume true;
    $rhs#1 := LitInt(12);
    $Heap := update($Heap, m#0, _module.Multi.y, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(144,7)
    assert {:id "id412"} p#0 != null;
    assume true;
    assert {:id "id413"} $_ModifiesFrame[p#0, _module.Multi.x];
    assume true;
    $rhs#2 := LitInt(20);
    $Heap := update($Heap, p#0, _module.Multi.x, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(145,7)
    assert {:id "id416"} p#0 != null;
    assume true;
    assert {:id "id417"} $_ModifiesFrame[p#0, _module.Multi.y];
    assume true;
    $rhs#3 := LitInt(22);
    $Heap := update($Heap, p#0, _module.Multi.y, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(146,3)
    if (*)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(147,5)
        assert {:id "id420"} {:subsumption 0} p#0 != null;
        assume true;
        assert {:id "id421"} $Unbox(read($Heap, p#0, _module.Multi.x)): int == LitInt(20);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(148,5)
        assert {:id "id422"} {:subsumption 0} m#0 != null;
        assume true;
        assert {:id "id423"} $Unbox(read($Heap, m#0, _module.Multi.x)): int == LitInt(10);
        pop;
    }
    else
    {
    }

    havoc t#0, u#0;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(151,13)
    assume true;
    assert {:id "id424"} m#0 != null;
    assume true;
    $obj1 := m#0;
    assert {:id "id425"} $_ModifiesFrame[$obj1, _module.Multi.x];
    assume true;
    assume true;
    $rhs#4 := LitInt(100);
    assert {:id "id427"} m#0 != null;
    assume true;
    $rhs#5 := u#0 + t#0 + $Unbox(read($Heap, m#0, _module.Multi.x)): int;
    assume true;
    $rhs#6 := LitInt(200);
    u#0 := $rhs#4;
    $Heap := update($Heap, $obj1, _module.Multi.x, $Box($rhs#5));
    assume $IsGoodHeap($Heap);
    t#0 := $rhs#6;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(152,7)
    assert {:id "id433"} m#0 != null;
    assume true;
    assert {:id "id434"} $_ModifiesFrame[m#0, _module.Multi.x];
    assume true;
    $rhs#7 := LitInt(0);
    $Heap := update($Heap, m#0, _module.Multi.x, $Box($rhs#7));
    assume $IsGoodHeap($Heap);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(153,13)
    assume true;
    assert {:id "id437"} m#0 != null;
    assume true;
    $obj1 := m#0;
    assert {:id "id438"} $_ModifiesFrame[$obj1, _module.Multi.x];
    assume true;
    assume true;
    $rhs#8 := LitInt(200);
    assert {:id "id440"} m#0 != null;
    assume true;
    $rhs#9 := u#0 + t#0 + $Unbox(read($Heap, m#0, _module.Multi.x)): int;
    assume true;
    $rhs#10 := LitInt(400);
    u#0 := $rhs#8;
    $Heap := update($Heap, $obj1, _module.Multi.x, $Box($rhs#9));
    assume $IsGoodHeap($Heap);
    t#0 := $rhs#10;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(154,3)
    assert {:id "id446"} {:subsumption 0} m#0 != null;
    assume true;
    assert {:id "id447"} $Unbox(read($Heap, m#0, _module.Multi.x)): int == LitInt(300);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(155,3)
    assert {:id "id448"} p#0 != null;
    assume true;
    if ($Unbox(read($Heap, p#0, _module.Multi.x)): int != 300)
    {
        push;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(156,14)
        assert {:id "id449"} p#0 != null;
        assume true;
        $obj0 := p#0;
        assert {:id "id450"} $_ModifiesFrame[$obj0, _module.Multi.x];
        assert {:id "id451"} m#0 != null;
        assume true;
        $obj1 := m#0;
        assert {:id "id452"} $_ModifiesFrame[$obj1, _module.Multi.x];
        assert {:id "id453"} m#0 != null;
        assume true;
        $rhs#1_0 := $Unbox(read($Heap, m#0, _module.Multi.x)): int;
        assert {:id "id455"} p#0 != null;
        assume true;
        $rhs#1_1 := $Unbox(read($Heap, p#0, _module.Multi.x)): int;
        assert {:id "id457"} m#0 != p#0 || $rhs#1_1 == $rhs#1_0;
        $Heap := update($Heap, $obj0, _module.Multi.x, $Box($rhs#1_0));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, _module.Multi.x, $Box($rhs#1_1));
        assume $IsGoodHeap($Heap);
        pop;
    }
    else
    {
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(158,3)
    assert {:id "id460"} {:subsumption 0} p#0 != null;
    assume true;
    assert {:id "id461"} $Unbox(read($Heap, p#0, _module.Multi.x)): int == LitInt(300);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(159,3)
    if (*)
    {
        push;
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(160,14)
        assert {:id "id462"} p#0 != null;
        assume true;
        $obj0 := p#0;
        assert {:id "id463"} $_ModifiesFrame[$obj0, _module.Multi.x];
        assert {:id "id464"} m#0 != null;
        assume true;
        $obj1 := m#0;
        assert {:id "id465"} $_ModifiesFrame[$obj1, _module.Multi.y];
        assume true;
        $rhs#2_0 := LitInt(10);
        assume true;
        $rhs#2_1 := LitInt(10);
        $Heap := update($Heap, $obj0, _module.Multi.x, $Box($rhs#2_0));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, _module.Multi.y, $Box($rhs#2_1));
        assume $IsGoodHeap($Heap);
        // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(161,14)
        assert {:id "id470"} p#0 != null;
        assume true;
        $obj0 := p#0;
        assert {:id "id471"} $_ModifiesFrame[$obj0, _module.Multi.x];
        assert {:id "id472"} m#0 != null;
        assume true;
        $obj1 := m#0;
        assert {:id "id473"} $_ModifiesFrame[$obj1, _module.Multi.x];
        assume true;
        $rhs#2_2 := LitInt(8);
        assume true;
        $rhs#2_3 := LitInt(8);
        assert {:id "id476"} m#0 != p#0 || $rhs#2_3 == $rhs#2_2;
        $Heap := update($Heap, $obj0, _module.Multi.x, $Box($rhs#2_2));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, _module.Multi.x, $Box($rhs#2_3));
        assume $IsGoodHeap($Heap);
        pop;
    }
    else
    {
    }

    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(164,12)
    assume true;
    assume true;
    assert {:id "id479"} 0 <= LitInt(20);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(20);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#11 := $nw;
    assert {:id "id481"} 0 <= LitInt(30);
    havoc $nw;
    assume $nw != null && $Is($nw, Tclass._System.array?(TInt));
    assume !$Unbox(read($Heap, $nw, alloc)): bool;
    assume _System.array.Length($nw) == LitInt(30);
    $Heap := update($Heap, $nw, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    $rhs#12 := $nw;
    a#0 := $rhs#11;
    b#0 := $rhs#12;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(165,34)
    assert {:id "id485"} a#0 != null;
    assert {:id "id486"} 0 <= LitInt(4) && LitInt(4) < _System.array.Length(a#0);
    assume true;
    $obj0 := a#0;
    $index0 := IndexField(LitInt(4));
    assert {:id "id487"} $_ModifiesFrame[$obj0, $index0];
    assert {:id "id488"} b#0 != null;
    assert {:id "id489"} 0 <= LitInt(10) && LitInt(10) < _System.array.Length(b#0);
    assume true;
    $obj1 := b#0;
    $index1 := IndexField(LitInt(10));
    assert {:id "id490"} $_ModifiesFrame[$obj1, $index1];
    assert {:id "id491"} a#0 != null;
    assert {:id "id492"} 0 <= LitInt(0) && LitInt(0) < _System.array.Length(a#0);
    assume true;
    $obj2 := a#0;
    $index2 := IndexField(LitInt(0));
    assert {:id "id493"} $_ModifiesFrame[$obj2, $index2];
    assert {:id "id494"} a#0 != null;
    assert {:id "id495"} 0 <= LitInt(3) && LitInt(3) < _System.array.Length(a#0);
    assume true;
    $obj3 := a#0;
    $index3 := IndexField(LitInt(3));
    assert {:id "id496"} $_ModifiesFrame[$obj3, $index3];
    assert {:id "id497"} b#0 != null;
    assert {:id "id498"} 0 <= LitInt(18) && LitInt(18) < _System.array.Length(b#0);
    assume true;
    $obj4 := b#0;
    $index4 := IndexField(LitInt(18));
    assert {:id "id499"} $_ModifiesFrame[$obj4, $index4];
    assume true;
    $rhs#13 := LitInt(0);
    assume true;
    $rhs#14 := LitInt(1);
    assume true;
    $rhs#15 := LitInt(2);
    assume true;
    $rhs#16 := LitInt(3);
    assume true;
    $rhs#17 := LitInt(4);
    assert {:id "id505"} b#0 != a#0 || LitInt(10) != LitInt(4) || $Box($rhs#14) == $Box($rhs#13);
    assert {:id "id506"} a#0 != a#0 || LitInt(0) != LitInt(4) || $Box($rhs#15) == $Box($rhs#13);
    assert {:id "id507"} a#0 != b#0 || LitInt(0) != LitInt(10) || $Box($rhs#15) == $Box($rhs#14);
    assert {:id "id508"} a#0 != a#0 || LitInt(3) != LitInt(4) || $Box($rhs#16) == $Box($rhs#13);
    assert {:id "id509"} a#0 != b#0 || LitInt(3) != LitInt(10) || $Box($rhs#16) == $Box($rhs#14);
    assert {:id "id510"} a#0 != a#0 || LitInt(3) != LitInt(0) || $Box($rhs#16) == $Box($rhs#15);
    assert {:id "id511"} b#0 != a#0 || LitInt(18) != LitInt(4) || $Box($rhs#17) == $Box($rhs#13);
    assert {:id "id512"} b#0 != b#0 || LitInt(18) != LitInt(10) || $Box($rhs#17) == $Box($rhs#14);
    assert {:id "id513"} b#0 != a#0 || LitInt(18) != LitInt(0) || $Box($rhs#17) == $Box($rhs#15);
    assert {:id "id514"} b#0 != a#0 || LitInt(18) != LitInt(3) || $Box($rhs#17) == $Box($rhs#16);
    $Heap := update($Heap, $obj0, $index0, $Box($rhs#13));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, $index1, $Box($rhs#14));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj2, $index2, $Box($rhs#15));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj3, $index3, $Box($rhs#16));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj4, $index4, $Box($rhs#17));
    assume $IsGoodHeap($Heap);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(166,18)
    assert {:id "id520"} a#0 != null;
    assert {:id "id521"} 0 <= LitInt(4) && LitInt(4) < _System.array.Length(a#0);
    assume true;
    $obj0 := a#0;
    $index0 := IndexField(LitInt(4));
    assert {:id "id522"} $_ModifiesFrame[$obj0, $index0];
    assert {:id "id523"} b#0 != null;
    assert {:id "id524"} b#0 != null;
    assert {:id "id525"} 0 <= LitInt(18) && LitInt(18) < _System.array.Length(b#0);
    assert {:id "id526"} 0 <= $Unbox(read($Heap, b#0, IndexField(LitInt(18)))): int
       && $Unbox(read($Heap, b#0, IndexField(LitInt(18)))): int
         < _System.array.Length(b#0);
    assume true;
    $obj1 := b#0;
    $index1 := IndexField($Unbox(read($Heap, b#0, IndexField(LitInt(18)))): int);
    assert {:id "id527"} $_ModifiesFrame[$obj1, $index1];
    assume true;
    $rhs#18 := LitInt(271);
    assume true;
    $rhs#19 := LitInt(272);
    assert {:id "id530"} b#0 != a#0
       || $Unbox(read($Heap, b#0, IndexField(LitInt(18)))): int != LitInt(4)
       || $Box($rhs#19) == $Box($rhs#18);
    $Heap := update($Heap, $obj0, $index0, $Box($rhs#18));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, $index1, $Box($rhs#19));
    assume $IsGoodHeap($Heap);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(167,18)
    assert {:id "id533"} a#0 != null;
    assert {:id "id534"} 0 <= LitInt(4) && LitInt(4) < _System.array.Length(a#0);
    assume true;
    $obj0 := a#0;
    $index0 := IndexField(LitInt(4));
    assert {:id "id535"} $_ModifiesFrame[$obj0, $index0];
    assert {:id "id536"} a#0 != null;
    assert {:id "id537"} b#0 != null;
    assert {:id "id538"} 0 <= LitInt(18) && LitInt(18) < _System.array.Length(b#0);
    assert {:id "id539"} 0 <= $Unbox(read($Heap, b#0, IndexField(LitInt(18)))): int
       && $Unbox(read($Heap, b#0, IndexField(LitInt(18)))): int
         < _System.array.Length(a#0);
    assume true;
    $obj1 := a#0;
    $index1 := IndexField($Unbox(read($Heap, b#0, IndexField(LitInt(18)))): int);
    assert {:id "id540"} $_ModifiesFrame[$obj1, $index1];
    assume true;
    $rhs#20 := LitInt(273);
    assume true;
    $rhs#21 := LitInt(274);
    assert {:id "id543"} a#0 != a#0
       || $Unbox(read($Heap, b#0, IndexField(LitInt(18)))): int != LitInt(4)
       || $Box($rhs#21) == $Box($rhs#20);
    $Heap := update($Heap, $obj0, $index0, $Box($rhs#20));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, $index1, $Box($rhs#21));
    assume $IsGoodHeap($Heap);
}



function Tclass._module.MyBoxyClass(Ty) : Ty;

const unique Tagclass._module.MyBoxyClass: TyTag;

// Tclass._module.MyBoxyClass Tag
axiom (forall _module.MyBoxyClass$T: Ty :: 
  { Tclass._module.MyBoxyClass(_module.MyBoxyClass$T) } 
  Tag(Tclass._module.MyBoxyClass(_module.MyBoxyClass$T))
       == Tagclass._module.MyBoxyClass
     && TagFamily(Tclass._module.MyBoxyClass(_module.MyBoxyClass$T))
       == tytagFamily$MyBoxyClass);

function Tclass._module.MyBoxyClass_0(Ty) : Ty;

// Tclass._module.MyBoxyClass injectivity 0
axiom (forall _module.MyBoxyClass$T: Ty :: 
  { Tclass._module.MyBoxyClass(_module.MyBoxyClass$T) } 
  Tclass._module.MyBoxyClass_0(Tclass._module.MyBoxyClass(_module.MyBoxyClass$T))
     == _module.MyBoxyClass$T);

// Box/unbox axiom for Tclass._module.MyBoxyClass
axiom (forall _module.MyBoxyClass$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.MyBoxyClass(_module.MyBoxyClass$T)) } 
  $IsBox(bx, Tclass._module.MyBoxyClass(_module.MyBoxyClass$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.MyBoxyClass(_module.MyBoxyClass$T)));

procedure {:verboseName "TestBoxAssignment (well-formedness)"} CheckWellFormed$$_module.__default.TestBoxAssignment(_module._default.TestBoxAssignment$T: Ty, 
    x#0: ref
       where $Is(x#0, Tclass._module.MyBoxyClass(TInt))
         && $IsAlloc(x#0, Tclass._module.MyBoxyClass(TInt), $Heap), 
    y#0: ref
       where $Is(y#0, Tclass._module.MyBoxyClass(_module._default.TestBoxAssignment$T))
         && $IsAlloc(y#0, Tclass._module.MyBoxyClass(_module._default.TestBoxAssignment$T), $Heap), 
    t#0: Box
       where $IsBox(t#0, _module._default.TestBoxAssignment$T)
         && $IsAllocBox(t#0, _module._default.TestBoxAssignment$T, $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TestBoxAssignment (call)"} Call$$_module.__default.TestBoxAssignment(_module._default.TestBoxAssignment$T: Ty, 
    x#0: ref
       where $Is(x#0, Tclass._module.MyBoxyClass(TInt))
         && $IsAlloc(x#0, Tclass._module.MyBoxyClass(TInt), $Heap), 
    y#0: ref
       where $Is(y#0, Tclass._module.MyBoxyClass(_module._default.TestBoxAssignment$T))
         && $IsAlloc(y#0, Tclass._module.MyBoxyClass(_module._default.TestBoxAssignment$T), $Heap), 
    t#0: Box
       where $IsBox(t#0, _module._default.TestBoxAssignment$T)
         && $IsAllocBox(t#0, _module._default.TestBoxAssignment$T, $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == x#0 || $o == y#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestBoxAssignment (correctness)"} Impl$$_module.__default.TestBoxAssignment(_module._default.TestBoxAssignment$T: Ty, 
    x#0: ref
       where $Is(x#0, Tclass._module.MyBoxyClass(TInt))
         && $IsAlloc(x#0, Tclass._module.MyBoxyClass(TInt), $Heap), 
    y#0: ref
       where $Is(y#0, Tclass._module.MyBoxyClass(_module._default.TestBoxAssignment$T))
         && $IsAlloc(y#0, Tclass._module.MyBoxyClass(_module._default.TestBoxAssignment$T), $Heap), 
    t#0: Box
       where $IsBox(t#0, _module._default.TestBoxAssignment$T)
         && $IsAllocBox(t#0, _module._default.TestBoxAssignment$T, $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == x#0 || $o == y#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestBoxAssignment (correctness)"} Impl$$_module.__default.TestBoxAssignment(_module._default.TestBoxAssignment$T: Ty, x#0: ref, y#0: ref, t#0: Box)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: Box;
  var $rhs#1: int;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#2: Box;
  var $rhs#3: int;
  var k#0: int;

    // AddMethodImpl: TestBoxAssignment, Impl$$_module.__default.TestBoxAssignment
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == x#0 || $o == y#0);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(180,7)
    assert {:id "id546"} y#0 != null;
    assume true;
    assert {:id "id547"} $_ModifiesFrame[y#0, _module.MyBoxyClass.f];
    assume true;
    $rhs#0 := t#0;
    $Heap := update($Heap, y#0, _module.MyBoxyClass.f, $rhs#0);
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(181,7)
    assert {:id "id550"} x#0 != null;
    assume true;
    assert {:id "id551"} $_ModifiesFrame[x#0, _module.MyBoxyClass.f];
    assume true;
    $rhs#1 := LitInt(15);
    $Heap := update($Heap, x#0, _module.MyBoxyClass.f, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(183,12)
    assert {:id "id554"} y#0 != null;
    assume true;
    $obj0 := y#0;
    assert {:id "id555"} $_ModifiesFrame[$obj0, _module.MyBoxyClass.f];
    assert {:id "id556"} x#0 != null;
    assume true;
    $obj1 := x#0;
    assert {:id "id557"} $_ModifiesFrame[$obj1, _module.MyBoxyClass.f];
    assume true;
    $rhs#2 := t#0;
    assume true;
    $rhs#3 := LitInt(15);
    assert {:id "id560"} x#0 != y#0 || $Box($rhs#3) == $rhs#2;
    $Heap := update($Heap, $obj0, _module.MyBoxyClass.f, $rhs#2);
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.MyBoxyClass.f, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(184,14)
    assume true;
    assert {:id "id563"} x#0 != null;
    assume true;
    k#0 := $Unbox(read($Heap, x#0, _module.MyBoxyClass.f)): int;
}



procedure {:verboseName "TestCallsWithFancyLhss (well-formedness)"} CheckWellFormed$$_module.__default.TestCallsWithFancyLhss(m#0: ref
       where $Is(m#0, Tclass._module.Multi()) && $IsAlloc(m#0, Tclass._module.Multi(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestCallsWithFancyLhss (well-formedness)"} CheckWellFormed$$_module.__default.TestCallsWithFancyLhss(m#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var newtype$check#0: ref;


    // AddMethodImpl: TestCallsWithFancyLhss, CheckWellFormed$$_module.__default.TestCallsWithFancyLhss
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == m#0 || $o == $Unbox(read($Heap, m#0, _module.Multi.next)): ref);
    assert {:id "id565"} m#0 != null;
    newtype$check#0 := null;
    assume {:id "id566"} $Unbox(read($Heap, m#0, _module.Multi.next)): ref != null;
    assert {:id "id567"} m#0 != null;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o]
           || 
          $o == m#0
           || $o == $Unbox(read(old($Heap), m#0, _module.Multi.next)): ref);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "TestCallsWithFancyLhss (call)"} Call$$_module.__default.TestCallsWithFancyLhss(m#0: ref
       where $Is(m#0, Tclass._module.Multi()) && $IsAlloc(m#0, Tclass._module.Multi(), $Heap));
  // user-defined preconditions
  requires {:id "id568"} $Unbox(read($Heap, m#0, _module.Multi.next)): ref != null;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == m#0
         || $o == $Unbox(read(old($Heap), m#0, _module.Multi.next)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "TestCallsWithFancyLhss (correctness)"} Impl$$_module.__default.TestCallsWithFancyLhss(m#0: ref
       where $Is(m#0, Tclass._module.Multi()) && $IsAlloc(m#0, Tclass._module.Multi(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id569"} $Unbox(read($Heap, m#0, _module.Multi.next)): ref != null;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]
         || 
        $o == m#0
         || $o == $Unbox(read(old($Heap), m#0, _module.Multi.next)): ref);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Multi?() : Ty
uses {
// Tclass._module.Multi? Tag
axiom Tag(Tclass._module.Multi?()) == Tagclass._module.Multi?
   && TagFamily(Tclass._module.Multi?()) == tytagFamily$Multi;
}

const unique Tagclass._module.Multi?: TyTag;

// Box/unbox axiom for Tclass._module.Multi?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Multi?()) } 
  $IsBox(bx, Tclass._module.Multi?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Multi?()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "TestCallsWithFancyLhss (correctness)"} Impl$$_module.__default.TestCallsWithFancyLhss(m#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var p#0: ref
     where $Is(p#0, Tclass._module.Multi?())
       && $IsAlloc(p#0, Tclass._module.Multi?(), $Heap);
  var $obj0: ref;
  var $rhs##0: ref;
  var z##0: int;
  var $rhs##1: ref;
  var z##1: int;
  var $obj1: ref;
  var $rhs#1: int;
  var $rhs#2: ref;
  var $rhs##2: int;
  var $rhs##3: int;
  var a##0: int;
  var b##0: int;
  var $rhs##1_0: int;
  var $rhs##1_1: int;
  var a##1_0: int;
  var b##1_0: int;
  var $rhs#3: int;
  var xx#0: int;
  var $rhs##4: int;
  var $rhs##5: int;
  var $rhs##6: int;
  var $rhs##7: int;

    // AddMethodImpl: TestCallsWithFancyLhss, Impl$$_module.__default.TestCallsWithFancyLhss
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool
         ==> $o == m#0 || $o == $Unbox(read($Heap, m#0, _module.Multi.next)): ref);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(191,7)
    assert {:id "id570"} m#0 != null;
    assume true;
    assert {:id "id571"} $_ModifiesFrame[m#0, _module.Multi.x];
    assume true;
    $rhs#0 := LitInt(10);
    $Heap := update($Heap, m#0, _module.Multi.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(192,9)
    assume true;
    assert {:id "id574"} m#0 != null;
    assume true;
    p#0 := $Unbox(read($Heap, m#0, _module.Multi.next)): ref;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(193,26)
    assert {:id "id576"} m#0 != null;
    assert {:id "id577"} $Unbox(read($Heap, m#0, _module.Multi.next)): ref != null;
    assume true;
    $obj0 := $Unbox(read($Heap, m#0, _module.Multi.next)): ref;
    assert {:id "id578"} $_ModifiesFrame[$obj0, _module.Multi.next];
    // TrCallStmt: Adding lhs with type Multi?
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id579"} m#0 != null;
    assert {:id "id580"} m#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    z##0 := $Unbox(read($Heap, m#0, _module.Multi.x)): int;
    assert {:id "id581"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == m#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id582"} $rhs##0 := Call$$_module.Multi.Mutate(m#0, z##0);
    // TrCallStmt: After ProcessCallStmt
    $Heap := update($Heap, $obj0, _module.Multi.next, $Box($rhs##0));
    assume $IsGoodHeap($Heap);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(194,3)
    if (*)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(195,5)
        assert {:id "id584"} {:subsumption 0} m#0 != null;
        assert {:id "id585"} {:subsumption 0} m#0 != null;
        assert {:id "id586"} $IsAlloc(m#0, Tclass._module.Multi(), old($Heap));
        assume true;
        assert {:id "id587"} $Unbox(read($Heap, m#0, _module.Multi.next)): ref
           == $Unbox(read(old($Heap), m#0, _module.Multi.next)): ref;
        pop;
    }
    else
    {
    }

    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(197,26)
    assert {:id "id588"} m#0 != null;
    assert {:id "id589"} $Unbox(read($Heap, m#0, _module.Multi.next)): ref != null;
    assume true;
    $obj0 := $Unbox(read($Heap, m#0, _module.Multi.next)): ref;
    assert {:id "id590"} $_ModifiesFrame[$obj0, _module.Multi.next];
    // TrCallStmt: Adding lhs with type Multi?
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id591"} m#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    z##1 := LitInt(20);
    assert {:id "id592"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == m#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id593"} $rhs##1 := Call$$_module.Multi.Mutate(m#0, z##1);
    // TrCallStmt: After ProcessCallStmt
    $Heap := update($Heap, $obj0, _module.Multi.next, $Box($rhs##1));
    assume $IsGoodHeap($Heap);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(198,15)
    assert {:id "id595"} m#0 != null;
    assume true;
    $obj0 := m#0;
    assert {:id "id596"} $_ModifiesFrame[$obj0, _module.Multi.x];
    assert {:id "id597"} m#0 != null;
    assume true;
    $obj1 := m#0;
    assert {:id "id598"} $_ModifiesFrame[$obj1, _module.Multi.next];
    assume true;
    $rhs#1 := LitInt(12);
    assume true;
    $rhs#2 := p#0;
    $Heap := update($Heap, $obj0, _module.Multi.x, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.Multi.next, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(199,21)
    assert {:id "id603"} m#0 != null;
    assume true;
    $obj0 := m#0;
    assert {:id "id604"} $_ModifiesFrame[$obj0, _module.Multi.x];
    assert {:id "id605"} m#0 != null;
    assume true;
    $obj1 := m#0;
    assert {:id "id606"} $_ModifiesFrame[$obj1, _module.Multi.y];
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id607"} m#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    a##0 := $Unbox(read($Heap, m#0, _module.Multi.x)): int;
    assert {:id "id608"} m#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    b##0 := $Unbox(read($Heap, m#0, _module.Multi.y)): int;
    call {:id "id609"} $rhs##2, $rhs##3 := Call$$_module.__default.SwapEm(a##0, b##0);
    // TrCallStmt: After ProcessCallStmt
    $Heap := update($Heap, $obj0, _module.Multi.x, $Box($rhs##2));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.Multi.y, $Box($rhs##3));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(200,3)
    assert {:id "id612"} {:subsumption 0} m#0 != null;
    assume true;
    assert {:id "id613"} $Unbox(read($Heap, m#0, _module.Multi.y)): int == LitInt(12);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(201,3)
    if (*)
    {
        push;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(202,23)
        assert {:id "id614"} m#0 != m#0;
        assert {:id "id615"} m#0 != null;
        assume true;
        $obj0 := m#0;
        assert {:id "id616"} $_ModifiesFrame[$obj0, _module.Multi.x];
        assert {:id "id617"} m#0 != null;
        assume true;
        $obj1 := m#0;
        assert {:id "id618"} $_ModifiesFrame[$obj1, _module.Multi.x];
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Adding lhs with type int
        // TrCallStmt: Before ProcessCallStmt
        assert {:id "id619"} m#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        a##1_0 := $Unbox(read($Heap, m#0, _module.Multi.x)): int;
        assert {:id "id620"} m#0 != null;
        assume true;
        // ProcessCallStmt: CheckSubrange
        b##1_0 := $Unbox(read($Heap, m#0, _module.Multi.y)): int;
        call {:id "id621"} $rhs##1_0, $rhs##1_1 := Call$$_module.__default.SwapEm(a##1_0, b##1_0);
        // TrCallStmt: After ProcessCallStmt
        $Heap := update($Heap, $obj0, _module.Multi.x, $Box($rhs##1_0));
        assume $IsGoodHeap($Heap);
        $Heap := update($Heap, $obj1, _module.Multi.x, $Box($rhs##1_1));
        assume $IsGoodHeap($Heap);
        pop;
    }
    else
    {
    }

    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(204,7)
    assert {:id "id624"} m#0 != null;
    assume true;
    assert {:id "id625"} $_ModifiesFrame[m#0, _module.Multi.x];
    assume true;
    $rhs#3 := LitInt(30);
    $Heap := update($Heap, m#0, _module.Multi.x, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(205,19)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id628"} m#0 != null;
    assert {:id "id629"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == m#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id630"} $rhs##4 := Call$$_module.Multi.IncX(m#0);
    // TrCallStmt: After ProcessCallStmt
    xx#0 := $rhs##4;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(206,3)
    assume true;
    assert {:id "id632"} xx#0 == LitInt(30);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(207,16)
    assert {:id "id633"} m#0 != null;
    assume true;
    $obj0 := m#0;
    assert {:id "id634"} $_ModifiesFrame[$obj0, _module.Multi.y];
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id635"} m#0 != null;
    assert {:id "id636"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == m#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id637"} $rhs##5 := Call$$_module.Multi.IncX(m#0);
    // TrCallStmt: After ProcessCallStmt
    $Heap := update($Heap, $obj0, _module.Multi.y, $Box($rhs##5));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(208,3)
    assert {:id "id639"} {:subsumption 0} m#0 != null;
    if ($Unbox(read($Heap, m#0, _module.Multi.y)): int == LitInt(31))
    {
        assert {:id "id640"} {:subsumption 0} m#0 != null;
    }

    assume true;
    assert {:id "id641"} {:subsumption 0} $Unbox(read($Heap, m#0, _module.Multi.y)): int == LitInt(31);
    assert {:id "id642"} {:subsumption 0} $Unbox(read($Heap, m#0, _module.Multi.x)): int == LitInt(32);
    assume {:id "id643"} $Unbox(read($Heap, m#0, _module.Multi.y)): int == LitInt(31)
       && $Unbox(read($Heap, m#0, _module.Multi.x)): int == LitInt(32);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(209,16)
    assert {:id "id644"} m#0 != null;
    assume true;
    $obj0 := m#0;
    assert {:id "id645"} $_ModifiesFrame[$obj0, _module.Multi.x];
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id646"} m#0 != null;
    assert {:id "id647"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == m#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id648"} $rhs##6 := Call$$_module.Multi.IncX(m#0);
    // TrCallStmt: After ProcessCallStmt
    $Heap := update($Heap, $obj0, _module.Multi.x, $Box($rhs##6));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(210,3)
    assert {:id "id650"} {:subsumption 0} m#0 != null;
    assume true;
    assert {:id "id651"} $Unbox(read($Heap, m#0, _module.Multi.x)): int == LitInt(32);
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(211,15)
    assume true;
    // TrCallStmt: Adding lhs with type int
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assert {:id "id652"} m#0 != null;
    assert {:id "id653"} (forall $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool && $o == m#0
         ==> $_ModifiesFrame[$o, $f]);
    call {:id "id654"} $rhs##7 := Call$$_module.Multi.IncX(m#0);
    // TrCallStmt: After ProcessCallStmt
    xx#0 := $rhs##7;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(212,3)
    if (*)
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(213,5)
        assume true;
        assert {:id "id656"} xx#0 == LitInt(33);
    }
    else
    {
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(215,5)
        assume true;
        assert {:id "id657"} xx#0 == LitInt(32);
    }
}



procedure {:verboseName "SwapEm (well-formedness)"} CheckWellFormed$$_module.__default.SwapEm(a#0: int, b#0: int) returns (x#0: int, y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "SwapEm (call)"} Call$$_module.__default.SwapEm(a#0: int, b#0: int) returns (x#0: int, y#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id660"} x#0 == b#0;
  ensures {:id "id661"} y#0 == a#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "SwapEm (correctness)"} Impl$$_module.__default.SwapEm(a#0: int, b#0: int) returns (x#0: int, y#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id662"} x#0 == b#0;
  ensures {:id "id663"} y#0 == a#0;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "SwapEm (correctness)"} Impl$$_module.__default.SwapEm(a#0: int, b#0: int) returns (x#0: int, y#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: SwapEm, Impl$$_module.__default.SwapEm
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(222,8)
    assume true;
    assume true;
    assume true;
    $rhs#0 := b#0;
    assume true;
    $rhs#1 := a#0;
    x#0 := $rhs#0;
    y#0 := $rhs#1;
}



// function declaration for _module._default.abs
function _module.__default.abs(a#0: int) : int
uses {
// definition axiom for _module.__default.abs (revealed)
axiom {:id "id668"} 0 <= $FunctionContextHeight
   ==> (forall a#0: int :: 
    { _module.__default.abs(a#0) } 
    _module.__default.abs#canCall(a#0) || 0 < $FunctionContextHeight
       ==> _module.__default.abs(a#0) == (if a#0 <= LitInt(0) then 0 - a#0 else a#0));
// definition axiom for _module.__default.abs for all literals (revealed)
axiom {:id "id669"} 0 <= $FunctionContextHeight
   ==> (forall a#0: int :: 
    {:weight 3} { _module.__default.abs(LitInt(a#0)) } 
    _module.__default.abs#canCall(LitInt(a#0)) || 0 < $FunctionContextHeight
       ==> _module.__default.abs(LitInt(a#0))
         == (if LitInt(a#0) <= LitInt(0) then 0 - a#0 else a#0));
}

function _module.__default.abs#canCall(a#0: int) : bool;

function _module.__default.abs#requires(int) : bool;

// #requires axiom for _module.__default.abs
axiom (forall a#0: int :: 
  { _module.__default.abs#requires(a#0) } 
  _module.__default.abs#requires(a#0) == true);

procedure {:verboseName "abs (well-formedness)"} CheckWellformed$$_module.__default.abs(a#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EuclideanTest (well-formedness)"} CheckWellFormed$$_module.__default.EuclideanTest(a#0: int, b#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EuclideanTest (call)"} Call$$_module.__default.EuclideanTest(a#0: int, b#0: int);
  // user-defined preconditions
  requires {:id "id673"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "EuclideanTest (correctness)"} Impl$$_module.__default.EuclideanTest(a#0: int, b#0: int) returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id674"} b#0 != 0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "EuclideanTest (correctness)"} Impl$$_module.__default.EuclideanTest(a#0: int, b#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var q#0: int;
  var r#0: int;
  var $rhs#0: int;
  var $rhs#1: int;
  var ##a#0: int;

    // AddMethodImpl: EuclideanTest, Impl$$_module.__default.EuclideanTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(233,13)
    assume true;
    assume true;
    assert {:id "id675"} b#0 != 0;
    assume true;
    $rhs#0 := Div(a#0, b#0);
    assert {:id "id677"} b#0 != 0;
    assume true;
    $rhs#1 := Mod(a#0, b#0);
    q#0 := $rhs#0;
    r#0 := $rhs#1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(234,4)
    if (LitInt(0) <= r#0)
    {
        ##a#0 := b#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##a#0, TInt, $Heap);
        assume _module.__default.abs#canCall(b#0);
    }

    assume LitInt(0) <= r#0 ==> _module.__default.abs#canCall(b#0);
    assert {:id "id681"} {:subsumption 0} LitInt(0) <= r#0;
    assert {:id "id682"} {:subsumption 0} r#0 < _module.__default.abs(b#0);
    assume {:id "id683"} LitInt(0) <= r#0 && r#0 < _module.__default.abs(b#0);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(235,4)
    assume true;
    assert {:id "id684"} a#0 == Mul(b#0, q#0) + r#0;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(236,4)
    assert {:id "id685"} {:subsumption 0} b#0 != 0;
    assert {:id "id686"} {:subsumption 0} b#0 != 0;
    assume true;
    assert {:id "id687"} Mul(Div(a#0, b#0), b#0) + Mod(a#0, b#0) == a#0;
}



procedure {:verboseName "havocInMultiassignment (well-formedness)"} CheckWellFormed$$_module.__default.havocInMultiassignment();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "havocInMultiassignment (call)"} Call$$_module.__default.havocInMultiassignment();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "havocInMultiassignment (correctness)"} Impl$$_module.__default.havocInMultiassignment() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "havocInMultiassignment (correctness)"} Impl$$_module.__default.havocInMultiassignment() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var i#0: int where LitInt(0) <= i#0;
  var j#0: int where LitInt(0) <= j#0;
  var $rhs#0: int where LitInt(0) <= $rhs#0;
  var $rhs#1: int;

    // AddMethodImpl: havocInMultiassignment, Impl$$_module.__default.havocInMultiassignment
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    havoc i#0 /* where LitInt(0) <= i#0 */, j#0 /* where LitInt(0) <= j#0 */;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(242,9)
    assume true;
    assume true;
    havoc $rhs#0 /* where LitInt(0) <= $rhs#0 */;
    assert {:id "id688"} $Is(LitInt(3), Tclass._System.nat());
    assume true;
    $rhs#1 := LitInt(3);
    i#0 := $rhs#0;
    j#0 := $rhs#1;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(243,4)
    assume true;
    assert {:id "id692"} LitInt(0) <= i#0;
}



procedure {:verboseName "m (well-formedness)"} CheckWellFormed$$_module.__default.m();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m (call)"} Call$$_module.__default.m();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "m (correctness)"} Impl$$_module.__default.m() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "swap (well-formedness)"} CheckWellFormed$$_module.__default.swap(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int where LitInt(0) <= i#0, 
    j#0: int where LitInt(0) <= j#0);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "swap (well-formedness)"} CheckWellFormed$$_module.__default.swap(a#0: ref, i#0: int, j#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: swap, CheckWellFormed$$_module.__default.swap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    if (LitInt(0) <= i#0)
    {
        assert {:id "id697"} a#0 != null;
    }

    assume {:id "id698"} LitInt(0) <= i#0 && i#0 < _System.array.Length(a#0);
    if (LitInt(0) <= j#0)
    {
        assert {:id "id699"} a#0 != null;
    }

    assume {:id "id700"} LitInt(0) <= j#0 && j#0 < _System.array.Length(a#0);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
    assume $HeapSucc(old($Heap), $Heap);
}



procedure {:verboseName "swap (call)"} Call$$_module.__default.swap(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int where LitInt(0) <= i#0, 
    j#0: int where LitInt(0) <= j#0);
  // user-defined preconditions
  requires {:id "id701"} LitInt(0) <= i#0;
  requires {:id "id702"} i#0 < _System.array.Length(a#0);
  requires {:id "id703"} LitInt(0) <= j#0;
  requires {:id "id704"} j#0 < _System.array.Length(a#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "swap (correctness)"} Impl$$_module.__default.swap(a#0: ref
       where $Is(a#0, Tclass._System.array(TInt))
         && $IsAlloc(a#0, Tclass._System.array(TInt), $Heap), 
    i#0: int where LitInt(0) <= i#0, 
    j#0: int where LitInt(0) <= j#0)
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id705"} LitInt(0) <= i#0;
  requires {:id "id706"} i#0 < _System.array.Length(a#0);
  requires {:id "id707"} LitInt(0) <= j#0;
  requires {:id "id708"} j#0 < _System.array.Length(a#0);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == a#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "swap (correctness)"} Impl$$_module.__default.swap(a#0: ref, i#0: int, j#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $index0: Field;
  var $obj1: ref;
  var $index1: Field;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: swap, Impl$$_module.__default.swap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == a#0);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(256,14)
    assert {:id "id709"} a#0 != null;
    assert {:id "id710"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume true;
    $obj0 := a#0;
    $index0 := IndexField(i#0);
    assert {:id "id711"} $_ModifiesFrame[$obj0, $index0];
    assert {:id "id712"} a#0 != null;
    assert {:id "id713"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume true;
    $obj1 := a#0;
    $index1 := IndexField(j#0);
    assert {:id "id714"} $_ModifiesFrame[$obj1, $index1];
    assert {:id "id715"} a#0 != null;
    assert {:id "id716"} 0 <= j#0 && j#0 < _System.array.Length(a#0);
    assume true;
    $rhs#0 := $Unbox(read($Heap, a#0, IndexField(j#0))): int;
    assert {:id "id718"} a#0 != null;
    assert {:id "id719"} 0 <= i#0 && i#0 < _System.array.Length(a#0);
    assume true;
    $rhs#1 := $Unbox(read($Heap, a#0, IndexField(i#0))): int;
    assert {:id "id721"} a#0 != a#0 || j#0 != i#0 || $Box($rhs#1) == $Box($rhs#0);
    $Heap := update($Heap, $obj0, $index0, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, $index1, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



function Tclass._module.CC() : Ty
uses {
// Tclass._module.CC Tag
axiom Tag(Tclass._module.CC()) == Tagclass._module.CC
   && TagFamily(Tclass._module.CC()) == tytagFamily$CC;
}

const unique Tagclass._module.CC: TyTag;

// Box/unbox axiom for Tclass._module.CC
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CC()) } 
  $IsBox(bx, Tclass._module.CC())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CC()));

procedure {:verboseName "notQuiteSwap (well-formedness)"} CheckWellFormed$$_module.__default.notQuiteSwap(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "notQuiteSwap (call)"} Call$$_module.__default.notQuiteSwap(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0 || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "notQuiteSwap (correctness)"} Impl$$_module.__default.notQuiteSwap(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0 || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "notQuiteSwap (correctness)"} Impl$$_module.__default.notQuiteSwap(c#0: ref, d#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: notQuiteSwap, Impl$$_module.__default.notQuiteSwap
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0 || $o == d#0);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(267,12)
    assert {:id "id724"} c#0 != null;
    assume true;
    $obj0 := c#0;
    assert {:id "id725"} $_ModifiesFrame[$obj0, _module.CC.x];
    assert {:id "id726"} d#0 != null;
    assume true;
    $obj1 := d#0;
    assert {:id "id727"} $_ModifiesFrame[$obj1, _module.CC.x];
    assert {:id "id728"} c#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, c#0, _module.CC.x)): int;
    assert {:id "id730"} c#0 != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, c#0, _module.CC.x)): int;
    assert {:id "id732"} d#0 != c#0 || $rhs#1 == $rhs#0;
    $Heap := update($Heap, $obj0, _module.CC.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.CC.x, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "notQuiteSwap2 (well-formedness)"} CheckWellFormed$$_module.__default.notQuiteSwap2(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "notQuiteSwap2 (call)"} Call$$_module.__default.notQuiteSwap2(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0 || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "notQuiteSwap2 (correctness)"} Impl$$_module.__default.notQuiteSwap2(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0 || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "notQuiteSwap2 (correctness)"} Impl$$_module.__default.notQuiteSwap2(c#0: ref, d#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: notQuiteSwap2, Impl$$_module.__default.notQuiteSwap2
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0 || $o == d#0);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(273,12)
    assert {:id "id735"} c#0 != null;
    assume true;
    $obj0 := c#0;
    assert {:id "id736"} $_ModifiesFrame[$obj0, _module.CC.x];
    assert {:id "id737"} d#0 != null;
    assume true;
    $obj1 := d#0;
    assert {:id "id738"} $_ModifiesFrame[$obj1, _module.CC.x];
    assert {:id "id739"} d#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, d#0, _module.CC.x)): int;
    assert {:id "id741"} c#0 != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, c#0, _module.CC.y)): int;
    assert {:id "id743"} d#0 != c#0 || $rhs#1 == $rhs#0;
    $Heap := update($Heap, $obj0, _module.CC.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.CC.x, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "OKNowIt'sSwapAgain (well-formedness)"} CheckWellFormed$$_module.__default.OKNowIt_ksSwapAgain(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "OKNowIt'sSwapAgain (call)"} Call$$_module.__default.OKNowIt_ksSwapAgain(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0 || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "OKNowIt'sSwapAgain (correctness)"} Impl$$_module.__default.OKNowIt_ksSwapAgain(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0 || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "OKNowIt'sSwapAgain (correctness)"} Impl$$_module.__default.OKNowIt_ksSwapAgain(c#0: ref, d#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: OKNowIt'sSwapAgain, Impl$$_module.__default.OKNowIt_ksSwapAgain
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0 || $o == d#0);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(279,12)
    assert {:id "id746"} c#0 != null;
    assume true;
    $obj0 := c#0;
    assert {:id "id747"} $_ModifiesFrame[$obj0, _module.CC.x];
    assert {:id "id748"} d#0 != null;
    assume true;
    $obj1 := d#0;
    assert {:id "id749"} $_ModifiesFrame[$obj1, _module.CC.x];
    assert {:id "id750"} d#0 != null;
    assume true;
    $rhs#0 := $Unbox(read($Heap, d#0, _module.CC.x)): int;
    assert {:id "id752"} c#0 != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, c#0, _module.CC.x)): int;
    assert {:id "id754"} d#0 != c#0 || $rhs#1 == $rhs#0;
    $Heap := update($Heap, $obj0, _module.CC.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.CC.x, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "notQuiteSwap3 (well-formedness)"} CheckWellFormed$$_module.__default.notQuiteSwap3(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "notQuiteSwap3 (call)"} Call$$_module.__default.notQuiteSwap3(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap));
  // user-defined preconditions
  requires {:id "id758"} c#0 != d#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0 || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "notQuiteSwap3 (correctness)"} Impl$$_module.__default.notQuiteSwap3(c#0: ref
       where $Is(c#0, Tclass._module.CC()) && $IsAlloc(c#0, Tclass._module.CC(), $Heap), 
    d#0: ref
       where $Is(d#0, Tclass._module.CC()) && $IsAlloc(d#0, Tclass._module.CC(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id759"} c#0 != d#0;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == c#0 || $o == d#0);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "notQuiteSwap3 (correctness)"} Impl$$_module.__default.notQuiteSwap3(c#0: ref, d#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $obj1: ref;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var $rhs#3: int;

    // AddMethodImpl: notQuiteSwap3, Impl$$_module.__default.notQuiteSwap3
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == c#0 || $o == d#0);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(286,12)
    assert {:id "id760"} c#0 != null;
    assume true;
    $obj0 := c#0;
    assert {:id "id761"} $_ModifiesFrame[$obj0, _module.CC.x];
    assert {:id "id762"} d#0 != null;
    assume true;
    $obj1 := d#0;
    assert {:id "id763"} $_ModifiesFrame[$obj1, _module.CC.x];
    assume true;
    $rhs#0 := LitInt(4);
    assert {:id "id765"} c#0 != null;
    assume true;
    $rhs#1 := $Unbox(read($Heap, c#0, _module.CC.y)): int;
    assert {:id "id767"} d#0 != c#0 || $rhs#1 == $rhs#0;
    $Heap := update($Heap, $obj0, _module.CC.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.CC.x, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(287,12)
    assert {:id "id770"} c#0 != null;
    assume true;
    $obj0 := c#0;
    assert {:id "id771"} $_ModifiesFrame[$obj0, _module.CC.x];
    assert {:id "id772"} c#0 != null;
    assume true;
    $obj1 := c#0;
    assert {:id "id773"} $_ModifiesFrame[$obj1, _module.CC.y];
    assume true;
    $rhs#2 := LitInt(3);
    assert {:id "id775"} c#0 != null;
    assume true;
    $rhs#3 := $Unbox(read($Heap, c#0, _module.CC.y)): int;
    $Heap := update($Heap, $obj0, _module.CC.x, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    $Heap := update($Heap, $obj1, _module.CC.y, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "InlineMultisetFormingExpr (well-formedness)"} CheckWellFormed$$_module.__default.InlineMultisetFormingExpr(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "InlineMultisetFormingExpr (call)"} Call$$_module.__default.InlineMultisetFormingExpr(s#0: Seq where $Is(s#0, TSeq(TInt)) && $IsAlloc(s#0, TSeq(TInt), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.__default.MSFE#canCall(s#0);
  free ensures {:id "id780"} _module.__default.MSFE#canCall(s#0)
     && 
    _module.__default.MSFE(s#0)
     && MultiSet#Equal(MultiSet#FromSeq(s#0), MultiSet#FromSeq(s#0));
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// function declaration for _module._default.MSFE
function _module.__default.MSFE(s#0: Seq) : bool
uses {
// definition axiom for _module.__default.MSFE (revealed)
axiom {:id "id781"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    { _module.__default.MSFE(s#0) } 
    _module.__default.MSFE#canCall(s#0)
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TInt)))
       ==> _module.__default.MSFE(s#0)
         == MultiSet#Equal(MultiSet#FromSeq(s#0), MultiSet#FromSeq(s#0)));
// definition axiom for _module.__default.MSFE for all literals (revealed)
axiom {:id "id782"} 0 <= $FunctionContextHeight
   ==> (forall s#0: Seq :: 
    {:weight 3} { _module.__default.MSFE(Lit(s#0)) } 
    _module.__default.MSFE#canCall(Lit(s#0))
         || (0 < $FunctionContextHeight && $Is(s#0, TSeq(TInt)))
       ==> _module.__default.MSFE(Lit(s#0))
         == MultiSet#Equal(MultiSet#FromSeq(Lit(s#0)), MultiSet#FromSeq(Lit(s#0))));
}

function _module.__default.MSFE#canCall(s#0: Seq) : bool;

function _module.__default.MSFE#requires(Seq) : bool;

// #requires axiom for _module.__default.MSFE
axiom (forall s#0: Seq :: 
  { _module.__default.MSFE#requires(s#0) } 
  $Is(s#0, TSeq(TInt)) ==> _module.__default.MSFE#requires(s#0) == true);

procedure {:verboseName "MSFE (well-formedness)"} CheckWellformed$$_module.__default.MSFE(s#0: Seq where $Is(s#0, TSeq(TInt)));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.CoPredTypeCheck
function _module.__default.CoPredTypeCheck(n#0: int) : bool;

function _module.__default.CoPredTypeCheck#canCall(n#0: int) : bool;

function _module.__default.CoPredTypeCheck#requires(int) : bool;

// #requires axiom for _module.__default.CoPredTypeCheck
axiom (forall n#0: int :: 
  { _module.__default.CoPredTypeCheck#requires(n#0) } 
  _module.__default.CoPredTypeCheck#requires(n#0) == (n#0 != 0));

// 1st prefix predicate axiom for _module.__default.CoPredTypeCheck_h
axiom 1 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    { _module.__default.CoPredTypeCheck(n#0) } 
    _module.__default.CoPredTypeCheck(n#0)
       ==> (forall _k#0: Box :: 
        { _module.__default.CoPredTypeCheck_h(_k#0, n#0) } 
        _module.__default.CoPredTypeCheck_h(_k#0, n#0)));

// 2nd prefix predicate axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall n#0: int :: 
    { _module.__default.CoPredTypeCheck(n#0) } 
    (forall _k#0: Box :: 
        { _module.__default.CoPredTypeCheck_h(_k#0, n#0) } 
        _module.__default.CoPredTypeCheck_h(_k#0, n#0))
       ==> _module.__default.CoPredTypeCheck(n#0));

// 3rd prefix predicate axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall n#0: int, _k#0: Box :: 
    { _module.__default.CoPredTypeCheck_h(_k#0, n#0) } 
    _k#0 == ORD#FromNat(0) ==> _module.__default.CoPredTypeCheck_h(_k#0, n#0));

procedure {:verboseName "CoPredTypeCheck (well-formedness)"} CheckWellformed$$_module.__default.CoPredTypeCheck(n#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module._default.CoPredTypeCheck#
function _module.__default.CoPredTypeCheck_h(_k#0: Box, n#0: int) : bool;

function _module.__default.CoPredTypeCheck_h#canCall(_k#0: Box, n#0: int) : bool;

function _module.__default.CoPredTypeCheck_h#requires(Box, int) : bool;

// #requires axiom for _module.__default.CoPredTypeCheck_h
axiom (forall _k#0: Box, n#0: int :: 
  { _module.__default.CoPredTypeCheck_h#requires(_k#0, n#0) } 
  _module.__default.CoPredTypeCheck_h#requires(_k#0, n#0) == (n#0 != 0));

procedure {:verboseName "HexTest (well-formedness)"} CheckWellFormed$$_module.__default.HexTest();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "HexTest (call)"} Call$$_module.__default.HexTest();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "HexTest (correctness)"} Impl$$_module.__default.HexTest() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "HexTest (correctness)"} Impl$$_module.__default.HexTest() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var first16lower#0: Seq
     where $Is(first16lower#0, TSeq(TInt)) && $IsAlloc(first16lower#0, TSeq(TInt), $Heap);
  var first16upper#0: Seq
     where $Is(first16upper#0, TSeq(TInt)) && $IsAlloc(first16upper#0, TSeq(TInt), $Heap);
  var i#0: int;
  var i#2: int;
  var randomHex#0: Seq
     where $Is(randomHex#0, TSeq(TInt)) && $IsAlloc(randomHex#0, TSeq(TInt), $Heap);
  var randomDec#0: Seq
     where $Is(randomDec#0, TSeq(TInt)) && $IsAlloc(randomDec#0, TSeq(TInt), $Heap);
  var i#4: int;

    // AddMethodImpl: HexTest, Impl$$_module.__default.HexTest
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(422,20)
    assume true;
    assume true;
    first16lower#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(1))), 
                                  $Box(LitInt(2))), 
                                $Box(LitInt(3))), 
                              $Box(LitInt(4))), 
                            $Box(LitInt(5))), 
                          $Box(LitInt(6))), 
                        $Box(LitInt(7))), 
                      $Box(LitInt(8))), 
                    $Box(LitInt(9))), 
                  $Box(LitInt(10))), 
                $Box(LitInt(11))), 
              $Box(LitInt(12))), 
            $Box(LitInt(13))), 
          $Box(LitInt(14))), 
        $Box(LitInt(15))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(423,20)
    assume true;
    assume true;
    first16upper#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(0))), $Box(LitInt(1))), 
                                  $Box(LitInt(2))), 
                                $Box(LitInt(3))), 
                              $Box(LitInt(4))), 
                            $Box(LitInt(5))), 
                          $Box(LitInt(6))), 
                        $Box(LitInt(7))), 
                      $Box(LitInt(8))), 
                    $Box(LitInt(9))), 
                  $Box(LitInt(10))), 
                $Box(LitInt(11))), 
              $Box(LitInt(12))), 
            $Box(LitInt(13))), 
          $Box(LitInt(14))), 
        $Box(LitInt(15))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(424,3)
    // Begin Comprehension WF check
    havoc i#0;
    if (true)
    {
        if (LitInt(0) <= i#0)
        {
        }

        if (LitInt(0) <= i#0 && i#0 < Seq#Length(first16lower#0))
        {
            assert {:id "id787"} {:subsumption 0} 0 <= i#0 && i#0 < Seq#Length(first16lower#0);
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id788"} (forall i#1: int :: 
      { $Unbox(Seq#Index(first16lower#0, i#1)): int } 
      LitInt(0) <= i#1 && i#1 < Seq#Length(first16lower#0)
         ==> $Unbox(Seq#Index(first16lower#0, i#1)): int == i#1);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(425,3)
    // Begin Comprehension WF check
    havoc i#2;
    if (true)
    {
        if (LitInt(0) <= i#2)
        {
        }

        if (LitInt(0) <= i#2 && i#2 < Seq#Length(first16upper#0))
        {
            assert {:id "id789"} {:subsumption 0} 0 <= i#2 && i#2 < Seq#Length(first16upper#0);
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id790"} (forall i#3: int :: 
      { $Unbox(Seq#Index(first16upper#0, i#3)): int } 
      LitInt(0) <= i#3 && i#3 < Seq#Length(first16upper#0)
         ==> $Unbox(Seq#Index(first16upper#0, i#3)): int == i#3);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(427,17)
    assume true;
    assume true;
    randomHex#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(3477362930))), $Box(LitInt(2589744047))), 
                                                                                                                                                                                                          $Box(LitInt(648457174))), 
                                                                                                                                                                                                        $Box(LitInt(15415603))), 
                                                                                                                                                                                                      $Box(LitInt(2435044047))), 
                                                                                                                                                                                                    $Box(LitInt(3187933185))), 
                                                                                                                                                                                                  $Box(LitInt(1523595514))), 
                                                                                                                                                                                                $Box(LitInt(3344275366))), 
                                                                                                                                                                                              $Box(LitInt(2096636327))), 
                                                                                                                                                                                            $Box(LitInt(3455038999))), 
                                                                                                                                                                                          $Box(LitInt(1216993640))), 
                                                                                                                                                                                        $Box(LitInt(2959051114))), 
                                                                                                                                                                                      $Box(LitInt(1974570418))), 
                                                                                                                                                                                    $Box(LitInt(3403117488))), 
                                                                                                                                                                                  $Box(LitInt(3632553720))), 
                                                                                                                                                                                $Box(LitInt(2398769469))), 
                                                                                                                                                                              $Box(LitInt(2394608417))), 
                                                                                                                                                                            $Box(LitInt(2621464030))), 
                                                                                                                                                                          $Box(LitInt(246013718))), 
                                                                                                                                                                        $Box(LitInt(3444056938))), 
                                                                                                                                                                      $Box(LitInt(2322109135))), 
                                                                                                                                                                    $Box(LitInt(2579433337))), 
                                                                                                                                                                  $Box(LitInt(3931300104))), 
                                                                                                                                                                $Box(LitInt(58310470))), 
                                                                                                                                                              $Box(LitInt(1628242745))), 
                                                                                                                                                            $Box(LitInt(3678616519))), 
                                                                                                                                                          $Box(LitInt(3914072686))), 
                                                                                                                                                        $Box(LitInt(4229460828))), 
                                                                                                                                                      $Box(LitInt(1784659379))), 
                                                                                                                                                    $Box(LitInt(4255523577))), 
                                                                                                                                                  $Box(LitInt(1644485497))), 
                                                                                                                                                $Box(LitInt(1376063380))), 
                                                                                                                                              $Box(LitInt(1522390013))), 
                                                                                                                                            $Box(LitInt(2132606175))), 
                                                                                                                                          $Box(LitInt(3967586431))), 
                                                                                                                                        $Box(LitInt(4198605885))), 
                                                                                                                                      $Box(LitInt(50066004))), 
                                                                                                                                    $Box(LitInt(2658563354))), 
                                                                                                                                  $Box(LitInt(4149411884))), 
                                                                                                                                $Box(LitInt(2520109921))), 
                                                                                                                              $Box(LitInt(3123451110))), 
                                                                                                                            $Box(LitInt(1096590075))), 
                                                                                                                          $Box(LitInt(2759389036))), 
                                                                                                                        $Box(LitInt(2139150316))), 
                                                                                                                      $Box(LitInt(3034416536))), 
                                                                                                                    $Box(LitInt(113569056))), 
                                                                                                                  $Box(LitInt(3217684480))), 
                                                                                                                $Box(LitInt(1777952605))), 
                                                                                                              $Box(LitInt(1930266087))), 
                                                                                                            $Box(LitInt(806691985))), 
                                                                                                          $Box(LitInt(36091805))), 
                                                                                                        $Box(LitInt(1820297564))), 
                                                                                                      $Box(LitInt(1330016162))), 
                                                                                                    $Box(LitInt(776406857))), 
                                                                                                  $Box(LitInt(2897015342))), 
                                                                                                $Box(LitInt(1163573365))), 
                                                                                              $Box(LitInt(2693955015))), 
                                                                                            $Box(LitInt(3799815127))), 
                                                                                          $Box(LitInt(1326665135))), 
                                                                                        $Box(LitInt(3536241040))), 
                                                                                      $Box(LitInt(3378447726))), 
                                                                                    $Box(LitInt(1163165151))), 
                                                                                  $Box(LitInt(1784424295))), 
                                                                                $Box(LitInt(2915391749))), 
                                                                              $Box(LitInt(3319144829))), 
                                                                            $Box(LitInt(1256473918))), 
                                                                          $Box(LitInt(3188839385))), 
                                                                        $Box(LitInt(865831700))), 
                                                                      $Box(LitInt(3868161393))), 
                                                                    $Box(LitInt(4113045917))), 
                                                                  $Box(LitInt(241438432))), 
                                                                $Box(LitInt(2675007811))), 
                                                              $Box(LitInt(354465647))), 
                                                            $Box(LitInt(2080258281))), 
                                                          $Box(LitInt(2351471473))), 
                                                        $Box(LitInt(1736439093))), 
                                                      $Box(LitInt(196693838))), 
                                                    $Box(LitInt(4215372800))), 
                                                  $Box(LitInt(2714419258))), 
                                                $Box(LitInt(1581046514))), 
                                              $Box(LitInt(1981216564))), 
                                            $Box(LitInt(3042395387))), 
                                          $Box(LitInt(660877099))), 
                                        $Box(LitInt(2707539070))), 
                                      $Box(LitInt(3217899519))), 
                                    $Box(LitInt(2788029817))), 
                                  $Box(LitInt(1050875824))), 
                                $Box(LitInt(3362808767))), 
                              $Box(LitInt(3721613))), 
                            $Box(LitInt(2510678132))), 
                          $Box(LitInt(1993876726))), 
                        $Box(LitInt(409501246))), 
                      $Box(LitInt(1273417770))), 
                    $Box(LitInt(741130572))), 
                  $Box(LitInt(1855051115))), 
                $Box(LitInt(1994570544))), 
              $Box(LitInt(3448107468))), 
            $Box(LitInt(1645859758))), 
          $Box(LitInt(3193559252))), 
        $Box(LitInt(3636919031))));
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(436,17)
    assume true;
    assume true;
    randomDec#0 := Lit(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Build(Seq#Empty(): Seq, $Box(LitInt(3477362930))), $Box(LitInt(2589744047))), 
                                                                                                                                                                                                          $Box(LitInt(648457174))), 
                                                                                                                                                                                                        $Box(LitInt(15415603))), 
                                                                                                                                                                                                      $Box(LitInt(2435044047))), 
                                                                                                                                                                                                    $Box(LitInt(3187933185))), 
                                                                                                                                                                                                  $Box(LitInt(1523595514))), 
                                                                                                                                                                                                $Box(LitInt(3344275366))), 
                                                                                                                                                                                              $Box(LitInt(2096636327))), 
                                                                                                                                                                                            $Box(LitInt(3455038999))), 
                                                                                                                                                                                          $Box(LitInt(1216993640))), 
                                                                                                                                                                                        $Box(LitInt(2959051114))), 
                                                                                                                                                                                      $Box(LitInt(1974570418))), 
                                                                                                                                                                                    $Box(LitInt(3403117488))), 
                                                                                                                                                                                  $Box(LitInt(3632553720))), 
                                                                                                                                                                                $Box(LitInt(2398769469))), 
                                                                                                                                                                              $Box(LitInt(2394608417))), 
                                                                                                                                                                            $Box(LitInt(2621464030))), 
                                                                                                                                                                          $Box(LitInt(246013718))), 
                                                                                                                                                                        $Box(LitInt(3444056938))), 
                                                                                                                                                                      $Box(LitInt(2322109135))), 
                                                                                                                                                                    $Box(LitInt(2579433337))), 
                                                                                                                                                                  $Box(LitInt(3931300104))), 
                                                                                                                                                                $Box(LitInt(58310470))), 
                                                                                                                                                              $Box(LitInt(1628242745))), 
                                                                                                                                                            $Box(LitInt(3678616519))), 
                                                                                                                                                          $Box(LitInt(3914072686))), 
                                                                                                                                                        $Box(LitInt(4229460828))), 
                                                                                                                                                      $Box(LitInt(1784659379))), 
                                                                                                                                                    $Box(LitInt(4255523577))), 
                                                                                                                                                  $Box(LitInt(1644485497))), 
                                                                                                                                                $Box(LitInt(1376063380))), 
                                                                                                                                              $Box(LitInt(1522390013))), 
                                                                                                                                            $Box(LitInt(2132606175))), 
                                                                                                                                          $Box(LitInt(3967586431))), 
                                                                                                                                        $Box(LitInt(4198605885))), 
                                                                                                                                      $Box(LitInt(50066004))), 
                                                                                                                                    $Box(LitInt(2658563354))), 
                                                                                                                                  $Box(LitInt(4149411884))), 
                                                                                                                                $Box(LitInt(2520109921))), 
                                                                                                                              $Box(LitInt(3123451110))), 
                                                                                                                            $Box(LitInt(1096590075))), 
                                                                                                                          $Box(LitInt(2759389036))), 
                                                                                                                        $Box(LitInt(2139150316))), 
                                                                                                                      $Box(LitInt(3034416536))), 
                                                                                                                    $Box(LitInt(113569056))), 
                                                                                                                  $Box(LitInt(3217684480))), 
                                                                                                                $Box(LitInt(1777952605))), 
                                                                                                              $Box(LitInt(1930266087))), 
                                                                                                            $Box(LitInt(806691985))), 
                                                                                                          $Box(LitInt(36091805))), 
                                                                                                        $Box(LitInt(1820297564))), 
                                                                                                      $Box(LitInt(1330016162))), 
                                                                                                    $Box(LitInt(776406857))), 
                                                                                                  $Box(LitInt(2897015342))), 
                                                                                                $Box(LitInt(1163573365))), 
                                                                                              $Box(LitInt(2693955015))), 
                                                                                            $Box(LitInt(3799815127))), 
                                                                                          $Box(LitInt(1326665135))), 
                                                                                        $Box(LitInt(3536241040))), 
                                                                                      $Box(LitInt(3378447726))), 
                                                                                    $Box(LitInt(1163165151))), 
                                                                                  $Box(LitInt(1784424295))), 
                                                                                $Box(LitInt(2915391749))), 
                                                                              $Box(LitInt(3319144829))), 
                                                                            $Box(LitInt(1256473918))), 
                                                                          $Box(LitInt(3188839385))), 
                                                                        $Box(LitInt(865831700))), 
                                                                      $Box(LitInt(3868161393))), 
                                                                    $Box(LitInt(4113045917))), 
                                                                  $Box(LitInt(241438432))), 
                                                                $Box(LitInt(2675007811))), 
                                                              $Box(LitInt(354465647))), 
                                                            $Box(LitInt(2080258281))), 
                                                          $Box(LitInt(2351471473))), 
                                                        $Box(LitInt(1736439093))), 
                                                      $Box(LitInt(196693838))), 
                                                    $Box(LitInt(4215372800))), 
                                                  $Box(LitInt(2714419258))), 
                                                $Box(LitInt(1581046514))), 
                                              $Box(LitInt(1981216564))), 
                                            $Box(LitInt(3042395387))), 
                                          $Box(LitInt(660877099))), 
                                        $Box(LitInt(2707539070))), 
                                      $Box(LitInt(3217899519))), 
                                    $Box(LitInt(2788029817))), 
                                  $Box(LitInt(1050875824))), 
                                $Box(LitInt(3362808767))), 
                              $Box(LitInt(3721613))), 
                            $Box(LitInt(2510678132))), 
                          $Box(LitInt(1993876726))), 
                        $Box(LitInt(409501246))), 
                      $Box(LitInt(1273417770))), 
                    $Box(LitInt(741130572))), 
                  $Box(LitInt(1855051115))), 
                $Box(LitInt(1994570544))), 
              $Box(LitInt(3448107468))), 
            $Box(LitInt(1645859758))), 
          $Box(LitInt(3193559252))), 
        $Box(LitInt(3636919031))));
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(445,3)
    // Begin Comprehension WF check
    havoc i#4;
    if (true)
    {
        if (LitInt(0) <= i#4)
        {
        }

        if (LitInt(0) <= i#4 && i#4 < Seq#Length(randomHex#0))
        {
            assert {:id "id793"} {:subsumption 0} 0 <= i#4 && i#4 < Seq#Length(randomHex#0);
            assert {:id "id794"} {:subsumption 0} 0 <= i#4 && i#4 < Seq#Length(randomDec#0);
        }
    }

    // End Comprehension WF check
    assume true;
    assert {:id "id795"} (forall i#5: int :: 
      { $Unbox(Seq#Index(randomDec#0, i#5)): int } 
        { $Unbox(Seq#Index(randomHex#0, i#5)): int } 
      LitInt(0) <= i#5 && i#5 < Seq#Length(randomHex#0)
         ==> $Unbox(Seq#Index(randomHex#0, i#5)): int
           == $Unbox(Seq#Index(randomDec#0, i#5)): int);
}



procedure {:verboseName "MySelectiveChecking0 (well-formedness)"} {:selective_checking} CheckWellFormed$$_module.__default.MySelectiveChecking0(x#0: int, y#0: int, z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MySelectiveChecking0 (call)"} {:selective_checking} Call$$_module.__default.MySelectiveChecking0(x#0: int, y#0: int, z#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MySelectiveChecking0 (correctness)"} {:selective_checking} Impl$$_module.__default.MySelectiveChecking0(x#0: int, y#0: int, z#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MySelectiveChecking0 (correctness)"} {:selective_checking} Impl$$_module.__default.MySelectiveChecking0(x#0: int, y#0: int, z#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MySelectiveChecking0, Impl$$_module.__default.MySelectiveChecking0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(454,3)
    if (*)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(456,5)
        assume true;
        assert {:id "id796"} y#0 + 129 == z#0;
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(458,5)
        assume true;
        assert {:id "id797"} x#0 < y#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(459,5)
        assume true;
        assert {:id "id798"} y#0 < z#0;
        // ----- assume statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(460,5)
        assume true;
        assume {:id "id799"} {:start_checking_here} true;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(461,5)
        assume true;
        assert {:id "id800"} x#0 < z#0;
        pop;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(463,3)
    assume true;
    assert {:id "id801"} x#0 < z#0;
}



procedure {:verboseName "MySelectiveChecking1 (well-formedness)"} {:selective_checking} CheckWellFormed$$_module.__default.MySelectiveChecking1(x#0: int, y#0: int, z#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MySelectiveChecking1 (call)"} {:selective_checking} Call$$_module.__default.MySelectiveChecking1(x#0: int, y#0: int, z#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "MySelectiveChecking1 (correctness)"} {:selective_checking} Impl$$_module.__default.MySelectiveChecking1(x#0: int, y#0: int, z#0: int) returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MySelectiveChecking1 (correctness)"} {:selective_checking} Impl$$_module.__default.MySelectiveChecking1(x#0: int, y#0: int, z#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: MySelectiveChecking1, Impl$$_module.__default.MySelectiveChecking1
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(467,3)
    if (*)
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(469,5)
        assume true;
        assert {:id "id802"} y#0 + 129 == z#0;
        pop;
    }
    else
    {
        push;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(471,5)
        assume true;
        assert {:id "id803"} x#0 < y#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(472,5)
        assume true;
        assert {:id "id804"} y#0 < z#0;
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(473,5)
        assume true;
        assert {:id "id805"} {:start_checking_here} Lit(true);
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(474,5)
        assume true;
        assert {:id "id806"} x#0 + 10 < z#0;
        pop;
    }

    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(476,3)
    assume true;
    assert {:id "id807"} x#0 < z#0;
}



const unique class._module.Global?: ClassName;

// $Is axiom for class Global
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Global?()) } 
  $Is($o, Tclass._module.Global?())
     <==> $o == null || dtype($o) == Tclass._module.Global?());

// $IsAlloc axiom for class Global
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Global?(), $h) } 
  $IsAlloc($o, Tclass._module.Global?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.Global.G
function _module.Global.G(x#0: int) : int
uses {
// definition axiom for _module.Global.G (revealed)
axiom {:id "id808"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    { _module.Global.G(x#0) } 
    _module.Global.G#canCall(x#0) || 0 < $FunctionContextHeight
       ==> _module.Global.G(x#0) == x#0 + x#0);
// definition axiom for _module.Global.G for all literals (revealed)
axiom {:id "id809"} 0 <= $FunctionContextHeight
   ==> (forall x#0: int :: 
    {:weight 3} { _module.Global.G(LitInt(x#0)) } 
    _module.Global.G#canCall(LitInt(x#0)) || 0 < $FunctionContextHeight
       ==> _module.Global.G(LitInt(x#0)) == LitInt(x#0 + x#0));
}

function _module.Global.G#canCall(x#0: int) : bool;

function _module.Global.G#requires(int) : bool;

// #requires axiom for _module.Global.G
axiom (forall x#0: int :: 
  { _module.Global.G#requires(x#0) } 
  _module.Global.G#requires(x#0) == true);

procedure {:verboseName "Global.G (well-formedness)"} CheckWellformed$$_module.Global.G(x#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Global.N (well-formedness)"} CheckWellFormed$$_module.Global.N(x#0: int) returns (r#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Global.N (call)"} Call$$_module.Global.N(x#0: int) returns (r#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Global.G#canCall(x#0);
  ensures {:id "id812"} r#0 == _module.Global.G(x#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Global.N (correctness)"} Impl$$_module.Global.N(x#0: int) returns (r#0: int, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.Global.G#canCall(x#0);
  ensures {:id "id813"} r#0 == _module.Global.G(x#0);
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass._module.Global() : Ty
uses {
// Tclass._module.Global Tag
axiom Tag(Tclass._module.Global()) == Tagclass._module.Global
   && TagFamily(Tclass._module.Global()) == tytagFamily$Global;
}

const unique Tagclass._module.Global: TyTag;

// Box/unbox axiom for Tclass._module.Global
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.Global()) } 
  $IsBox(bx, Tclass._module.Global())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.Global()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Global.N (correctness)"} Impl$$_module.Global.N(x#0: int) returns (r#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var ##x#0_0: int;
  var g#1_0: ref
     where $Is(g#1_0, Tclass._module.Global?())
       && $IsAlloc(g#1_0, Tclass._module.Global?(), $Heap);
  var newtype$check#1_0: ref;
  var ##x#1_0: int;
  var defass#g#2_0: bool;
  var g#2_0: ref
     where defass#g#2_0
       ==> $Is(g#2_0, Tclass._module.Global())
         && $IsAlloc(g#2_0, Tclass._module.Global(), $Heap);
  var ##x#2_0: int;
  var ##x#3_0: int;

    // AddMethodImpl: N, Impl$$_module.Global.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- alternative statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(9,5)
    if (*)
    {
        assume true;
        assume {:id "id823"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(10,23)
        assume true;
        ##x#3_0 := x#0 + 0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#3_0, TInt, $Heap);
        assume _module.Global.G#canCall(x#0 + 0);
        assume _module.Global.G#canCall(x#0 + 0);
        r#0 := _module.Global.G(x#0 + 0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id820"} true;
        havoc g#2_0 /* where defass#g#2_0
           ==> $Is(g#2_0, Tclass._module.Global())
             && $IsAlloc(g#2_0, Tclass._module.Global(), $Heap) */;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(13,11)
        assume true;
        assert {:id "id821"} defass#g#2_0;
        ##x#2_0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#2_0, TInt, $Heap);
        assume _module.Global.G#canCall(x#0);
        assume _module.Global.G#canCall(x#0);
        r#0 := _module.Global.G(x#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id817"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(15,24)
        assume true;
        newtype$check#1_0 := null;
        assume true;
        g#1_0 := null;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(16,11)
        assume true;
        ##x#1_0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#1_0, TInt, $Heap);
        assume _module.Global.G#canCall(x#0);
        assume _module.Global.G#canCall(x#0);
        r#0 := _module.Global.G(x#0);
    }
    else if (*)
    {
        assume true;
        assume {:id "id815"} true;
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(18,11)
        assume true;
        ##x#0_0 := x#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##x#0_0, TInt, $Heap);
        assume _module.Global.G#canCall(x#0);
        assume _module.Global.G#canCall(x#0);
        r#0 := _module.Global.G(x#0);
    }
    else
    {
        assume true;
        assume true;
        assume true;
        assume true;
        assume !Lit(true) && !Lit(true) && !Lit(true) && !Lit(true);
        assert {:id "id814"} false;
    }
}



// $Is axiom for non-null type _module.Global
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Global()) } { $Is(c#0, Tclass._module.Global?()) } 
  $Is(c#0, Tclass._module.Global())
     <==> $Is(c#0, Tclass._module.Global?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Global
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Global(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Global?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Global(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Global?(), $h));

const unique class._module.Multi?: ClassName;

// $Is axiom for class Multi
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.Multi?()) } 
  $Is($o, Tclass._module.Multi?())
     <==> $o == null || dtype($o) == Tclass._module.Multi?());

// $IsAlloc axiom for class Multi
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.Multi?(), $h) } 
  $IsAlloc($o, Tclass._module.Multi?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.Multi.x: Field
uses {
axiom FDim(_module.Multi.x) == 0
   && FieldOfDecl(class._module.Multi?, field$x) == _module.Multi.x
   && !$IsGhostField(_module.Multi.x);
}

// Multi.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Multi.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Multi?()
     ==> $Is($Unbox(read($h, $o, _module.Multi.x)): int, TInt));

// Multi.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Multi.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Multi?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Multi.x)): int, TInt, $h));

const _module.Multi.y: Field
uses {
axiom FDim(_module.Multi.y) == 0
   && FieldOfDecl(class._module.Multi?, field$y) == _module.Multi.y
   && !$IsGhostField(_module.Multi.y);
}

// Multi.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Multi.y)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Multi?()
     ==> $Is($Unbox(read($h, $o, _module.Multi.y)): int, TInt));

// Multi.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Multi.y)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Multi?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Multi.y)): int, TInt, $h));

const _module.Multi.next: Field
uses {
axiom FDim(_module.Multi.next) == 0
   && FieldOfDecl(class._module.Multi?, field$next) == _module.Multi.next
   && !$IsGhostField(_module.Multi.next);
}

// Multi.next: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Multi.next)): ref } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.Multi?()
     ==> $Is($Unbox(read($h, $o, _module.Multi.next)): ref, Tclass._module.Multi?()));

// Multi.next: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.Multi.next)): ref } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.Multi?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.Multi.next)): ref, Tclass._module.Multi?(), $h));

procedure {:verboseName "Multi.Mutate (well-formedness)"} CheckWellFormed$$_module.Multi.Mutate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Multi())
         && $IsAlloc(this, Tclass._module.Multi(), $Heap), 
    z#0: int)
   returns (m#0: ref
       where $Is(m#0, Tclass._module.Multi?())
         && $IsAlloc(m#0, Tclass._module.Multi?(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Multi.Mutate (well-formedness)"} CheckWellFormed$$_module.Multi.Mutate(this: ref, z#0: int) returns (m#0: ref)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: Mutate, CheckWellFormed$$_module.Multi.Mutate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    assume {:id "id825"} LitInt(0) <= z#0;
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    havoc m#0;
    assert {:id "id826"} $IsAlloc(this, Tclass._module.Multi(), old($Heap));
    assume {:id "id827"} $Unbox(read($Heap, this, _module.Multi.y)): int
       == $Unbox(read(old($Heap), this, _module.Multi.y)): int;
}



procedure {:verboseName "Multi.Mutate (call)"} Call$$_module.Multi.Mutate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Multi())
         && $IsAlloc(this, Tclass._module.Multi(), $Heap), 
    z#0: int)
   returns (m#0: ref
       where $Is(m#0, Tclass._module.Multi?())
         && $IsAlloc(m#0, Tclass._module.Multi?(), $Heap));
  // user-defined preconditions
  requires {:id "id828"} LitInt(0) <= z#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id829"} $Unbox(read($Heap, this, _module.Multi.y)): int
     == $Unbox(read(old($Heap), this, _module.Multi.y)): int;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Multi.Mutate (correctness)"} Impl$$_module.Multi.Mutate(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Multi())
         && $IsAlloc(this, Tclass._module.Multi(), $Heap), 
    z#0: int)
   returns (m#0: ref
       where $Is(m#0, Tclass._module.Multi?())
         && $IsAlloc(m#0, Tclass._module.Multi?(), $Heap), 
    $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  // user-defined preconditions
  requires {:id "id830"} LitInt(0) <= z#0;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id831"} $Unbox(read($Heap, this, _module.Multi.y)): int
     == $Unbox(read(old($Heap), this, _module.Multi.y)): int;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Multi.Mutate (correctness)"} Impl$$_module.Multi.Mutate(this: ref, z#0: int) returns (m#0: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;

    // AddMethodImpl: Mutate, Impl$$_module.Multi.Mutate
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(129,7)
    assume true;
    assert {:id "id832"} $_ModifiesFrame[this, _module.Multi.x];
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.Multi.x)): int + z#0;
    $Heap := update($Heap, this, _module.Multi.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
}



procedure {:verboseName "Multi.IncX (well-formedness)"} CheckWellFormed$$_module.Multi.IncX(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Multi())
         && $IsAlloc(this, Tclass._module.Multi(), $Heap))
   returns (oldX#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Multi.IncX (well-formedness)"} CheckWellFormed$$_module.Multi.IncX(this: ref) returns (oldX#0: int)
{
  var $_ModifiesFrame: [ref,Field]bool;


    // AddMethodImpl: IncX, CheckWellFormed$$_module.Multi.IncX
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    havoc $Heap;
    assume (forall $o: ref :: 
      { $Heap[$o] } 
      $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
         ==> $Heap[$o] == old($Heap)[$o] || $o == this);
    assume $HeapSucc(old($Heap), $Heap);
    havoc oldX#0;
    assert {:id "id835"} $IsAlloc(this, Tclass._module.Multi(), old($Heap));
    assume {:id "id836"} $Unbox(read($Heap, this, _module.Multi.x)): int
       == $Unbox(read(old($Heap), this, _module.Multi.x)): int + 1;
    assert {:id "id837"} $IsAlloc(this, Tclass._module.Multi(), old($Heap));
    assume {:id "id838"} oldX#0 == $Unbox(read(old($Heap), this, _module.Multi.x)): int;
}



procedure {:verboseName "Multi.IncX (call)"} Call$$_module.Multi.IncX(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Multi())
         && $IsAlloc(this, Tclass._module.Multi(), $Heap))
   returns (oldX#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id839"} $Unbox(read($Heap, this, _module.Multi.x)): int
     == $Unbox(read(old($Heap), this, _module.Multi.x)): int + 1;
  ensures {:id "id840"} oldX#0 == $Unbox(read(old($Heap), this, _module.Multi.x)): int;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Multi.IncX (correctness)"} Impl$$_module.Multi.IncX(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.Multi())
         && $IsAlloc(this, Tclass._module.Multi(), $Heap))
   returns (oldX#0: int, $_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id841"} $Unbox(read($Heap, this, _module.Multi.x)): int
     == $Unbox(read(old($Heap), this, _module.Multi.x)): int + 1;
  ensures {:id "id842"} oldX#0 == $Unbox(read(old($Heap), this, _module.Multi.x)): int;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Multi.IncX (correctness)"} Impl$$_module.Multi.IncX(this: ref) returns (oldX#0: int, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $obj0: ref;
  var $rhs#0: int;
  var $rhs#1: int;

    // AddMethodImpl: IncX, Impl$$_module.Multi.IncX
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- update statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(135,13)
    assume true;
    $obj0 := this;
    assert {:id "id843"} $_ModifiesFrame[$obj0, _module.Multi.x];
    assume true;
    assume true;
    $rhs#0 := $Unbox(read($Heap, this, _module.Multi.x)): int + 1;
    assume true;
    $rhs#1 := $Unbox(read($Heap, this, _module.Multi.x)): int;
    $Heap := update($Heap, $obj0, _module.Multi.x, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    oldX#0 := $rhs#1;
}



// $Is axiom for non-null type _module.Multi
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.Multi()) } { $Is(c#0, Tclass._module.Multi?()) } 
  $Is(c#0, Tclass._module.Multi())
     <==> $Is(c#0, Tclass._module.Multi?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.Multi
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.Multi(), $h) } 
    { $IsAlloc(c#0, Tclass._module.Multi?(), $h) } 
  $IsAlloc(c#0, Tclass._module.Multi(), $h)
     <==> $IsAlloc(c#0, Tclass._module.Multi?(), $h));

const unique class._module.MyBoxyClass?: ClassName;

function Tclass._module.MyBoxyClass?(Ty) : Ty;

const unique Tagclass._module.MyBoxyClass?: TyTag;

// Tclass._module.MyBoxyClass? Tag
axiom (forall _module.MyBoxyClass$T: Ty :: 
  { Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T) } 
  Tag(Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T))
       == Tagclass._module.MyBoxyClass?
     && TagFamily(Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T))
       == tytagFamily$MyBoxyClass);

function Tclass._module.MyBoxyClass?_0(Ty) : Ty;

// Tclass._module.MyBoxyClass? injectivity 0
axiom (forall _module.MyBoxyClass$T: Ty :: 
  { Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T) } 
  Tclass._module.MyBoxyClass?_0(Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T))
     == _module.MyBoxyClass$T);

// Box/unbox axiom for Tclass._module.MyBoxyClass?
axiom (forall _module.MyBoxyClass$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T)) } 
  $IsBox(bx, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T)));

// $Is axiom for class MyBoxyClass
axiom (forall _module.MyBoxyClass$T: Ty, $o: ref :: 
  { $Is($o, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T)) } 
  $Is($o, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T))
     <==> $o == null || dtype($o) == Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T));

// $IsAlloc axiom for class MyBoxyClass
axiom (forall _module.MyBoxyClass$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T), $h) } 
  $IsAlloc($o, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.MyBoxyClass.f: Field
uses {
axiom FDim(_module.MyBoxyClass.f) == 0
   && FieldOfDecl(class._module.MyBoxyClass?, field$f) == _module.MyBoxyClass.f
   && !$IsGhostField(_module.MyBoxyClass.f);
}

// MyBoxyClass.f: Type axiom
axiom (forall _module.MyBoxyClass$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.MyBoxyClass.f), Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T)
     ==> $IsBox(read($h, $o, _module.MyBoxyClass.f), _module.MyBoxyClass$T));

// MyBoxyClass.f: Allocation axiom
axiom (forall _module.MyBoxyClass$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, _module.MyBoxyClass.f), Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, _module.MyBoxyClass.f), _module.MyBoxyClass$T, $h));

procedure {:verboseName "MyBoxyClass.MyBoxyClass (well-formedness)"} CheckWellFormed$$_module.MyBoxyClass._MyBoxyClass(_module.MyBoxyClass$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module.MyBoxyClass$T)
         && $IsAllocBox(t#0, _module.MyBoxyClass$T, $Heap))
   returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "MyBoxyClass.MyBoxyClass (call)"} Call$$_module.MyBoxyClass._MyBoxyClass(_module.MyBoxyClass$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module.MyBoxyClass$T)
         && $IsAllocBox(t#0, _module.MyBoxyClass$T, $Heap))
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.MyBoxyClass(_module.MyBoxyClass$T))
         && $IsAlloc(this, Tclass._module.MyBoxyClass(_module.MyBoxyClass$T), $Heap));
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



procedure {:verboseName "MyBoxyClass.MyBoxyClass (correctness)"} Impl$$_module.MyBoxyClass._MyBoxyClass(_module.MyBoxyClass$T: Ty, 
    t#0: Box
       where $IsBox(t#0, _module.MyBoxyClass$T)
         && $IsAllocBox(t#0, _module.MyBoxyClass$T, $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "MyBoxyClass.MyBoxyClass (correctness)"} Impl$$_module.MyBoxyClass._MyBoxyClass(_module.MyBoxyClass$T: Ty, t#0: Box) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var this.f: Box;
  var defass#this.f: bool;

    // AddMethodImpl: MyBoxyClass, Impl$$_module.MyBoxyClass._MyBoxyClass
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(172,33)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(173,7)
    assume true;
    assume true;
    this.f := t#0;
    defass#this.f := true;
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(172,33)
    assert {:id "id849"} defass#this.f;
    assume this != null && $Is(this, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T));
    assume !$Unbox(read($Heap, this, alloc)): bool;
    assume read($Heap, this, _module.MyBoxyClass.f) == this.f;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Basics.dfy(172,33)
}



// $Is axiom for non-null type _module.MyBoxyClass
axiom (forall _module.MyBoxyClass$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass._module.MyBoxyClass(_module.MyBoxyClass$T)) } 
    { $Is(c#0, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T)) } 
  $Is(c#0, Tclass._module.MyBoxyClass(_module.MyBoxyClass$T))
     <==> $Is(c#0, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T)) && c#0 != null);

// $IsAlloc axiom for non-null type _module.MyBoxyClass
axiom (forall _module.MyBoxyClass$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.MyBoxyClass(_module.MyBoxyClass$T), $h) } 
    { $IsAlloc(c#0, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T), $h) } 
  $IsAlloc(c#0, Tclass._module.MyBoxyClass(_module.MyBoxyClass$T), $h)
     <==> $IsAlloc(c#0, Tclass._module.MyBoxyClass?(_module.MyBoxyClass$T), $h));

const unique class._module.CC?: ClassName;

function Tclass._module.CC?() : Ty
uses {
// Tclass._module.CC? Tag
axiom Tag(Tclass._module.CC?()) == Tagclass._module.CC?
   && TagFamily(Tclass._module.CC?()) == tytagFamily$CC;
}

const unique Tagclass._module.CC?: TyTag;

// Box/unbox axiom for Tclass._module.CC?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.CC?()) } 
  $IsBox(bx, Tclass._module.CC?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass._module.CC?()));

// $Is axiom for class CC
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.CC?()) } 
  $Is($o, Tclass._module.CC?())
     <==> $o == null || dtype($o) == Tclass._module.CC?());

// $IsAlloc axiom for class CC
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.CC?(), $h) } 
  $IsAlloc($o, Tclass._module.CC?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.CC.x: Field
uses {
axiom FDim(_module.CC.x) == 0
   && FieldOfDecl(class._module.CC?, field$x) == _module.CC.x
   && !$IsGhostField(_module.CC.x);
}

// CC.x: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.CC.x)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.CC?()
     ==> $Is($Unbox(read($h, $o, _module.CC.x)): int, TInt));

// CC.x: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.CC.x)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.CC?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.CC.x)): int, TInt, $h));

const _module.CC.y: Field
uses {
axiom FDim(_module.CC.y) == 0
   && FieldOfDecl(class._module.CC?, field$y) == _module.CC.y
   && !$IsGhostField(_module.CC.y);
}

// CC.y: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.CC.y)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.CC?()
     ==> $Is($Unbox(read($h, $o, _module.CC.y)): int, TInt));

// CC.y: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.CC.y)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.CC?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.CC.y)): int, TInt, $h));

// $Is axiom for non-null type _module.CC
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.CC()) } { $Is(c#0, Tclass._module.CC?()) } 
  $Is(c#0, Tclass._module.CC()) <==> $Is(c#0, Tclass._module.CC?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.CC
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.CC(), $h) } 
    { $IsAlloc(c#0, Tclass._module.CC?(), $h) } 
  $IsAlloc(c#0, Tclass._module.CC(), $h)
     <==> $IsAlloc(c#0, Tclass._module.CC?(), $h));

const unique class.SetCardinality.__default: ClassName;

const unique class.AssumeTypeAssumptions.__default: ClassName;

// function declaration for AssumeTypeAssumptions._default.f
function AssumeTypeAssumptions.__default.f(p#0: Seq) : bool;

function AssumeTypeAssumptions.__default.f#canCall(p#0: Seq) : bool;

function AssumeTypeAssumptions.__default.f#requires(Seq) : bool;

// #requires axiom for AssumeTypeAssumptions.__default.f
axiom (forall p#0: Seq :: 
  { AssumeTypeAssumptions.__default.f#requires(p#0) } 
  $Is(p#0, TSeq(TInt)) ==> AssumeTypeAssumptions.__default.f#requires(p#0) == true);

const unique class.AssumeTypeAssumptions.IntCell?: ClassName;

function Tclass.AssumeTypeAssumptions.IntCell?() : Ty
uses {
// Tclass.AssumeTypeAssumptions.IntCell? Tag
axiom Tag(Tclass.AssumeTypeAssumptions.IntCell?())
     == Tagclass.AssumeTypeAssumptions.IntCell?
   && TagFamily(Tclass.AssumeTypeAssumptions.IntCell?()) == tytagFamily$IntCell;
}

const unique Tagclass.AssumeTypeAssumptions.IntCell?: TyTag;

// Box/unbox axiom for Tclass.AssumeTypeAssumptions.IntCell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.AssumeTypeAssumptions.IntCell?()) } 
  $IsBox(bx, Tclass.AssumeTypeAssumptions.IntCell?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.AssumeTypeAssumptions.IntCell?()));

// $Is axiom for class IntCell
axiom (forall $o: ref :: 
  { $Is($o, Tclass.AssumeTypeAssumptions.IntCell?()) } 
  $Is($o, Tclass.AssumeTypeAssumptions.IntCell?())
     <==> $o == null || dtype($o) == Tclass.AssumeTypeAssumptions.IntCell?());

// $IsAlloc axiom for class IntCell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.AssumeTypeAssumptions.IntCell?(), $h) } 
  $IsAlloc($o, Tclass.AssumeTypeAssumptions.IntCell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const AssumeTypeAssumptions.IntCell.data: Field
uses {
axiom FDim(AssumeTypeAssumptions.IntCell.data) == 0
   && FieldOfDecl(class.AssumeTypeAssumptions.IntCell?, field$data)
     == AssumeTypeAssumptions.IntCell.data
   && !$IsGhostField(AssumeTypeAssumptions.IntCell.data);
}

// IntCell.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, AssumeTypeAssumptions.IntCell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.AssumeTypeAssumptions.IntCell?()
     ==> $Is($Unbox(read($h, $o, AssumeTypeAssumptions.IntCell.data)): int, TInt));

// IntCell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, AssumeTypeAssumptions.IntCell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.AssumeTypeAssumptions.IntCell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, AssumeTypeAssumptions.IntCell.data)): int, TInt, $h));

function Tclass.AssumeTypeAssumptions.IntCell() : Ty
uses {
// Tclass.AssumeTypeAssumptions.IntCell Tag
axiom Tag(Tclass.AssumeTypeAssumptions.IntCell())
     == Tagclass.AssumeTypeAssumptions.IntCell
   && TagFamily(Tclass.AssumeTypeAssumptions.IntCell()) == tytagFamily$IntCell;
}

const unique Tagclass.AssumeTypeAssumptions.IntCell: TyTag;

// Box/unbox axiom for Tclass.AssumeTypeAssumptions.IntCell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.AssumeTypeAssumptions.IntCell()) } 
  $IsBox(bx, Tclass.AssumeTypeAssumptions.IntCell())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.AssumeTypeAssumptions.IntCell()));

// $Is axiom for non-null type AssumeTypeAssumptions.IntCell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.AssumeTypeAssumptions.IntCell()) } 
    { $Is(c#0, Tclass.AssumeTypeAssumptions.IntCell?()) } 
  $Is(c#0, Tclass.AssumeTypeAssumptions.IntCell())
     <==> $Is(c#0, Tclass.AssumeTypeAssumptions.IntCell?()) && c#0 != null);

// $IsAlloc axiom for non-null type AssumeTypeAssumptions.IntCell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.AssumeTypeAssumptions.IntCell(), $h) } 
    { $IsAlloc(c#0, Tclass.AssumeTypeAssumptions.IntCell?(), $h) } 
  $IsAlloc(c#0, Tclass.AssumeTypeAssumptions.IntCell(), $h)
     <==> $IsAlloc(c#0, Tclass.AssumeTypeAssumptions.IntCell?(), $h));

const unique class.AssumeTypeAssumptions.Cell?: ClassName;

function Tclass.AssumeTypeAssumptions.Cell?(Ty) : Ty;

const unique Tagclass.AssumeTypeAssumptions.Cell?: TyTag;

// Tclass.AssumeTypeAssumptions.Cell? Tag
axiom (forall AssumeTypeAssumptions.Cell$T: Ty :: 
  { Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T) } 
  Tag(Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T))
       == Tagclass.AssumeTypeAssumptions.Cell?
     && TagFamily(Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T))
       == tytagFamily$Cell);

function Tclass.AssumeTypeAssumptions.Cell?_0(Ty) : Ty;

// Tclass.AssumeTypeAssumptions.Cell? injectivity 0
axiom (forall AssumeTypeAssumptions.Cell$T: Ty :: 
  { Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T) } 
  Tclass.AssumeTypeAssumptions.Cell?_0(Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T))
     == AssumeTypeAssumptions.Cell$T);

// Box/unbox axiom for Tclass.AssumeTypeAssumptions.Cell?
axiom (forall AssumeTypeAssumptions.Cell$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T)) } 
  $IsBox(bx, Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T)));

// $Is axiom for class Cell
axiom (forall AssumeTypeAssumptions.Cell$T: Ty, $o: ref :: 
  { $Is($o, Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T)) } 
  $Is($o, Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T))
     <==> $o == null
       || dtype($o) == Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T));

// $IsAlloc axiom for class Cell
axiom (forall AssumeTypeAssumptions.Cell$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T), $h) } 
  $IsAlloc($o, Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const AssumeTypeAssumptions.Cell.data: Field
uses {
axiom FDim(AssumeTypeAssumptions.Cell.data) == 0
   && FieldOfDecl(class.AssumeTypeAssumptions.Cell?, field$data)
     == AssumeTypeAssumptions.Cell.data
   && !$IsGhostField(AssumeTypeAssumptions.Cell.data);
}

// Cell.data: Type axiom
axiom (forall AssumeTypeAssumptions.Cell$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, AssumeTypeAssumptions.Cell.data), Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T)
     ==> $IsBox(read($h, $o, AssumeTypeAssumptions.Cell.data), AssumeTypeAssumptions.Cell$T));

// Cell.data: Allocation axiom
axiom (forall AssumeTypeAssumptions.Cell$T: Ty, $h: Heap, $o: ref :: 
  { read($h, $o, AssumeTypeAssumptions.Cell.data), Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T) } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T)
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAllocBox(read($h, $o, AssumeTypeAssumptions.Cell.data), AssumeTypeAssumptions.Cell$T, $h));

function Tclass.AssumeTypeAssumptions.Cell(Ty) : Ty;

const unique Tagclass.AssumeTypeAssumptions.Cell: TyTag;

// Tclass.AssumeTypeAssumptions.Cell Tag
axiom (forall AssumeTypeAssumptions.Cell$T: Ty :: 
  { Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T) } 
  Tag(Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T))
       == Tagclass.AssumeTypeAssumptions.Cell
     && TagFamily(Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T))
       == tytagFamily$Cell);

function Tclass.AssumeTypeAssumptions.Cell_0(Ty) : Ty;

// Tclass.AssumeTypeAssumptions.Cell injectivity 0
axiom (forall AssumeTypeAssumptions.Cell$T: Ty :: 
  { Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T) } 
  Tclass.AssumeTypeAssumptions.Cell_0(Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T))
     == AssumeTypeAssumptions.Cell$T);

// Box/unbox axiom for Tclass.AssumeTypeAssumptions.Cell
axiom (forall AssumeTypeAssumptions.Cell$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T)) } 
  $IsBox(bx, Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T)));

// $Is axiom for non-null type AssumeTypeAssumptions.Cell
axiom (forall AssumeTypeAssumptions.Cell$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T)) } 
    { $Is(c#0, Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T)) } 
  $Is(c#0, Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T))
     <==> $Is(c#0, Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T))
       && c#0 != null);

// $IsAlloc axiom for non-null type AssumeTypeAssumptions.Cell
axiom (forall AssumeTypeAssumptions.Cell$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T), $h) } 
    { $IsAlloc(c#0, Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T), $h) } 
  $IsAlloc(c#0, Tclass.AssumeTypeAssumptions.Cell(AssumeTypeAssumptions.Cell$T), $h)
     <==> $IsAlloc(c#0, Tclass.AssumeTypeAssumptions.Cell?(AssumeTypeAssumptions.Cell$T), $h));

const unique class.LetStmtHasMutableVariables.__default: ClassName;

const unique class.DivModBounded.__default: ClassName;

function Tclass.DivModBounded.int8() : Ty
uses {
// Tclass.DivModBounded.int8 Tag
axiom Tag(Tclass.DivModBounded.int8()) == Tagclass.DivModBounded.int8
   && TagFamily(Tclass.DivModBounded.int8()) == tytagFamily$int8;
}

const unique Tagclass.DivModBounded.int8: TyTag;

// Box/unbox axiom for Tclass.DivModBounded.int8
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DivModBounded.int8()) } 
  $IsBox(bx, Tclass.DivModBounded.int8())
     ==> $Box($Unbox(bx): int) == bx && $Is($Unbox(bx): int, Tclass.DivModBounded.int8()));

// $Is axiom for newtype DivModBounded.int8
axiom (forall x#0: int :: 
  { $Is(x#0, Tclass.DivModBounded.int8()) } 
  $Is(x#0, Tclass.DivModBounded.int8()) <==> LitInt(-128) <= x#0 && x#0 < 128);

// $IsAlloc axiom for newtype DivModBounded.int8
axiom (forall x#0: int, $h: Heap :: 
  { $IsAlloc(x#0, Tclass.DivModBounded.int8(), $h) } 
  $IsAlloc(x#0, Tclass.DivModBounded.int8(), $h));

const unique class.DivModBounded.int8: ClassName;

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

const unique tytagFamily$Global: TyTagFamily;

const unique tytagFamily$Multi: TyTagFamily;

const unique tytagFamily$MyBoxyClass: TyTagFamily;

const unique tytagFamily$CC: TyTagFamily;

const unique tytagFamily$IntCell: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$int8: TyTagFamily;

const unique field$x: NameFamily;

const unique field$y: NameFamily;

const unique field$f: NameFamily;

const unique field$next: NameFamily;

const unique field$data: NameFamily;
