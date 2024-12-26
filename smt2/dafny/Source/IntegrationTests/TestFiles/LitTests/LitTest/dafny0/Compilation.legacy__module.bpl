// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy-@PROC@.smt2 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy

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

const reveal__module._default.hidden: bool;

const unique class._module.__default: ClassName;

procedure {:verboseName "NotMain (well-formedness)"} CheckWellFormed$$_module.__default.NotMain();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "NotMain (call)"} Call$$_module.__default.NotMain();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "NotMain (correctness)"} Impl$$_module.__default.NotMain() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "NotMain (correctness)"} Impl$$_module.__default.NotMain() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: NotMain, Impl$$_module.__default.NotMain
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(128,8)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id198"} Call$$A.__default.run();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "Caller (well-formedness)"} CheckWellFormed$$_module.__default.Caller();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Caller (call)"} Call$$_module.__default.Caller();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "Caller (correctness)"} Impl$$_module.__default.Caller() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function Tclass.M.public() : Ty
uses {
// Tclass.M.public Tag
axiom Tag(Tclass.M.public()) == Tagclass.M.public
   && TagFamily(Tclass.M.public()) == tytagFamily$public;
}

const unique Tagclass.M.public: TyTag;

// Box/unbox axiom for Tclass.M.public
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M.public()) } 
  $IsBox(bx, Tclass.M.public())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.M.public()));

function M.public.namespace(this: ref) : int;

function M.public.fallthrough(this: ref) : int;

function M.public.try(this: ref) : int;

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Caller (correctness)"} Impl$$_module.__default.Caller() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#p#0: bool;
  var p#0: ref
     where defass#p#0
       ==> $Is(p#0, Tclass.M.public()) && $IsAlloc(p#0, Tclass.M.public(), $Heap);
  var $nw: ref;
  var x#0: int;

    // AddMethodImpl: Caller, Impl$$_module.__default.Caller
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(166,9)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(166,12)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id199"} $nw := Call$$M.public.__ctor();
    // TrCallStmt: After ProcessCallStmt
    p#0 := $nw;
    defass#p#0 := true;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(167,9)
    assume true;
    assert {:id "id201"} defass#p#0;
    assert {:id "id202"} p#0 != null;
    assert {:id "id203"} defass#p#0;
    assert {:id "id204"} p#0 != null;
    assert {:id "id205"} defass#p#0;
    assert {:id "id206"} p#0 != null;
    assert {:id "id207"} defass#p#0;
    assert {:id "id208"} p#0 != null;
    assume true;
    x#0 := $Unbox(read($Heap, p#0, M.public.private)): int
       + M.public.namespace(p#0)
       + M.public.fallthrough(p#0)
       + M.public.try(p#0);
}



function Tclass._module.Tuple(Ty, Ty) : Ty;

const unique Tagclass._module.Tuple: TyTag;

// Tclass._module.Tuple Tag
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty :: 
  { Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U) } 
  Tag(Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
       == Tagclass._module.Tuple
     && TagFamily(Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
       == tytagFamily$Tuple);

function Tclass._module.Tuple_0(Ty) : Ty;

// Tclass._module.Tuple injectivity 0
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty :: 
  { Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U) } 
  Tclass._module.Tuple_0(Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
     == _module.Tuple$T);

function Tclass._module.Tuple_1(Ty) : Ty;

// Tclass._module.Tuple injectivity 1
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty :: 
  { Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U) } 
  Tclass._module.Tuple_1(Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
     == _module.Tuple$U);

// Box/unbox axiom for Tclass._module.Tuple
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U)) } 
  $IsBox(bx, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U)));

procedure {:verboseName "DigitsIdents (well-formedness)"} CheckWellFormed$$_module.__default.DigitsIdents(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tuple(TInt, Tclass._module.Tuple(TInt, TBool)))
         && $IsAlloc(t#0, Tclass._module.Tuple(TInt, Tclass._module.Tuple(TInt, TBool)), $Heap)
         && $IsA#_module.Tuple(t#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitsIdents (call)"} Call$$_module.__default.DigitsIdents(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tuple(TInt, Tclass._module.Tuple(TInt, TBool)))
         && $IsAlloc(t#0, Tclass._module.Tuple(TInt, Tclass._module.Tuple(TInt, TBool)), $Heap)
         && $IsA#_module.Tuple(t#0));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DigitsIdents (correctness)"} Impl$$_module.__default.DigitsIdents(t#0: DatatypeType
       where $Is(t#0, Tclass._module.Tuple(TInt, Tclass._module.Tuple(TInt, TBool)))
         && $IsAlloc(t#0, Tclass._module.Tuple(TInt, Tclass._module.Tuple(TInt, TBool)), $Heap)
         && $IsA#_module.Tuple(t#0))
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



procedure {:verboseName "m_nobody (well-formedness)"} CheckWellFormed$$_module.__default.m__nobody() returns (y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "m_nobody (call)"} Call$$_module.__default.m__nobody() returns (y#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id214"} y#0 > 5;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSuccGhost(old($Heap), $Heap);



procedure {:verboseName "l_nobody (well-formedness)"} CheckWellFormed$$_module.__default.l__nobody() returns (y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "l_nobody (call)"} Call$$_module.__default.l__nobody() returns (y#0: int);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id216"} y#0 > 5;
  // frame condition
  free ensures old($Heap) == $Heap;



// function declaration for _module._default.f_nobody
function _module.__default.f__nobody() : int
uses {
// consequence axiom for _module.__default.f__nobody
axiom 0 <= $FunctionContextHeight
   ==> 
  _module.__default.f__nobody#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.f__nobody() > 5;
}

function _module.__default.f__nobody#canCall() : bool;

function _module.__default.f__nobody#requires() : bool
uses {
// #requires axiom for _module.__default.f__nobody
axiom _module.__default.f__nobody#requires() == true;
}

procedure {:verboseName "f_nobody (well-formedness)"} CheckWellformed$$_module.__default.f__nobody();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  ensures {:id "id217"} _module.__default.f__nobody() > 5;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "f_nobody (well-formedness)"} CheckWellformed$$_module.__default.f__nobody()
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
        assert {:id "id218"} Lit(true);
        assume Lit(true) || _module.__default.f__nobody#canCall();
        assume {:id "id219"} _module.__default.f__nobody() > 5;
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        assume false;
    }
}



// function declaration for _module._default.hidden
function _module.__default.hidden($reveal: bool) : int
uses {
// definition axiom for _module.__default.hidden (revealed)
axiom {:id "id220"} 0 <= $FunctionContextHeight
   ==> 
  _module.__default.hidden#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.hidden(true) == LitInt(7);
// definition axiom for _module.__default.hidden for all literals (revealed)
axiom {:id "id221"} 0 <= $FunctionContextHeight
   ==> 
  _module.__default.hidden#canCall() || 0 < $FunctionContextHeight
   ==> _module.__default.hidden(true) == LitInt(7);
}

function _module.__default.hidden#canCall() : bool;

function _module.__default.hidden#requires() : bool
uses {
// #requires axiom for _module.__default.hidden
axiom _module.__default.hidden#requires() == true;
}

procedure {:verboseName "hidden (well-formedness)"} CheckWellformed$$_module.__default.hidden();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "hidden_test (well-formedness)"} CheckWellFormed$$_module.__default.hidden__test();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "hidden_test (call)"} Call$$_module.__default.hidden__test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "hidden_test (correctness)"} Impl$$_module.__default.hidden__test() returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "hidden_test (correctness)"} Impl$$_module.__default.hidden__test() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: hidden_test, Impl$$_module.__default.hidden__test
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- hide/reveal statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(208,3)
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(208,10)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id223"} Call$$_module.__default.reveal__hidden();
    // TrCallStmt: After ProcessCallStmt
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(209,3)
    assume _module.__default.hidden#canCall();
    assume _module.__default.hidden#canCall();
    assert {:id "id224"} _module.__default.hidden(reveal__module._default.hidden) == LitInt(7);
}



procedure {:verboseName "Main (well-formedness)"} CheckWellFormed$$_module.__default.Main();
  free requires 0 == $FunctionContextHeight;
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
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Main (correctness)"} Impl$$_module.__default.Main() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: Main, Impl$$_module.__default.Main
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(270,23)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id225"} Call$$CoRecursion.__default.TestMain();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(271,25)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id226"} Call$$EqualityTests.__default.TestMain();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(272,30)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id227"} Call$$TypeInstantiations.__default.TestMain();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(273,50)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id228"} Call$$TailRecursionWhereTypeParametersChange.__default.TestMain();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(274,19)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id229"} Call$$GeneralMaps.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(275,21)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id230"} Call$$Cardinalities.__default.Test();
    // TrCallStmt: After ProcessCallStmt
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(276,15)
    // TrCallStmt: Before ProcessCallStmt
    call {:id "id231"} Call$$AltLoop.__default.Test();
    // TrCallStmt: After ProcessCallStmt
}



procedure {:verboseName "N (well-formedness)"} CheckWellFormed$$_module.__default.N();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "N (call)"} Call$$_module.__default.N();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "N (correctness)"} Impl$$_module.__default.N() returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "N (correctness)"} Impl$$_module.__default.N() returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var z#0: int where LitInt(0) <= z#0;
  var z#1: int;

    // AddMethodImpl: N, Impl$$_module.__default.N
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assign-such-that statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(329,14)
    havoc z#1;
    if (LitInt(0) <= z#1)
    {
        assume true;
    }

    assert {:id "id232"} Lit(true);
    havoc z#0;
    assume {:id "id233"} true;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(330,3)
    assume true;
    assert {:id "id234"} LitInt(0) <= z#0;
}



procedure {:verboseName "reveal_hidden (well-formedness)"} {:verify false} CheckWellFormed$$_module.__default.reveal__hidden();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "reveal_hidden (call)"} {:verify false} Call$$_module.__default.reveal__hidden();
  modifies $Heap;
  // frame condition
  free ensures old($Heap) == $Heap;
  free ensures reveal__module._default.hidden;



// Constructor function declaration
function #_module.Tuple.Pair(Box, Box, int, int) : DatatypeType;

const unique ##_module.Tuple.Pair: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: Box, a#0#2#0: int, a#0#3#0: int :: 
  { #_module.Tuple.Pair(a#0#0#0, a#0#1#0, a#0#2#0, a#0#3#0) } 
  DatatypeCtorId(#_module.Tuple.Pair(a#0#0#0, a#0#1#0, a#0#2#0, a#0#3#0))
     == ##_module.Tuple.Pair);
}

function _module.Tuple.Pair_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _module.Tuple.Pair_q(d) } 
  _module.Tuple.Pair_q(d) <==> DatatypeCtorId(d) == ##_module.Tuple.Pair);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _module.Tuple.Pair_q(d) } 
  _module.Tuple.Pair_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: Box, a#1#2#0: int, a#1#3#0: int :: 
      d == #_module.Tuple.Pair(a#1#0#0, a#1#1#0, a#1#2#0, a#1#3#0)));

// Constructor $Is
axiom (forall _module.Tuple$T: Ty, 
    _module.Tuple$U: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    a#2#2#0: int, 
    a#2#3#0: int :: 
  { $Is(#_module.Tuple.Pair(a#2#0#0, a#2#1#0, a#2#2#0, a#2#3#0), 
      Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U)) } 
  $Is(#_module.Tuple.Pair(a#2#0#0, a#2#1#0, a#2#2#0, a#2#3#0), 
      Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
     <==> $IsBox(a#2#0#0, _module.Tuple$T)
       && $IsBox(a#2#1#0, _module.Tuple$U)
       && $Is(a#2#2#0, TInt)
       && $Is(a#2#3#0, TInt));

// Constructor $IsAlloc
axiom (forall _module.Tuple$T: Ty, 
    _module.Tuple$U: Ty, 
    a#2#0#0: Box, 
    a#2#1#0: Box, 
    a#2#2#0: int, 
    a#2#3#0: int, 
    $h: Heap :: 
  { $IsAlloc(#_module.Tuple.Pair(a#2#0#0, a#2#1#0, a#2#2#0, a#2#3#0), 
      Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_module.Tuple.Pair(a#2#0#0, a#2#1#0, a#2#2#0, a#2#3#0), 
        Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), 
        $h)
       <==> $IsAllocBox(a#2#0#0, _module.Tuple$T, $h)
         && $IsAllocBox(a#2#1#0, _module.Tuple$U, $h)
         && $IsAlloc(a#2#2#0, TInt, $h)
         && $IsAlloc(a#2#3#0, TInt, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Tuple$T: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Tuple._0(d), _module.Tuple$T, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tuple.Pair_q(d)
       && (exists _module.Tuple$U: Ty :: 
        { $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h) } 
        $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h))
     ==> $IsAllocBox(_module.Tuple._0(d), _module.Tuple$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _module.Tuple$U: Ty, $h: Heap :: 
  { $IsAllocBox(_module.Tuple._1(d), _module.Tuple$U, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tuple.Pair_q(d)
       && (exists _module.Tuple$T: Ty :: 
        { $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h) } 
        $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h))
     ==> $IsAllocBox(_module.Tuple._1(d), _module.Tuple$U, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tuple.r(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tuple.Pair_q(d)
       && (exists _module.Tuple$T: Ty, _module.Tuple$U: Ty :: 
        { $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h) } 
        $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h))
     ==> $IsAlloc(_module.Tuple.r(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(_module.Tuple.s_k(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      _module.Tuple.Pair_q(d)
       && (exists _module.Tuple$T: Ty, _module.Tuple$U: Ty :: 
        { $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h) } 
        $IsAlloc(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U), $h))
     ==> $IsAlloc(_module.Tuple.s_k(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: Box, a#3#2#0: int, a#3#3#0: int :: 
  { #_module.Tuple.Pair(Lit(a#3#0#0), Lit(a#3#1#0), LitInt(a#3#2#0), LitInt(a#3#3#0)) } 
  #_module.Tuple.Pair(Lit(a#3#0#0), Lit(a#3#1#0), LitInt(a#3#2#0), LitInt(a#3#3#0))
     == Lit(#_module.Tuple.Pair(a#3#0#0, a#3#1#0, a#3#2#0, a#3#3#0)));

function _module.Tuple._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: Box, a#4#2#0: int, a#4#3#0: int :: 
  { #_module.Tuple.Pair(a#4#0#0, a#4#1#0, a#4#2#0, a#4#3#0) } 
  _module.Tuple._0(#_module.Tuple.Pair(a#4#0#0, a#4#1#0, a#4#2#0, a#4#3#0))
     == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: Box, a#5#2#0: int, a#5#3#0: int :: 
  { #_module.Tuple.Pair(a#5#0#0, a#5#1#0, a#5#2#0, a#5#3#0) } 
  BoxRank(a#5#0#0)
     < DtRank(#_module.Tuple.Pair(a#5#0#0, a#5#1#0, a#5#2#0, a#5#3#0)));

function _module.Tuple._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: Box, a#6#2#0: int, a#6#3#0: int :: 
  { #_module.Tuple.Pair(a#6#0#0, a#6#1#0, a#6#2#0, a#6#3#0) } 
  _module.Tuple._1(#_module.Tuple.Pair(a#6#0#0, a#6#1#0, a#6#2#0, a#6#3#0))
     == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: Box, a#7#2#0: int, a#7#3#0: int :: 
  { #_module.Tuple.Pair(a#7#0#0, a#7#1#0, a#7#2#0, a#7#3#0) } 
  BoxRank(a#7#1#0)
     < DtRank(#_module.Tuple.Pair(a#7#0#0, a#7#1#0, a#7#2#0, a#7#3#0)));

function _module.Tuple.r(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: Box, a#8#2#0: int, a#8#3#0: int :: 
  { #_module.Tuple.Pair(a#8#0#0, a#8#1#0, a#8#2#0, a#8#3#0) } 
  _module.Tuple.r(#_module.Tuple.Pair(a#8#0#0, a#8#1#0, a#8#2#0, a#8#3#0))
     == a#8#2#0);

function _module.Tuple.s_k(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#9#0#0: Box, a#9#1#0: Box, a#9#2#0: int, a#9#3#0: int :: 
  { #_module.Tuple.Pair(a#9#0#0, a#9#1#0, a#9#2#0, a#9#3#0) } 
  _module.Tuple.s_k(#_module.Tuple.Pair(a#9#0#0, a#9#1#0, a#9#2#0, a#9#3#0))
     == a#9#3#0);

// Depth-one case-split function
function $IsA#_module.Tuple(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_module.Tuple(d) } 
  $IsA#_module.Tuple(d) ==> _module.Tuple.Pair_q(d));

// Questionmark data type disjunctivity
axiom (forall _module.Tuple$T: Ty, _module.Tuple$U: Ty, d: DatatypeType :: 
  { _module.Tuple.Pair_q(d), $Is(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U)) } 
  $Is(d, Tclass._module.Tuple(_module.Tuple$T, _module.Tuple$U))
     ==> _module.Tuple.Pair_q(d));

// Datatype extensional equality declaration
function _module.Tuple#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_module.Tuple.Pair
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tuple#Equal(a, b) } 
  _module.Tuple#Equal(a, b)
     <==> _module.Tuple._0(a) == _module.Tuple._0(b)
       && _module.Tuple._1(a) == _module.Tuple._1(b)
       && _module.Tuple.r(a) == _module.Tuple.r(b)
       && _module.Tuple.s_k(a) == _module.Tuple.s_k(b));

// Datatype extensionality axiom: _module.Tuple
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _module.Tuple#Equal(a, b) } 
  _module.Tuple#Equal(a, b) <==> a == b);

const unique class._module.Tuple: ClassName;

const unique class._module.DigitsClass?: ClassName;

function Tclass._module.DigitsClass?() : Ty
uses {
// Tclass._module.DigitsClass? Tag
axiom Tag(Tclass._module.DigitsClass?()) == Tagclass._module.DigitsClass?
   && TagFamily(Tclass._module.DigitsClass?()) == tytagFamily$DigitsClass;
}

const unique Tagclass._module.DigitsClass?: TyTag;

// Box/unbox axiom for Tclass._module.DigitsClass?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DigitsClass?()) } 
  $IsBox(bx, Tclass._module.DigitsClass?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.DigitsClass?()));

// $Is axiom for class DigitsClass
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.DigitsClass?()) } 
  $Is($o, Tclass._module.DigitsClass?())
     <==> $o == null || dtype($o) == Tclass._module.DigitsClass?());

// $IsAlloc axiom for class DigitsClass
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.DigitsClass?(), $h) } 
  $IsAlloc($o, Tclass._module.DigitsClass?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.DigitsClass._7: Field
uses {
axiom FDim(_module.DigitsClass._7) == 0
   && FieldOfDecl(class._module.DigitsClass?, field$7) == _module.DigitsClass._7
   && !$IsGhostField(_module.DigitsClass._7);
}

// DigitsClass.7: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DigitsClass._7)): bool } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass._module.DigitsClass?()
     ==> $Is($Unbox(read($h, $o, _module.DigitsClass._7)): bool, TBool));

// DigitsClass.7: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DigitsClass._7)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DigitsClass?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DigitsClass._7)): bool, TBool, $h));

function Tclass._module.DigitsClass() : Ty
uses {
// Tclass._module.DigitsClass Tag
axiom Tag(Tclass._module.DigitsClass()) == Tagclass._module.DigitsClass
   && TagFamily(Tclass._module.DigitsClass()) == tytagFamily$DigitsClass;
}

const unique Tagclass._module.DigitsClass: TyTag;

// Box/unbox axiom for Tclass._module.DigitsClass
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DigitsClass()) } 
  $IsBox(bx, Tclass._module.DigitsClass())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.DigitsClass()));

procedure {:verboseName "DigitsClass.M (well-formedness)"} CheckWellFormed$$_module.DigitsClass.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitsClass())
         && $IsAlloc(this, Tclass._module.DigitsClass(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.DigitsClass())
         && $IsAlloc(c#0, Tclass._module.DigitsClass(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitsClass.M (call)"} Call$$_module.DigitsClass.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitsClass())
         && $IsAlloc(this, Tclass._module.DigitsClass(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.DigitsClass())
         && $IsAlloc(c#0, Tclass._module.DigitsClass(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DigitsClass.M (correctness)"} Impl$$_module.DigitsClass.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitsClass())
         && $IsAlloc(this, Tclass._module.DigitsClass(), $Heap), 
    c#0: ref
       where $Is(c#0, Tclass._module.DigitsClass())
         && $IsAlloc(c#0, Tclass._module.DigitsClass(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DigitsClass.M (correctness)"} Impl$$_module.DigitsClass.M(this: ref, c#0: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var x#0: int;

    // AddMethodImpl: M, Impl$$_module.DigitsClass.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(185,16)
    assume true;
    if ($Unbox(read($Heap, this, _module.DigitsClass._7)): bool)
    {
    }
    else
    {
        assert {:id "id235"} c#0 != null;
        if ($Unbox(read($Heap, c#0, _module.DigitsClass._7)): bool)
        {
        }
        else
        {
        }
    }

    assume true;
    x#0 := (if $Unbox(read($Heap, this, _module.DigitsClass._7)): bool
       then 7
       else (if $Unbox(read($Heap, c#0, _module.DigitsClass._7)): bool then 8 else 9));
}



// $Is axiom for non-null type _module.DigitsClass
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.DigitsClass()) } 
    { $Is(c#0, Tclass._module.DigitsClass?()) } 
  $Is(c#0, Tclass._module.DigitsClass())
     <==> $Is(c#0, Tclass._module.DigitsClass?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.DigitsClass
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.DigitsClass(), $h) } 
    { $IsAlloc(c#0, Tclass._module.DigitsClass?(), $h) } 
  $IsAlloc(c#0, Tclass._module.DigitsClass(), $h)
     <==> $IsAlloc(c#0, Tclass._module.DigitsClass?(), $h));

const unique class._module.DigitUnderscore__Names?: ClassName;

function Tclass._module.DigitUnderscore__Names?() : Ty
uses {
// Tclass._module.DigitUnderscore__Names? Tag
axiom Tag(Tclass._module.DigitUnderscore__Names?())
     == Tagclass._module.DigitUnderscore__Names?
   && TagFamily(Tclass._module.DigitUnderscore__Names?())
     == tytagFamily$DigitUnderscore_Names;
}

const unique Tagclass._module.DigitUnderscore__Names?: TyTag;

// Box/unbox axiom for Tclass._module.DigitUnderscore__Names?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DigitUnderscore__Names?()) } 
  $IsBox(bx, Tclass._module.DigitUnderscore__Names?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.DigitUnderscore__Names?()));

// $Is axiom for class DigitUnderscore_Names
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.DigitUnderscore__Names?()) } 
  $Is($o, Tclass._module.DigitUnderscore__Names?())
     <==> $o == null || dtype($o) == Tclass._module.DigitUnderscore__Names?());

// $IsAlloc axiom for class DigitUnderscore_Names
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.DigitUnderscore__Names?(), $h) } 
  $IsAlloc($o, Tclass._module.DigitUnderscore__Names?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const _module.DigitUnderscore__Names._0_1_0: Field
uses {
axiom FDim(_module.DigitUnderscore__Names._0_1_0) == 0
   && FieldOfDecl(class._module.DigitUnderscore__Names?, field$0_1_0)
     == _module.DigitUnderscore__Names._0_1_0
   && !$IsGhostField(_module.DigitUnderscore__Names._0_1_0);
}

// DigitUnderscore_Names.0_1_0: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DigitUnderscore__Names._0_1_0)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DigitUnderscore__Names?()
     ==> $Is($Unbox(read($h, $o, _module.DigitUnderscore__Names._0_1_0)): int, TInt));

// DigitUnderscore_Names.0_1_0: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DigitUnderscore__Names._0_1_0)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DigitUnderscore__Names?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DigitUnderscore__Names._0_1_0)): int, TInt, $h));

const _module.DigitUnderscore__Names._010: Field
uses {
axiom FDim(_module.DigitUnderscore__Names._010) == 0
   && FieldOfDecl(class._module.DigitUnderscore__Names?, field$010)
     == _module.DigitUnderscore__Names._010
   && !$IsGhostField(_module.DigitUnderscore__Names._010);
}

// DigitUnderscore_Names.010: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DigitUnderscore__Names._010)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DigitUnderscore__Names?()
     ==> $Is($Unbox(read($h, $o, _module.DigitUnderscore__Names._010)): int, TInt));

// DigitUnderscore_Names.010: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DigitUnderscore__Names._010)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DigitUnderscore__Names?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DigitUnderscore__Names._010)): int, TInt, $h));

const _module.DigitUnderscore__Names._10: Field
uses {
axiom FDim(_module.DigitUnderscore__Names._10) == 0
   && FieldOfDecl(class._module.DigitUnderscore__Names?, field$10)
     == _module.DigitUnderscore__Names._10
   && !$IsGhostField(_module.DigitUnderscore__Names._10);
}

// DigitUnderscore_Names.10: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DigitUnderscore__Names._10)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DigitUnderscore__Names?()
     ==> $Is($Unbox(read($h, $o, _module.DigitUnderscore__Names._10)): int, TInt));

// DigitUnderscore_Names.10: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, _module.DigitUnderscore__Names._10)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass._module.DigitUnderscore__Names?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, _module.DigitUnderscore__Names._10)): int, TInt, $h));

function Tclass._module.DigitUnderscore__Names() : Ty
uses {
// Tclass._module.DigitUnderscore__Names Tag
axiom Tag(Tclass._module.DigitUnderscore__Names())
     == Tagclass._module.DigitUnderscore__Names
   && TagFamily(Tclass._module.DigitUnderscore__Names())
     == tytagFamily$DigitUnderscore_Names;
}

const unique Tagclass._module.DigitUnderscore__Names: TyTag;

// Box/unbox axiom for Tclass._module.DigitUnderscore__Names
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DigitUnderscore__Names()) } 
  $IsBox(bx, Tclass._module.DigitUnderscore__Names())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass._module.DigitUnderscore__Names()));

procedure {:verboseName "DigitUnderscore_Names.M (well-formedness)"} CheckWellFormed$$_module.DigitUnderscore__Names.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names.M (call)"} Call$$_module.DigitUnderscore__Names.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o] || $o == this);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DigitUnderscore_Names.M (correctness)"} Impl$$_module.DigitUnderscore__Names.M(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DigitUnderscore_Names.M (correctness)"} Impl$$_module.DigitUnderscore__Names.M(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $rhs#0: int;
  var $rhs#1: int;
  var $rhs#2: int;
  var newtype$check#0: real;
  var $rhs#3: int;

    // AddMethodImpl: M, Impl$$_module.DigitUnderscore__Names.M
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> $o == this);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(258,16)
    assume true;
    assert {:id "id237"} $_ModifiesFrame[this, _module.DigitUnderscore__Names._0_1_0];
    assume true;
    $rhs#0 := LitInt(7);
    $Heap := update($Heap, this, _module.DigitUnderscore__Names._0_1_0, $Box($rhs#0));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(259,14)
    assume true;
    assert {:id "id240"} $_ModifiesFrame[this, _module.DigitUnderscore__Names._010];
    assume true;
    $rhs#1 := LitInt(8);
    $Heap := update($Heap, this, _module.DigitUnderscore__Names._010, $Box($rhs#1));
    assume $IsGoodHeap($Heap);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(260,13)
    assume true;
    assert {:id "id243"} $_ModifiesFrame[this, _module.DigitUnderscore__Names._10];
    assume true;
    $rhs#2 := LitInt(9);
    $Heap := update($Heap, this, _module.DigitUnderscore__Names._10, $Box($rhs#2));
    assume $IsGoodHeap($Heap);
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(261,5)
    newtype$check#0 := LitReal(7e0);
    assert {:id "id246"} Real(Int(newtype$check#0)) == newtype$check#0;
    if ($Unbox(read($Heap, this, _module.DigitUnderscore__Names._0_1_0)): int
       == Int(LitReal(7e0)))
    {
    }

    if ($Unbox(read($Heap, this, _module.DigitUnderscore__Names._0_1_0)): int
         == Int(LitReal(7e0))
       && $Unbox(read($Heap, this, _module.DigitUnderscore__Names._010)): int == LitInt(8))
    {
    }

    assume true;
    assert {:id "id247"} {:subsumption 0} $Unbox(read($Heap, this, _module.DigitUnderscore__Names._0_1_0)): int
       == Int(LitReal(7e0));
    assert {:id "id248"} {:subsumption 0} $Unbox(read($Heap, this, _module.DigitUnderscore__Names._010)): int == LitInt(8);
    assert {:id "id249"} {:subsumption 0} $Unbox(read($Heap, this, _module.DigitUnderscore__Names._10)): int == LitInt(9);
    assume {:id "id250"} $Unbox(read($Heap, this, _module.DigitUnderscore__Names._0_1_0)): int
         == Int(LitReal(7e0))
       && $Unbox(read($Heap, this, _module.DigitUnderscore__Names._010)): int == LitInt(8)
       && $Unbox(read($Heap, this, _module.DigitUnderscore__Names._10)): int == LitInt(9);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(262,13)
    assume true;
    assert {:id "id251"} $_ModifiesFrame[this, _module.DigitUnderscore__Names._10];
    assume true;
    $rhs#3 := LitInt(20);
    $Heap := update($Heap, this, _module.DigitUnderscore__Names._10, $Box($rhs#3));
    assume $IsGoodHeap($Heap);
}



// $Is axiom for non-null type _module.DigitUnderscore_Names
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.DigitUnderscore__Names()) } 
    { $Is(c#0, Tclass._module.DigitUnderscore__Names?()) } 
  $Is(c#0, Tclass._module.DigitUnderscore__Names())
     <==> $Is(c#0, Tclass._module.DigitUnderscore__Names?()) && c#0 != null);

// $IsAlloc axiom for non-null type _module.DigitUnderscore_Names
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.DigitUnderscore__Names(), $h) } 
    { $IsAlloc(c#0, Tclass._module.DigitUnderscore__Names?(), $h) } 
  $IsAlloc(c#0, Tclass._module.DigitUnderscore__Names(), $h)
     <==> $IsAlloc(c#0, Tclass._module.DigitUnderscore__Names?(), $h));

const unique class._module.DigitUnderscore__Names__Functions__and__Methods?: ClassName;

function Tclass._module.DigitUnderscore__Names__Functions__and__Methods?() : Ty
uses {
// Tclass._module.DigitUnderscore__Names__Functions__and__Methods? Tag
axiom Tag(Tclass._module.DigitUnderscore__Names__Functions__and__Methods?())
     == Tagclass._module.DigitUnderscore__Names__Functions__and__Methods?
   && TagFamily(Tclass._module.DigitUnderscore__Names__Functions__and__Methods?())
     == tytagFamily$DigitUnderscore_Names_Functions_and_Methods;
}

const unique Tagclass._module.DigitUnderscore__Names__Functions__and__Methods?: TyTag;

// Box/unbox axiom for Tclass._module.DigitUnderscore__Names__Functions__and__Methods?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?()) } 
  $IsBox(bx, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass._module.DigitUnderscore__Names__Functions__and__Methods?()));

// $Is axiom for class DigitUnderscore_Names_Functions_and_Methods
axiom (forall $o: ref :: 
  { $Is($o, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?()) } 
  $Is($o, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?())
     <==> $o == null
       || dtype($o) == Tclass._module.DigitUnderscore__Names__Functions__and__Methods?());

// $IsAlloc axiom for class DigitUnderscore_Names_Functions_and_Methods
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?(), $h) } 
  $IsAlloc($o, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for _module.DigitUnderscore_Names_Functions_and_Methods.70
function _module.DigitUnderscore__Names__Functions__and__Methods._70(this: ref) : int
uses {
// definition axiom for _module.DigitUnderscore__Names__Functions__and__Methods._70 (revealed)
axiom {:id "id254"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods._70(this) } 
    _module.DigitUnderscore__Names__Functions__and__Methods._70#canCall(this)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods()))
       ==> _module.DigitUnderscore__Names__Functions__and__Methods._70(this) == LitInt(80));
// definition axiom for _module.DigitUnderscore__Names__Functions__and__Methods._70 for all literals (revealed)
axiom {:id "id255"} 0 <= $FunctionContextHeight
   ==> (forall this: ref :: 
    {:weight 3} { _module.DigitUnderscore__Names__Functions__and__Methods._70(Lit(this)) } 
    _module.DigitUnderscore__Names__Functions__and__Methods._70#canCall(Lit(this))
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods()))
       ==> _module.DigitUnderscore__Names__Functions__and__Methods._70(Lit(this))
         == LitInt(80));
}

function _module.DigitUnderscore__Names__Functions__and__Methods._70#canCall(this: ref) : bool;

function Tclass._module.DigitUnderscore__Names__Functions__and__Methods() : Ty
uses {
// Tclass._module.DigitUnderscore__Names__Functions__and__Methods Tag
axiom Tag(Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
     == Tagclass._module.DigitUnderscore__Names__Functions__and__Methods
   && TagFamily(Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
     == tytagFamily$DigitUnderscore_Names_Functions_and_Methods;
}

const unique Tagclass._module.DigitUnderscore__Names__Functions__and__Methods: TyTag;

// Box/unbox axiom for Tclass._module.DigitUnderscore__Names__Functions__and__Methods
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass._module.DigitUnderscore__Names__Functions__and__Methods()) } 
  $IsBox(bx, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, 
        Tclass._module.DigitUnderscore__Names__Functions__and__Methods()));

function _module.DigitUnderscore__Names__Functions__and__Methods._70#requires(ref) : bool;

// #requires axiom for _module.DigitUnderscore__Names__Functions__and__Methods._70
axiom (forall this: ref :: 
  { _module.DigitUnderscore__Names__Functions__and__Methods._70#requires(this) } 
  this != null
       && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
     ==> _module.DigitUnderscore__Names__Functions__and__Methods._70#requires(this)
       == true);

procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.70 (well-formedness)"} CheckWellformed$$_module.DigitUnderscore__Names__Functions__and__Methods._70(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.120 (well-formedness)"} CheckWellFormed$$_module.DigitUnderscore__Names__Functions__and__Methods._120(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.120 (call)"} Call$$_module.DigitUnderscore__Names__Functions__and__Methods._120(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap));
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DigitUnderscore__Names__Functions__and__Methods._70#canCall(this);
  ensures {:id "id258"} _module.DigitUnderscore__Names__Functions__and__Methods._70(this) == LitInt(80);
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.120 (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._120(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures _module.DigitUnderscore__Names__Functions__and__Methods._70#canCall(this);
  ensures {:id "id259"} _module.DigitUnderscore__Names__Functions__and__Methods._70(this) == LitInt(80);
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DigitUnderscore_Names_Functions_and_Methods.120 (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._120(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;

    // AddMethodImpl: 120, Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._120
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
}



function _module.DigitUnderscore__Names__Functions__and__Methods._90(this: ref) : HandleType
uses {
axiom (forall this: ref :: 
  { _module.DigitUnderscore__Names__Functions__and__Methods._90(this): HandleType } 
  _module.DigitUnderscore__Names__Functions__and__Methods._90(this): HandleType
     == Lit(AtLayer((lambda $l#0#ly#0: LayerType :: 
          Handle0((lambda $l#0#heap#0: Heap :: $Box(LitInt(92))), 
            (lambda $l#0#heap#0: Heap :: true), 
            (lambda $l#0#heap#0: Heap :: SetRef_to_SetBox((lambda $l#0#o#0: ref :: false))))), 
        $LS($LZ))));
// DigitUnderscore_Names_Functions_and_Methods.90: Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods._90($o) } 
    $o != null
         && dtype($o) == Tclass._module.DigitUnderscore__Names__Functions__and__Methods?()
       ==> $Is(_module.DigitUnderscore__Names__Functions__and__Methods._90($o), 
        Tclass._System.___hTotalFunc0(TInt)));
// DigitUnderscore_Names_Functions_and_Methods.90: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods._90($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.DigitUnderscore__Names__Functions__and__Methods?()
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.DigitUnderscore__Names__Functions__and__Methods._90($o), 
        Tclass._System.___hTotalFunc0(TInt), 
        $h));
}

procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.90 (well-formedness)"} CheckWellFormed$$_module.DigitUnderscore__Names__Functions__and__Methods._90(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.567 (well-formedness)"} CheckWellFormed$$_module.DigitUnderscore__Names__Functions__and__Methods._567(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.567 (call)"} Call$$_module.DigitUnderscore__Names__Functions__and__Methods._567(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    y#0: int);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.567 (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._567(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    y#0: int)
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DigitUnderscore_Names_Functions_and_Methods.567 (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._567(this: ref, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var m#0: HandleType
     where $Is(m#0, Tclass._System.___hTotalFunc0(TInt))
       && $IsAlloc(m#0, Tclass._System.___hTotalFunc0(TInt), $Heap);
  var k#0: int;
  var g#0_0: int;
  var y##0_0: int;

    // AddMethodImpl: 567, Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._567
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(344,11)
    assume true;
    assume true;
    m#0 := _module.DigitUnderscore__Names__Functions__and__Methods._90(this);
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(345,11)
    assume true;
    assume true;
    k#0 := $Unbox(Apply0(TInt, $Heap, _module.DigitUnderscore__Names__Functions__and__Methods._90(this))): int;
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(346,5)
    assume true;
    assert {:id "id263"} k#0 == LitInt(92);
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(347,5)
    assume true;
    if (0 < y#0)
    {
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(348,19)
        assume true;
        // assume allocatedness for receiver argument to function
        assume $IsAllocBox($Box(this), 
          Tclass._module.DigitUnderscore__Names__Functions__and__Methods?(), 
          $Heap);
        assume _module.DigitUnderscore__Names__Functions__and__Methods._70#canCall(this);
        assume _module.DigitUnderscore__Names__Functions__and__Methods._70#canCall(this);
        g#0_0 := _module.DigitUnderscore__Names__Functions__and__Methods._70(this);
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(349,15)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        assume true;
        // ProcessCallStmt: CheckSubrange
        y##0_0 := y#0 - 1;
        assert {:id "id265"} 0 <= y#0 || y##0_0 == y#0;
        assert {:id "id266"} y##0_0 < y#0;
        call {:id "id267"} Call$$_module.DigitUnderscore__Names__Functions__and__Methods._567(this, y##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(350,7)
        assume true;
        assert {:id "id268"} g#0_0 == LitInt(80);
    }
    else
    {
    }
}



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.20_0 (well-formedness)"} CheckWellFormed$$_module.DigitUnderscore__Names__Functions__and__Methods._20_0(x#0: int) returns (this: ref);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.20_0 (call)"} Call$$_module.DigitUnderscore__Names__Functions__and__Methods._20_0(x#0: int)
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap));
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



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.20_0 (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._20_0(x#0: int) returns (this: ref, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



function _module.DigitUnderscore__Names__Functions__and__Methods._88() : bool
uses {
// DigitUnderscore_Names_Functions_and_Methods.88: Type axiom
axiom 0 < $FunctionContextHeight
   ==> $Is(_module.DigitUnderscore__Names__Functions__and__Methods._88(), TBool);
}

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DigitUnderscore_Names_Functions_and_Methods.20_0 (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._20_0(x#0: int) returns (this: ref, $_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var u#0: bool;

    // AddMethodImpl: 20_0, Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._20_0
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- divided block before new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(355,3)
    // ----- new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(355,3)
    assume this != null
       && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?());
    assume !$Unbox(read($Heap, this, alloc)): bool;
    $Heap := update($Heap, this, alloc, $Box(true));
    assume $IsGoodHeap($Heap);
    assume $IsHeapAnchor($Heap);
    // ----- divided block after new; ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(355,3)
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(357,11)
    assume true;
    assume true;
    u#0 := _module.DigitUnderscore__Names__Functions__and__Methods._88();
    // ----- assert statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(358,5)
    assume true;
    assert {:id "id270"} u#0 == _module.DigitUnderscore__Names__Functions__and__Methods._88();
}



// DigitUnderscore_Names_Functions_and_Methods.88: Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap :: 
    { $IsAlloc(_module.DigitUnderscore__Names__Functions__and__Methods._88(), TBool, $h) } 
    $IsGoodHeap($h)
       ==> $IsAlloc(_module.DigitUnderscore__Names__Functions__and__Methods._88(), TBool, $h));

procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.498 (well-formedness)"} CheckWellFormed$$_module.DigitUnderscore__Names__Functions__and__Methods._498(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.498 (call)"} Call$$_module.DigitUnderscore__Names__Functions__and__Methods._498(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap));
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.498 (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._498(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap))
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



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DigitUnderscore_Names_Functions_and_Methods.498 (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._498(this: ref) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var defass#p#0: bool;
  var p#0: ref
     where defass#p#0
       ==> $Is(p#0, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(p#0, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap);
  var $nw: ref;
  var x##0: int;
  var y##0: int;

    // AddMethodImpl: 498, Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._498
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(364,11)
    assume true;
    // ----- init call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(364,62)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    x##0 := LitInt(200);
    call {:id "id271"} $nw := Call$$_module.DigitUnderscore__Names__Functions__and__Methods._20_0(x##0);
    // TrCallStmt: After ProcessCallStmt
    p#0 := $nw;
    defass#p#0 := true;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(365,10)
    // TrCallStmt: Before ProcessCallStmt
    assert {:id "id273"} defass#p#0;
    assume true;
    assert {:id "id274"} p#0 != null;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := LitInt(100);
    call {:id "id275"} Call$$_module.DigitUnderscore__Names__Functions__and__Methods._567(p#0, y##0);
    // TrCallStmt: After ProcessCallStmt
}



// function declaration for _module.DigitUnderscore_Names_Functions_and_Methods.500
function _module.DigitUnderscore__Names__Functions__and__Methods._500($ly: LayerType, this: ref, y#0: int) : bool
uses {
// definition axiom for _module.DigitUnderscore__Names__Functions__and__Methods._500 (revealed)
axiom {:id "id276"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, y#0: int :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods._500($LS($ly), this, y#0) } 
    _module.DigitUnderscore__Names__Functions__and__Methods._500#canCall(this, y#0)
         || (0 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods()))
       ==> (y#0 != LitInt(0)
           ==> _module.DigitUnderscore__Names__Functions__and__Methods._500#canCall(this, y#0 - 1))
         && _module.DigitUnderscore__Names__Functions__and__Methods._500($LS($ly), this, y#0)
           == (y#0 == LitInt(0)
             || _module.DigitUnderscore__Names__Functions__and__Methods._500($ly, this, y#0 - 1)));
}

function _module.DigitUnderscore__Names__Functions__and__Methods._500#canCall(this: ref, y#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: ref, y#0: int :: 
  { _module.DigitUnderscore__Names__Functions__and__Methods._500($LS($ly), this, y#0) } 
  _module.DigitUnderscore__Names__Functions__and__Methods._500($LS($ly), this, y#0)
     == _module.DigitUnderscore__Names__Functions__and__Methods._500($ly, this, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: ref, y#0: int :: 
  { _module.DigitUnderscore__Names__Functions__and__Methods._500(AsFuelBottom($ly), this, y#0) } 
  _module.DigitUnderscore__Names__Functions__and__Methods._500($ly, this, y#0)
     == _module.DigitUnderscore__Names__Functions__and__Methods._500($LZ, this, y#0));

function _module.DigitUnderscore__Names__Functions__and__Methods._500#requires(LayerType, ref, int) : bool;

// #requires axiom for _module.DigitUnderscore__Names__Functions__and__Methods._500
axiom (forall $ly: LayerType, this: ref, y#0: int :: 
  { _module.DigitUnderscore__Names__Functions__and__Methods._500#requires($ly, this, y#0) } 
  this != null
       && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
     ==> _module.DigitUnderscore__Names__Functions__and__Methods._500#requires($ly, this, y#0)
       == true);

// 1st prefix predicate axiom for _module.DigitUnderscore__Names__Functions__and__Methods._500#
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, y#0: int :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods._500($LS($ly), this, y#0) } 
    this != null
         && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && _module.DigitUnderscore__Names__Functions__and__Methods._500($LS($ly), this, y#0)
       ==> (exists _k#0: Box :: 
        { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k#0, y#0) } 
        _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k#0, y#0)));

// 2nd prefix predicate axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, y#0: int :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods._500($LS($ly), this, y#0) } 
    this != null
         && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && (exists _k#0: Box :: 
          { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k#0, y#0) } 
          _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k#0, y#0))
       ==> _module.DigitUnderscore__Names__Functions__and__Methods._500($LS($ly), this, y#0));

// 3rd prefix predicate axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, y#0: int, _k#0: Box :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, _k#0, y#0) } 
    this != null
         && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && _k#0 == ORD#FromNat(0)
       ==> !_module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, _k#0, y#0));

// targeted prefix predicate monotonicity axiom
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, y#0: int, _k#0: Box, _m: Box, _limit: Box :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, _k#0, y#0), ORD#LessThanLimit(_k#0, _limit), ORD#LessThanLimit(_m, _limit) } 
    ORD#Less(_k#0, _m)
       ==> 
      _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, _k#0, y#0)
       ==> _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, _m, y#0));

procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.500 (well-formedness)"} CheckWellformed$$_module.DigitUnderscore__Names__Functions__and__Methods._500(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    y#0: int);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



// function declaration for _module.DigitUnderscore_Names_Functions_and_Methods.500#
function _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly: LayerType, this: ref, _k#0: Box, y#0: int) : bool
uses {
// definition axiom for _module.DigitUnderscore__Names__Functions__and__Methods._500# (revealed)
axiom {:id "id278"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, _k#0: Box, y#0: int :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k#0, y#0) } 
    _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, _k#0, y#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          y#0 != LitInt(0)
           ==> _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, ORD#Minus(_k#0, ORD#FromNat(1)), y#0 - 1))
         && (
          (0 < ORD#Offset(_k#0)
           ==> y#0 == LitInt(0)
             || _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, ORD#Minus(_k#0, ORD#FromNat(1)), y#0 - 1))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#0: Box :: 
            { _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, _k'#0, y#0) } 
            ORD#LessThanLimit(_k'#0, _k#0)
               ==> _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, _k'#0, y#0)))
         && _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k#0, y#0)
           == ((0 < ORD#Offset(_k#0)
               ==> y#0 == LitInt(0)
                 || _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, ORD#Minus(_k#0, ORD#FromNat(1)), y#0 - 1))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#0: Box :: 
                { _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, _k'#0, y#0) } 
                ORD#LessThanLimit(_k'#0, _k#0)
                   && _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, _k'#0, y#0)))));
// definition axiom for _module.DigitUnderscore__Names__Functions__and__Methods._500# for decreasing-related literals (revealed)
axiom {:id "id279"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, _k#0: Box, y#0: int :: 
    {:weight 3} { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, Lit(_k#0), y#0) } 
    _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, Lit(_k#0), y#0)
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          y#0 != LitInt(0)
           ==> _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, ORD#Minus(_k#0, ORD#FromNat(1)), y#0 - 1))
         && (
          (0 < ORD#Offset(_k#0)
           ==> y#0 == LitInt(0)
             || _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, ORD#Minus(_k#0, ORD#FromNat(1)), y#0 - 1))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#1: Box :: 
            { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k'#1, y#0) } 
            ORD#LessThanLimit(_k'#1, _k#0)
               ==> _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, _k'#1, y#0)))
         && _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, Lit(_k#0), y#0)
           == ((0 < ORD#Offset(_k#0)
               ==> y#0 == LitInt(0)
                 || _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, ORD#Minus(_k#0, ORD#FromNat(1)), y#0 - 1))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#1: Box :: 
                { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k'#1, y#0) } 
                ORD#LessThanLimit(_k'#1, _k#0)
                   && _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k'#1, y#0)))));
// definition axiom for _module.DigitUnderscore__Names__Functions__and__Methods._500# for all literals (revealed)
axiom {:id "id280"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, this: ref, _k#0: Box, y#0: int :: 
    {:weight 3} { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), Lit(this), Lit(_k#0), LitInt(y#0)) } 
    _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(Lit(this), Lit(_k#0), LitInt(y#0))
         || (1 < $FunctionContextHeight
           && 
          this != null
           && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods()))
       ==> (0 < ORD#Offset(_k#0)
           ==> 
          LitInt(y#0) != LitInt(0)
           ==> _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(Lit(this), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(y#0 - 1)))
         && (
          (0 < ORD#Offset(_k#0)
           ==> LitInt(y#0) == LitInt(0)
             || _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), Lit(this), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(y#0 - 1)))
           ==> 
          LitInt(0) == ORD#Offset(_k#0)
           ==> (forall _k'#2: Box :: 
            { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k'#2, y#0) } 
            ORD#LessThanLimit(_k'#2, _k#0)
               ==> _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, _k'#2, y#0)))
         && _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), Lit(this), Lit(_k#0), LitInt(y#0))
           == ((0 < ORD#Offset(_k#0)
               ==> LitInt(y#0) == LitInt(0)
                 || _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), Lit(this), ORD#Minus(_k#0, ORD#FromNat(1)), LitInt(y#0 - 1)))
             && (LitInt(0) == ORD#Offset(_k#0)
               ==> (exists _k'#2: Box :: 
                { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k'#2, y#0) } 
                ORD#LessThanLimit(_k'#2, _k#0)
                   && _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k'#2, y#0)))));
}

function _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this: ref, _k#0: Box, y#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, this: ref, _k#0: Box, y#0: int :: 
  { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k#0, y#0) } 
  _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($ly), this, _k#0, y#0)
     == _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, _k#0, y#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, this: ref, _k#0: Box, y#0: int :: 
  { _module.DigitUnderscore__Names__Functions__and__Methods._500#(AsFuelBottom($ly), this, _k#0, y#0) } 
  _module.DigitUnderscore__Names__Functions__and__Methods._500#($ly, this, _k#0, y#0)
     == _module.DigitUnderscore__Names__Functions__and__Methods._500#($LZ, this, _k#0, y#0));

function _module.DigitUnderscore__Names__Functions__and__Methods._500##requires(LayerType, ref, Box, int) : bool;

// #requires axiom for _module.DigitUnderscore__Names__Functions__and__Methods._500#
axiom (forall $ly: LayerType, this: ref, _k#0: Box, y#0: int :: 
  { _module.DigitUnderscore__Names__Functions__and__Methods._500##requires($ly, this, _k#0, y#0) } 
  this != null
       && $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
     ==> _module.DigitUnderscore__Names__Functions__and__Methods._500##requires($ly, this, _k#0, y#0)
       == true);

procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.5_0_0 (well-formedness)"} CheckWellFormed$$_module.DigitUnderscore__Names__Functions__and__Methods._5_0_0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    y#0: int);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.5_0_0 (call)"} Call$$_module.DigitUnderscore__Names__Functions__and__Methods._5_0_0(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    y#0: int);
  // user-defined preconditions
  requires {:id "id283"} _module.DigitUnderscore__Names__Functions__and__Methods._500#canCall(this, y#0)
     ==> _module.DigitUnderscore__Names__Functions__and__Methods._500($LS($LZ), this, y#0)
       || 
      y#0 == LitInt(0)
       || _module.DigitUnderscore__Names__Functions__and__Methods._500($LS($LS($LZ)), this, y#0 - 1);
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id284"} LitInt(0) <= y#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.5_0_0# (co-call)"} CoCall$$_module.DigitUnderscore__Names__Functions__and__Methods._5_0_0#(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    _k#0: Box, 
    y#1: int);
  // user-defined preconditions
  requires {:id "id285"} _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, _k#0, y#1)
     ==> _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k#0, y#1)
       || (0 < ORD#Offset(_k#0)
         ==> y#1 == LitInt(0)
           || _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LS($LZ)), this, ORD#Minus(_k#0, ORD#FromNat(1)), y#1 - 1));
  requires {:id "id286"} _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, _k#0, y#1)
     ==> _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k#0, y#1)
       || (LitInt(0) == ORD#Offset(_k#0)
         ==> (exists _k'#0: Box :: 
          { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k'#0, y#1) } 
          ORD#LessThanLimit(_k'#0, _k#0)
             && _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k'#0, y#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id287"} LitInt(0) <= y#1;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.5_0_0# (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._5_0_0#(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    _k#0: Box, 
    y#1: int)
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id288"} _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, _k#0, y#1)
     && 
    _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k#0, y#1)
     && 
    (0 < ORD#Offset(_k#0)
       ==> y#1 == LitInt(0)
         || _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, ORD#Minus(_k#0, ORD#FromNat(1)), y#1 - 1))
     && (LitInt(0) == ORD#Offset(_k#0)
       ==> (exists _k'#1: Box :: 
        { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k'#1, y#1) } 
        ORD#LessThanLimit(_k'#1, _k#0)
           && _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k'#1, y#1)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id289"} LitInt(0) <= y#1;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DigitUnderscore_Names_Functions_and_Methods.5_0_0# (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._5_0_0#(this: ref, _k#0: Box, y#1: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var $initHeapForallStmt#1_0_0: Heap;

    // AddMethodImpl: 5_0_0#, Impl$$_module.DigitUnderscore__Names__Functions__and__Methods._5_0_0#
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#_k0#0: Box, $ih#y0#0: int :: 
      { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, $ih#_k0#0, $ih#y0#0) } 
      _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, $ih#_k0#0, $ih#y0#0)
           && (ORD#Less($ih#_k0#0, _k#0)
             || ($ih#_k0#0 == _k#0 && 0 <= $ih#y0#0 && $ih#y0#0 < y#1))
         ==> LitInt(0) <= $ih#y0#0);
    $_reverifyPost := false;
    // ----- if statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(376,3)
    assume true;
    if (0 < ORD#Offset(_k#0))
    {
    }
    else
    {
        // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(376,3)
        $initHeapForallStmt#1_0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#1_0_0 == $Heap;
        assume (forall _k'#2: Box, y#2: int :: 
          { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k'#2, y#2) } 
          ORD#Less(_k'#2, _k#0)
               && _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k'#2, y#2)
             ==> LitInt(0) <= y#2);
    }
}



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.Another (well-formedness)"} CheckWellFormed$$_module.DigitUnderscore__Names__Functions__and__Methods.Another(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    k#0: Box, 
    y#0: int);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.Another (call)"} Call$$_module.DigitUnderscore__Names__Functions__and__Methods.Another(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    k#0: Box, 
    y#0: int);
  // user-defined preconditions
  requires {:id "id292"} _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, k#0, y#0)
     ==> _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, k#0, y#0)
       || (0 < ORD#Offset(k#0)
         ==> y#0 == LitInt(0)
           || _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LS($LZ)), this, ORD#Minus(k#0, ORD#FromNat(1)), y#0 - 1));
  requires {:id "id293"} _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, k#0, y#0)
     ==> _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, k#0, y#0)
       || (LitInt(0) == ORD#Offset(k#0)
         ==> (exists _k'#0: Box :: 
          { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k'#0, y#0) } 
          ORD#LessThanLimit(_k'#0, k#0)
             && _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k'#0, y#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id294"} LitInt(0) <= y#0;
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.Another (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods.Another(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    k#0: Box, 
    y#0: int)
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  // user-defined preconditions
  free requires {:id "id295"} _module.DigitUnderscore__Names__Functions__and__Methods._500##canCall(this, k#0, y#0)
     && 
    _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, k#0, y#0)
     && 
    (0 < ORD#Offset(k#0)
       ==> y#0 == LitInt(0)
         || _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, ORD#Minus(k#0, ORD#FromNat(1)), y#0 - 1))
     && (LitInt(0) == ORD#Offset(k#0)
       ==> (exists _k'#1: Box :: 
        { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k'#1, y#0) } 
        ORD#LessThanLimit(_k'#1, k#0)
           && _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, _k'#1, y#0)));
  modifies $Heap;
  // user-defined postconditions
  free ensures true;
  ensures {:id "id296"} LitInt(0) <= y#0;
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "DigitUnderscore_Names_Functions_and_Methods.Another (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods.Another(this: ref, k#0: Box, y#0: int) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var _k##0: Box;
  var y##0: int;

    // AddMethodImpl: Another, Impl$$_module.DigitUnderscore__Names__Functions__and__Methods.Another
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#k0#0: Box, $ih#y0#0: int :: 
      { _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, $ih#k0#0, $ih#y0#0) } 
      _module.DigitUnderscore__Names__Functions__and__Methods._500#($LS($LZ), this, $ih#k0#0, $ih#y0#0)
           && (ORD#Less($ih#k0#0, k#0)
             || ($ih#k0#0 == k#0 && 0 <= $ih#y0#0 && $ih#y0#0 < y#0))
         ==> LitInt(0) <= $ih#y0#0);
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/dafny0/Compilation.legacy.dfy(382,19)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    assume true;
    // ProcessCallStmt: CheckSubrange
    _k##0 := k#0;
    assume true;
    // ProcessCallStmt: CheckSubrange
    y##0 := y#0;
    call {:id "id297"} CoCall$$_module.DigitUnderscore__Names__Functions__and__Methods._5_0_0#(this, _k##0, y##0);
    // TrCallStmt: After ProcessCallStmt
}



function _module.DigitUnderscore__Names__Functions__and__Methods.x_k(this: ref) : real
uses {
axiom (forall this: ref :: 
  { _module.DigitUnderscore__Names__Functions__and__Methods.x_k(this): real } 
  _module.DigitUnderscore__Names__Functions__and__Methods.x_k(this): real
     == LitReal(3e0));
// DigitUnderscore_Names_Functions_and_Methods.x': Type axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $o: ref :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods.x_k($o) } 
    $o != null
         && dtype($o) == Tclass._module.DigitUnderscore__Names__Functions__and__Methods?()
       ==> $Is(_module.DigitUnderscore__Names__Functions__and__Methods.x_k($o), TReal));
// DigitUnderscore_Names_Functions_and_Methods.x': Allocation axiom
axiom 0 < $FunctionContextHeight
   ==> (forall $h: Heap, $o: ref :: 
    { _module.DigitUnderscore__Names__Functions__and__Methods.x_k($o), $Unbox(read($h, $o, alloc)): bool } 
    $IsGoodHeap($h)
         && 
        $o != null
         && dtype($o) == Tclass._module.DigitUnderscore__Names__Functions__and__Methods?()
         && $Unbox(read($h, $o, alloc)): bool
       ==> $IsAlloc(_module.DigitUnderscore__Names__Functions__and__Methods.x_k($o), TReal, $h));
}

procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.x' (well-formedness)"} CheckWellFormed$$_module.DigitUnderscore__Names__Functions__and__Methods.x_k(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.Regression (well-formedness)"} CheckWellFormed$$_module.DigitUnderscore__Names__Functions__and__Methods.Regression(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    u#0: real)
   returns (v#0: real);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.Regression (call)"} Call$$_module.DigitUnderscore__Names__Functions__and__Methods.Regression(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    u#0: real)
   returns (v#0: real);
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



procedure {:verboseName "DigitUnderscore_Names_Functions_and_Methods.Regression (correctness)"} Impl$$_module.DigitUnderscore__Names__Functions__and__Methods.Regression(this: ref
       where this != null
         && 
        $Is(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
         && $IsAlloc(this, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $Heap), 
    u#0: real)
   returns (v#0: real, $_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// $Is axiom for non-null type _module.DigitUnderscore_Names_Functions_and_Methods
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass._module.DigitUnderscore__Names__Functions__and__Methods()) } 
    { $Is(c#0, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?()) } 
  $Is(c#0, Tclass._module.DigitUnderscore__Names__Functions__and__Methods())
     <==> $Is(c#0, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?())
       && c#0 != null);

// $IsAlloc axiom for non-null type _module.DigitUnderscore_Names_Functions_and_Methods
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $h) } 
    { $IsAlloc(c#0, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?(), $h) } 
  $IsAlloc(c#0, Tclass._module.DigitUnderscore__Names__Functions__and__Methods(), $h)
     <==> $IsAlloc(c#0, Tclass._module.DigitUnderscore__Names__Functions__and__Methods?(), $h));

const unique class.OnceBuggy.__default: ClassName;

// Constructor function declaration
function #OnceBuggy.MyDt.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#OnceBuggy.MyDt.Nil()) == ##OnceBuggy.MyDt.Nil;
// Constructor literal
axiom #OnceBuggy.MyDt.Nil() == Lit(#OnceBuggy.MyDt.Nil());
}

const unique ##OnceBuggy.MyDt.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#OnceBuggy.MyDt.Nil()) == ##OnceBuggy.MyDt.Nil;
}

function OnceBuggy.MyDt.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { OnceBuggy.MyDt.Nil_q(d) } 
  OnceBuggy.MyDt.Nil_q(d) <==> DatatypeCtorId(d) == ##OnceBuggy.MyDt.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { OnceBuggy.MyDt.Nil_q(d) } 
  OnceBuggy.MyDt.Nil_q(d) ==> d == #OnceBuggy.MyDt.Nil());

function Tclass.OnceBuggy.MyDt(Ty) : Ty;

const unique Tagclass.OnceBuggy.MyDt: TyTag;

// Tclass.OnceBuggy.MyDt Tag
axiom (forall OnceBuggy.MyDt$T: Ty :: 
  { Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T) } 
  Tag(Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T)) == Tagclass.OnceBuggy.MyDt
     && TagFamily(Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T)) == tytagFamily$MyDt);

function Tclass.OnceBuggy.MyDt_0(Ty) : Ty;

// Tclass.OnceBuggy.MyDt injectivity 0
axiom (forall OnceBuggy.MyDt$T: Ty :: 
  { Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T) } 
  Tclass.OnceBuggy.MyDt_0(Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T))
     == OnceBuggy.MyDt$T);

// Box/unbox axiom for Tclass.OnceBuggy.MyDt
axiom (forall OnceBuggy.MyDt$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T)) } 
  $IsBox(bx, Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T)));

// Constructor $Is
axiom (forall OnceBuggy.MyDt$T: Ty :: 
  { $Is(#OnceBuggy.MyDt.Nil(), Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T)) } 
  $Is(#OnceBuggy.MyDt.Nil(), Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T)));

// Constructor $IsAlloc
axiom (forall OnceBuggy.MyDt$T: Ty, $h: Heap :: 
  { $IsAlloc(#OnceBuggy.MyDt.Nil(), Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#OnceBuggy.MyDt.Nil(), Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T), $h));

// Constructor function declaration
function #OnceBuggy.MyDt.Cons(Box, DatatypeType) : DatatypeType;

const unique ##OnceBuggy.MyDt.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #OnceBuggy.MyDt.Cons(a#4#0#0, a#4#1#0) } 
  DatatypeCtorId(#OnceBuggy.MyDt.Cons(a#4#0#0, a#4#1#0)) == ##OnceBuggy.MyDt.Cons);
}

function OnceBuggy.MyDt.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { OnceBuggy.MyDt.Cons_q(d) } 
  OnceBuggy.MyDt.Cons_q(d) <==> DatatypeCtorId(d) == ##OnceBuggy.MyDt.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { OnceBuggy.MyDt.Cons_q(d) } 
  OnceBuggy.MyDt.Cons_q(d)
     ==> (exists a#5#0#0: Box, a#5#1#0: DatatypeType :: 
      d == #OnceBuggy.MyDt.Cons(a#5#0#0, a#5#1#0)));

// Constructor $Is
axiom (forall OnceBuggy.MyDt$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { $Is(#OnceBuggy.MyDt.Cons(a#6#0#0, a#6#1#0), Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T)) } 
  $Is(#OnceBuggy.MyDt.Cons(a#6#0#0, a#6#1#0), Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T))
     <==> $IsBox(a#6#0#0, OnceBuggy.MyDt$T)
       && $Is(a#6#1#0, Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T)));

// Constructor $IsAlloc
axiom (forall OnceBuggy.MyDt$T: Ty, a#6#0#0: Box, a#6#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#OnceBuggy.MyDt.Cons(a#6#0#0, a#6#1#0), 
      Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#OnceBuggy.MyDt.Cons(a#6#0#0, a#6#1#0), 
        Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T), 
        $h)
       <==> $IsAllocBox(a#6#0#0, OnceBuggy.MyDt$T, $h)
         && $IsAlloc(a#6#1#0, Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, OnceBuggy.MyDt$T: Ty, $h: Heap :: 
  { $IsAllocBox(OnceBuggy.MyDt._h0(d), OnceBuggy.MyDt$T, $h) } 
  $IsGoodHeap($h)
       && 
      OnceBuggy.MyDt.Cons_q(d)
       && $IsAlloc(d, Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T), $h)
     ==> $IsAllocBox(OnceBuggy.MyDt._h0(d), OnceBuggy.MyDt$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, OnceBuggy.MyDt$T: Ty, $h: Heap :: 
  { $IsAlloc(OnceBuggy.MyDt._h1(d), Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T), $h) } 
  $IsGoodHeap($h)
       && 
      OnceBuggy.MyDt.Cons_q(d)
       && $IsAlloc(d, Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T), $h)
     ==> $IsAlloc(OnceBuggy.MyDt._h1(d), Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T), $h));

// Constructor literal
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #OnceBuggy.MyDt.Cons(Lit(a#7#0#0), Lit(a#7#1#0)) } 
  #OnceBuggy.MyDt.Cons(Lit(a#7#0#0), Lit(a#7#1#0))
     == Lit(#OnceBuggy.MyDt.Cons(a#7#0#0, a#7#1#0)));

function OnceBuggy.MyDt._h0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#8#0#0: Box, a#8#1#0: DatatypeType :: 
  { #OnceBuggy.MyDt.Cons(a#8#0#0, a#8#1#0) } 
  OnceBuggy.MyDt._h0(#OnceBuggy.MyDt.Cons(a#8#0#0, a#8#1#0)) == a#8#0#0);

// Inductive rank
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #OnceBuggy.MyDt.Cons(a#9#0#0, a#9#1#0) } 
  BoxRank(a#9#0#0) < DtRank(#OnceBuggy.MyDt.Cons(a#9#0#0, a#9#1#0)));

function OnceBuggy.MyDt._h1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#10#0#0: Box, a#10#1#0: DatatypeType :: 
  { #OnceBuggy.MyDt.Cons(a#10#0#0, a#10#1#0) } 
  OnceBuggy.MyDt._h1(#OnceBuggy.MyDt.Cons(a#10#0#0, a#10#1#0)) == a#10#1#0);

// Inductive rank
axiom (forall a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { #OnceBuggy.MyDt.Cons(a#11#0#0, a#11#1#0) } 
  DtRank(a#11#1#0) < DtRank(#OnceBuggy.MyDt.Cons(a#11#0#0, a#11#1#0)));

// Depth-one case-split function
function $IsA#OnceBuggy.MyDt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#OnceBuggy.MyDt(d) } 
  $IsA#OnceBuggy.MyDt(d) ==> OnceBuggy.MyDt.Nil_q(d) || OnceBuggy.MyDt.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall OnceBuggy.MyDt$T: Ty, d: DatatypeType :: 
  { OnceBuggy.MyDt.Cons_q(d), $Is(d, Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T)) } 
    { OnceBuggy.MyDt.Nil_q(d), $Is(d, Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T)) } 
  $Is(d, Tclass.OnceBuggy.MyDt(OnceBuggy.MyDt$T))
     ==> OnceBuggy.MyDt.Nil_q(d) || OnceBuggy.MyDt.Cons_q(d));

// Datatype extensional equality declaration
function OnceBuggy.MyDt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #OnceBuggy.MyDt.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { OnceBuggy.MyDt#Equal(a, b), OnceBuggy.MyDt.Nil_q(a) } 
    { OnceBuggy.MyDt#Equal(a, b), OnceBuggy.MyDt.Nil_q(b) } 
  OnceBuggy.MyDt.Nil_q(a) && OnceBuggy.MyDt.Nil_q(b)
     ==> OnceBuggy.MyDt#Equal(a, b));

// Datatype extensional equality definition: #OnceBuggy.MyDt.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { OnceBuggy.MyDt#Equal(a, b), OnceBuggy.MyDt.Cons_q(a) } 
    { OnceBuggy.MyDt#Equal(a, b), OnceBuggy.MyDt.Cons_q(b) } 
  OnceBuggy.MyDt.Cons_q(a) && OnceBuggy.MyDt.Cons_q(b)
     ==> (OnceBuggy.MyDt#Equal(a, b)
       <==> OnceBuggy.MyDt._h0(a) == OnceBuggy.MyDt._h0(b)
         && OnceBuggy.MyDt#Equal(OnceBuggy.MyDt._h1(a), OnceBuggy.MyDt._h1(b))));

// Datatype extensionality axiom: OnceBuggy.MyDt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { OnceBuggy.MyDt#Equal(a, b) } 
  OnceBuggy.MyDt#Equal(a, b) <==> a == b);

const unique class.OnceBuggy.MyDt: ClassName;

const unique class.CoRecursion.__default: ClassName;

// function declaration for CoRecursion._default.AscendingChain
function CoRecursion.__default.AscendingChain($ly: LayerType, n#0: int) : DatatypeType;

function CoRecursion.__default.AscendingChain#canCall(n#0: int) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { CoRecursion.__default.AscendingChain($LS($ly), n#0) } 
  CoRecursion.__default.AscendingChain($LS($ly), n#0)
     == CoRecursion.__default.AscendingChain($ly, n#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, n#0: int :: 
  { CoRecursion.__default.AscendingChain(AsFuelBottom($ly), n#0) } 
  CoRecursion.__default.AscendingChain($ly, n#0)
     == CoRecursion.__default.AscendingChain($LZ, n#0));

function Tclass.CoRecursion.Stream(Ty) : Ty;

const unique Tagclass.CoRecursion.Stream: TyTag;

// Tclass.CoRecursion.Stream Tag
axiom (forall CoRecursion.Stream$T: Ty :: 
  { Tclass.CoRecursion.Stream(CoRecursion.Stream$T) } 
  Tag(Tclass.CoRecursion.Stream(CoRecursion.Stream$T))
       == Tagclass.CoRecursion.Stream
     && TagFamily(Tclass.CoRecursion.Stream(CoRecursion.Stream$T)) == tytagFamily$Stream);

function Tclass.CoRecursion.Stream_0(Ty) : Ty;

// Tclass.CoRecursion.Stream injectivity 0
axiom (forall CoRecursion.Stream$T: Ty :: 
  { Tclass.CoRecursion.Stream(CoRecursion.Stream$T) } 
  Tclass.CoRecursion.Stream_0(Tclass.CoRecursion.Stream(CoRecursion.Stream$T))
     == CoRecursion.Stream$T);

// Box/unbox axiom for Tclass.CoRecursion.Stream
axiom (forall CoRecursion.Stream$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.CoRecursion.Stream(CoRecursion.Stream$T)) } 
  $IsBox(bx, Tclass.CoRecursion.Stream(CoRecursion.Stream$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.CoRecursion.Stream(CoRecursion.Stream$T)));

// consequence axiom for CoRecursion.__default.AscendingChain
axiom (forall $ly: LayerType, n#0: int :: 
  { CoRecursion.__default.AscendingChain($ly, n#0) } 
  $Is(CoRecursion.__default.AscendingChain($ly, n#0), Tclass.CoRecursion.Stream(TInt)));

function CoRecursion.__default.AscendingChain#requires(LayerType, int) : bool;

// #requires axiom for CoRecursion.__default.AscendingChain
axiom (forall $ly: LayerType, n#0: int :: 
  { CoRecursion.__default.AscendingChain#requires($ly, n#0) } 
  CoRecursion.__default.AscendingChain#requires($ly, n#0) == true);

// definition axiom for CoRecursion.__default.AscendingChain (revealed)
axiom {:id "id299"} (forall $ly: LayerType, n#0: int :: 
  { CoRecursion.__default.AscendingChain($LS($ly), n#0) } 
  CoRecursion.__default.AscendingChain#canCall(n#0 + 1)
     && CoRecursion.__default.AscendingChain($LS($ly), n#0)
       == #CoRecursion.Stream.More($Box(n#0), CoRecursion.__default.AscendingChain($ly, n#0 + 1)));

// function declaration for CoRecursion._default.Prefix
function CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType)
   : DatatypeType;

function CoRecursion.__default.Prefix#canCall(CoRecursion._default.Prefix$_T0: Ty, n#0: int, s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall CoRecursion._default.Prefix$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $LS($ly), n#0, s#0) } 
  CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $LS($ly), n#0, s#0)
     == CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $ly, n#0, s#0));

// fuel synonym axiom
axiom (forall CoRecursion._default.Prefix$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, AsFuelBottom($ly), n#0, s#0) } 
  CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $ly, n#0, s#0)
     == CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $LZ, n#0, s#0));

function Tclass.CoRecursion.List(Ty) : Ty;

const unique Tagclass.CoRecursion.List: TyTag;

// Tclass.CoRecursion.List Tag
axiom (forall CoRecursion.List$T: Ty :: 
  { Tclass.CoRecursion.List(CoRecursion.List$T) } 
  Tag(Tclass.CoRecursion.List(CoRecursion.List$T)) == Tagclass.CoRecursion.List
     && TagFamily(Tclass.CoRecursion.List(CoRecursion.List$T)) == tytagFamily$List);

function Tclass.CoRecursion.List_0(Ty) : Ty;

// Tclass.CoRecursion.List injectivity 0
axiom (forall CoRecursion.List$T: Ty :: 
  { Tclass.CoRecursion.List(CoRecursion.List$T) } 
  Tclass.CoRecursion.List_0(Tclass.CoRecursion.List(CoRecursion.List$T))
     == CoRecursion.List$T);

// Box/unbox axiom for Tclass.CoRecursion.List
axiom (forall CoRecursion.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.CoRecursion.List(CoRecursion.List$T)) } 
  $IsBox(bx, Tclass.CoRecursion.List(CoRecursion.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.CoRecursion.List(CoRecursion.List$T)));

// consequence axiom for CoRecursion.__default.Prefix
axiom (forall CoRecursion._default.Prefix$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $ly, n#0, s#0) } 
  CoRecursion.__default.Prefix#canCall(CoRecursion._default.Prefix$_T0, n#0, s#0)
       || (LitInt(0) <= n#0
         && $Is(s#0, Tclass.CoRecursion.Stream(CoRecursion._default.Prefix$_T0)))
     ==> $Is(CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $ly, n#0, s#0), 
      Tclass.CoRecursion.List(CoRecursion._default.Prefix$_T0)));

// alloc consequence axiom for CoRecursion.__default.Prefix
axiom (forall $Heap: Heap, 
    CoRecursion._default.Prefix$_T0: Ty, 
    $ly: LayerType, 
    n#0: int, 
    s#0: DatatypeType :: 
  { $IsAlloc(CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $ly, n#0, s#0), 
      Tclass.CoRecursion.List(CoRecursion._default.Prefix$_T0), 
      $Heap) } 
  (CoRecursion.__default.Prefix#canCall(CoRecursion._default.Prefix$_T0, n#0, s#0)
         || (LitInt(0) <= n#0
           && 
          $Is(s#0, Tclass.CoRecursion.Stream(CoRecursion._default.Prefix$_T0))
           && $IsAlloc(s#0, Tclass.CoRecursion.Stream(CoRecursion._default.Prefix$_T0), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $ly, n#0, s#0), 
      Tclass.CoRecursion.List(CoRecursion._default.Prefix$_T0), 
      $Heap));

function CoRecursion.__default.Prefix#requires(Ty, LayerType, int, DatatypeType) : bool;

// #requires axiom for CoRecursion.__default.Prefix
axiom (forall CoRecursion._default.Prefix$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { CoRecursion.__default.Prefix#requires(CoRecursion._default.Prefix$_T0, $ly, n#0, s#0) } 
  LitInt(0) <= n#0
       && $Is(s#0, Tclass.CoRecursion.Stream(CoRecursion._default.Prefix$_T0))
     ==> CoRecursion.__default.Prefix#requires(CoRecursion._default.Prefix$_T0, $ly, n#0, s#0)
       == true);

// definition axiom for CoRecursion.__default.Prefix (revealed)
axiom {:id "id300"} (forall CoRecursion._default.Prefix$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  { CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $LS($ly), n#0, s#0) } 
  CoRecursion.__default.Prefix#canCall(CoRecursion._default.Prefix$_T0, n#0, s#0)
       || (LitInt(0) <= n#0
         && $Is(s#0, Tclass.CoRecursion.Stream(CoRecursion._default.Prefix$_T0)))
     ==> (n#0 != LitInt(0)
         ==> CoRecursion.Stream.More_q(s#0)
           && 
          CoRecursion.Stream.More_q(s#0)
           && CoRecursion.__default.Prefix#canCall(CoRecursion._default.Prefix$_T0, n#0 - 1, CoRecursion.Stream.rest(s#0)))
       && CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $LS($ly), n#0, s#0)
         == (if n#0 == LitInt(0)
           then #CoRecursion.List.Nil()
           else #CoRecursion.List.Cons(CoRecursion.Stream.head(s#0), 
            CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $ly, n#0 - 1, CoRecursion.Stream.rest(s#0)))));

// definition axiom for CoRecursion.__default.Prefix for decreasing-related literals (revealed)
axiom {:id "id301"} (forall CoRecursion._default.Prefix$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  {:weight 3} { CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $LS($ly), LitInt(n#0), s#0) } 
  CoRecursion.__default.Prefix#canCall(CoRecursion._default.Prefix$_T0, LitInt(n#0), s#0)
       || (LitInt(0) <= n#0
         && $Is(s#0, Tclass.CoRecursion.Stream(CoRecursion._default.Prefix$_T0)))
     ==> (LitInt(n#0) != LitInt(0)
         ==> CoRecursion.Stream.More_q(s#0)
           && 
          CoRecursion.Stream.More_q(s#0)
           && CoRecursion.__default.Prefix#canCall(CoRecursion._default.Prefix$_T0, LitInt(n#0 - 1), CoRecursion.Stream.rest(s#0)))
       && CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $LS($ly), LitInt(n#0), s#0)
         == (if LitInt(n#0) == LitInt(0)
           then #CoRecursion.List.Nil()
           else #CoRecursion.List.Cons(CoRecursion.Stream.head(s#0), 
            CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, 
              $LS($ly), 
              LitInt(n#0 - 1), 
              CoRecursion.Stream.rest(s#0)))));

// definition axiom for CoRecursion.__default.Prefix for all literals (revealed)
axiom {:id "id302"} (forall CoRecursion._default.Prefix$_T0: Ty, $ly: LayerType, n#0: int, s#0: DatatypeType :: 
  {:weight 3} { CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $LS($ly), LitInt(n#0), Lit(s#0)) } 
  CoRecursion.__default.Prefix#canCall(CoRecursion._default.Prefix$_T0, LitInt(n#0), Lit(s#0))
       || (LitInt(0) <= n#0
         && $Is(s#0, Tclass.CoRecursion.Stream(CoRecursion._default.Prefix$_T0)))
     ==> (LitInt(n#0) != LitInt(0)
         ==> CoRecursion.Stream.More_q(Lit(s#0))
           && 
          CoRecursion.Stream.More_q(Lit(s#0))
           && CoRecursion.__default.Prefix#canCall(CoRecursion._default.Prefix$_T0, 
            LitInt(n#0 - 1), 
            Lit(CoRecursion.Stream.rest(Lit(s#0)))))
       && CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, $LS($ly), LitInt(n#0), Lit(s#0))
         == (if LitInt(n#0) == LitInt(0)
           then #CoRecursion.List.Nil()
           else #CoRecursion.List.Cons(Lit(CoRecursion.Stream.head(Lit(s#0))), 
            Lit(CoRecursion.__default.Prefix(CoRecursion._default.Prefix$_T0, 
                $LS($ly), 
                LitInt(n#0 - 1), 
                Lit(CoRecursion.Stream.rest(Lit(s#0))))))));

procedure {:verboseName "CoRecursion.TestMain (well-formedness)"} CheckWellFormed$$CoRecursion.__default.TestMain();
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "CoRecursion.TestMain (call)"} Call$$CoRecursion.__default.TestMain();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



// Constructor function declaration
function #CoRecursion.Stream.More(Box, DatatypeType) : DatatypeType;

const unique ##CoRecursion.Stream.More: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: DatatypeType :: 
  { #CoRecursion.Stream.More(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#CoRecursion.Stream.More(a#0#0#0, a#0#1#0))
     == ##CoRecursion.Stream.More);
}

function CoRecursion.Stream.More_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { CoRecursion.Stream.More_q(d) } 
  CoRecursion.Stream.More_q(d) <==> DatatypeCtorId(d) == ##CoRecursion.Stream.More);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { CoRecursion.Stream.More_q(d) } 
  CoRecursion.Stream.More_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: DatatypeType :: 
      d == #CoRecursion.Stream.More(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall CoRecursion.Stream$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType :: 
  { $Is(#CoRecursion.Stream.More(a#2#0#0, a#2#1#0), 
      Tclass.CoRecursion.Stream(CoRecursion.Stream$T)) } 
  $Is(#CoRecursion.Stream.More(a#2#0#0, a#2#1#0), 
      Tclass.CoRecursion.Stream(CoRecursion.Stream$T))
     <==> $IsBox(a#2#0#0, CoRecursion.Stream$T)
       && $Is(a#2#1#0, Tclass.CoRecursion.Stream(CoRecursion.Stream$T)));

// Constructor $IsAlloc
axiom (forall CoRecursion.Stream$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#CoRecursion.Stream.More(a#2#0#0, a#2#1#0), 
      Tclass.CoRecursion.Stream(CoRecursion.Stream$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#CoRecursion.Stream.More(a#2#0#0, a#2#1#0), 
        Tclass.CoRecursion.Stream(CoRecursion.Stream$T), 
        $h)
       <==> $IsAllocBox(a#2#0#0, CoRecursion.Stream$T, $h)
         && $IsAlloc(a#2#1#0, Tclass.CoRecursion.Stream(CoRecursion.Stream$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, CoRecursion.Stream$T: Ty, $h: Heap :: 
  { $IsAllocBox(CoRecursion.Stream.head(d), CoRecursion.Stream$T, $h) } 
  $IsGoodHeap($h)
       && 
      CoRecursion.Stream.More_q(d)
       && $IsAlloc(d, Tclass.CoRecursion.Stream(CoRecursion.Stream$T), $h)
     ==> $IsAllocBox(CoRecursion.Stream.head(d), CoRecursion.Stream$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, CoRecursion.Stream$T: Ty, $h: Heap :: 
  { $IsAlloc(CoRecursion.Stream.rest(d), Tclass.CoRecursion.Stream(CoRecursion.Stream$T), $h) } 
  $IsGoodHeap($h)
       && 
      CoRecursion.Stream.More_q(d)
       && $IsAlloc(d, Tclass.CoRecursion.Stream(CoRecursion.Stream$T), $h)
     ==> $IsAlloc(CoRecursion.Stream.rest(d), Tclass.CoRecursion.Stream(CoRecursion.Stream$T), $h));

function CoRecursion.Stream.head(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #CoRecursion.Stream.More(a#3#0#0, a#3#1#0) } 
  CoRecursion.Stream.head(#CoRecursion.Stream.More(a#3#0#0, a#3#1#0)) == a#3#0#0);

function CoRecursion.Stream.rest(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #CoRecursion.Stream.More(a#4#0#0, a#4#1#0) } 
  CoRecursion.Stream.rest(#CoRecursion.Stream.More(a#4#0#0, a#4#1#0)) == a#4#1#0);

// Depth-one case-split function
function $IsA#CoRecursion.Stream(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#CoRecursion.Stream(d) } 
  $IsA#CoRecursion.Stream(d) ==> CoRecursion.Stream.More_q(d));

// Questionmark data type disjunctivity
axiom (forall CoRecursion.Stream$T: Ty, d: DatatypeType :: 
  { CoRecursion.Stream.More_q(d), $Is(d, Tclass.CoRecursion.Stream(CoRecursion.Stream$T)) } 
  $Is(d, Tclass.CoRecursion.Stream(CoRecursion.Stream$T))
     ==> CoRecursion.Stream.More_q(d));

function $Eq#CoRecursion.Stream(Ty, Ty, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall CoRecursion.Stream$T#l: Ty, 
    CoRecursion.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.CoRecursion.Stream(CoRecursion.Stream$T#l))
       && $Is(d1, Tclass.CoRecursion.Stream(CoRecursion.Stream$T#r))
     ==> ($Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, $LS(ly), d0, d1)
       <==> CoRecursion.Stream.More_q(d0)
         && CoRecursion.Stream.More_q(d1)
         && (CoRecursion.Stream.More_q(d0) && CoRecursion.Stream.More_q(d1)
           ==> CoRecursion.Stream.head(d0) == CoRecursion.Stream.head(d1)
             && $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, 
              CoRecursion.Stream$T#r, 
              ly, 
              CoRecursion.Stream.rest(d0), 
              CoRecursion.Stream.rest(d1)))));

// Unbump layer co-equality axiom
axiom (forall CoRecursion.Stream$T#l: Ty, 
    CoRecursion.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, $LS(ly), d0, d1)
     <==> $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, ly, d0, d1));

// Equality for codatatypes
axiom (forall CoRecursion.Stream$T#l: Ty, 
    CoRecursion.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, $LS(ly), d0, d1)
     <==> d0 == d1);

function $PrefixEq#CoRecursion.Stream(Ty, Ty, Box, LayerType, DatatypeType, DatatypeType) : bool;

// Layered co-equality axiom
axiom (forall CoRecursion.Stream$T#l: Ty, 
    CoRecursion.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, $LS(ly), d0, d1) } 
  $Is(d0, Tclass.CoRecursion.Stream(CoRecursion.Stream$T#l))
       && $Is(d1, Tclass.CoRecursion.Stream(CoRecursion.Stream$T#r))
     ==> ($PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, $LS(ly), d0, d1)
       <==> (0 < ORD#Offset(k)
           ==> CoRecursion.Stream.More_q(d0)
             && CoRecursion.Stream.More_q(d1)
             && (CoRecursion.Stream.More_q(d0) && CoRecursion.Stream.More_q(d1)
               ==> CoRecursion.Stream.head(d0) == CoRecursion.Stream.head(d1)
                 && $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, 
                  CoRecursion.Stream$T#r, 
                  ORD#Minus(k, ORD#FromNat(1)), 
                  ly, 
                  CoRecursion.Stream.rest(d0), 
                  CoRecursion.Stream.rest(d1))))
         && (k != ORD#FromNat(0) && ORD#IsLimit(k)
           ==> $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, ly, d0, d1))));

// Unbump layer co-equality axiom
axiom (forall CoRecursion.Stream$T#l: Ty, 
    CoRecursion.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, $LS(ly), d0, d1) } 
  k != ORD#FromNat(0)
     ==> ($PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, $LS(ly), d0, d1)
       <==> $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, ly, d0, d1)));

// Coequality and prefix equality connection
axiom (forall CoRecursion.Stream$T#l: Ty, 
    CoRecursion.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, $LS(ly), d0, d1) } 
  $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, $LS(ly), d0, d1)
     <==> (forall k: Box :: 
      { $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, $LS(ly), d0, d1) } 
      $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, $LS(ly), d0, d1)));

// Coequality and prefix equality connection
axiom (forall CoRecursion.Stream$T#l: Ty, 
    CoRecursion.Stream$T#r: Ty, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, $LS(ly), d0, d1) } 
  (forall k: int :: 
      { $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, ORD#FromNat(k), $LS(ly), d0, d1) } 
      0 <= k
         ==> $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, ORD#FromNat(k), $LS(ly), d0, d1))
     ==> $Eq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, $LS(ly), d0, d1));

// Prefix equality consequence
axiom (forall CoRecursion.Stream$T#l: Ty, 
    CoRecursion.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType, 
    m: Box :: 
  { $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, $LS(ly), d0, d1), $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, m, $LS(ly), d0, d1) } 
  ORD#Less(k, m)
       && $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, m, $LS(ly), d0, d1)
     ==> $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, $LS(ly), d0, d1));

// Prefix equality shortcut
axiom (forall CoRecursion.Stream$T#l: Ty, 
    CoRecursion.Stream$T#r: Ty, 
    k: Box, 
    ly: LayerType, 
    d0: DatatypeType, 
    d1: DatatypeType :: 
  { $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, $LS(ly), d0, d1) } 
  d0 == d1
     ==> $PrefixEq#CoRecursion.Stream(CoRecursion.Stream$T#l, CoRecursion.Stream$T#r, k, $LS(ly), d0, d1));

const unique class.CoRecursion.Stream: ClassName;

// Constructor function declaration
function #CoRecursion.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#CoRecursion.List.Nil()) == ##CoRecursion.List.Nil;
// Constructor literal
axiom #CoRecursion.List.Nil() == Lit(#CoRecursion.List.Nil());
}

const unique ##CoRecursion.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#CoRecursion.List.Nil()) == ##CoRecursion.List.Nil;
}

function CoRecursion.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { CoRecursion.List.Nil_q(d) } 
  CoRecursion.List.Nil_q(d) <==> DatatypeCtorId(d) == ##CoRecursion.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { CoRecursion.List.Nil_q(d) } 
  CoRecursion.List.Nil_q(d) ==> d == #CoRecursion.List.Nil());

// Constructor $Is
axiom (forall CoRecursion.List$T: Ty :: 
  { $Is(#CoRecursion.List.Nil(), Tclass.CoRecursion.List(CoRecursion.List$T)) } 
  $Is(#CoRecursion.List.Nil(), Tclass.CoRecursion.List(CoRecursion.List$T)));

// Constructor $IsAlloc
axiom (forall CoRecursion.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#CoRecursion.List.Nil(), Tclass.CoRecursion.List(CoRecursion.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#CoRecursion.List.Nil(), Tclass.CoRecursion.List(CoRecursion.List$T), $h));

// Constructor function declaration
function #CoRecursion.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##CoRecursion.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#9#0#0: Box, a#9#1#0: DatatypeType :: 
  { #CoRecursion.List.Cons(a#9#0#0, a#9#1#0) } 
  DatatypeCtorId(#CoRecursion.List.Cons(a#9#0#0, a#9#1#0))
     == ##CoRecursion.List.Cons);
}

function CoRecursion.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { CoRecursion.List.Cons_q(d) } 
  CoRecursion.List.Cons_q(d) <==> DatatypeCtorId(d) == ##CoRecursion.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { CoRecursion.List.Cons_q(d) } 
  CoRecursion.List.Cons_q(d)
     ==> (exists a#10#0#0: Box, a#10#1#0: DatatypeType :: 
      d == #CoRecursion.List.Cons(a#10#0#0, a#10#1#0)));

// Constructor $Is
axiom (forall CoRecursion.List$T: Ty, a#11#0#0: Box, a#11#1#0: DatatypeType :: 
  { $Is(#CoRecursion.List.Cons(a#11#0#0, a#11#1#0), 
      Tclass.CoRecursion.List(CoRecursion.List$T)) } 
  $Is(#CoRecursion.List.Cons(a#11#0#0, a#11#1#0), 
      Tclass.CoRecursion.List(CoRecursion.List$T))
     <==> $IsBox(a#11#0#0, CoRecursion.List$T)
       && $Is(a#11#1#0, Tclass.CoRecursion.List(CoRecursion.List$T)));

// Constructor $IsAlloc
axiom (forall CoRecursion.List$T: Ty, a#11#0#0: Box, a#11#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#CoRecursion.List.Cons(a#11#0#0, a#11#1#0), 
      Tclass.CoRecursion.List(CoRecursion.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#CoRecursion.List.Cons(a#11#0#0, a#11#1#0), 
        Tclass.CoRecursion.List(CoRecursion.List$T), 
        $h)
       <==> $IsAllocBox(a#11#0#0, CoRecursion.List$T, $h)
         && $IsAlloc(a#11#1#0, Tclass.CoRecursion.List(CoRecursion.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, CoRecursion.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(CoRecursion.List.car(d), CoRecursion.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      CoRecursion.List.Cons_q(d)
       && $IsAlloc(d, Tclass.CoRecursion.List(CoRecursion.List$T), $h)
     ==> $IsAllocBox(CoRecursion.List.car(d), CoRecursion.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, CoRecursion.List$T: Ty, $h: Heap :: 
  { $IsAlloc(CoRecursion.List.cdr(d), Tclass.CoRecursion.List(CoRecursion.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      CoRecursion.List.Cons_q(d)
       && $IsAlloc(d, Tclass.CoRecursion.List(CoRecursion.List$T), $h)
     ==> $IsAlloc(CoRecursion.List.cdr(d), Tclass.CoRecursion.List(CoRecursion.List$T), $h));

// Constructor literal
axiom (forall a#12#0#0: Box, a#12#1#0: DatatypeType :: 
  { #CoRecursion.List.Cons(Lit(a#12#0#0), Lit(a#12#1#0)) } 
  #CoRecursion.List.Cons(Lit(a#12#0#0), Lit(a#12#1#0))
     == Lit(#CoRecursion.List.Cons(a#12#0#0, a#12#1#0)));

function CoRecursion.List.car(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#13#0#0: Box, a#13#1#0: DatatypeType :: 
  { #CoRecursion.List.Cons(a#13#0#0, a#13#1#0) } 
  CoRecursion.List.car(#CoRecursion.List.Cons(a#13#0#0, a#13#1#0)) == a#13#0#0);

// Inductive rank
axiom (forall a#14#0#0: Box, a#14#1#0: DatatypeType :: 
  { #CoRecursion.List.Cons(a#14#0#0, a#14#1#0) } 
  BoxRank(a#14#0#0) < DtRank(#CoRecursion.List.Cons(a#14#0#0, a#14#1#0)));

function CoRecursion.List.cdr(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#15#0#0: Box, a#15#1#0: DatatypeType :: 
  { #CoRecursion.List.Cons(a#15#0#0, a#15#1#0) } 
  CoRecursion.List.cdr(#CoRecursion.List.Cons(a#15#0#0, a#15#1#0)) == a#15#1#0);

// Inductive rank
axiom (forall a#16#0#0: Box, a#16#1#0: DatatypeType :: 
  { #CoRecursion.List.Cons(a#16#0#0, a#16#1#0) } 
  DtRank(a#16#1#0) < DtRank(#CoRecursion.List.Cons(a#16#0#0, a#16#1#0)));

// Depth-one case-split function
function $IsA#CoRecursion.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#CoRecursion.List(d) } 
  $IsA#CoRecursion.List(d)
     ==> CoRecursion.List.Nil_q(d) || CoRecursion.List.Cons_q(d));

// Questionmark data type disjunctivity
axiom (forall CoRecursion.List$T: Ty, d: DatatypeType :: 
  { CoRecursion.List.Cons_q(d), $Is(d, Tclass.CoRecursion.List(CoRecursion.List$T)) } 
    { CoRecursion.List.Nil_q(d), $Is(d, Tclass.CoRecursion.List(CoRecursion.List$T)) } 
  $Is(d, Tclass.CoRecursion.List(CoRecursion.List$T))
     ==> CoRecursion.List.Nil_q(d) || CoRecursion.List.Cons_q(d));

// Datatype extensional equality declaration
function CoRecursion.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #CoRecursion.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { CoRecursion.List#Equal(a, b), CoRecursion.List.Nil_q(a) } 
    { CoRecursion.List#Equal(a, b), CoRecursion.List.Nil_q(b) } 
  CoRecursion.List.Nil_q(a) && CoRecursion.List.Nil_q(b)
     ==> CoRecursion.List#Equal(a, b));

// Datatype extensional equality definition: #CoRecursion.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { CoRecursion.List#Equal(a, b), CoRecursion.List.Cons_q(a) } 
    { CoRecursion.List#Equal(a, b), CoRecursion.List.Cons_q(b) } 
  CoRecursion.List.Cons_q(a) && CoRecursion.List.Cons_q(b)
     ==> (CoRecursion.List#Equal(a, b)
       <==> CoRecursion.List.car(a) == CoRecursion.List.car(b)
         && CoRecursion.List#Equal(CoRecursion.List.cdr(a), CoRecursion.List.cdr(b))));

// Datatype extensionality axiom: CoRecursion.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { CoRecursion.List#Equal(a, b) } 
  CoRecursion.List#Equal(a, b) <==> a == b);

const unique class.CoRecursion.List: ClassName;

const unique class.CoRecursion.Cell?: ClassName;

function Tclass.CoRecursion.Cell?() : Ty
uses {
// Tclass.CoRecursion.Cell? Tag
axiom Tag(Tclass.CoRecursion.Cell?()) == Tagclass.CoRecursion.Cell?
   && TagFamily(Tclass.CoRecursion.Cell?()) == tytagFamily$Cell;
}

const unique Tagclass.CoRecursion.Cell?: TyTag;

// Box/unbox axiom for Tclass.CoRecursion.Cell?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.CoRecursion.Cell?()) } 
  $IsBox(bx, Tclass.CoRecursion.Cell?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.CoRecursion.Cell?()));

// $Is axiom for class Cell
axiom (forall $o: ref :: 
  { $Is($o, Tclass.CoRecursion.Cell?()) } 
  $Is($o, Tclass.CoRecursion.Cell?())
     <==> $o == null || dtype($o) == Tclass.CoRecursion.Cell?());

// $IsAlloc axiom for class Cell
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.CoRecursion.Cell?(), $h) } 
  $IsAlloc($o, Tclass.CoRecursion.Cell?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const CoRecursion.Cell.data: Field
uses {
axiom FDim(CoRecursion.Cell.data) == 0
   && FieldOfDecl(class.CoRecursion.Cell?, field$data) == CoRecursion.Cell.data
   && !$IsGhostField(CoRecursion.Cell.data);
}

// Cell.data: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, CoRecursion.Cell.data)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.CoRecursion.Cell?()
     ==> $Is($Unbox(read($h, $o, CoRecursion.Cell.data)): int, TInt));

// Cell.data: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, CoRecursion.Cell.data)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.CoRecursion.Cell?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, CoRecursion.Cell.data)): int, TInt, $h));

function Tclass.CoRecursion.Cell() : Ty
uses {
// Tclass.CoRecursion.Cell Tag
axiom Tag(Tclass.CoRecursion.Cell()) == Tagclass.CoRecursion.Cell
   && TagFamily(Tclass.CoRecursion.Cell()) == tytagFamily$Cell;
}

const unique Tagclass.CoRecursion.Cell: TyTag;

// Box/unbox axiom for Tclass.CoRecursion.Cell
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.CoRecursion.Cell()) } 
  $IsBox(bx, Tclass.CoRecursion.Cell())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.CoRecursion.Cell()));

// $Is axiom for non-null type CoRecursion.Cell
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.CoRecursion.Cell()) } 
    { $Is(c#0, Tclass.CoRecursion.Cell?()) } 
  $Is(c#0, Tclass.CoRecursion.Cell())
     <==> $Is(c#0, Tclass.CoRecursion.Cell?()) && c#0 != null);

// $IsAlloc axiom for non-null type CoRecursion.Cell
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.CoRecursion.Cell(), $h) } 
    { $IsAlloc(c#0, Tclass.CoRecursion.Cell?(), $h) } 
  $IsAlloc(c#0, Tclass.CoRecursion.Cell(), $h)
     <==> $IsAlloc(c#0, Tclass.CoRecursion.Cell?(), $h));

const unique class.S.__default: ClassName;

const unique class.S.C?: ClassName;

function Tclass.S.C?() : Ty
uses {
// Tclass.S.C? Tag
axiom Tag(Tclass.S.C?()) == Tagclass.S.C? && TagFamily(Tclass.S.C?()) == tytagFamily$C;
}

const unique Tagclass.S.C?: TyTag;

// Box/unbox axiom for Tclass.S.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.S.C?()) } 
  $IsBox(bx, Tclass.S.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.S.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.S.C?()) } 
  $Is($o, Tclass.S.C?()) <==> $o == null || dtype($o) == Tclass.S.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.S.C?(), $h) } 
  $IsAlloc($o, Tclass.S.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const S.C.f: Field
uses {
axiom FDim(S.C.f) == 0
   && FieldOfDecl(class.S.C?, field$f) == S.C.f
   && !$IsGhostField(S.C.f);
}

// C.f: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, S.C.f)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.S.C?()
     ==> $Is($Unbox(read($h, $o, S.C.f)): int, TInt));

// C.f: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, S.C.f)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.S.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, S.C.f)): int, TInt, $h));

function Tclass.S.C() : Ty
uses {
// Tclass.S.C Tag
axiom Tag(Tclass.S.C()) == Tagclass.S.C && TagFamily(Tclass.S.C()) == tytagFamily$C;
}

const unique Tagclass.S.C: TyTag;

// Box/unbox axiom for Tclass.S.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.S.C()) } 
  $IsBox(bx, Tclass.S.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.S.C()));

// $Is axiom for non-null type S.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.S.C()) } { $Is(c#0, Tclass.S.C?()) } 
  $Is(c#0, Tclass.S.C()) <==> $Is(c#0, Tclass.S.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type S.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.S.C(), $h) } { $IsAlloc(c#0, Tclass.S.C?(), $h) } 
  $IsAlloc(c#0, Tclass.S.C(), $h) <==> $IsAlloc(c#0, Tclass.S.C?(), $h));

const unique class.T.__default: ClassName;

const unique class.T.C?: ClassName;

function Tclass.T.C?() : Ty
uses {
// Tclass.T.C? Tag
axiom Tag(Tclass.T.C?()) == Tagclass.T.C? && TagFamily(Tclass.T.C?()) == tytagFamily$C;
}

const unique Tagclass.T.C?: TyTag;

// Box/unbox axiom for Tclass.T.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.T.C?()) } 
  $IsBox(bx, Tclass.T.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.T.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.T.C?()) } 
  $Is($o, Tclass.T.C?()) <==> $o == null || dtype($o) == Tclass.T.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.T.C?(), $h) } 
  $IsAlloc($o, Tclass.T.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const T.C.f: Field
uses {
axiom FDim(T.C.f) == 0
   && FieldOfDecl(class.T.C?, field$f) == T.C.f
   && !$IsGhostField(T.C.f);
}

// C.f: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, T.C.f)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.T.C?()
     ==> $Is($Unbox(read($h, $o, T.C.f)): int, TInt));

// C.f: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, T.C.f)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.T.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, T.C.f)): int, TInt, $h));

function Tclass.T.C() : Ty
uses {
// Tclass.T.C Tag
axiom Tag(Tclass.T.C()) == Tagclass.T.C && TagFamily(Tclass.T.C()) == tytagFamily$C;
}

const unique Tagclass.T.C: TyTag;

// Box/unbox axiom for Tclass.T.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.T.C()) } 
  $IsBox(bx, Tclass.T.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.T.C()));

// $Is axiom for non-null type T.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.T.C()) } { $Is(c#0, Tclass.T.C?()) } 
  $Is(c#0, Tclass.T.C()) <==> $Is(c#0, Tclass.T.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type T.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.T.C(), $h) } { $IsAlloc(c#0, Tclass.T.C?(), $h) } 
  $IsAlloc(c#0, Tclass.T.C(), $h) <==> $IsAlloc(c#0, Tclass.T.C?(), $h));

const unique class.A.__default: ClassName;

procedure {:verboseName "A.run (well-formedness)"} CheckWellFormed$$A.__default.run();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "A.run (call)"} Call$$A.__default.run();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const class.S1.B.Abs.__default: ClassName;

const class.S1.B.Abs.C?: ClassName;

function Tclass.S1.B.Abs.C?() : Ty
uses {
// Tclass.S1.B.Abs.C? Tag
axiom TagFamily(Tclass.S1.B.Abs.C?()) == tytagFamily$C;
}

// Box/unbox axiom for Tclass.S1.B.Abs.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.S1.B.Abs.C?()) } 
  $IsBox(bx, Tclass.S1.B.Abs.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.S1.B.Abs.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.S1.B.Abs.C?()) } 
  $Is($o, Tclass.S1.B.Abs.C?())
     <==> $o == null || dtype($o) == Tclass.S1.B.Abs.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.S1.B.Abs.C?(), $h) } 
  $IsAlloc($o, Tclass.S1.B.Abs.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const S1.B.Abs.C.f: Field
uses {
axiom FDim(S1.B.Abs.C.f) == 0
   && FieldOfDecl(class.S1.B.Abs.C?, field$f) == S1.B.Abs.C.f
   && !$IsGhostField(S1.B.Abs.C.f);
}

// C.f: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, S1.B.Abs.C.f)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.S1.B.Abs.C?()
     ==> $Is($Unbox(read($h, $o, S1.B.Abs.C.f)): int, TInt));

// C.f: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, S1.B.Abs.C.f)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.S1.B.Abs.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, S1.B.Abs.C.f)): int, TInt, $h));

function Tclass.S1.B.Abs.C() : Ty
uses {
// Tclass.S1.B.Abs.C Tag
axiom TagFamily(Tclass.S1.B.Abs.C()) == tytagFamily$C;
}

// Box/unbox axiom for Tclass.S1.B.Abs.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.S1.B.Abs.C()) } 
  $IsBox(bx, Tclass.S1.B.Abs.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.S1.B.Abs.C()));

// $Is axiom for non-null type S1.B.Abs.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.S1.B.Abs.C()) } { $Is(c#0, Tclass.S1.B.Abs.C?()) } 
  $Is(c#0, Tclass.S1.B.Abs.C()) <==> $Is(c#0, Tclass.S1.B.Abs.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type S1.B.Abs.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.S1.B.Abs.C(), $h) } 
    { $IsAlloc(c#0, Tclass.S1.B.Abs.C?(), $h) } 
  $IsAlloc(c#0, Tclass.S1.B.Abs.C(), $h)
     <==> $IsAlloc(c#0, Tclass.S1.B.Abs.C?(), $h));

const unique class.S1.__default: ClassName;

const unique class.T1.__default: ClassName;

const class.A1.X.B.Abs.__default: ClassName;

const class.A1.X.B.Abs.C?: ClassName;

function Tclass.A1.X.B.Abs.C?() : Ty
uses {
// Tclass.A1.X.B.Abs.C? Tag
axiom TagFamily(Tclass.A1.X.B.Abs.C?()) == tytagFamily$C;
}

// Box/unbox axiom for Tclass.A1.X.B.Abs.C?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.A1.X.B.Abs.C?()) } 
  $IsBox(bx, Tclass.A1.X.B.Abs.C?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.A1.X.B.Abs.C?()));

// $Is axiom for class C
axiom (forall $o: ref :: 
  { $Is($o, Tclass.A1.X.B.Abs.C?()) } 
  $Is($o, Tclass.A1.X.B.Abs.C?())
     <==> $o == null || dtype($o) == Tclass.A1.X.B.Abs.C?());

// $IsAlloc axiom for class C
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.A1.X.B.Abs.C?(), $h) } 
  $IsAlloc($o, Tclass.A1.X.B.Abs.C?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

const A1.X.B.Abs.C.f: Field
uses {
axiom FDim(A1.X.B.Abs.C.f) == 0
   && FieldOfDecl(class.A1.X.B.Abs.C?, field$f) == A1.X.B.Abs.C.f
   && !$IsGhostField(A1.X.B.Abs.C.f);
}

// C.f: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, A1.X.B.Abs.C.f)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.A1.X.B.Abs.C?()
     ==> $Is($Unbox(read($h, $o, A1.X.B.Abs.C.f)): int, TInt));

// C.f: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, A1.X.B.Abs.C.f)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.A1.X.B.Abs.C?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, A1.X.B.Abs.C.f)): int, TInt, $h));

function Tclass.A1.X.B.Abs.C() : Ty
uses {
// Tclass.A1.X.B.Abs.C Tag
axiom TagFamily(Tclass.A1.X.B.Abs.C()) == tytagFamily$C;
}

// Box/unbox axiom for Tclass.A1.X.B.Abs.C
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.A1.X.B.Abs.C()) } 
  $IsBox(bx, Tclass.A1.X.B.Abs.C())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.A1.X.B.Abs.C()));

// $Is axiom for non-null type A1.X.B.Abs.C
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.A1.X.B.Abs.C()) } { $Is(c#0, Tclass.A1.X.B.Abs.C?()) } 
  $Is(c#0, Tclass.A1.X.B.Abs.C())
     <==> $Is(c#0, Tclass.A1.X.B.Abs.C?()) && c#0 != null);

// $IsAlloc axiom for non-null type A1.X.B.Abs.C
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.A1.X.B.Abs.C(), $h) } 
    { $IsAlloc(c#0, Tclass.A1.X.B.Abs.C?(), $h) } 
  $IsAlloc(c#0, Tclass.A1.X.B.Abs.C(), $h)
     <==> $IsAlloc(c#0, Tclass.A1.X.B.Abs.C?(), $h));

const class.A1.X.Abs.__default: ClassName;

const unique class.A1.__default: ClassName;

const unique class.M.__default: ClassName;

// function declaration for M._default.F
function M.__default.F() : DatatypeType
uses {
// consequence axiom for M.__default.F
axiom $Is(M.__default.F(), Tclass.M.fixed());
// definition axiom for M.__default.F (revealed)
axiom {:id "id303"} M.__default.F() == Lit(#M.fixed.A());
// definition axiom for M.__default.F for all literals (revealed)
axiom {:id "id304"} M.__default.F() == Lit(#M.fixed.A());
}

function M.__default.F#canCall() : bool;

function Tclass.M.fixed() : Ty
uses {
// Tclass.M.fixed Tag
axiom Tag(Tclass.M.fixed()) == Tagclass.M.fixed
   && TagFamily(Tclass.M.fixed()) == tytagFamily$fixed;
}

const unique Tagclass.M.fixed: TyTag;

// Box/unbox axiom for Tclass.M.fixed
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M.fixed()) } 
  $IsBox(bx, Tclass.M.fixed())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.M.fixed()));

function M.__default.F#requires() : bool
uses {
// #requires axiom for M.__default.F
axiom M.__default.F#requires() == true;
}

// Constructor function declaration
function #M.fixed.A() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M.fixed.A()) == ##M.fixed.A;
// Constructor $Is
axiom $Is(#M.fixed.A(), Tclass.M.fixed());
// Constructor literal
axiom #M.fixed.A() == Lit(#M.fixed.A());
}

const unique ##M.fixed.A: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M.fixed.A()) == ##M.fixed.A;
}

function M.fixed.A_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M.fixed.A_q(d) } 
  M.fixed.A_q(d) <==> DatatypeCtorId(d) == ##M.fixed.A);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M.fixed.A_q(d) } 
  M.fixed.A_q(d) ==> d == #M.fixed.A());

// Constructor function declaration
function #M.fixed.B() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#M.fixed.B()) == ##M.fixed.B;
// Constructor $Is
axiom $Is(#M.fixed.B(), Tclass.M.fixed());
// Constructor literal
axiom #M.fixed.B() == Lit(#M.fixed.B());
}

const unique ##M.fixed.B: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#M.fixed.B()) == ##M.fixed.B;
}

function M.fixed.B_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { M.fixed.B_q(d) } 
  M.fixed.B_q(d) <==> DatatypeCtorId(d) == ##M.fixed.B);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { M.fixed.B_q(d) } 
  M.fixed.B_q(d) ==> d == #M.fixed.B());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.M.fixed(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.M.fixed())
     ==> $IsAlloc(d, Tclass.M.fixed(), $h));

// Depth-one case-split function
function $IsA#M.fixed(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#M.fixed(d) } 
  $IsA#M.fixed(d) ==> M.fixed.A_q(d) || M.fixed.B_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { M.fixed.B_q(d), $Is(d, Tclass.M.fixed()) } 
    { M.fixed.A_q(d), $Is(d, Tclass.M.fixed()) } 
  $Is(d, Tclass.M.fixed()) ==> M.fixed.A_q(d) || M.fixed.B_q(d));

// Datatype extensional equality declaration
function M.fixed#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #M.fixed.A
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M.fixed#Equal(a, b), M.fixed.A_q(a) } { M.fixed#Equal(a, b), M.fixed.A_q(b) } 
  M.fixed.A_q(a) && M.fixed.A_q(b) ==> M.fixed#Equal(a, b));

// Datatype extensional equality definition: #M.fixed.B
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M.fixed#Equal(a, b), M.fixed.B_q(a) } { M.fixed#Equal(a, b), M.fixed.B_q(b) } 
  M.fixed.B_q(a) && M.fixed.B_q(b) ==> M.fixed#Equal(a, b));

// Datatype extensionality axiom: M.fixed
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { M.fixed#Equal(a, b) } 
  M.fixed#Equal(a, b) <==> a == b);

const unique class.M.fixed: ClassName;

const unique class.M.public?: ClassName;

function Tclass.M.public?() : Ty
uses {
// Tclass.M.public? Tag
axiom Tag(Tclass.M.public?()) == Tagclass.M.public?
   && TagFamily(Tclass.M.public?()) == tytagFamily$public;
}

const unique Tagclass.M.public?: TyTag;

// Box/unbox axiom for Tclass.M.public?
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.M.public?()) } 
  $IsBox(bx, Tclass.M.public?())
     ==> $Box($Unbox(bx): ref) == bx && $Is($Unbox(bx): ref, Tclass.M.public?()));

// $Is axiom for class public
axiom (forall $o: ref :: 
  { $Is($o, Tclass.M.public?()) } 
  $Is($o, Tclass.M.public?()) <==> $o == null || dtype($o) == Tclass.M.public?());

// $IsAlloc axiom for class public
axiom (forall $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.M.public?(), $h) } 
  $IsAlloc($o, Tclass.M.public?(), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

procedure {:verboseName "M.public._ctor (well-formedness)"} CheckWellFormed$$M.public.__ctor() returns (this: ref);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "M.public._ctor (call)"} Call$$M.public.__ctor()
   returns (this: ref
       where this != null
         && 
        $Is(this, Tclass.M.public())
         && $IsAlloc(this, Tclass.M.public(), $Heap));
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



const M.public.private: Field
uses {
axiom FDim(M.public.private) == 0
   && FieldOfDecl(class.M.public?, field$private) == M.public.private
   && !$IsGhostField(M.public.private);
}

// public.private: Type axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M.public.private)): int } 
  $IsGoodHeap($h) && $o != null && dtype($o) == Tclass.M.public?()
     ==> $Is($Unbox(read($h, $o, M.public.private)): int, TInt));

// public.private: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { $Unbox(read($h, $o, M.public.private)): int } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M.public?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc($Unbox(read($h, $o, M.public.private)): int, TInt, $h));

// public.namespace: Type axiom
axiom (forall $o: ref :: 
  { M.public.namespace($o) } 
  $o != null && dtype($o) == Tclass.M.public?()
     ==> $Is(M.public.namespace($o), TInt));

// public.namespace: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { M.public.namespace($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M.public?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(M.public.namespace($o), TInt, $h));

// public.fallthrough: Type axiom
axiom (forall $o: ref :: 
  { M.public.fallthrough($o) } 
  $o != null && dtype($o) == Tclass.M.public?()
     ==> $Is(M.public.fallthrough($o), TInt));

// public.fallthrough: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { M.public.fallthrough($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M.public?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(M.public.fallthrough($o), TInt, $h));

// public.try: Type axiom
axiom (forall $o: ref :: 
  { M.public.try($o) } 
  $o != null && dtype($o) == Tclass.M.public?() ==> $Is(M.public.try($o), TInt));

// public.try: Allocation axiom
axiom (forall $h: Heap, $o: ref :: 
  { M.public.try($o), $Unbox(read($h, $o, alloc)): bool } 
  $IsGoodHeap($h)
       && 
      $o != null
       && dtype($o) == Tclass.M.public?()
       && $Unbox(read($h, $o, alloc)): bool
     ==> $IsAlloc(M.public.try($o), TInt, $h));

// $Is axiom for non-null type M.public
axiom (forall c#0: ref :: 
  { $Is(c#0, Tclass.M.public()) } { $Is(c#0, Tclass.M.public?()) } 
  $Is(c#0, Tclass.M.public()) <==> $Is(c#0, Tclass.M.public?()) && c#0 != null);

// $IsAlloc axiom for non-null type M.public
axiom (forall c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.M.public(), $h) } 
    { $IsAlloc(c#0, Tclass.M.public?(), $h) } 
  $IsAlloc(c#0, Tclass.M.public(), $h) <==> $IsAlloc(c#0, Tclass.M.public?(), $h));

const unique class.GhostLetExpr.__default: ClassName;

// function declaration for GhostLetExpr._default.F
function GhostLetExpr.__default.F() : int
uses {
// definition axiom for GhostLetExpr.__default.F (revealed)
axiom {:id "id305"} GhostLetExpr.__default.F() == LitInt(5);
// definition axiom for GhostLetExpr.__default.F for all literals (revealed)
axiom {:id "id306"} GhostLetExpr.__default.F() == LitInt(5);
}

function GhostLetExpr.__default.F#canCall() : bool;

function GhostLetExpr.__default.F#requires() : bool
uses {
// #requires axiom for GhostLetExpr.__default.F
axiom GhostLetExpr.__default.F#requires() == true;
}

// function declaration for GhostLetExpr._default.G
function GhostLetExpr.__default.G(x#0: int, y#0: int) : int;

function GhostLetExpr.__default.G#canCall(x#0: int, y#0: int) : bool;

function GhostLetExpr.__default.G#requires(int, int) : bool;

// #requires axiom for GhostLetExpr.__default.G
axiom (forall x#0: int, y#0: int :: 
  { GhostLetExpr.__default.G#requires(x#0, y#0) } 
  GhostLetExpr.__default.G#requires(x#0, y#0) == true);

// definition axiom for GhostLetExpr.__default.G (revealed)
axiom {:id "id307"} (forall x#0: int, y#0: int :: 
  { GhostLetExpr.__default.G(x#0, y#0) } 
  GhostLetExpr.__default.G(x#0, y#0) == x#0);

// definition axiom for GhostLetExpr.__default.G for all literals (revealed)
axiom {:id "id308"} (forall x#0: int, y#0: int :: 
  {:weight 3} { GhostLetExpr.__default.G(LitInt(x#0), LitInt(y#0)) } 
  GhostLetExpr.__default.G(LitInt(x#0), LitInt(y#0)) == LitInt(x#0));

// function declaration for GhostLetExpr._default.FM
function GhostLetExpr.__default.FM() : int
uses {
// definition axiom for GhostLetExpr.__default.FM (revealed)
axiom {:id "id309"} GhostLetExpr.__default.F#canCall()
   && (var xyz#2 := LitInt(GhostLetExpr.__default.F()); 
    GhostLetExpr.__default.G#canCall(LitInt(5), xyz#2))
   && GhostLetExpr.__default.FM()
     == (var xyz#2 := LitInt(GhostLetExpr.__default.F()); 
      LitInt(GhostLetExpr.__default.G(LitInt(5), xyz#2)));
// definition axiom for GhostLetExpr.__default.FM for all literals (revealed)
axiom {:id "id310"} GhostLetExpr.__default.F#canCall()
   && (var xyz#3 := LitInt(GhostLetExpr.__default.F()); 
    GhostLetExpr.__default.G#canCall(LitInt(5), xyz#3))
   && GhostLetExpr.__default.FM()
     == (var xyz#3 := LitInt(GhostLetExpr.__default.F()); 
      LitInt(GhostLetExpr.__default.G(LitInt(5), xyz#3)));
}

function GhostLetExpr.__default.FM#canCall() : bool;

function GhostLetExpr.__default.FM#requires() : bool
uses {
// #requires axiom for GhostLetExpr.__default.FM
axiom GhostLetExpr.__default.FM#requires() == true;
}

// Constructor function declaration
function #GhostLetExpr.Dt.MyRecord(int, int) : DatatypeType;

const unique ##GhostLetExpr.Dt.MyRecord: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int, a#0#1#0: int :: 
  { #GhostLetExpr.Dt.MyRecord(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#GhostLetExpr.Dt.MyRecord(a#0#0#0, a#0#1#0))
     == ##GhostLetExpr.Dt.MyRecord);
}

function GhostLetExpr.Dt.MyRecord_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { GhostLetExpr.Dt.MyRecord_q(d) } 
  GhostLetExpr.Dt.MyRecord_q(d)
     <==> DatatypeCtorId(d) == ##GhostLetExpr.Dt.MyRecord);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { GhostLetExpr.Dt.MyRecord_q(d) } 
  GhostLetExpr.Dt.MyRecord_q(d)
     ==> (exists a#1#0#0: int, a#1#1#0: int :: 
      d == #GhostLetExpr.Dt.MyRecord(a#1#0#0, a#1#1#0)));

function Tclass.GhostLetExpr.Dt() : Ty
uses {
// Tclass.GhostLetExpr.Dt Tag
axiom Tag(Tclass.GhostLetExpr.Dt()) == Tagclass.GhostLetExpr.Dt
   && TagFamily(Tclass.GhostLetExpr.Dt()) == tytagFamily$Dt;
}

const unique Tagclass.GhostLetExpr.Dt: TyTag;

// Box/unbox axiom for Tclass.GhostLetExpr.Dt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.GhostLetExpr.Dt()) } 
  $IsBox(bx, Tclass.GhostLetExpr.Dt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.GhostLetExpr.Dt()));

// Constructor $Is
axiom (forall a#2#0#0: int, a#2#1#0: int :: 
  { $Is(#GhostLetExpr.Dt.MyRecord(a#2#0#0, a#2#1#0), Tclass.GhostLetExpr.Dt()) } 
  $Is(#GhostLetExpr.Dt.MyRecord(a#2#0#0, a#2#1#0), Tclass.GhostLetExpr.Dt())
     <==> $Is(a#2#0#0, TInt) && $Is(a#2#1#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(GhostLetExpr.Dt.a(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      GhostLetExpr.Dt.MyRecord_q(d)
       && $IsAlloc(d, Tclass.GhostLetExpr.Dt(), $h)
     ==> $IsAlloc(GhostLetExpr.Dt.a(d), TInt, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(GhostLetExpr.Dt.b(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      GhostLetExpr.Dt.MyRecord_q(d)
       && $IsAlloc(d, Tclass.GhostLetExpr.Dt(), $h)
     ==> $IsAlloc(GhostLetExpr.Dt.b(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: int, a#3#1#0: int :: 
  { #GhostLetExpr.Dt.MyRecord(LitInt(a#3#0#0), LitInt(a#3#1#0)) } 
  #GhostLetExpr.Dt.MyRecord(LitInt(a#3#0#0), LitInt(a#3#1#0))
     == Lit(#GhostLetExpr.Dt.MyRecord(a#3#0#0, a#3#1#0)));

function GhostLetExpr.Dt.a(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int, a#4#1#0: int :: 
  { #GhostLetExpr.Dt.MyRecord(a#4#0#0, a#4#1#0) } 
  GhostLetExpr.Dt.a(#GhostLetExpr.Dt.MyRecord(a#4#0#0, a#4#1#0)) == a#4#0#0);

function GhostLetExpr.Dt.b(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#5#0#0: int, a#5#1#0: int :: 
  { #GhostLetExpr.Dt.MyRecord(a#5#0#0, a#5#1#0) } 
  GhostLetExpr.Dt.b(#GhostLetExpr.Dt.MyRecord(a#5#0#0, a#5#1#0)) == a#5#1#0);

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.GhostLetExpr.Dt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.GhostLetExpr.Dt())
     ==> $IsAlloc(d, Tclass.GhostLetExpr.Dt(), $h));

// Depth-one case-split function
function $IsA#GhostLetExpr.Dt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#GhostLetExpr.Dt(d) } 
  $IsA#GhostLetExpr.Dt(d) ==> GhostLetExpr.Dt.MyRecord_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { GhostLetExpr.Dt.MyRecord_q(d), $Is(d, Tclass.GhostLetExpr.Dt()) } 
  $Is(d, Tclass.GhostLetExpr.Dt()) ==> GhostLetExpr.Dt.MyRecord_q(d));

// Datatype extensional equality declaration
function GhostLetExpr.Dt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #GhostLetExpr.Dt.MyRecord
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { GhostLetExpr.Dt#Equal(a, b) } 
  GhostLetExpr.Dt#Equal(a, b)
     <==> GhostLetExpr.Dt.a(a) == GhostLetExpr.Dt.a(b)
       && GhostLetExpr.Dt.b(a) == GhostLetExpr.Dt.b(b));

// Datatype extensionality axiom: GhostLetExpr.Dt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { GhostLetExpr.Dt#Equal(a, b) } 
  GhostLetExpr.Dt#Equal(a, b) <==> a == b);

const unique class.GhostLetExpr.Dt: ClassName;

const unique class.EqualityTests.__default: ClassName;

procedure {:verboseName "EqualityTests.TestMain (well-formedness)"} CheckWellFormed$$EqualityTests.__default.TestMain();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "EqualityTests.TestMain (call)"} Call$$EqualityTests.__default.TestMain();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.EqualityTests.C?: ClassName;

function Tclass.EqualityTests.C?(Ty) : Ty;

const unique Tagclass.EqualityTests.C?: TyTag;

// Tclass.EqualityTests.C? Tag
axiom (forall EqualityTests.C$T: Ty :: 
  { Tclass.EqualityTests.C?(EqualityTests.C$T) } 
  Tag(Tclass.EqualityTests.C?(EqualityTests.C$T)) == Tagclass.EqualityTests.C?
     && TagFamily(Tclass.EqualityTests.C?(EqualityTests.C$T)) == tytagFamily$C);

function Tclass.EqualityTests.C?_0(Ty) : Ty;

// Tclass.EqualityTests.C? injectivity 0
axiom (forall EqualityTests.C$T: Ty :: 
  { Tclass.EqualityTests.C?(EqualityTests.C$T) } 
  Tclass.EqualityTests.C?_0(Tclass.EqualityTests.C?(EqualityTests.C$T))
     == EqualityTests.C$T);

// Box/unbox axiom for Tclass.EqualityTests.C?
axiom (forall EqualityTests.C$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.EqualityTests.C?(EqualityTests.C$T)) } 
  $IsBox(bx, Tclass.EqualityTests.C?(EqualityTests.C$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.EqualityTests.C?(EqualityTests.C$T)));

// $Is axiom for class C
axiom (forall EqualityTests.C$T: Ty, $o: ref :: 
  { $Is($o, Tclass.EqualityTests.C?(EqualityTests.C$T)) } 
  $Is($o, Tclass.EqualityTests.C?(EqualityTests.C$T))
     <==> $o == null || dtype($o) == Tclass.EqualityTests.C?(EqualityTests.C$T));

// $IsAlloc axiom for class C
axiom (forall EqualityTests.C$T: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.EqualityTests.C?(EqualityTests.C$T), $h) } 
  $IsAlloc($o, Tclass.EqualityTests.C?(EqualityTests.C$T), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

function Tclass.EqualityTests.C(Ty) : Ty;

const unique Tagclass.EqualityTests.C: TyTag;

// Tclass.EqualityTests.C Tag
axiom (forall EqualityTests.C$T: Ty :: 
  { Tclass.EqualityTests.C(EqualityTests.C$T) } 
  Tag(Tclass.EqualityTests.C(EqualityTests.C$T)) == Tagclass.EqualityTests.C
     && TagFamily(Tclass.EqualityTests.C(EqualityTests.C$T)) == tytagFamily$C);

function Tclass.EqualityTests.C_0(Ty) : Ty;

// Tclass.EqualityTests.C injectivity 0
axiom (forall EqualityTests.C$T: Ty :: 
  { Tclass.EqualityTests.C(EqualityTests.C$T) } 
  Tclass.EqualityTests.C_0(Tclass.EqualityTests.C(EqualityTests.C$T))
     == EqualityTests.C$T);

// Box/unbox axiom for Tclass.EqualityTests.C
axiom (forall EqualityTests.C$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.EqualityTests.C(EqualityTests.C$T)) } 
  $IsBox(bx, Tclass.EqualityTests.C(EqualityTests.C$T))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.EqualityTests.C(EqualityTests.C$T)));

// $Is axiom for non-null type EqualityTests.C
axiom (forall EqualityTests.C$T: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.EqualityTests.C(EqualityTests.C$T)) } 
    { $Is(c#0, Tclass.EqualityTests.C?(EqualityTests.C$T)) } 
  $Is(c#0, Tclass.EqualityTests.C(EqualityTests.C$T))
     <==> $Is(c#0, Tclass.EqualityTests.C?(EqualityTests.C$T)) && c#0 != null);

// $IsAlloc axiom for non-null type EqualityTests.C
axiom (forall EqualityTests.C$T: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.EqualityTests.C(EqualityTests.C$T), $h) } 
    { $IsAlloc(c#0, Tclass.EqualityTests.C?(EqualityTests.C$T), $h) } 
  $IsAlloc(c#0, Tclass.EqualityTests.C(EqualityTests.C$T), $h)
     <==> $IsAlloc(c#0, Tclass.EqualityTests.C?(EqualityTests.C$T), $h));

const unique class.TypeInstantiations.__default: ClassName;

// function declaration for TypeInstantiations._default.F
function TypeInstantiations.__default.F(TypeInstantiations._default.F$G: Ty) : int;

function TypeInstantiations.__default.F#canCall(TypeInstantiations._default.F$G: Ty) : bool;

function TypeInstantiations.__default.F#requires(Ty) : bool;

// #requires axiom for TypeInstantiations.__default.F
axiom (forall TypeInstantiations._default.F$G: Ty :: 
  { TypeInstantiations.__default.F#requires(TypeInstantiations._default.F$G) } 
  TypeInstantiations.__default.F#requires(TypeInstantiations._default.F$G) == true);

// definition axiom for TypeInstantiations.__default.F (revealed)
axiom {:id "id311"} (forall TypeInstantiations._default.F$G: Ty :: 
  { TypeInstantiations.__default.F(TypeInstantiations._default.F$G) } 
  TypeInstantiations.__default.F(TypeInstantiations._default.F$G) == LitInt(56));

// definition axiom for TypeInstantiations.__default.F for all literals (revealed)
axiom {:id "id312"} (forall TypeInstantiations._default.F$G: Ty :: 
  {:weight 3} { TypeInstantiations.__default.F(TypeInstantiations._default.F$G) } 
  TypeInstantiations.__default.F(TypeInstantiations._default.F$G) == LitInt(56));

// function declaration for TypeInstantiations._default.H
function TypeInstantiations.__default.H(TypeInstantiations._default.H$G: Ty, g#0: Box) : int;

function TypeInstantiations.__default.H#canCall(TypeInstantiations._default.H$G: Ty, g#0: Box) : bool;

function TypeInstantiations.__default.H#requires(Ty, Box) : bool;

// #requires axiom for TypeInstantiations.__default.H
axiom (forall TypeInstantiations._default.H$G: Ty, g#0: Box :: 
  { TypeInstantiations.__default.H#requires(TypeInstantiations._default.H$G, g#0) } 
  $IsBox(g#0, TypeInstantiations._default.H$G)
     ==> TypeInstantiations.__default.H#requires(TypeInstantiations._default.H$G, g#0)
       == true);

// definition axiom for TypeInstantiations.__default.H (revealed)
axiom {:id "id313"} (forall TypeInstantiations._default.H$G: Ty, g#0: Box :: 
  { TypeInstantiations.__default.H(TypeInstantiations._default.H$G, g#0) } 
  TypeInstantiations.__default.H#canCall(TypeInstantiations._default.H$G, g#0)
       || $IsBox(g#0, TypeInstantiations._default.H$G)
     ==> TypeInstantiations.__default.H(TypeInstantiations._default.H$G, g#0)
       == LitInt(57));

// definition axiom for TypeInstantiations.__default.H for all literals (revealed)
axiom {:id "id314"} (forall TypeInstantiations._default.H$G: Ty, g#0: Box :: 
  {:weight 3} { TypeInstantiations.__default.H(TypeInstantiations._default.H$G, Lit(g#0)) } 
  TypeInstantiations.__default.H#canCall(TypeInstantiations._default.H$G, Lit(g#0))
       || $IsBox(g#0, TypeInstantiations._default.H$G)
     ==> TypeInstantiations.__default.H(TypeInstantiations._default.H$G, Lit(g#0))
       == LitInt(57));

procedure {:verboseName "TypeInstantiations.TestMain (well-formedness)"} CheckWellFormed$$TypeInstantiations.__default.TestMain();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TypeInstantiations.TestMain (call)"} Call$$TypeInstantiations.__default.TestMain();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.TypeInstantiations.GenCl?: ClassName;

function Tclass.TypeInstantiations.GenCl?(Ty) : Ty;

const unique Tagclass.TypeInstantiations.GenCl?: TyTag;

// Tclass.TypeInstantiations.GenCl? Tag
axiom (forall TypeInstantiations.GenCl$U: Ty :: 
  { Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U) } 
  Tag(Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U))
       == Tagclass.TypeInstantiations.GenCl?
     && TagFamily(Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U))
       == tytagFamily$GenCl);

function Tclass.TypeInstantiations.GenCl?_0(Ty) : Ty;

// Tclass.TypeInstantiations.GenCl? injectivity 0
axiom (forall TypeInstantiations.GenCl$U: Ty :: 
  { Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U) } 
  Tclass.TypeInstantiations.GenCl?_0(Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U))
     == TypeInstantiations.GenCl$U);

// Box/unbox axiom for Tclass.TypeInstantiations.GenCl?
axiom (forall TypeInstantiations.GenCl$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U)) } 
  $IsBox(bx, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U)));

// $Is axiom for class GenCl
axiom (forall TypeInstantiations.GenCl$U: Ty, $o: ref :: 
  { $Is($o, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U)) } 
  $Is($o, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U))
     <==> $o == null
       || dtype($o) == Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U));

// $IsAlloc axiom for class GenCl
axiom (forall TypeInstantiations.GenCl$U: Ty, $o: ref, $h: Heap :: 
  { $IsAlloc($o, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U), $h) } 
  $IsAlloc($o, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U), $h)
     <==> $o == null || $Unbox(read($h, $o, alloc)): bool);

// function declaration for TypeInstantiations.GenCl.Static
function TypeInstantiations.GenCl.Static(TypeInstantiations.GenCl$U: Ty, TypeInstantiations.GenCl.Static$G: Ty) : int;

function TypeInstantiations.GenCl.Static#canCall(TypeInstantiations.GenCl$U: Ty, TypeInstantiations.GenCl.Static$G: Ty) : bool;

function TypeInstantiations.GenCl.Static#requires(Ty, Ty) : bool;

// #requires axiom for TypeInstantiations.GenCl.Static
axiom (forall TypeInstantiations.GenCl$U: Ty, TypeInstantiations.GenCl.Static$G: Ty :: 
  { TypeInstantiations.GenCl.Static#requires(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Static$G) } 
  TypeInstantiations.GenCl.Static#requires(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Static$G)
     == true);

// definition axiom for TypeInstantiations.GenCl.Static (revealed)
axiom {:id "id315"} (forall TypeInstantiations.GenCl$U: Ty, TypeInstantiations.GenCl.Static$G: Ty :: 
  { TypeInstantiations.GenCl.Static(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Static$G) } 
  TypeInstantiations.GenCl.Static(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Static$G)
     == LitInt(58));

// definition axiom for TypeInstantiations.GenCl.Static for all literals (revealed)
axiom {:id "id316"} (forall TypeInstantiations.GenCl$U: Ty, TypeInstantiations.GenCl.Static$G: Ty :: 
  {:weight 3} { TypeInstantiations.GenCl.Static(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Static$G) } 
  TypeInstantiations.GenCl.Static(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Static$G)
     == LitInt(58));

// function declaration for TypeInstantiations.GenCl.Inst
function TypeInstantiations.GenCl.Inst(TypeInstantiations.GenCl$U: Ty, TypeInstantiations.GenCl.Inst$G: Ty, this: ref)
   : int;

function TypeInstantiations.GenCl.Inst#canCall(TypeInstantiations.GenCl$U: Ty, TypeInstantiations.GenCl.Inst$G: Ty, this: ref)
   : bool;

function Tclass.TypeInstantiations.GenCl(Ty) : Ty;

const unique Tagclass.TypeInstantiations.GenCl: TyTag;

// Tclass.TypeInstantiations.GenCl Tag
axiom (forall TypeInstantiations.GenCl$U: Ty :: 
  { Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U) } 
  Tag(Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U))
       == Tagclass.TypeInstantiations.GenCl
     && TagFamily(Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U))
       == tytagFamily$GenCl);

function Tclass.TypeInstantiations.GenCl_0(Ty) : Ty;

// Tclass.TypeInstantiations.GenCl injectivity 0
axiom (forall TypeInstantiations.GenCl$U: Ty :: 
  { Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U) } 
  Tclass.TypeInstantiations.GenCl_0(Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U))
     == TypeInstantiations.GenCl$U);

// Box/unbox axiom for Tclass.TypeInstantiations.GenCl
axiom (forall TypeInstantiations.GenCl$U: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U)) } 
  $IsBox(bx, Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U))
     ==> $Box($Unbox(bx): ref) == bx
       && $Is($Unbox(bx): ref, Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U)));

function TypeInstantiations.GenCl.Inst#requires(Ty, Ty, ref) : bool;

// #requires axiom for TypeInstantiations.GenCl.Inst
axiom (forall TypeInstantiations.GenCl$U: Ty, TypeInstantiations.GenCl.Inst$G: Ty, this: ref :: 
  { TypeInstantiations.GenCl.Inst#requires(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Inst$G, this) } 
  this != null
       && $Is(this, Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U))
     ==> TypeInstantiations.GenCl.Inst#requires(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Inst$G, this)
       == true);

// definition axiom for TypeInstantiations.GenCl.Inst (revealed)
axiom {:id "id317"} (forall TypeInstantiations.GenCl$U: Ty, TypeInstantiations.GenCl.Inst$G: Ty, this: ref :: 
  { TypeInstantiations.GenCl.Inst(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Inst$G, this) } 
  TypeInstantiations.GenCl.Inst#canCall(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Inst$G, this)
       || (this != null
         && $Is(this, Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U)))
     ==> TypeInstantiations.GenCl.Inst(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Inst$G, this)
       == LitInt(59));

// definition axiom for TypeInstantiations.GenCl.Inst for all literals (revealed)
axiom {:id "id318"} (forall TypeInstantiations.GenCl$U: Ty, TypeInstantiations.GenCl.Inst$G: Ty, this: ref :: 
  {:weight 3} { TypeInstantiations.GenCl.Inst(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Inst$G, Lit(this)) } 
  TypeInstantiations.GenCl.Inst#canCall(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Inst$G, Lit(this))
       || (this != null
         && $Is(this, Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U)))
     ==> TypeInstantiations.GenCl.Inst(TypeInstantiations.GenCl$U, TypeInstantiations.GenCl.Inst$G, Lit(this))
       == LitInt(59));

// $Is axiom for non-null type TypeInstantiations.GenCl
axiom (forall TypeInstantiations.GenCl$U: Ty, c#0: ref :: 
  { $Is(c#0, Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U)) } 
    { $Is(c#0, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U)) } 
  $Is(c#0, Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U))
     <==> $Is(c#0, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U))
       && c#0 != null);

// $IsAlloc axiom for non-null type TypeInstantiations.GenCl
axiom (forall TypeInstantiations.GenCl$U: Ty, c#0: ref, $h: Heap :: 
  { $IsAlloc(c#0, Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U), $h) } 
    { $IsAlloc(c#0, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U), $h) } 
  $IsAlloc(c#0, Tclass.TypeInstantiations.GenCl(TypeInstantiations.GenCl$U), $h)
     <==> $IsAlloc(c#0, Tclass.TypeInstantiations.GenCl?(TypeInstantiations.GenCl$U), $h));

const unique class.TailRecursionWhereTypeParametersChange.__default: ClassName;

procedure {:verboseName "TailRecursionWhereTypeParametersChange.TestMain (well-formedness)"} CheckWellFormed$$TailRecursionWhereTypeParametersChange.__default.TestMain();
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "TailRecursionWhereTypeParametersChange.TestMain (call)"} Call$$TailRecursionWhereTypeParametersChange.__default.TestMain();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.GeneralMaps.__default: ClassName;

procedure {:verboseName "GeneralMaps.Test (well-formedness)"} CheckWellFormed$$GeneralMaps.__default.Test();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "GeneralMaps.Test (call)"} Call$$GeneralMaps.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.Cardinalities.__default: ClassName;

procedure {:verboseName "Cardinalities.Test (well-formedness)"} CheckWellFormed$$Cardinalities.__default.Test();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Cardinalities.Test (call)"} Call$$Cardinalities.__default.Test();
  modifies $Heap;
  // frame condition: object granularity
  free ensures (forall $o: ref :: 
    { $Heap[$o] } 
    $o != null && $Unbox(read(old($Heap), $o, alloc)): bool
       ==> $Heap[$o] == old($Heap)[$o]);
  // boilerplate
  free ensures $HeapSucc(old($Heap), $Heap);



const unique class.AltLoop.__default: ClassName;

procedure {:verboseName "AltLoop.Test (well-formedness)"} CheckWellFormed$$AltLoop.__default.Test();
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "AltLoop.Test (call)"} Call$$AltLoop.__default.Test();
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

const unique tytagFamily$_#Func2: TyTagFamily;

const unique tytagFamily$_#PartialFunc2: TyTagFamily;

const unique tytagFamily$_#TotalFunc2: TyTagFamily;

const unique tytagFamily$public: TyTagFamily;

const unique tytagFamily$Tuple: TyTagFamily;

const unique tytagFamily$DigitsClass: TyTagFamily;

const unique tytagFamily$DigitUnderscore_Names: TyTagFamily;

const unique tytagFamily$DigitUnderscore_Names_Functions_and_Methods: TyTagFamily;

const unique tytagFamily$MyDt: TyTagFamily;

const unique tytagFamily$Stream: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$Cell: TyTagFamily;

const unique tytagFamily$C: TyTagFamily;

const unique tytagFamily$fixed: TyTagFamily;

const unique tytagFamily$Dt: TyTagFamily;

const unique tytagFamily$GenCl: TyTagFamily;

const unique field$private: NameFamily;

const unique field$7: NameFamily;

const unique field$0_1_0: NameFamily;

const unique field$010: NameFamily;

const unique field$10: NameFamily;

const unique field$data: NameFamily;

const unique field$f: NameFamily;
