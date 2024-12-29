// dafny 4.9.2.0
// Command Line Options: /deprecation:0 /compile:0 /timeLimit:10 /print:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.bpl /vcsCores:1 /proverLog:/home/runner/work/smt-logs/smt-logs/dafny/../smt2/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler-@PROC@.smt2 /normalizeNames:0 /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy

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

// Constructor function declaration
function #_System._tuple#3._#Make3(Box, Box, Box) : DatatypeType;

const unique ##_System._tuple#3._#Make3: DtCtorId
uses {
// Constructor identifier
axiom (forall a#12#0#0: Box, a#12#1#0: Box, a#12#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#12#0#0, a#12#1#0, a#12#2#0) } 
  DatatypeCtorId(#_System._tuple#3._#Make3(a#12#0#0, a#12#1#0, a#12#2#0))
     == ##_System._tuple#3._#Make3);
}

function _System.Tuple3.___hMake3_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     <==> DatatypeCtorId(d) == ##_System._tuple#3._#Make3);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d) } 
  _System.Tuple3.___hMake3_q(d)
     ==> (exists a#13#0#0: Box, a#13#1#0: Box, a#13#2#0: Box :: 
      d == #_System._tuple#3._#Make3(a#13#0#0, a#13#1#0, a#13#2#0)));

function Tclass._System.Tuple3(Ty, Ty, Ty) : Ty;

const unique Tagclass._System.Tuple3: TyTag;

// Tclass._System.Tuple3 Tag
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tag(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == Tagclass._System.Tuple3
     && TagFamily(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
       == tytagFamily$_tuple#3);

function Tclass._System.Tuple3_0(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 0
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_0(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T0);

function Tclass._System.Tuple3_1(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 1
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_1(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T1);

function Tclass._System.Tuple3_2(Ty) : Ty;

// Tclass._System.Tuple3 injectivity 2
axiom (forall _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
  { Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2) } 
  Tclass._System.Tuple3_2(Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     == _System._tuple#3$T2);

// Box/unbox axiom for Tclass._System.Tuple3
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    bx: Box :: 
  { $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $IsBox(bx, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)));

// Constructor $Is
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box :: 
  { $Is(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     <==> $IsBox(a#14#0#0, _System._tuple#3$T0)
       && $IsBox(a#14#1#0, _System._tuple#3$T1)
       && $IsBox(a#14#2#0, _System._tuple#3$T2));

// Constructor $IsAlloc
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    a#14#0#0: Box, 
    a#14#1#0: Box, 
    a#14#2#0: Box, 
    $h: Heap :: 
  { $IsAlloc(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#_System._tuple#3._#Make3(a#14#0#0, a#14#1#0, a#14#2#0), 
        Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
        $h)
       <==> $IsAllocBox(a#14#0#0, _System._tuple#3$T0, $h)
         && $IsAllocBox(a#14#1#0, _System._tuple#3$T1, $h)
         && $IsAllocBox(a#14#2#0, _System._tuple#3$T2, $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T0: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T1: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._0(d), _System._tuple#3$T0, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T1: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T2: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._1(d), _System._tuple#3$T1, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, _System._tuple#3$T2: Ty, $h: Heap :: 
  { $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h) } 
  $IsGoodHeap($h)
       && 
      _System.Tuple3.___hMake3_q(d)
       && (exists _System._tuple#3$T0: Ty, _System._tuple#3$T1: Ty :: 
        { $IsAlloc(d, 
            Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
            $h) } 
        $IsAlloc(d, 
          Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2), 
          $h))
     ==> $IsAllocBox(_System.Tuple3._2(d), _System._tuple#3$T2, $h));

// Constructor literal
axiom (forall a#15#0#0: Box, a#15#1#0: Box, a#15#2#0: Box :: 
  { #_System._tuple#3._#Make3(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0)) } 
  #_System._tuple#3._#Make3(Lit(a#15#0#0), Lit(a#15#1#0), Lit(a#15#2#0))
     == Lit(#_System._tuple#3._#Make3(a#15#0#0, a#15#1#0, a#15#2#0)));

function _System.Tuple3._0(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#16#0#0: Box, a#16#1#0: Box, a#16#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#16#0#0, a#16#1#0, a#16#2#0) } 
  _System.Tuple3._0(#_System._tuple#3._#Make3(a#16#0#0, a#16#1#0, a#16#2#0))
     == a#16#0#0);

// Inductive rank
axiom (forall a#17#0#0: Box, a#17#1#0: Box, a#17#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#17#0#0, a#17#1#0, a#17#2#0) } 
  BoxRank(a#17#0#0)
     < DtRank(#_System._tuple#3._#Make3(a#17#0#0, a#17#1#0, a#17#2#0)));

function _System.Tuple3._1(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#18#0#0: Box, a#18#1#0: Box, a#18#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#18#0#0, a#18#1#0, a#18#2#0) } 
  _System.Tuple3._1(#_System._tuple#3._#Make3(a#18#0#0, a#18#1#0, a#18#2#0))
     == a#18#1#0);

// Inductive rank
axiom (forall a#19#0#0: Box, a#19#1#0: Box, a#19#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#19#0#0, a#19#1#0, a#19#2#0) } 
  BoxRank(a#19#1#0)
     < DtRank(#_System._tuple#3._#Make3(a#19#0#0, a#19#1#0, a#19#2#0)));

function _System.Tuple3._2(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#20#0#0: Box, a#20#1#0: Box, a#20#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#20#0#0, a#20#1#0, a#20#2#0) } 
  _System.Tuple3._2(#_System._tuple#3._#Make3(a#20#0#0, a#20#1#0, a#20#2#0))
     == a#20#2#0);

// Inductive rank
axiom (forall a#21#0#0: Box, a#21#1#0: Box, a#21#2#0: Box :: 
  { #_System._tuple#3._#Make3(a#21#0#0, a#21#1#0, a#21#2#0) } 
  BoxRank(a#21#2#0)
     < DtRank(#_System._tuple#3._#Make3(a#21#0#0, a#21#1#0, a#21#2#0)));

// Depth-one case-split function
function $IsA#_System.Tuple3(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#_System.Tuple3(d) } 
  $IsA#_System.Tuple3(d) ==> _System.Tuple3.___hMake3_q(d));

// Questionmark data type disjunctivity
axiom (forall _System._tuple#3$T0: Ty, 
    _System._tuple#3$T1: Ty, 
    _System._tuple#3$T2: Ty, 
    d: DatatypeType :: 
  { _System.Tuple3.___hMake3_q(d), $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2)) } 
  $Is(d, 
      Tclass._System.Tuple3(_System._tuple#3$T0, _System._tuple#3$T1, _System._tuple#3$T2))
     ==> _System.Tuple3.___hMake3_q(d));

// Datatype extensional equality declaration
function _System.Tuple3#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #_System._tuple#3._#Make3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b)
     <==> _System.Tuple3._0(a) == _System.Tuple3._0(b)
       && _System.Tuple3._1(a) == _System.Tuple3._1(b)
       && _System.Tuple3._2(a) == _System.Tuple3._2(b));

// Datatype extensionality axiom: _System._tuple#3
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { _System.Tuple3#Equal(a, b) } 
  _System.Tuple3#Equal(a, b) <==> a == b);

const unique class._System.Tuple3: ClassName;

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

const unique class.Compiler.__default: ClassName;

// function declaration for Compiler._default.compileExpr
function Compiler.__default.compileExpr($ly: LayerType, e#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for Compiler.__default.compileExpr
axiom 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType :: 
    { Compiler.__default.compileExpr($ly, e#0) } 
    Compiler.__default.compileExpr#canCall(e#0)
         || (0 < $FunctionContextHeight && $Is(e#0, Tclass.DafnyAST.Expr()))
       ==> $Is(Compiler.__default.compileExpr($ly, e#0), 
        Tclass.LinkedList.List(Tclass.StackMachine.Instr())));
// definition axiom for Compiler.__default.compileExpr (revealed)
axiom {:id "id401"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType :: 
    { Compiler.__default.compileExpr($LS($ly), e#0) } 
    Compiler.__default.compileExpr#canCall(e#0)
         || (0 < $FunctionContextHeight && $Is(e#0, Tclass.DafnyAST.Expr()))
       ==> (!DafnyAST.Expr.Const_q(e#0)
           ==> 
          !DafnyAST.Expr.Var_q(e#0)
           ==> (DafnyAST.BinOp.Add_q(DafnyAST.Expr.op(e#0))
               ==> (var e2#2 := DafnyAST.Expr.e2(e#0); 
                (var e1#2 := DafnyAST.Expr.e1(e#0); 
                  Compiler.__default.compileExpr#canCall(e2#2)
                     && Compiler.__default.compileExpr#canCall(e1#2)
                     && LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                      Compiler.__default.compileExpr($ly, e2#2), 
                      Compiler.__default.compileExpr($ly, e1#2)))))
             && (!DafnyAST.BinOp.Add_q(DafnyAST.Expr.op(e#0))
               ==> (var e2#3 := DafnyAST.Expr.e2(e#0); 
                (var e1#3 := DafnyAST.Expr.e1(e#0); 
                  Compiler.__default.compileExpr#canCall(e2#3)
                     && Compiler.__default.compileExpr#canCall(e1#3)
                     && LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                      Compiler.__default.compileExpr($ly, e2#3), 
                      Compiler.__default.compileExpr($ly, e1#3))))))
         && Compiler.__default.compileExpr($LS($ly), e#0)
           == (if DafnyAST.Expr.Const_q(e#0)
             then (var n#0 := DafnyAST.Expr.n(e#0); 
              #LinkedList.List.Cons($Box(#StackMachine.Instr.PushConst(n#0)), Lit(#LinkedList.List.Nil())))
             else (if DafnyAST.Expr.Var_q(e#0)
               then (var v#0 := DafnyAST.Expr.v(e#0); 
                #LinkedList.List.Cons($Box(#StackMachine.Instr.PushVar(v#0)), Lit(#LinkedList.List.Nil())))
               else (if DafnyAST.BinOp.Add_q(DafnyAST.Expr.op(e#0))
                 then (var e2#0 := DafnyAST.Expr.e2(e#0); 
                  (var e1#0 := DafnyAST.Expr.e1(e#0); 
                    #LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PopAdd())), 
                      LinkedList.__default.Concat(Tclass.StackMachine.Instr(), 
                        $LS($LZ), 
                        Compiler.__default.compileExpr($ly, e2#0), 
                        Compiler.__default.compileExpr($ly, e1#0)))))
                 else (var e2#1 := DafnyAST.Expr.e2(e#0); 
                  (var e1#1 := DafnyAST.Expr.e1(e#0); 
                    #LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PopSub())), 
                      LinkedList.__default.Concat(Tclass.StackMachine.Instr(), 
                        $LS($LZ), 
                        Compiler.__default.compileExpr($ly, e2#1), 
                        Compiler.__default.compileExpr($ly, e1#1)))))))));
// definition axiom for Compiler.__default.compileExpr for all literals (revealed)
axiom {:id "id402"} 0 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, e#0: DatatypeType :: 
    {:weight 3} { Compiler.__default.compileExpr($LS($ly), Lit(e#0)) } 
    Compiler.__default.compileExpr#canCall(Lit(e#0))
         || (0 < $FunctionContextHeight && $Is(e#0, Tclass.DafnyAST.Expr()))
       ==> (!Lit(DafnyAST.Expr.Const_q(Lit(e#0)))
           ==> 
          !Lit(DafnyAST.Expr.Var_q(Lit(e#0)))
           ==> (Lit(DafnyAST.BinOp.Add_q(Lit(DafnyAST.Expr.op(Lit(e#0)))))
               ==> (var e2#6 := Lit(DafnyAST.Expr.e2(Lit(e#0))); 
                (var e1#6 := Lit(DafnyAST.Expr.e1(Lit(e#0))); 
                  Compiler.__default.compileExpr#canCall(e2#6)
                     && Compiler.__default.compileExpr#canCall(e1#6)
                     && LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                      Compiler.__default.compileExpr($LS($ly), e2#6), 
                      Compiler.__default.compileExpr($LS($ly), e1#6)))))
             && (!Lit(DafnyAST.BinOp.Add_q(Lit(DafnyAST.Expr.op(Lit(e#0)))))
               ==> (var e2#7 := Lit(DafnyAST.Expr.e2(Lit(e#0))); 
                (var e1#7 := Lit(DafnyAST.Expr.e1(Lit(e#0))); 
                  Compiler.__default.compileExpr#canCall(e2#7)
                     && Compiler.__default.compileExpr#canCall(e1#7)
                     && LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                      Compiler.__default.compileExpr($LS($ly), e2#7), 
                      Compiler.__default.compileExpr($LS($ly), e1#7))))))
         && Compiler.__default.compileExpr($LS($ly), Lit(e#0))
           == (if DafnyAST.Expr.Const_q(Lit(e#0))
             then (var n#2 := LitInt(DafnyAST.Expr.n(Lit(e#0))); 
              Lit(#LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PushConst(n#2))), Lit(#LinkedList.List.Nil()))))
             else (if DafnyAST.Expr.Var_q(Lit(e#0))
               then (var v#2 := Lit(DafnyAST.Expr.v(Lit(e#0))); 
                Lit(#LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PushVar(v#2))), Lit(#LinkedList.List.Nil()))))
               else (if DafnyAST.BinOp.Add_q(Lit(DafnyAST.Expr.op(Lit(e#0))))
                 then (var e2#4 := Lit(DafnyAST.Expr.e2(Lit(e#0))); 
                  (var e1#4 := Lit(DafnyAST.Expr.e1(Lit(e#0))); 
                    Lit(#LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PopAdd())), 
                        Lit(LinkedList.__default.Concat(Tclass.StackMachine.Instr(), 
                            $LS($LZ), 
                            Lit(Compiler.__default.compileExpr($LS($ly), e2#4)), 
                            Lit(Compiler.__default.compileExpr($LS($ly), e1#4))))))))
                 else (var e2#5 := Lit(DafnyAST.Expr.e2(Lit(e#0))); 
                  (var e1#5 := Lit(DafnyAST.Expr.e1(Lit(e#0))); 
                    Lit(#LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PopSub())), 
                        Lit(LinkedList.__default.Concat(Tclass.StackMachine.Instr(), 
                            $LS($LZ), 
                            Lit(Compiler.__default.compileExpr($LS($ly), e2#5)), 
                            Lit(Compiler.__default.compileExpr($LS($ly), e1#5))))))))))));
}

function Compiler.__default.compileExpr#canCall(e#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType :: 
  { Compiler.__default.compileExpr($LS($ly), e#0) } 
  Compiler.__default.compileExpr($LS($ly), e#0)
     == Compiler.__default.compileExpr($ly, e#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType :: 
  { Compiler.__default.compileExpr(AsFuelBottom($ly), e#0) } 
  Compiler.__default.compileExpr($ly, e#0)
     == Compiler.__default.compileExpr($LZ, e#0));

function Tclass.DafnyAST.Expr() : Ty
uses {
// Tclass.DafnyAST.Expr Tag
axiom Tag(Tclass.DafnyAST.Expr()) == Tagclass.DafnyAST.Expr
   && TagFamily(Tclass.DafnyAST.Expr()) == tytagFamily$Expr;
}

const unique Tagclass.DafnyAST.Expr: TyTag;

// Box/unbox axiom for Tclass.DafnyAST.Expr
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DafnyAST.Expr()) } 
  $IsBox(bx, Tclass.DafnyAST.Expr())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DafnyAST.Expr()));

function Tclass.StackMachine.Instr() : Ty
uses {
// Tclass.StackMachine.Instr Tag
axiom Tag(Tclass.StackMachine.Instr()) == Tagclass.StackMachine.Instr
   && TagFamily(Tclass.StackMachine.Instr()) == tytagFamily$Instr;
}

const unique Tagclass.StackMachine.Instr: TyTag;

// Box/unbox axiom for Tclass.StackMachine.Instr
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.StackMachine.Instr()) } 
  $IsBox(bx, Tclass.StackMachine.Instr())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.StackMachine.Instr()));

function Tclass.LinkedList.List(Ty) : Ty;

const unique Tagclass.LinkedList.List: TyTag;

// Tclass.LinkedList.List Tag
axiom (forall LinkedList.List$T: Ty :: 
  { Tclass.LinkedList.List(LinkedList.List$T) } 
  Tag(Tclass.LinkedList.List(LinkedList.List$T)) == Tagclass.LinkedList.List
     && TagFamily(Tclass.LinkedList.List(LinkedList.List$T)) == tytagFamily$List);

function Tclass.LinkedList.List_0(Ty) : Ty;

// Tclass.LinkedList.List injectivity 0
axiom (forall LinkedList.List$T: Ty :: 
  { Tclass.LinkedList.List(LinkedList.List$T) } 
  Tclass.LinkedList.List_0(Tclass.LinkedList.List(LinkedList.List$T))
     == LinkedList.List$T);

// Box/unbox axiom for Tclass.LinkedList.List
axiom (forall LinkedList.List$T: Ty, bx: Box :: 
  { $IsBox(bx, Tclass.LinkedList.List(LinkedList.List$T)) } 
  $IsBox(bx, Tclass.LinkedList.List(LinkedList.List$T))
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.LinkedList.List(LinkedList.List$T)));

function Compiler.__default.compileExpr#requires(LayerType, DatatypeType) : bool;

// #requires axiom for Compiler.__default.compileExpr
axiom (forall $ly: LayerType, e#0: DatatypeType :: 
  { Compiler.__default.compileExpr#requires($ly, e#0) } 
  $Is(e#0, Tclass.DafnyAST.Expr())
     ==> Compiler.__default.compileExpr#requires($ly, e#0) == true);

procedure {:verboseName "Compiler.compileExpr (well-formedness)"} CheckWellformed$$Compiler.__default.compileExpr(e#0: DatatypeType where $Is(e#0, Tclass.DafnyAST.Expr()));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.DafnyAST.BinOp() : Ty
uses {
// Tclass.DafnyAST.BinOp Tag
axiom Tag(Tclass.DafnyAST.BinOp()) == Tagclass.DafnyAST.BinOp
   && TagFamily(Tclass.DafnyAST.BinOp()) == tytagFamily$BinOp;
}

const unique Tagclass.DafnyAST.BinOp: TyTag;

// Box/unbox axiom for Tclass.DafnyAST.BinOp
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DafnyAST.BinOp()) } 
  $IsBox(bx, Tclass.DafnyAST.BinOp())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DafnyAST.BinOp()));

implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Compiler.compileExpr (well-formedness)"} CheckWellformed$$Compiler.__default.compileExpr(e#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#2#0: DatatypeType;
  var _mcc#3#0: DatatypeType;
  var _mcc#4#0: DatatypeType;
  var e2#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var e1#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##l1#0: DatatypeType;
  var ##e#0: DatatypeType;
  var ##l2#0: DatatypeType;
  var ##e#1: DatatypeType;
  var e2#Z#1: DatatypeType;
  var let#2#0#0: DatatypeType;
  var e1#Z#1: DatatypeType;
  var let#3#0#0: DatatypeType;
  var ##l1#1: DatatypeType;
  var ##e#2: DatatypeType;
  var ##l2#1: DatatypeType;
  var ##e#3: DatatypeType;
  var _mcc#1#0: Seq;
  var v#Z#0: Seq;
  var let#4#0#0: Seq;
  var _mcc#0#0: int;
  var n#Z#0: int;
  var let#5#0#0: int;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(Compiler.__default.compileExpr($LS($LZ), e#0), 
          Tclass.LinkedList.List(Tclass.StackMachine.Instr()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (e#0 == #DafnyAST.Expr.Const(_mcc#0#0))
        {
            havoc n#Z#0;
            assume {:id "id420"} let#5#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#5#0#0, TInt);
            assume {:id "id421"} n#Z#0 == let#5#0#0;
            assume {:id "id422"} Compiler.__default.compileExpr($LS($LZ), e#0)
               == #LinkedList.List.Cons($Box(#StackMachine.Instr.PushConst(n#Z#0)), Lit(#LinkedList.List.Nil()));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(Compiler.__default.compileExpr($LS($LZ), e#0), 
              Tclass.LinkedList.List(Tclass.StackMachine.Instr()));
            return;
        }
        else if (e#0 == #DafnyAST.Expr.Var(_mcc#1#0))
        {
            assume $Is(_mcc#1#0, TSeq(TChar));
            havoc v#Z#0;
            assume {:id "id417"} let#4#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4#0#0, TSeq(TChar));
            assume {:id "id418"} v#Z#0 == let#4#0#0;
            assume {:id "id419"} Compiler.__default.compileExpr($LS($LZ), e#0)
               == #LinkedList.List.Cons($Box(#StackMachine.Instr.PushVar(v#Z#0)), Lit(#LinkedList.List.Nil()));
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(Compiler.__default.compileExpr($LS($LZ), e#0), 
              Tclass.LinkedList.List(Tclass.StackMachine.Instr()));
            return;
        }
        else if (e#0 == #DafnyAST.Expr.Op(_mcc#2#0, _mcc#3#0, _mcc#4#0))
        {
            assume $Is(_mcc#2#0, Tclass.DafnyAST.BinOp());
            assume $Is(_mcc#3#0, Tclass.DafnyAST.Expr());
            assume $Is(_mcc#4#0, Tclass.DafnyAST.Expr());
            if (_mcc#2#0 == #DafnyAST.BinOp.Add())
            {
                havoc e2#Z#1;
                assume {:id "id410"} let#2#0#0 == _mcc#4#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#2#0#0, Tclass.DafnyAST.Expr());
                assume {:id "id411"} e2#Z#1 == let#2#0#0;
                havoc e1#Z#1;
                assume {:id "id412"} let#3#0#0 == _mcc#3#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#3#0#0, Tclass.DafnyAST.Expr());
                assume {:id "id413"} e1#Z#1 == let#3#0#0;
                ##e#2 := e2#Z#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##e#2, Tclass.DafnyAST.Expr(), $Heap);
                assert {:id "id414"} DtRank(##e#2) < DtRank(e#0);
                assume Compiler.__default.compileExpr#canCall(e2#Z#1);
                ##l1#1 := Compiler.__default.compileExpr($LS($LZ), e2#Z#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##l1#1, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap);
                ##e#3 := e1#Z#1;
                // assume allocatedness for argument to function
                assume $IsAlloc(##e#3, Tclass.DafnyAST.Expr(), $Heap);
                assert {:id "id415"} DtRank(##e#3) < DtRank(e#0);
                assume Compiler.__default.compileExpr#canCall(e1#Z#1);
                ##l2#1 := Compiler.__default.compileExpr($LS($LZ), e1#Z#1);
                // assume allocatedness for argument to function
                assume $IsAlloc(##l2#1, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap);
                assume LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                  Compiler.__default.compileExpr($LS($LZ), e2#Z#1), 
                  Compiler.__default.compileExpr($LS($LZ), e1#Z#1));
                assume {:id "id416"} Compiler.__default.compileExpr($LS($LZ), e#0)
                   == #LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PopAdd())), 
                    LinkedList.__default.Concat(Tclass.StackMachine.Instr(), 
                      $LS($LZ), 
                      Compiler.__default.compileExpr($LS($LZ), e2#Z#1), 
                      Compiler.__default.compileExpr($LS($LZ), e1#Z#1)));
                assume Compiler.__default.compileExpr#canCall(e2#Z#1)
                   && Compiler.__default.compileExpr#canCall(e1#Z#1)
                   && LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                    Compiler.__default.compileExpr($LS($LZ), e2#Z#1), 
                    Compiler.__default.compileExpr($LS($LZ), e1#Z#1));
                // CheckWellformedWithResult: any expression
                assume $Is(Compiler.__default.compileExpr($LS($LZ), e#0), 
                  Tclass.LinkedList.List(Tclass.StackMachine.Instr()));
                return;
            }
            else if (_mcc#2#0 == #DafnyAST.BinOp.Sub())
            {
                havoc e2#Z#0;
                assume {:id "id403"} let#0#0#0 == _mcc#4#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#0#0#0, Tclass.DafnyAST.Expr());
                assume {:id "id404"} e2#Z#0 == let#0#0#0;
                havoc e1#Z#0;
                assume {:id "id405"} let#1#0#0 == _mcc#3#0;
                assume true;
                // CheckWellformedWithResult: any expression
                assume $Is(let#1#0#0, Tclass.DafnyAST.Expr());
                assume {:id "id406"} e1#Z#0 == let#1#0#0;
                ##e#0 := e2#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##e#0, Tclass.DafnyAST.Expr(), $Heap);
                assert {:id "id407"} DtRank(##e#0) < DtRank(e#0);
                assume Compiler.__default.compileExpr#canCall(e2#Z#0);
                ##l1#0 := Compiler.__default.compileExpr($LS($LZ), e2#Z#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##l1#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap);
                ##e#1 := e1#Z#0;
                // assume allocatedness for argument to function
                assume $IsAlloc(##e#1, Tclass.DafnyAST.Expr(), $Heap);
                assert {:id "id408"} DtRank(##e#1) < DtRank(e#0);
                assume Compiler.__default.compileExpr#canCall(e1#Z#0);
                ##l2#0 := Compiler.__default.compileExpr($LS($LZ), e1#Z#0);
                // assume allocatedness for argument to function
                assume $IsAlloc(##l2#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap);
                assume LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                  Compiler.__default.compileExpr($LS($LZ), e2#Z#0), 
                  Compiler.__default.compileExpr($LS($LZ), e1#Z#0));
                assume {:id "id409"} Compiler.__default.compileExpr($LS($LZ), e#0)
                   == #LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PopSub())), 
                    LinkedList.__default.Concat(Tclass.StackMachine.Instr(), 
                      $LS($LZ), 
                      Compiler.__default.compileExpr($LS($LZ), e2#Z#0), 
                      Compiler.__default.compileExpr($LS($LZ), e1#Z#0)));
                assume Compiler.__default.compileExpr#canCall(e2#Z#0)
                   && Compiler.__default.compileExpr#canCall(e1#Z#0)
                   && LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                    Compiler.__default.compileExpr($LS($LZ), e2#Z#0), 
                    Compiler.__default.compileExpr($LS($LZ), e1#Z#0));
                // CheckWellformedWithResult: any expression
                assume $Is(Compiler.__default.compileExpr($LS($LZ), e#0), 
                  Tclass.LinkedList.List(Tclass.StackMachine.Instr()));
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



// function declaration for Compiler._default.compileStmt
function Compiler.__default.compileStmt($ly: LayerType, s#0: DatatypeType) : DatatypeType
uses {
// consequence axiom for Compiler.__default.compileStmt
axiom 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { Compiler.__default.compileStmt($ly, s#0) } 
    Compiler.__default.compileStmt#canCall(s#0)
         || (1 < $FunctionContextHeight && $Is(s#0, Tclass.DafnyAST.Stmt()))
       ==> $Is(Compiler.__default.compileStmt($ly, s#0), 
        Tclass.LinkedList.List(Tclass.StackMachine.Instr())));
// definition axiom for Compiler.__default.compileStmt (revealed)
axiom {:id "id423"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    { Compiler.__default.compileStmt($LS($ly), s#0) } 
    Compiler.__default.compileStmt#canCall(s#0)
         || (1 < $FunctionContextHeight && $Is(s#0, Tclass.DafnyAST.Stmt()))
       ==> (!DafnyAST.Stmt.Skip_q(s#0)
           ==> (DafnyAST.Stmt.Print_q(s#0)
               ==> (var e#2 := DafnyAST.Stmt.e(s#0); Compiler.__default.compileExpr#canCall(e#2)))
             && (!DafnyAST.Stmt.Print_q(s#0)
               ==> (DafnyAST.Stmt.Assign_q(s#0)
                   ==> (var e#3 := DafnyAST.Stmt.e(s#0); Compiler.__default.compileExpr#canCall(e#3)))
                 && (!DafnyAST.Stmt.Assign_q(s#0)
                   ==> (var s2#1 := DafnyAST.Stmt.s2(s#0); 
                    (var s1#1 := DafnyAST.Stmt.s1(s#0); 
                      Compiler.__default.compileStmt#canCall(s2#1)
                         && Compiler.__default.compileStmt#canCall(s1#1)
                         && LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                          Compiler.__default.compileStmt($ly, s2#1), 
                          Compiler.__default.compileStmt($ly, s1#1)))))))
         && Compiler.__default.compileStmt($LS($ly), s#0)
           == (if DafnyAST.Stmt.Skip_q(s#0)
             then #LinkedList.List.Nil()
             else (if DafnyAST.Stmt.Print_q(s#0)
               then (var e#0 := DafnyAST.Stmt.e(s#0); 
                #LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PopPrint())), 
                  Compiler.__default.compileExpr($LS($LZ), e#0)))
               else (if DafnyAST.Stmt.Assign_q(s#0)
                 then (var e#1 := DafnyAST.Stmt.e(s#0); 
                  (var v#0 := DafnyAST.Stmt.v(s#0); 
                    #LinkedList.List.Cons($Box(#StackMachine.Instr.PopVar(v#0)), 
                      Compiler.__default.compileExpr($LS($LZ), e#1))))
                 else (var s2#0 := DafnyAST.Stmt.s2(s#0); 
                  (var s1#0 := DafnyAST.Stmt.s1(s#0); 
                    LinkedList.__default.Concat(Tclass.StackMachine.Instr(), 
                      $LS($LZ), 
                      Compiler.__default.compileStmt($ly, s2#0), 
                      Compiler.__default.compileStmt($ly, s1#0))))))));
// definition axiom for Compiler.__default.compileStmt for all literals (revealed)
axiom {:id "id424"} 1 <= $FunctionContextHeight
   ==> (forall $ly: LayerType, s#0: DatatypeType :: 
    {:weight 3} { Compiler.__default.compileStmt($LS($ly), Lit(s#0)) } 
    Compiler.__default.compileStmt#canCall(Lit(s#0))
         || (1 < $FunctionContextHeight && $Is(s#0, Tclass.DafnyAST.Stmt()))
       ==> (!Lit(DafnyAST.Stmt.Skip_q(Lit(s#0)))
           ==> (Lit(DafnyAST.Stmt.Print_q(Lit(s#0)))
               ==> (var e#6 := Lit(DafnyAST.Stmt.e(Lit(s#0))); 
                Compiler.__default.compileExpr#canCall(e#6)))
             && (!Lit(DafnyAST.Stmt.Print_q(Lit(s#0)))
               ==> (Lit(DafnyAST.Stmt.Assign_q(Lit(s#0)))
                   ==> (var e#7 := Lit(DafnyAST.Stmt.e(Lit(s#0))); 
                    Compiler.__default.compileExpr#canCall(e#7)))
                 && (!Lit(DafnyAST.Stmt.Assign_q(Lit(s#0)))
                   ==> (var s2#3 := Lit(DafnyAST.Stmt.s2(Lit(s#0))); 
                    (var s1#3 := Lit(DafnyAST.Stmt.s1(Lit(s#0))); 
                      Compiler.__default.compileStmt#canCall(s2#3)
                         && Compiler.__default.compileStmt#canCall(s1#3)
                         && LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                          Compiler.__default.compileStmt($LS($ly), s2#3), 
                          Compiler.__default.compileStmt($LS($ly), s1#3)))))))
         && Compiler.__default.compileStmt($LS($ly), Lit(s#0))
           == (if DafnyAST.Stmt.Skip_q(Lit(s#0))
             then #LinkedList.List.Nil()
             else (if DafnyAST.Stmt.Print_q(Lit(s#0))
               then (var e#4 := Lit(DafnyAST.Stmt.e(Lit(s#0))); 
                Lit(#LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PopPrint())), 
                    Lit(Compiler.__default.compileExpr($LS($LZ), e#4)))))
               else (if DafnyAST.Stmt.Assign_q(Lit(s#0))
                 then (var e#5 := Lit(DafnyAST.Stmt.e(Lit(s#0))); 
                  (var v#2 := Lit(DafnyAST.Stmt.v(Lit(s#0))); 
                    Lit(#LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PopVar(v#2))), 
                        Lit(Compiler.__default.compileExpr($LS($LZ), e#5))))))
                 else (var s2#2 := Lit(DafnyAST.Stmt.s2(Lit(s#0))); 
                  (var s1#2 := Lit(DafnyAST.Stmt.s1(Lit(s#0))); 
                    Lit(LinkedList.__default.Concat(Tclass.StackMachine.Instr(), 
                        $LS($LZ), 
                        Lit(Compiler.__default.compileStmt($LS($ly), s2#2)), 
                        Lit(Compiler.__default.compileStmt($LS($ly), s1#2))))))))));
}

function Compiler.__default.compileStmt#canCall(s#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { Compiler.__default.compileStmt($LS($ly), s#0) } 
  Compiler.__default.compileStmt($LS($ly), s#0)
     == Compiler.__default.compileStmt($ly, s#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { Compiler.__default.compileStmt(AsFuelBottom($ly), s#0) } 
  Compiler.__default.compileStmt($ly, s#0)
     == Compiler.__default.compileStmt($LZ, s#0));

function Tclass.DafnyAST.Stmt() : Ty
uses {
// Tclass.DafnyAST.Stmt Tag
axiom Tag(Tclass.DafnyAST.Stmt()) == Tagclass.DafnyAST.Stmt
   && TagFamily(Tclass.DafnyAST.Stmt()) == tytagFamily$Stmt;
}

const unique Tagclass.DafnyAST.Stmt: TyTag;

// Box/unbox axiom for Tclass.DafnyAST.Stmt
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DafnyAST.Stmt()) } 
  $IsBox(bx, Tclass.DafnyAST.Stmt())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DafnyAST.Stmt()));

function Compiler.__default.compileStmt#requires(LayerType, DatatypeType) : bool;

// #requires axiom for Compiler.__default.compileStmt
axiom (forall $ly: LayerType, s#0: DatatypeType :: 
  { Compiler.__default.compileStmt#requires($ly, s#0) } 
  $Is(s#0, Tclass.DafnyAST.Stmt())
     ==> Compiler.__default.compileStmt#requires($ly, s#0) == true);

procedure {:verboseName "Compiler.compileStmt (well-formedness)"} CheckWellformed$$Compiler.__default.compileStmt(s#0: DatatypeType where $Is(s#0, Tclass.DafnyAST.Stmt()));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Compiler.compileStmt (well-formedness)"} CheckWellformed$$Compiler.__default.compileStmt(s#0: DatatypeType)
{
  var $_ReadsFrame: [ref,Field]bool;
  var _mcc#3#0: DatatypeType;
  var _mcc#4#0: DatatypeType;
  var s2#Z#0: DatatypeType;
  var let#0#0#0: DatatypeType;
  var s1#Z#0: DatatypeType;
  var let#1#0#0: DatatypeType;
  var ##l1#0: DatatypeType;
  var ##s#0: DatatypeType;
  var ##l2#0: DatatypeType;
  var ##s#1: DatatypeType;
  var _mcc#1#0: Seq;
  var _mcc#2#0: DatatypeType;
  var e#Z#0: DatatypeType;
  var let#2#0#0: DatatypeType;
  var v#Z#0: Seq;
  var let#3#0#0: Seq;
  var ##e#0: DatatypeType;
  var _mcc#0#0: DatatypeType;
  var e#Z#1: DatatypeType;
  var let#4#0#0: DatatypeType;
  var ##e#1: DatatypeType;


    $_ReadsFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    // Check well-formedness of preconditions, and then assume them
    // Check well-formedness of the reads clause
    // Check well-formedness of the decreases clause
    // Check body and ensures clauses
    if (*)
    {
        // Check well-formedness of postcondition and assume false
        assume $Is(Compiler.__default.compileStmt($LS($LZ), s#0), 
          Tclass.LinkedList.List(Tclass.StackMachine.Instr()));
        assume false;
    }
    else
    {
        // Check well-formedness of body and result subset type constraint
        if (s#0 == #DafnyAST.Stmt.Skip())
        {
            assume {:id "id440"} Compiler.__default.compileStmt($LS($LZ), s#0) == Lit(#LinkedList.List.Nil());
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(Compiler.__default.compileStmt($LS($LZ), s#0), 
              Tclass.LinkedList.List(Tclass.StackMachine.Instr()));
            return;
        }
        else if (s#0 == #DafnyAST.Stmt.Print(_mcc#0#0))
        {
            assume $Is(_mcc#0#0, Tclass.DafnyAST.Expr());
            havoc e#Z#1;
            assume {:id "id437"} let#4#0#0 == _mcc#0#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#4#0#0, Tclass.DafnyAST.Expr());
            assume {:id "id438"} e#Z#1 == let#4#0#0;
            ##e#1 := e#Z#1;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#1, Tclass.DafnyAST.Expr(), $Heap);
            assume Compiler.__default.compileExpr#canCall(e#Z#1);
            assume {:id "id439"} Compiler.__default.compileStmt($LS($LZ), s#0)
               == #LinkedList.List.Cons($Box(Lit(#StackMachine.Instr.PopPrint())), 
                Compiler.__default.compileExpr($LS($LZ), e#Z#1));
            assume Compiler.__default.compileExpr#canCall(e#Z#1);
            // CheckWellformedWithResult: any expression
            assume $Is(Compiler.__default.compileStmt($LS($LZ), s#0), 
              Tclass.LinkedList.List(Tclass.StackMachine.Instr()));
            return;
        }
        else if (s#0 == #DafnyAST.Stmt.Assign(_mcc#1#0, _mcc#2#0))
        {
            assume $Is(_mcc#1#0, TSeq(TChar));
            assume $Is(_mcc#2#0, Tclass.DafnyAST.Expr());
            havoc e#Z#0;
            assume {:id "id432"} let#2#0#0 == _mcc#2#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#2#0#0, Tclass.DafnyAST.Expr());
            assume {:id "id433"} e#Z#0 == let#2#0#0;
            havoc v#Z#0;
            assume {:id "id434"} let#3#0#0 == _mcc#1#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#3#0#0, TSeq(TChar));
            assume {:id "id435"} v#Z#0 == let#3#0#0;
            ##e#0 := e#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##e#0, Tclass.DafnyAST.Expr(), $Heap);
            assume Compiler.__default.compileExpr#canCall(e#Z#0);
            assume {:id "id436"} Compiler.__default.compileStmt($LS($LZ), s#0)
               == #LinkedList.List.Cons($Box(#StackMachine.Instr.PopVar(v#Z#0)), 
                Compiler.__default.compileExpr($LS($LZ), e#Z#0));
            assume Compiler.__default.compileExpr#canCall(e#Z#0);
            // CheckWellformedWithResult: any expression
            assume $Is(Compiler.__default.compileStmt($LS($LZ), s#0), 
              Tclass.LinkedList.List(Tclass.StackMachine.Instr()));
            return;
        }
        else if (s#0 == #DafnyAST.Stmt.Seq(_mcc#3#0, _mcc#4#0))
        {
            assume $Is(_mcc#3#0, Tclass.DafnyAST.Stmt());
            assume $Is(_mcc#4#0, Tclass.DafnyAST.Stmt());
            havoc s2#Z#0;
            assume {:id "id425"} let#0#0#0 == _mcc#4#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#0#0#0, Tclass.DafnyAST.Stmt());
            assume {:id "id426"} s2#Z#0 == let#0#0#0;
            havoc s1#Z#0;
            assume {:id "id427"} let#1#0#0 == _mcc#3#0;
            assume true;
            // CheckWellformedWithResult: any expression
            assume $Is(let#1#0#0, Tclass.DafnyAST.Stmt());
            assume {:id "id428"} s1#Z#0 == let#1#0#0;
            ##s#0 := s2#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#0, Tclass.DafnyAST.Stmt(), $Heap);
            assert {:id "id429"} DtRank(##s#0) < DtRank(s#0);
            assume Compiler.__default.compileStmt#canCall(s2#Z#0);
            ##l1#0 := Compiler.__default.compileStmt($LS($LZ), s2#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##l1#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap);
            ##s#1 := s1#Z#0;
            // assume allocatedness for argument to function
            assume $IsAlloc(##s#1, Tclass.DafnyAST.Stmt(), $Heap);
            assert {:id "id430"} DtRank(##s#1) < DtRank(s#0);
            assume Compiler.__default.compileStmt#canCall(s1#Z#0);
            ##l2#0 := Compiler.__default.compileStmt($LS($LZ), s1#Z#0);
            // assume allocatedness for argument to function
            assume $IsAlloc(##l2#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap);
            assume LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
              Compiler.__default.compileStmt($LS($LZ), s2#Z#0), 
              Compiler.__default.compileStmt($LS($LZ), s1#Z#0));
            assume {:id "id431"} Compiler.__default.compileStmt($LS($LZ), s#0)
               == LinkedList.__default.Concat(Tclass.StackMachine.Instr(), 
                $LS($LZ), 
                Compiler.__default.compileStmt($LS($LZ), s2#Z#0), 
                Compiler.__default.compileStmt($LS($LZ), s1#Z#0));
            assume Compiler.__default.compileStmt#canCall(s2#Z#0)
               && Compiler.__default.compileStmt#canCall(s1#Z#0)
               && LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), 
                Compiler.__default.compileStmt($LS($LZ), s2#Z#0), 
                Compiler.__default.compileStmt($LS($LZ), s1#Z#0));
            // CheckWellformedWithResult: any expression
            assume $Is(Compiler.__default.compileStmt($LS($LZ), s#0), 
              Tclass.LinkedList.List(Tclass.StackMachine.Instr()));
            return;
        }
        else
        {
            assume false;
        }

        assume false;
    }
}



function Tclass.StackMachine.State() : Ty
uses {
// Tclass.StackMachine.State Tag
axiom Tag(Tclass.StackMachine.State()) == Tagclass.StackMachine.State
   && TagFamily(Tclass.StackMachine.State()) == tytagFamily$State;
}

const unique Tagclass.StackMachine.State: TyTag;

// Box/unbox axiom for Tclass.StackMachine.State
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.StackMachine.State()) } 
  $IsBox(bx, Tclass.StackMachine.State())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.StackMachine.State()));

procedure {:verboseName "Compiler.interpProg'_Concat (well-formedness)"} CheckWellFormed$$Compiler.__default.interpProg_k__Concat(p1#0: DatatypeType
       where $Is(p1#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $IsAlloc(p1#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap)
         && $IsA#LinkedList.List(p1#0), 
    p2#0: DatatypeType
       where $Is(p2#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $IsAlloc(p2#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap)
         && $IsA#LinkedList.List(p2#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.StackMachine.State())
         && $IsAlloc(st#0, Tclass.StackMachine.State(), $Heap)
         && $IsA#StackMachine.State(st#0));
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Compiler.interpProg'_Concat (call)"} Call$$Compiler.__default.interpProg_k__Concat(p1#0: DatatypeType
       where $Is(p1#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $IsAlloc(p1#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap)
         && $IsA#LinkedList.List(p1#0), 
    p2#0: DatatypeType
       where $Is(p2#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $IsAlloc(p2#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap)
         && $IsA#LinkedList.List(p2#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.StackMachine.State())
         && $IsAlloc(st#0, Tclass.StackMachine.State(), $Heap)
         && $IsA#StackMachine.State(st#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#StackMachine.State(StackMachine.__default.interpProg_k($LS($LZ), 
        LinkedList.__default.Concat(Tclass.StackMachine.Instr(), $LS($LZ), p1#0, p2#0), 
        st#0))
     && $IsA#StackMachine.State(StackMachine.__default.interpProg_k($LS($LZ), p1#0, StackMachine.__default.interpProg_k($LS($LZ), p2#0, st#0)))
     && 
    LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), p1#0, p2#0)
     && StackMachine.__default.interpProg_k#canCall(LinkedList.__default.Concat(Tclass.StackMachine.Instr(), $LS($LZ), p1#0, p2#0), 
      st#0)
     && 
    StackMachine.__default.interpProg_k#canCall(p2#0, st#0)
     && StackMachine.__default.interpProg_k#canCall(p1#0, StackMachine.__default.interpProg_k($LS($LZ), p2#0, st#0));
  ensures {:id "id442"} StackMachine.State#Equal(StackMachine.__default.interpProg_k($LS($LS($LZ)), 
      LinkedList.__default.Concat(Tclass.StackMachine.Instr(), $LS($LS($LZ)), p1#0, p2#0), 
      st#0), 
    StackMachine.__default.interpProg_k($LS($LS($LZ)), 
      p1#0, 
      StackMachine.__default.interpProg_k($LS($LS($LZ)), p2#0, st#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Compiler.interpProg'_Concat (correctness)"} Impl$$Compiler.__default.interpProg_k__Concat(p1#0: DatatypeType
       where $Is(p1#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $IsAlloc(p1#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap)
         && $IsA#LinkedList.List(p1#0), 
    p2#0: DatatypeType
       where $Is(p2#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $IsAlloc(p2#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap)
         && $IsA#LinkedList.List(p2#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.StackMachine.State())
         && $IsAlloc(st#0, Tclass.StackMachine.State(), $Heap)
         && $IsA#StackMachine.State(st#0))
   returns ($_reverifyPost: bool);
  free requires 0 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#StackMachine.State(StackMachine.__default.interpProg_k($LS($LZ), 
        LinkedList.__default.Concat(Tclass.StackMachine.Instr(), $LS($LZ), p1#0, p2#0), 
        st#0))
     && $IsA#StackMachine.State(StackMachine.__default.interpProg_k($LS($LZ), p1#0, StackMachine.__default.interpProg_k($LS($LZ), p2#0, st#0)))
     && 
    LinkedList.__default.Concat#canCall(Tclass.StackMachine.Instr(), p1#0, p2#0)
     && StackMachine.__default.interpProg_k#canCall(LinkedList.__default.Concat(Tclass.StackMachine.Instr(), $LS($LZ), p1#0, p2#0), 
      st#0)
     && 
    StackMachine.__default.interpProg_k#canCall(p2#0, st#0)
     && StackMachine.__default.interpProg_k#canCall(p1#0, StackMachine.__default.interpProg_k($LS($LZ), p2#0, st#0));
  ensures {:id "id443"} StackMachine.State#Equal(StackMachine.__default.interpProg_k($LS($LS($LZ)), 
      LinkedList.__default.Concat(Tclass.StackMachine.Instr(), $LS($LS($LZ)), p1#0, p2#0), 
      st#0), 
    StackMachine.__default.interpProg_k($LS($LS($LZ)), 
      p1#0, 
      StackMachine.__default.interpProg_k($LS($LS($LZ)), p2#0, st#0)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Compiler.interpProg'_Concat (correctness)"} Impl$$Compiler.__default.interpProg_k__Concat(p1#0: DatatypeType, p2#0: DatatypeType, st#0: DatatypeType)
   returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;

    // AddMethodImpl: interpProg'_Concat, Impl$$Compiler.__default.interpProg_k__Concat
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#LinkedList.List(p1#0);
    assume $IsA#LinkedList.List(p2#0);
    assume $IsA#StackMachine.State(st#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#p10#0: DatatypeType, $ih#p20#0: DatatypeType, $ih#st0#0: DatatypeType :: 
      { StackMachine.__default.interpProg_k($LS($LZ), 
          $ih#p10#0, 
          StackMachine.__default.interpProg_k($LS($LZ), $ih#p20#0, $ih#st0#0)) } 
        { StackMachine.__default.interpProg_k($LS($LZ), 
          LinkedList.__default.Concat(Tclass.StackMachine.Instr(), $LS($LZ), $ih#p10#0, $ih#p20#0), 
          $ih#st0#0) } 
      $Is($ih#p10#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
           && $Is($ih#p20#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
           && $Is($ih#st0#0, Tclass.StackMachine.State())
           && Lit(true)
           && (DtRank($ih#p10#0) < DtRank(p1#0)
             || (DtRank($ih#p10#0) == DtRank(p1#0)
               && (DtRank($ih#p20#0) < DtRank(p2#0)
                 || (DtRank($ih#p20#0) == DtRank(p2#0) && DtRank($ih#st0#0) < DtRank(st#0)))))
         ==> StackMachine.State#Equal(StackMachine.__default.interpProg_k($LS($LZ), 
            LinkedList.__default.Concat(Tclass.StackMachine.Instr(), $LS($LZ), $ih#p10#0, $ih#p20#0), 
            $ih#st0#0), 
          StackMachine.__default.interpProg_k($LS($LZ), 
            $ih#p10#0, 
            StackMachine.__default.interpProg_k($LS($LZ), $ih#p20#0, $ih#st0#0))));
    $_reverifyPost := false;
}



procedure {:verboseName "Compiler.compileExprCorrect' (well-formedness)"} CheckWellFormed$$Compiler.__default.compileExprCorrect_k(e#0: DatatypeType
       where $Is(e#0, Tclass.DafnyAST.Expr())
         && $IsAlloc(e#0, Tclass.DafnyAST.Expr(), $Heap)
         && $IsA#DafnyAST.Expr(e#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.StackMachine.State())
         && $IsAlloc(st#0, Tclass.StackMachine.State(), $Heap)
         && $IsA#StackMachine.State(st#0));
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Compiler.compileExprCorrect' (call)"} Call$$Compiler.__default.compileExprCorrect_k(e#0: DatatypeType
       where $Is(e#0, Tclass.DafnyAST.Expr())
         && $IsAlloc(e#0, Tclass.DafnyAST.Expr(), $Heap)
         && $IsA#DafnyAST.Expr(e#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.StackMachine.State())
         && $IsAlloc(st#0, Tclass.StackMachine.State(), $Heap)
         && $IsA#StackMachine.State(st#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#StackMachine.State(StackMachine.__default.interpProg_k($LS($LZ), Compiler.__default.compileExpr($LS($LZ), e#0), st#0))
     && $IsA#StackMachine.State((var dt_update_tmp#0#0 := st#0; 
        (var dt_update#stack#0#0 := #LinkedList.List.Cons($Box(DafnyAST.__default.interpExpr($LS($LZ), e#0, StackMachine.State.regs(st#0))), 
              StackMachine.State.stack(st#0)); 
          #StackMachine.State.State(dt_update#stack#0#0, 
            StackMachine.State.regs(dt_update_tmp#0#0), 
            StackMachine.State.output(dt_update_tmp#0#0)))))
     && 
    Compiler.__default.compileExpr#canCall(e#0)
     && StackMachine.__default.interpProg_k#canCall(Compiler.__default.compileExpr($LS($LZ), e#0), st#0)
     && (var dt_update_tmp#0#0 := st#0; 
      StackMachine.State.State_q(st#0)
         && DafnyAST.__default.interpExpr#canCall(e#0, StackMachine.State.regs(st#0))
         && StackMachine.State.State_q(st#0)
         && 
        StackMachine.State.State_q(dt_update_tmp#0#0)
         && StackMachine.State.State_q(dt_update_tmp#0#0));
  ensures {:id "id449"} StackMachine.State#Equal(StackMachine.__default.interpProg_k($LS($LS($LZ)), Compiler.__default.compileExpr($LS($LS($LZ)), e#0), st#0), 
    (var dt_update_tmp#0#0 := st#0; 
      (var dt_update#stack#0#0 := #LinkedList.List.Cons($Box(DafnyAST.__default.interpExpr($LS($LS($LZ)), e#0, StackMachine.State.regs(st#0))), 
            StackMachine.State.stack(st#0)); 
        #StackMachine.State.State(dt_update#stack#0#0, 
          StackMachine.State.regs(dt_update_tmp#0#0), 
          StackMachine.State.output(dt_update_tmp#0#0)))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Compiler.compileExprCorrect' (correctness)"} Impl$$Compiler.__default.compileExprCorrect_k(e#0: DatatypeType
       where $Is(e#0, Tclass.DafnyAST.Expr())
         && $IsAlloc(e#0, Tclass.DafnyAST.Expr(), $Heap)
         && $IsA#DafnyAST.Expr(e#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.StackMachine.State())
         && $IsAlloc(st#0, Tclass.StackMachine.State(), $Heap)
         && $IsA#StackMachine.State(st#0))
   returns ($_reverifyPost: bool);
  free requires 1 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#StackMachine.State(StackMachine.__default.interpProg_k($LS($LZ), Compiler.__default.compileExpr($LS($LZ), e#0), st#0))
     && $IsA#StackMachine.State((var dt_update_tmp#0#0 := st#0; 
        (var dt_update#stack#0#0 := #LinkedList.List.Cons($Box(DafnyAST.__default.interpExpr($LS($LZ), e#0, StackMachine.State.regs(st#0))), 
              StackMachine.State.stack(st#0)); 
          #StackMachine.State.State(dt_update#stack#0#0, 
            StackMachine.State.regs(dt_update_tmp#0#0), 
            StackMachine.State.output(dt_update_tmp#0#0)))))
     && 
    Compiler.__default.compileExpr#canCall(e#0)
     && StackMachine.__default.interpProg_k#canCall(Compiler.__default.compileExpr($LS($LZ), e#0), st#0)
     && (var dt_update_tmp#0#0 := st#0; 
      StackMachine.State.State_q(st#0)
         && DafnyAST.__default.interpExpr#canCall(e#0, StackMachine.State.regs(st#0))
         && StackMachine.State.State_q(st#0)
         && 
        StackMachine.State.State_q(dt_update_tmp#0#0)
         && StackMachine.State.State_q(dt_update_tmp#0#0));
  ensures {:id "id450"} StackMachine.State#Equal(StackMachine.__default.interpProg_k($LS($LS($LZ)), Compiler.__default.compileExpr($LS($LS($LZ)), e#0), st#0), 
    (var dt_update_tmp#0#0 := st#0; 
      (var dt_update#stack#0#0 := #LinkedList.List.Cons($Box(DafnyAST.__default.interpExpr($LS($LS($LZ)), e#0, StackMachine.State.regs(st#0))), 
            StackMachine.State.stack(st#0)); 
        #StackMachine.State.State(dt_update#stack#0#0, 
          StackMachine.State.regs(dt_update_tmp#0#0), 
          StackMachine.State.output(dt_update_tmp#0#0)))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Compiler.compileExprCorrect' (correctness)"} Impl$$Compiler.__default.compileExprCorrect_k(e#0: DatatypeType, st#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#2#0_0: DatatypeType;
  var _mcc#3#0_0: DatatypeType;
  var _mcc#4#0_0: DatatypeType;
  var e2#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var e1#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var op#0_0: DatatypeType;
  var let#0_2#0#0: DatatypeType;
  var p1##0_0: DatatypeType;
  var ##e#0_0: DatatypeType;
  var p2##0_0: DatatypeType;
  var ##e#0_1: DatatypeType;
  var st##0_0: DatatypeType;
  var e##0_0: DatatypeType;
  var st##0_1: DatatypeType;
  var st'#0_0: DatatypeType
     where $Is(st'#0_0, Tclass.StackMachine.State())
       && $IsAlloc(st'#0_0, Tclass.StackMachine.State(), $Heap);
  var dt_update_tmp#1#Z#0_0: DatatypeType;
  var let#0_3#0#0: DatatypeType;
  var dt_update#stack#1#Z#0_0: DatatypeType;
  var let#0_4#0#0: DatatypeType;
  var ##e#0_2: DatatypeType;
  var ##ctx#0_0: Map;
  var e##0_1: DatatypeType;
  var st##0_2: DatatypeType;
  var _mcc#1#1_0: Seq;
  var _mcc#0#2_0: int;

    // AddMethodImpl: compileExprCorrect', Impl$$Compiler.__default.compileExprCorrect_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#2#0_0, _mcc#3#0_0, _mcc#4#0_0;
    havoc _mcc#1#1_0;
    havoc _mcc#0#2_0;
    if (e#0 == #DafnyAST.Expr.Const(_mcc#0#2_0))
    {
    }
    else if (e#0 == #DafnyAST.Expr.Var(_mcc#1#1_0))
    {
        assume $Is(_mcc#1#1_0, TSeq(TChar));
    }
    else if (e#0 == #DafnyAST.Expr.Op(_mcc#2#0_0, _mcc#3#0_0, _mcc#4#0_0))
    {
        assume $Is(_mcc#2#0_0, Tclass.DafnyAST.BinOp());
        assume $Is(_mcc#3#0_0, Tclass.DafnyAST.Expr());
        assume $Is(_mcc#4#0_0, Tclass.DafnyAST.Expr());
        havoc e2#0_0;
        assume $Is(e2#0_0, Tclass.DafnyAST.Expr())
           && $IsAlloc(e2#0_0, Tclass.DafnyAST.Expr(), $Heap);
        assume {:id "id451"} let#0_0#0#0 == _mcc#4#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass.DafnyAST.Expr());
        assume {:id "id452"} e2#0_0 == let#0_0#0#0;
        havoc e1#0_0;
        assume $Is(e1#0_0, Tclass.DafnyAST.Expr())
           && $IsAlloc(e1#0_0, Tclass.DafnyAST.Expr(), $Heap);
        assume {:id "id453"} let#0_1#0#0 == _mcc#3#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass.DafnyAST.Expr());
        assume {:id "id454"} e1#0_0 == let#0_1#0#0;
        havoc op#0_0;
        assume $Is(op#0_0, Tclass.DafnyAST.BinOp())
           && $IsAlloc(op#0_0, Tclass.DafnyAST.BinOp(), $Heap);
        assume {:id "id455"} let#0_2#0#0 == _mcc#2#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_2#0#0, Tclass.DafnyAST.BinOp());
        assume {:id "id456"} op#0_0 == let#0_2#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(284,27)
        // TrCallStmt: Before ProcessCallStmt
        ##e#0_0 := e2#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#0_0, Tclass.DafnyAST.Expr(), $Heap);
        assume Compiler.__default.compileExpr#canCall(e2#0_0);
        assume Compiler.__default.compileExpr#canCall(e2#0_0);
        // ProcessCallStmt: CheckSubrange
        p1##0_0 := Compiler.__default.compileExpr($LS($LZ), e2#0_0);
        ##e#0_1 := e1#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#0_1, Tclass.DafnyAST.Expr(), $Heap);
        assume Compiler.__default.compileExpr#canCall(e1#0_0);
        assume Compiler.__default.compileExpr#canCall(e1#0_0);
        // ProcessCallStmt: CheckSubrange
        p2##0_0 := Compiler.__default.compileExpr($LS($LZ), e1#0_0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        call {:id "id457"} Call$$Compiler.__default.interpProg_k__Concat(p1##0_0, p2##0_0, st##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(285,28)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_0 := e1#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_1 := st#0;
        assert {:id "id458"} DtRank(e##0_0) < DtRank(e#0)
           || (DtRank(e##0_0) == DtRank(e#0) && DtRank(st##0_1) < DtRank(st#0));
        call {:id "id459"} Call$$Compiler.__default.compileExprCorrect_k(e##0_0, st##0_1);
        // TrCallStmt: After ProcessCallStmt
        // ----- assignment statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(286,17)
        assume true;
        havoc dt_update_tmp#1#Z#0_0;
        assume {:id "id460"} let#0_3#0#0 == st#0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_3#0#0, Tclass.StackMachine.State());
        assume {:id "id461"} dt_update_tmp#1#Z#0_0 == let#0_3#0#0;
        havoc dt_update#stack#1#Z#0_0;
        ##e#0_2 := e1#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##e#0_2, Tclass.DafnyAST.Expr(), $Heap);
        assume StackMachine.State.State_q(st#0);
        ##ctx#0_0 := StackMachine.State.regs(st#0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##ctx#0_0, TMap(TSeq(TChar), TInt), $Heap);
        assume DafnyAST.__default.interpExpr#canCall(e1#0_0, StackMachine.State.regs(st#0));
        assume StackMachine.State.State_q(st#0);
        assume {:id "id462"} let#0_4#0#0
           == #LinkedList.List.Cons($Box(DafnyAST.__default.interpExpr($LS($LZ), e1#0_0, StackMachine.State.regs(st#0))), 
            StackMachine.State.stack(st#0));
        assume StackMachine.State.State_q(st#0)
           && DafnyAST.__default.interpExpr#canCall(e1#0_0, StackMachine.State.regs(st#0))
           && StackMachine.State.State_q(st#0);
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_4#0#0, Tclass.LinkedList.List(TInt));
        assume {:id "id463"} dt_update#stack#1#Z#0_0 == let#0_4#0#0;
        assume StackMachine.State.State_q(dt_update_tmp#1#Z#0_0);
        assume StackMachine.State.State_q(dt_update_tmp#1#Z#0_0);
        assume (var dt_update_tmp#1#0_0 := st#0; 
          StackMachine.State.State_q(st#0)
             && DafnyAST.__default.interpExpr#canCall(e1#0_0, StackMachine.State.regs(st#0))
             && StackMachine.State.State_q(st#0)
             && 
            StackMachine.State.State_q(dt_update_tmp#1#0_0)
             && StackMachine.State.State_q(dt_update_tmp#1#0_0));
        st'#0_0 := (var dt_update_tmp#1#0_0 := st#0; 
          (var dt_update#stack#1#0_0 := #LinkedList.List.Cons($Box(DafnyAST.__default.interpExpr($LS($LZ), e1#0_0, StackMachine.State.regs(st#0))), 
                StackMachine.State.stack(st#0)); 
            #StackMachine.State.State(dt_update#stack#1#0_0, 
              StackMachine.State.regs(dt_update_tmp#1#0_0), 
              StackMachine.State.output(dt_update_tmp#1#0_0))));
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(287,28)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##0_1 := e2#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_2 := st'#0_0;
        assert {:id "id465"} DtRank(e##0_1) < DtRank(e#0)
           || (DtRank(e##0_1) == DtRank(e#0) && DtRank(st##0_2) < DtRank(st#0));
        call {:id "id466"} Call$$Compiler.__default.compileExprCorrect_k(e##0_1, st##0_2);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Compiler.compileStmtCorrect' (well-formedness)"} CheckWellFormed$$Compiler.__default.compileStmtCorrect_k(s#0: DatatypeType
       where $Is(s#0, Tclass.DafnyAST.Stmt())
         && $IsAlloc(s#0, Tclass.DafnyAST.Stmt(), $Heap)
         && $IsA#DafnyAST.Stmt(s#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.StackMachine.State())
         && $IsAlloc(st#0, Tclass.StackMachine.State(), $Heap)
         && $IsA#StackMachine.State(st#0));
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;



function Tclass.DafnyAST.InterpResult() : Ty
uses {
// Tclass.DafnyAST.InterpResult Tag
axiom Tag(Tclass.DafnyAST.InterpResult()) == Tagclass.DafnyAST.InterpResult
   && TagFamily(Tclass.DafnyAST.InterpResult()) == tytagFamily$InterpResult;
}

const unique Tagclass.DafnyAST.InterpResult: TyTag;

// Box/unbox axiom for Tclass.DafnyAST.InterpResult
axiom (forall bx: Box :: 
  { $IsBox(bx, Tclass.DafnyAST.InterpResult()) } 
  $IsBox(bx, Tclass.DafnyAST.InterpResult())
     ==> $Box($Unbox(bx): DatatypeType) == bx
       && $Is($Unbox(bx): DatatypeType, Tclass.DafnyAST.InterpResult()));

procedure {:verboseName "Compiler.compileStmtCorrect' (call)"} Call$$Compiler.__default.compileStmtCorrect_k(s#0: DatatypeType
       where $Is(s#0, Tclass.DafnyAST.Stmt())
         && $IsAlloc(s#0, Tclass.DafnyAST.Stmt(), $Heap)
         && $IsA#DafnyAST.Stmt(s#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.StackMachine.State())
         && $IsAlloc(st#0, Tclass.StackMachine.State(), $Heap)
         && $IsA#StackMachine.State(st#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#StackMachine.State(StackMachine.__default.interpProg_k($LS($LZ), Compiler.__default.compileStmt($LS($LZ), s#0), st#0))
     && $IsA#StackMachine.State((var ctx'#0, output#0 := DafnyAST.InterpResult.ctx(DafnyAST.__default.interpStmt_k($LS($LZ), s#0, StackMachine.State.regs(st#0))), 
          DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($LS($LZ), s#0, StackMachine.State.regs(st#0))); 
        (var dt_update_tmp#0#0 := st#0; 
          (var dt_update#output#0#0 := Seq#Append(StackMachine.State.output(st#0), output#0); 
            (var dt_update#regs#0#0 := ctx'#0; 
              #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#0), 
                dt_update#regs#0#0, 
                dt_update#output#0#0))))))
     && 
    Compiler.__default.compileStmt#canCall(s#0)
     && StackMachine.__default.interpProg_k#canCall(Compiler.__default.compileStmt($LS($LZ), s#0), st#0)
     && 
    StackMachine.State.State_q(st#0)
     && DafnyAST.__default.interpStmt_k#canCall(s#0, StackMachine.State.regs(st#0))
     && (var dt_update_tmp#0#0 := st#0; 
      StackMachine.State.State_q(st#0)
         && StackMachine.State.State_q(dt_update_tmp#0#0));
  ensures {:id "id476"} StackMachine.State#Equal(StackMachine.__default.interpProg_k($LS($LS($LZ)), Compiler.__default.compileStmt($LS($LS($LZ)), s#0), st#0), 
    (var ctx'#0, output#0 := DafnyAST.InterpResult.ctx(DafnyAST.__default.interpStmt_k($LS($LS($LZ)), s#0, StackMachine.State.regs(st#0))), 
        DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($LS($LS($LZ)), s#0, StackMachine.State.regs(st#0))); 
      (var dt_update_tmp#0#0 := st#0; 
        (var dt_update#output#0#0 := Seq#Append(StackMachine.State.output(st#0), output#0); 
          (var dt_update#regs#0#0 := ctx'#0; 
            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#0), 
              dt_update#regs#0#0, 
              dt_update#output#0#0))))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Compiler.compileStmtCorrect' (correctness)"} Impl$$Compiler.__default.compileStmtCorrect_k(s#0: DatatypeType
       where $Is(s#0, Tclass.DafnyAST.Stmt())
         && $IsAlloc(s#0, Tclass.DafnyAST.Stmt(), $Heap)
         && $IsA#DafnyAST.Stmt(s#0), 
    st#0: DatatypeType
       where $Is(st#0, Tclass.StackMachine.State())
         && $IsAlloc(st#0, Tclass.StackMachine.State(), $Heap)
         && $IsA#StackMachine.State(st#0))
   returns ($_reverifyPost: bool);
  free requires 2 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures $IsA#StackMachine.State(StackMachine.__default.interpProg_k($LS($LZ), Compiler.__default.compileStmt($LS($LZ), s#0), st#0))
     && $IsA#StackMachine.State((var ctx'#0, output#0 := DafnyAST.InterpResult.ctx(DafnyAST.__default.interpStmt_k($LS($LZ), s#0, StackMachine.State.regs(st#0))), 
          DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($LS($LZ), s#0, StackMachine.State.regs(st#0))); 
        (var dt_update_tmp#0#0 := st#0; 
          (var dt_update#output#0#0 := Seq#Append(StackMachine.State.output(st#0), output#0); 
            (var dt_update#regs#0#0 := ctx'#0; 
              #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#0), 
                dt_update#regs#0#0, 
                dt_update#output#0#0))))))
     && 
    Compiler.__default.compileStmt#canCall(s#0)
     && StackMachine.__default.interpProg_k#canCall(Compiler.__default.compileStmt($LS($LZ), s#0), st#0)
     && 
    StackMachine.State.State_q(st#0)
     && DafnyAST.__default.interpStmt_k#canCall(s#0, StackMachine.State.regs(st#0))
     && (var dt_update_tmp#0#0 := st#0; 
      StackMachine.State.State_q(st#0)
         && StackMachine.State.State_q(dt_update_tmp#0#0));
  ensures {:id "id477"} StackMachine.State#Equal(StackMachine.__default.interpProg_k($LS($LS($LZ)), Compiler.__default.compileStmt($LS($LS($LZ)), s#0), st#0), 
    (var ctx'#0, output#0 := DafnyAST.InterpResult.ctx(DafnyAST.__default.interpStmt_k($LS($LS($LZ)), s#0, StackMachine.State.regs(st#0))), 
        DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($LS($LS($LZ)), s#0, StackMachine.State.regs(st#0))); 
      (var dt_update_tmp#0#0 := st#0; 
        (var dt_update#output#0#0 := Seq#Append(StackMachine.State.output(st#0), output#0); 
          (var dt_update#regs#0#0 := ctx'#0; 
            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#0), 
              dt_update#regs#0#0, 
              dt_update#output#0#0))))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Compiler.compileStmtCorrect' (correctness)"} Impl$$Compiler.__default.compileStmtCorrect_k(s#0: DatatypeType, st#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var _mcc#3#0_0: DatatypeType;
  var _mcc#4#0_0: DatatypeType;
  var s2#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var s1#0_0: DatatypeType;
  var let#0_1#0#0: DatatypeType;
  var p1##0_0: DatatypeType;
  var ##s#0_0: DatatypeType;
  var p2##0_0: DatatypeType;
  var ##s#0_1: DatatypeType;
  var st##0_0: DatatypeType;
  var s##0_0: DatatypeType;
  var st##0_1: DatatypeType;
  var s##0_1: DatatypeType;
  var st##0_2: DatatypeType;
  var ##p#0_0: DatatypeType;
  var ##s#0_2: DatatypeType;
  var ##st#0_0: DatatypeType;
  var _mcc#1#1_0: Seq;
  var _mcc#2#1_0: DatatypeType;
  var e#1_0: DatatypeType;
  var let#1_0#0#0: DatatypeType;
  var v#1_0: Seq;
  var let#1_1#0#0: Seq;
  var e##1_0: DatatypeType;
  var st##1_0: DatatypeType;
  var _mcc#0#2_0: DatatypeType;
  var e#2_0: DatatypeType;
  var let#2_0#0#0: DatatypeType;
  var e##2_0: DatatypeType;
  var st##2_0: DatatypeType;

    // AddMethodImpl: compileStmtCorrect', Impl$$Compiler.__default.compileStmtCorrect_k
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    $_reverifyPost := false;
    assume true;
    havoc _mcc#3#0_0, _mcc#4#0_0;
    havoc _mcc#1#1_0, _mcc#2#1_0;
    havoc _mcc#0#2_0;
    if (s#0 == #DafnyAST.Stmt.Skip())
    {
    }
    else if (s#0 == #DafnyAST.Stmt.Print(_mcc#0#2_0))
    {
        assume $Is(_mcc#0#2_0, Tclass.DafnyAST.Expr());
        havoc e#2_0;
        assume $Is(e#2_0, Tclass.DafnyAST.Expr())
           && $IsAlloc(e#2_0, Tclass.DafnyAST.Expr(), $Heap);
        assume {:id "id492"} let#2_0#0#0 == _mcc#0#2_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#2_0#0#0, Tclass.DafnyAST.Expr());
        assume {:id "id493"} e#2_0 == let#2_0#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(302,28)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##2_0 := e#2_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##2_0 := st#0;
        call {:id "id494"} Call$$Compiler.__default.compileExprCorrect_k(e##2_0, st##2_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (s#0 == #DafnyAST.Stmt.Assign(_mcc#1#1_0, _mcc#2#1_0))
    {
        assume $Is(_mcc#1#1_0, TSeq(TChar));
        assume $Is(_mcc#2#1_0, Tclass.DafnyAST.Expr());
        havoc e#1_0;
        assume $Is(e#1_0, Tclass.DafnyAST.Expr())
           && $IsAlloc(e#1_0, Tclass.DafnyAST.Expr(), $Heap);
        assume {:id "id487"} let#1_0#0#0 == _mcc#2#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_0#0#0, Tclass.DafnyAST.Expr());
        assume {:id "id488"} e#1_0 == let#1_0#0#0;
        havoc v#1_0;
        assume $Is(v#1_0, TSeq(TChar)) && $IsAlloc(v#1_0, TSeq(TChar), $Heap);
        assume {:id "id489"} let#1_1#0#0 == _mcc#1#1_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#1_1#0#0, TSeq(TChar));
        assume {:id "id490"} v#1_0 == let#1_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(300,28)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        e##1_0 := e#1_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##1_0 := st#0;
        call {:id "id491"} Call$$Compiler.__default.compileExprCorrect_k(e##1_0, st##1_0);
        // TrCallStmt: After ProcessCallStmt
    }
    else if (s#0 == #DafnyAST.Stmt.Seq(_mcc#3#0_0, _mcc#4#0_0))
    {
        assume $Is(_mcc#3#0_0, Tclass.DafnyAST.Stmt());
        assume $Is(_mcc#4#0_0, Tclass.DafnyAST.Stmt());
        havoc s2#0_0;
        assume $Is(s2#0_0, Tclass.DafnyAST.Stmt())
           && $IsAlloc(s2#0_0, Tclass.DafnyAST.Stmt(), $Heap);
        assume {:id "id478"} let#0_0#0#0 == _mcc#4#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass.DafnyAST.Stmt());
        assume {:id "id479"} s2#0_0 == let#0_0#0#0;
        havoc s1#0_0;
        assume $Is(s1#0_0, Tclass.DafnyAST.Stmt())
           && $IsAlloc(s1#0_0, Tclass.DafnyAST.Stmt(), $Heap);
        assume {:id "id480"} let#0_1#0#0 == _mcc#3#0_0;
        assume true;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, Tclass.DafnyAST.Stmt());
        assume {:id "id481"} s1#0_0 == let#0_1#0#0;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(304,27)
        // TrCallStmt: Before ProcessCallStmt
        ##s#0_0 := s2#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_0, Tclass.DafnyAST.Stmt(), $Heap);
        assume Compiler.__default.compileStmt#canCall(s2#0_0);
        assume Compiler.__default.compileStmt#canCall(s2#0_0);
        // ProcessCallStmt: CheckSubrange
        p1##0_0 := Compiler.__default.compileStmt($LS($LZ), s2#0_0);
        ##s#0_1 := s1#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_1, Tclass.DafnyAST.Stmt(), $Heap);
        assume Compiler.__default.compileStmt#canCall(s1#0_0);
        assume Compiler.__default.compileStmt#canCall(s1#0_0);
        // ProcessCallStmt: CheckSubrange
        p2##0_0 := Compiler.__default.compileStmt($LS($LZ), s1#0_0);
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_0 := st#0;
        call {:id "id482"} Call$$Compiler.__default.interpProg_k__Concat(p1##0_0, p2##0_0, st##0_0);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(305,28)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s1#0_0;
        assume true;
        // ProcessCallStmt: CheckSubrange
        st##0_1 := st#0;
        assert {:id "id483"} DtRank(s##0_0) < DtRank(s#0)
           || (DtRank(s##0_0) == DtRank(s#0) && DtRank(st##0_1) < DtRank(st#0));
        call {:id "id484"} Call$$Compiler.__default.compileStmtCorrect_k(s##0_0, st##0_1);
        // TrCallStmt: After ProcessCallStmt
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(306,28)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_1 := s2#0_0;
        ##s#0_2 := s1#0_0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##s#0_2, Tclass.DafnyAST.Stmt(), $Heap);
        assume Compiler.__default.compileStmt#canCall(s1#0_0);
        ##p#0_0 := Compiler.__default.compileStmt($LS($LZ), s1#0_0);
        // assume allocatedness for argument to function
        assume $IsAlloc(##p#0_0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()), $Heap);
        ##st#0_0 := st#0;
        // assume allocatedness for argument to function
        assume $IsAlloc(##st#0_0, Tclass.StackMachine.State(), $Heap);
        assume StackMachine.__default.interpProg_k#canCall(Compiler.__default.compileStmt($LS($LZ), s1#0_0), st#0);
        assume StackMachine.State.State_q(StackMachine.__default.interpProg_k($LS($LZ), Compiler.__default.compileStmt($LS($LZ), s1#0_0), st#0));
        assume Compiler.__default.compileStmt#canCall(s1#0_0)
           && StackMachine.__default.interpProg_k#canCall(Compiler.__default.compileStmt($LS($LZ), s1#0_0), st#0);
        // ProcessCallStmt: CheckSubrange
        st##0_2 := StackMachine.__default.interpProg_k($LS($LZ), Compiler.__default.compileStmt($LS($LZ), s1#0_0), st#0);
        assert {:id "id485"} DtRank(s##0_1) < DtRank(s#0)
           || (DtRank(s##0_1) == DtRank(s#0) && DtRank(st##0_2) < DtRank(st#0));
        call {:id "id486"} Call$$Compiler.__default.compileStmtCorrect_k(s##0_1, st##0_2);
        // TrCallStmt: After ProcessCallStmt
    }
    else
    {
        assume false;
    }
}



procedure {:verboseName "Compiler.compileStmtCorrect (well-formedness)"} CheckWellFormed$$Compiler.__default.compileStmtCorrect(s#0: DatatypeType
       where $Is(s#0, Tclass.DafnyAST.Stmt())
         && $IsAlloc(s#0, Tclass.DafnyAST.Stmt(), $Heap)
         && $IsA#DafnyAST.Stmt(s#0));
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;



function StackMachine.__default.EmptyState() : DatatypeType
uses {
axiom StackMachine.__default.EmptyState(): DatatypeType
   == Lit(#StackMachine.State.State(Lit(#LinkedList.List.Nil()), Lit(Map#Empty(): Map), Lit(Seq#Empty(): Seq)));
// _default.EmptyState: Type axiom
axiom $Is(StackMachine.__default.EmptyState(), Tclass.StackMachine.State());
}

procedure {:verboseName "Compiler.compileStmtCorrect (call)"} Call$$Compiler.__default.compileStmtCorrect(s#0: DatatypeType
       where $Is(s#0, Tclass.DafnyAST.Stmt())
         && $IsAlloc(s#0, Tclass.DafnyAST.Stmt(), $Heap)
         && $IsA#DafnyAST.Stmt(s#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall input#1: Map :: 
    { DafnyAST.__default.interpStmt_k($LS($LZ), s#0, input#1) } 
      { StackMachine.__default.interpProg_k($LS($LZ), 
        Compiler.__default.compileStmt($LS($LZ), s#0), 
        (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
          (var dt_update#regs#0#1 := input#1; 
            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#1), 
              dt_update#regs#0#1, 
              StackMachine.State.output(dt_update_tmp#0#1))))) } 
      { #StackMachine.State.State(StackMachine.State.stack(StackMachine.__default.EmptyState()), 
        input#1, 
        StackMachine.State.output(StackMachine.__default.EmptyState())) } 
    $Is(input#1, TMap(TSeq(TChar), TInt))
       ==> Compiler.__default.compileStmt#canCall(s#0)
         && (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
          StackMachine.State.State_q(dt_update_tmp#0#1)
             && StackMachine.State.State_q(dt_update_tmp#0#1))
         && StackMachine.__default.interpProg_k#canCall(Compiler.__default.compileStmt($LS($LZ), s#0), 
          (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
            (var dt_update#regs#0#1 := input#1; 
              #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#1), 
                dt_update#regs#0#1, 
                StackMachine.State.output(dt_update_tmp#0#1)))))
         && StackMachine.State.State_q(StackMachine.__default.interpProg_k($LS($LZ), 
            Compiler.__default.compileStmt($LS($LZ), s#0), 
            (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
              (var dt_update#regs#0#1 := input#1; 
                #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#1), 
                  dt_update#regs#0#1, 
                  StackMachine.State.output(dt_update_tmp#0#1))))))
         && 
        DafnyAST.__default.interpStmt_k#canCall(s#0, input#1)
         && DafnyAST.InterpResult.InterpResult_q(DafnyAST.__default.interpStmt_k($LS($LZ), s#0, input#1)));
  free ensures {:id "id501"} (forall input#1: Map :: 
    { DafnyAST.__default.interpStmt_k($LS($LZ), s#0, input#1) } 
      { StackMachine.__default.interpProg_k($LS($LZ), 
        Compiler.__default.compileStmt($LS($LZ), s#0), 
        (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
          (var dt_update#regs#0#1 := input#1; 
            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#1), 
              dt_update#regs#0#1, 
              StackMachine.State.output(dt_update_tmp#0#1))))) } 
      { #StackMachine.State.State(StackMachine.State.stack(StackMachine.__default.EmptyState()), 
        input#1, 
        StackMachine.State.output(StackMachine.__default.EmptyState())) } 
    $Is(input#1, TMap(TSeq(TChar), TInt))
       ==> Seq#Equal(StackMachine.State.output(StackMachine.__default.interpProg_k($LS($LZ), 
            Compiler.__default.compileStmt($LS($LZ), s#0), 
            (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
              (var dt_update#regs#0#1 := input#1; 
                #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#1), 
                  dt_update#regs#0#1, 
                  StackMachine.State.output(dt_update_tmp#0#1)))))), 
        DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($LS($LZ), s#0, input#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Compiler.compileStmtCorrect (correctness)"} Impl$$Compiler.__default.compileStmtCorrect(s#0: DatatypeType
       where $Is(s#0, Tclass.DafnyAST.Stmt())
         && $IsAlloc(s#0, Tclass.DafnyAST.Stmt(), $Heap)
         && $IsA#DafnyAST.Stmt(s#0))
   returns ($_reverifyPost: bool);
  free requires 3 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall input#1: Map :: 
    { DafnyAST.__default.interpStmt_k($LS($LZ), s#0, input#1) } 
      { StackMachine.__default.interpProg_k($LS($LZ), 
        Compiler.__default.compileStmt($LS($LZ), s#0), 
        (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
          (var dt_update#regs#0#1 := input#1; 
            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#1), 
              dt_update#regs#0#1, 
              StackMachine.State.output(dt_update_tmp#0#1))))) } 
      { #StackMachine.State.State(StackMachine.State.stack(StackMachine.__default.EmptyState()), 
        input#1, 
        StackMachine.State.output(StackMachine.__default.EmptyState())) } 
    $Is(input#1, TMap(TSeq(TChar), TInt))
       ==> Compiler.__default.compileStmt#canCall(s#0)
         && (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
          StackMachine.State.State_q(dt_update_tmp#0#1)
             && StackMachine.State.State_q(dt_update_tmp#0#1))
         && StackMachine.__default.interpProg_k#canCall(Compiler.__default.compileStmt($LS($LZ), s#0), 
          (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
            (var dt_update#regs#0#1 := input#1; 
              #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#1), 
                dt_update#regs#0#1, 
                StackMachine.State.output(dt_update_tmp#0#1)))))
         && StackMachine.State.State_q(StackMachine.__default.interpProg_k($LS($LZ), 
            Compiler.__default.compileStmt($LS($LZ), s#0), 
            (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
              (var dt_update#regs#0#1 := input#1; 
                #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#1), 
                  dt_update#regs#0#1, 
                  StackMachine.State.output(dt_update_tmp#0#1))))))
         && 
        DafnyAST.__default.interpStmt_k#canCall(s#0, input#1)
         && DafnyAST.InterpResult.InterpResult_q(DafnyAST.__default.interpStmt_k($LS($LZ), s#0, input#1)));
  ensures {:id "id502"} (forall input#1: Map :: 
    { DafnyAST.__default.interpStmt_k($LS($LS($LZ)), s#0, input#1) } 
      { StackMachine.__default.interpProg_k($LS($LS($LZ)), 
        Compiler.__default.compileStmt($LS($LS($LZ)), s#0), 
        (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
          (var dt_update#regs#0#1 := input#1; 
            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#1), 
              dt_update#regs#0#1, 
              StackMachine.State.output(dt_update_tmp#0#1))))) } 
      { #StackMachine.State.State(StackMachine.State.stack(StackMachine.__default.EmptyState()), 
        input#1, 
        StackMachine.State.output(StackMachine.__default.EmptyState())) } 
    $Is(input#1, TMap(TSeq(TChar), TInt))
       ==> Seq#Equal(StackMachine.State.output(StackMachine.__default.interpProg_k($LS($LS($LZ)), 
            Compiler.__default.compileStmt($LS($LS($LZ)), s#0), 
            (var dt_update_tmp#0#1 := StackMachine.__default.EmptyState(); 
              (var dt_update#regs#0#1 := input#1; 
                #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#1), 
                  dt_update#regs#0#1, 
                  StackMachine.State.output(dt_update_tmp#0#1)))))), 
        DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($LS($LS($LZ)), s#0, input#1))));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Compiler.compileStmtCorrect (correctness)"} Impl$$Compiler.__default.compileStmtCorrect(s#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var input#0_0: Map;
  var s##0_0: DatatypeType;
  var st##0_0: DatatypeType;
  var dt_update_tmp#1#Z#0_0: DatatypeType;
  var let#0_0#0#0: DatatypeType;
  var dt_update#regs#1#Z#0_0: Map;
  var let#0_1#0#0: Map;
  var $initHeapForallStmt#0_0: Heap;

    // AddMethodImpl: compileStmtCorrect, Impl$$Compiler.__default.compileStmtCorrect
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#DafnyAST.Stmt(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType :: 
      { Compiler.__default.compileStmt($LS($LZ), $ih#s0#0) } 
      $Is($ih#s0#0, Tclass.DafnyAST.Stmt())
           && Lit(true)
           && DtRank($ih#s0#0) < DtRank(s#0)
         ==> (forall input#2: Map :: 
          { DafnyAST.__default.interpStmt_k($LS($LZ), $ih#s0#0, input#2) } 
            { StackMachine.__default.interpProg_k($LS($LZ), 
              Compiler.__default.compileStmt($LS($LZ), $ih#s0#0), 
              (var dt_update_tmp#0#2 := StackMachine.__default.EmptyState(); 
                (var dt_update#regs#0#2 := input#2; 
                  #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#2), 
                    dt_update#regs#0#2, 
                    StackMachine.State.output(dt_update_tmp#0#2))))) } 
            { #StackMachine.State.State(StackMachine.State.stack(StackMachine.__default.EmptyState()), 
              input#2, 
              StackMachine.State.output(StackMachine.__default.EmptyState())) } 
          $Is(input#2, TMap(TSeq(TChar), TInt))
             ==> Seq#Equal(StackMachine.State.output(StackMachine.__default.interpProg_k($LS($LZ), 
                  Compiler.__default.compileStmt($LS($LZ), $ih#s0#0), 
                  (var dt_update_tmp#0#3 := StackMachine.__default.EmptyState(); 
                    (var dt_update#regs#0#3 := input#2; 
                      #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#3), 
                        dt_update#regs#0#3, 
                        StackMachine.State.output(dt_update_tmp#0#3)))))), 
              DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($LS($LZ), $ih#s0#0, input#2)))));
    $_reverifyPost := false;
    // ----- forall statement (call) ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(331,5)
    if (*)
    {
        // Assume Fuel Constant
        havoc input#0_0;
        assume $Is(input#0_0, TMap(TSeq(TChar), TInt));
        assume true;
        assume true;
        // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(332,26)
        // TrCallStmt: Before ProcessCallStmt
        assume true;
        // ProcessCallStmt: CheckSubrange
        s##0_0 := s#0;
        havoc dt_update_tmp#1#Z#0_0;
        assume {:id "id503"} let#0_0#0#0 == StackMachine.__default.EmptyState();
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_0#0#0, Tclass.StackMachine.State());
        assume {:id "id504"} dt_update_tmp#1#Z#0_0 == let#0_0#0#0;
        havoc dt_update#regs#1#Z#0_0;
        assume {:id "id505"} let#0_1#0#0 == input#0_0;
        assume true;
        // CheckWellformedWithResult: any expression
        assume $Is(let#0_1#0#0, TMap(TSeq(TChar), TInt));
        assume {:id "id506"} dt_update#regs#1#Z#0_0 == let#0_1#0#0;
        assume StackMachine.State.State_q(dt_update_tmp#1#Z#0_0);
        assume StackMachine.State.State_q(dt_update_tmp#1#Z#0_0);
        assume (var dt_update_tmp#1#0_0 := StackMachine.__default.EmptyState(); 
          StackMachine.State.State_q(dt_update_tmp#1#0_0)
             && StackMachine.State.State_q(dt_update_tmp#1#0_0));
        // ProcessCallStmt: CheckSubrange
        st##0_0 := (var dt_update_tmp#1#0_0 := StackMachine.__default.EmptyState(); 
          (var dt_update#regs#1#0_0 := input#0_0; 
            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#1#0_0), 
              dt_update#regs#1#0_0, 
              StackMachine.State.output(dt_update_tmp#1#0_0))));
        call {:id "id507"} Call$$Compiler.__default.compileStmtCorrect_k(s##0_0, st##0_0);
        // TrCallStmt: After ProcessCallStmt
        assume false;
    }
    else
    {
        $initHeapForallStmt#0_0 := $Heap;
        havoc $Heap;
        assume $initHeapForallStmt#0_0 == $Heap;
        assume (forall input#0_1: Map :: 
          { StackMachine.State.output((var dt_update_tmp#1#0_10 := StackMachine.__default.EmptyState(); 
                (var dt_update#regs#1#0_10 := input#0_1; 
                  #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#1#0_10), 
                    dt_update#regs#1#0_10, 
                    StackMachine.State.output(dt_update_tmp#1#0_10))))) } 
            { StackMachine.State.stack((var dt_update_tmp#1#0_9 := StackMachine.__default.EmptyState(); 
                (var dt_update#regs#1#0_9 := input#0_1; 
                  #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#1#0_9), 
                    dt_update#regs#1#0_9, 
                    StackMachine.State.output(dt_update_tmp#1#0_9))))) } 
            { StackMachine.State.regs((var dt_update_tmp#1#0_8 := StackMachine.__default.EmptyState(); 
                (var dt_update#regs#1#0_8 := input#0_1; 
                  #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#1#0_8), 
                    dt_update#regs#1#0_8, 
                    StackMachine.State.output(dt_update_tmp#1#0_8))))) } 
            { StackMachine.__default.interpProg_k($LS($LZ), 
              Compiler.__default.compileStmt($LS($LZ), s#0), 
              (var dt_update_tmp#1#0_7 := StackMachine.__default.EmptyState(); 
                (var dt_update#regs#1#0_7 := input#0_1; 
                  #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#1#0_7), 
                    dt_update#regs#1#0_7, 
                    StackMachine.State.output(dt_update_tmp#1#0_7))))) } 
            { #StackMachine.State.State(StackMachine.State.stack(StackMachine.__default.EmptyState()), 
              input#0_1, 
              StackMachine.State.output(StackMachine.__default.EmptyState())) } 
          $Is(input#0_1, TMap(TSeq(TChar), TInt)) && Lit(true)
             ==> StackMachine.State#Equal(StackMachine.__default.interpProg_k($LS($LZ), 
                Compiler.__default.compileStmt($LS($LZ), s#0), 
                (var dt_update_tmp#1#0_11 := StackMachine.__default.EmptyState(); 
                  (var dt_update#regs#1#0_11 := input#0_1; 
                    #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#1#0_11), 
                      dt_update#regs#1#0_11, 
                      StackMachine.State.output(dt_update_tmp#1#0_11))))), 
              (var ctx'#0_0, output#0_0 := DafnyAST.InterpResult.ctx(DafnyAST.__default.interpStmt_k($LS($LZ), 
                      s#0, 
                      StackMachine.State.regs((var dt_update_tmp#1#0_12 := StackMachine.__default.EmptyState(); 
                          (var dt_update#regs#1#0_12 := input#0_1; 
                            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#1#0_12), 
                              dt_update#regs#1#0_12, 
                              StackMachine.State.output(dt_update_tmp#1#0_12))))))), 
                  DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($LS($LZ), 
                      s#0, 
                      StackMachine.State.regs((var dt_update_tmp#1#0_12 := StackMachine.__default.EmptyState(); 
                          (var dt_update#regs#1#0_12 := input#0_1; 
                            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#1#0_12), 
                              dt_update#regs#1#0_12, 
                              StackMachine.State.output(dt_update_tmp#1#0_12))))))); 
                (var dt_update_tmp#0#0_0 := (var dt_update_tmp#1#0_13 := StackMachine.__default.EmptyState(); 
                      (var dt_update#regs#1#0_13 := input#0_1; 
                        #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#1#0_13), 
                          dt_update#regs#1#0_13, 
                          StackMachine.State.output(dt_update_tmp#1#0_13)))); 
                  (var dt_update#output#0#0_0 := Seq#Append(StackMachine.State.output((var dt_update_tmp#1#0_14 := StackMachine.__default.EmptyState(); 
                            (var dt_update#regs#1#0_14 := input#0_1; 
                              #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#1#0_14), 
                                dt_update#regs#1#0_14, 
                                StackMachine.State.output(dt_update_tmp#1#0_14))))), 
                        output#0_0); 
                    (var dt_update#regs#0#0_0 := ctx'#0_0; 
                      #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#0_0), 
                        dt_update#regs#0#0_0, 
                        dt_update#output#0#0_0)))))));
    }
}



procedure {:verboseName "Compiler.compileCorrect (well-formedness)"} CheckWellFormed$$Compiler.__default.compileCorrect(s#0: DatatypeType
       where $Is(s#0, Tclass.DafnyAST.Stmt())
         && $IsAlloc(s#0, Tclass.DafnyAST.Stmt(), $Heap)
         && $IsA#DafnyAST.Stmt(s#0));
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;



procedure {:verboseName "Compiler.compileCorrect (call)"} Call$$Compiler.__default.compileCorrect(s#0: DatatypeType
       where $Is(s#0, Tclass.DafnyAST.Stmt())
         && $IsAlloc(s#0, Tclass.DafnyAST.Stmt(), $Heap)
         && $IsA#DafnyAST.Stmt(s#0));
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall input#1: Map :: 
    { DafnyAST.__default.interpStmt(s#0, input#1) } 
      { StackMachine.__default.interpProg(Compiler.__default.compileStmt($LS($LZ), s#0), input#1) } 
    $Is(input#1, TMap(TSeq(TChar), TInt))
       ==> Compiler.__default.compileStmt#canCall(s#0)
         && StackMachine.__default.interpProg#canCall(Compiler.__default.compileStmt($LS($LZ), s#0), input#1)
         && DafnyAST.__default.interpStmt#canCall(s#0, input#1));
  free ensures {:id "id510"} (forall input#1: Map :: 
    { DafnyAST.__default.interpStmt(s#0, input#1) } 
      { StackMachine.__default.interpProg(Compiler.__default.compileStmt($LS($LZ), s#0), input#1) } 
    $Is(input#1, TMap(TSeq(TChar), TInt))
       ==> Seq#Equal(StackMachine.__default.interpProg(Compiler.__default.compileStmt($LS($LZ), s#0), input#1), 
        DafnyAST.__default.interpStmt(s#0, input#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



procedure {:verboseName "Compiler.compileCorrect (correctness)"} Impl$$Compiler.__default.compileCorrect(s#0: DatatypeType
       where $Is(s#0, Tclass.DafnyAST.Stmt())
         && $IsAlloc(s#0, Tclass.DafnyAST.Stmt(), $Heap)
         && $IsA#DafnyAST.Stmt(s#0))
   returns ($_reverifyPost: bool);
  free requires 4 == $FunctionContextHeight;
  modifies $Heap;
  // user-defined postconditions
  free ensures (forall input#1: Map :: 
    { DafnyAST.__default.interpStmt(s#0, input#1) } 
      { StackMachine.__default.interpProg(Compiler.__default.compileStmt($LS($LZ), s#0), input#1) } 
    $Is(input#1, TMap(TSeq(TChar), TInt))
       ==> Compiler.__default.compileStmt#canCall(s#0)
         && StackMachine.__default.interpProg#canCall(Compiler.__default.compileStmt($LS($LZ), s#0), input#1)
         && DafnyAST.__default.interpStmt#canCall(s#0, input#1));
  ensures {:id "id511"} (forall input#1: Map :: 
    { DafnyAST.__default.interpStmt(s#0, input#1) } 
      { StackMachine.__default.interpProg(Compiler.__default.compileStmt($LS($LS($LZ)), s#0), input#1) } 
    $Is(input#1, TMap(TSeq(TChar), TInt))
       ==> Seq#Equal(StackMachine.__default.interpProg(Compiler.__default.compileStmt($LS($LS($LZ)), s#0), input#1), 
        DafnyAST.__default.interpStmt(s#0, input#1)));
  // frame condition
  free ensures old($Heap) == $Heap;



implementation {:smt_option "smt.arith.solver", "2"} {:verboseName "Compiler.compileCorrect (correctness)"} Impl$$Compiler.__default.compileCorrect(s#0: DatatypeType) returns ($_reverifyPost: bool)
{
  var $_ModifiesFrame: [ref,Field]bool;
  var $initHeapForallStmt#0: Heap;
  var s##0: DatatypeType;

    // AddMethodImpl: compileCorrect, Impl$$Compiler.__default.compileCorrect
    $_ModifiesFrame := (lambda $o: ref, $f: Field :: 
      $o != null && $Unbox(read($Heap, $o, alloc)): bool ==> false);
    assume $IsA#DafnyAST.Stmt(s#0);
    $initHeapForallStmt#0 := $Heap;
    havoc $Heap;
    assume $initHeapForallStmt#0 == $Heap;
    assume (forall $ih#s0#0: DatatypeType :: 
      { Compiler.__default.compileStmt($LS($LZ), $ih#s0#0) } 
      $Is($ih#s0#0, Tclass.DafnyAST.Stmt())
           && Lit(true)
           && DtRank($ih#s0#0) < DtRank(s#0)
         ==> (forall input#2: Map :: 
          { DafnyAST.__default.interpStmt($ih#s0#0, input#2) } 
            { StackMachine.__default.interpProg(Compiler.__default.compileStmt($LS($LZ), $ih#s0#0), input#2) } 
          $Is(input#2, TMap(TSeq(TChar), TInt))
             ==> Seq#Equal(StackMachine.__default.interpProg(Compiler.__default.compileStmt($LS($LZ), $ih#s0#0), input#2), 
              DafnyAST.__default.interpStmt($ih#s0#0, input#2))));
    $_reverifyPost := false;
    // ----- call statement ----- /home/runner/work/smt-logs/smt-logs/dafny/dafny/Source/IntegrationTests/TestFiles/LitTests/LitTest/examples/Simple_compiler/Compiler.dfy(340,23)
    // TrCallStmt: Before ProcessCallStmt
    assume true;
    // ProcessCallStmt: CheckSubrange
    s##0 := s#0;
    call {:id "id512"} Call$$Compiler.__default.compileStmtCorrect(s##0);
    // TrCallStmt: After ProcessCallStmt
}



const unique class.DafnyAST.__default: ClassName;

// function declaration for DafnyAST._default.interpExpr
function DafnyAST.__default.interpExpr($ly: LayerType, e#0: DatatypeType, ctx#0: Map) : int;

function DafnyAST.__default.interpExpr#canCall(e#0: DatatypeType, ctx#0: Map) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpExpr($LS($ly), e#0, ctx#0) } 
  DafnyAST.__default.interpExpr($LS($ly), e#0, ctx#0)
     == DafnyAST.__default.interpExpr($ly, e#0, ctx#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpExpr(AsFuelBottom($ly), e#0, ctx#0) } 
  DafnyAST.__default.interpExpr($ly, e#0, ctx#0)
     == DafnyAST.__default.interpExpr($LZ, e#0, ctx#0));

function DafnyAST.__default.interpExpr#requires(LayerType, DatatypeType, Map) : bool;

// #requires axiom for DafnyAST.__default.interpExpr
axiom (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpExpr#requires($ly, e#0, ctx#0) } 
  $Is(e#0, Tclass.DafnyAST.Expr()) && $Is(ctx#0, TMap(TSeq(TChar), TInt))
     ==> DafnyAST.__default.interpExpr#requires($ly, e#0, ctx#0) == true);

// definition axiom for DafnyAST.__default.interpExpr (revealed)
axiom {:id "id513"} (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpExpr($LS($ly), e#0, ctx#0) } 
  DafnyAST.__default.interpExpr#canCall(e#0, ctx#0)
       || ($Is(e#0, Tclass.DafnyAST.Expr()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (!DafnyAST.Expr.Const_q(e#0)
         ==> 
        !DafnyAST.Expr.Var_q(e#0)
         ==> (DafnyAST.BinOp.Add_q(DafnyAST.Expr.op(e#0))
             ==> (var e2#18 := DafnyAST.Expr.e2(e#0); 
              (var e1#18 := DafnyAST.Expr.e1(e#0); 
                DafnyAST.__default.interpExpr#canCall(e1#18, ctx#0)
                   && DafnyAST.__default.interpExpr#canCall(e2#18, ctx#0))))
           && (!DafnyAST.BinOp.Add_q(DafnyAST.Expr.op(e#0))
             ==> (var e2#19 := DafnyAST.Expr.e2(e#0); 
              (var e1#19 := DafnyAST.Expr.e1(e#0); 
                DafnyAST.__default.interpExpr#canCall(e1#19, ctx#0)
                   && DafnyAST.__default.interpExpr#canCall(e2#19, ctx#0)))))
       && DafnyAST.__default.interpExpr($LS($ly), e#0, ctx#0)
         == (if DafnyAST.Expr.Const_q(e#0)
           then (var n#8 := DafnyAST.Expr.n(e#0); n#8)
           else (if DafnyAST.Expr.Var_q(e#0)
             then (var v#8 := DafnyAST.Expr.v(e#0); 
              (if Set#IsMember(Map#Domain(ctx#0), $Box(v#8))
                 then $Unbox(Map#Elements(ctx#0)[$Box(v#8)]): int
                 else 0))
             else (if DafnyAST.BinOp.Add_q(DafnyAST.Expr.op(e#0))
               then (var e2#16 := DafnyAST.Expr.e2(e#0); 
                (var e1#16 := DafnyAST.Expr.e1(e#0); 
                  DafnyAST.__default.interpExpr($ly, e1#16, ctx#0)
                     + DafnyAST.__default.interpExpr($ly, e2#16, ctx#0)))
               else (var e2#17 := DafnyAST.Expr.e2(e#0); 
                (var e1#17 := DafnyAST.Expr.e1(e#0); 
                  DafnyAST.__default.interpExpr($ly, e1#17, ctx#0)
                     - DafnyAST.__default.interpExpr($ly, e2#17, ctx#0)))))));

// definition axiom for DafnyAST.__default.interpExpr for all literals (revealed)
axiom {:id "id514"} (forall $ly: LayerType, e#0: DatatypeType, ctx#0: Map :: 
  {:weight 3} { DafnyAST.__default.interpExpr($LS($ly), Lit(e#0), Lit(ctx#0)) } 
  DafnyAST.__default.interpExpr#canCall(Lit(e#0), Lit(ctx#0))
       || ($Is(e#0, Tclass.DafnyAST.Expr()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (!Lit(DafnyAST.Expr.Const_q(Lit(e#0)))
         ==> 
        !Lit(DafnyAST.Expr.Var_q(Lit(e#0)))
         ==> (Lit(DafnyAST.BinOp.Add_q(Lit(DafnyAST.Expr.op(Lit(e#0)))))
             ==> (var e2#22 := Lit(DafnyAST.Expr.e2(Lit(e#0))); 
              (var e1#22 := Lit(DafnyAST.Expr.e1(Lit(e#0))); 
                DafnyAST.__default.interpExpr#canCall(e1#22, Lit(ctx#0))
                   && DafnyAST.__default.interpExpr#canCall(e2#22, Lit(ctx#0)))))
           && (!Lit(DafnyAST.BinOp.Add_q(Lit(DafnyAST.Expr.op(Lit(e#0)))))
             ==> (var e2#23 := Lit(DafnyAST.Expr.e2(Lit(e#0))); 
              (var e1#23 := Lit(DafnyAST.Expr.e1(Lit(e#0))); 
                DafnyAST.__default.interpExpr#canCall(e1#23, Lit(ctx#0))
                   && DafnyAST.__default.interpExpr#canCall(e2#23, Lit(ctx#0))))))
       && DafnyAST.__default.interpExpr($LS($ly), Lit(e#0), Lit(ctx#0))
         == (if DafnyAST.Expr.Const_q(Lit(e#0))
           then (var n#10 := LitInt(DafnyAST.Expr.n(Lit(e#0))); n#10)
           else (if DafnyAST.Expr.Var_q(Lit(e#0))
             then (var v#10 := Lit(DafnyAST.Expr.v(Lit(e#0))); 
              (if Set#IsMember(Lit(Map#Domain(Lit(ctx#0))), $Box(v#10))
                 then $Unbox(Map#Elements(Lit(ctx#0))[$Box(v#10)]): int
                 else 0))
             else (if DafnyAST.BinOp.Add_q(Lit(DafnyAST.Expr.op(Lit(e#0))))
               then (var e2#20 := Lit(DafnyAST.Expr.e2(Lit(e#0))); 
                (var e1#20 := Lit(DafnyAST.Expr.e1(Lit(e#0))); 
                  LitInt(DafnyAST.__default.interpExpr($LS($ly), e1#20, Lit(ctx#0))
                       + DafnyAST.__default.interpExpr($LS($ly), e2#20, Lit(ctx#0)))))
               else (var e2#21 := Lit(DafnyAST.Expr.e2(Lit(e#0))); 
                (var e1#21 := Lit(DafnyAST.Expr.e1(Lit(e#0))); 
                  LitInt(DafnyAST.__default.interpExpr($LS($ly), e1#21, Lit(ctx#0))
                       - DafnyAST.__default.interpExpr($LS($ly), e2#21, Lit(ctx#0)))))))));

// function declaration for DafnyAST._default.interpStmt'
function DafnyAST.__default.interpStmt_k($ly: LayerType, s#0: DatatypeType, ctx#0: Map) : DatatypeType;

function DafnyAST.__default.interpStmt_k#canCall(s#0: DatatypeType, ctx#0: Map) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpStmt_k($LS($ly), s#0, ctx#0) } 
  DafnyAST.__default.interpStmt_k($LS($ly), s#0, ctx#0)
     == DafnyAST.__default.interpStmt_k($ly, s#0, ctx#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, s#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpStmt_k(AsFuelBottom($ly), s#0, ctx#0) } 
  DafnyAST.__default.interpStmt_k($ly, s#0, ctx#0)
     == DafnyAST.__default.interpStmt_k($LZ, s#0, ctx#0));

// consequence axiom for DafnyAST.__default.interpStmt_k
axiom (forall $ly: LayerType, s#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpStmt_k($ly, s#0, ctx#0) } 
  DafnyAST.__default.interpStmt_k#canCall(s#0, ctx#0)
       || ($Is(s#0, Tclass.DafnyAST.Stmt()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> $Is(DafnyAST.__default.interpStmt_k($ly, s#0, ctx#0), Tclass.DafnyAST.InterpResult()));

function DafnyAST.__default.interpStmt_k#requires(LayerType, DatatypeType, Map) : bool;

// #requires axiom for DafnyAST.__default.interpStmt_k
axiom (forall $ly: LayerType, s#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpStmt_k#requires($ly, s#0, ctx#0) } 
  $Is(s#0, Tclass.DafnyAST.Stmt()) && $Is(ctx#0, TMap(TSeq(TChar), TInt))
     ==> DafnyAST.__default.interpStmt_k#requires($ly, s#0, ctx#0) == true);

// definition axiom for DafnyAST.__default.interpStmt_k (revealed)
axiom {:id "id515"} (forall $ly: LayerType, s#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpStmt_k($LS($ly), s#0, ctx#0) } 
  DafnyAST.__default.interpStmt_k#canCall(s#0, ctx#0)
       || ($Is(s#0, Tclass.DafnyAST.Stmt()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (!DafnyAST.Stmt.Skip_q(s#0)
         ==> (DafnyAST.Stmt.Print_q(s#0)
             ==> (var e#18 := DafnyAST.Stmt.e(s#0); 
              DafnyAST.__default.interpExpr#canCall(e#18, ctx#0)))
           && (!DafnyAST.Stmt.Print_q(s#0)
             ==> (DafnyAST.Stmt.Assign_q(s#0)
                 ==> (var e#19 := DafnyAST.Stmt.e(s#0); 
                  DafnyAST.__default.interpExpr#canCall(e#19, ctx#0)))
               && (!DafnyAST.Stmt.Assign_q(s#0)
                 ==> (var s2#9 := DafnyAST.Stmt.s2(s#0); 
                  (var s1#9 := DafnyAST.Stmt.s1(s#0); 
                    DafnyAST.__default.interpStmt_k#canCall(s1#9, ctx#0)
                       && (var ctx1#9 := DafnyAST.InterpResult.ctx(DafnyAST.__default.interpStmt_k($ly, s1#9, ctx#0)); 
                        DafnyAST.__default.interpStmt_k#canCall(s2#9, ctx1#9)))))))
       && DafnyAST.__default.interpStmt_k($LS($ly), s#0, ctx#0)
         == (if DafnyAST.Stmt.Skip_q(s#0)
           then #DafnyAST.InterpResult.InterpResult(ctx#0, Lit(Seq#Empty(): Seq))
           else (if DafnyAST.Stmt.Print_q(s#0)
             then (var e#16 := DafnyAST.Stmt.e(s#0); 
              #DafnyAST.InterpResult.InterpResult(ctx#0, 
                Seq#Build(Seq#Empty(): Seq, $Box(DafnyAST.__default.interpExpr($LS($LZ), e#16, ctx#0)))))
             else (if DafnyAST.Stmt.Assign_q(s#0)
               then (var e#17 := DafnyAST.Stmt.e(s#0); 
                (var v#8 := DafnyAST.Stmt.v(s#0); 
                  #DafnyAST.InterpResult.InterpResult(Map#Build(ctx#0, $Box(v#8), $Box(DafnyAST.__default.interpExpr($LS($LZ), e#17, ctx#0))), 
                    Lit(Seq#Empty(): Seq))))
               else (var s2#8 := DafnyAST.Stmt.s2(s#0); 
                (var s1#8 := DafnyAST.Stmt.s1(s#0); 
                  (var ctx1#8, o1#8 := DafnyAST.InterpResult.ctx(DafnyAST.__default.interpStmt_k($ly, s1#8, ctx#0)), 
                      DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($ly, s1#8, ctx#0)); 
                    (var ctx2#8, o2#8 := DafnyAST.InterpResult.ctx(DafnyAST.__default.interpStmt_k($ly, s2#8, ctx1#8)), 
                        DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($ly, s2#8, ctx1#8)); 
                      #DafnyAST.InterpResult.InterpResult(ctx2#8, Seq#Append(o1#8, o2#8))))))))));

// definition axiom for DafnyAST.__default.interpStmt_k for all literals (revealed)
axiom {:id "id516"} (forall $ly: LayerType, s#0: DatatypeType, ctx#0: Map :: 
  {:weight 3} { DafnyAST.__default.interpStmt_k($LS($ly), Lit(s#0), Lit(ctx#0)) } 
  DafnyAST.__default.interpStmt_k#canCall(Lit(s#0), Lit(ctx#0))
       || ($Is(s#0, Tclass.DafnyAST.Stmt()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> (!Lit(DafnyAST.Stmt.Skip_q(Lit(s#0)))
         ==> (Lit(DafnyAST.Stmt.Print_q(Lit(s#0)))
             ==> (var e#22 := Lit(DafnyAST.Stmt.e(Lit(s#0))); 
              DafnyAST.__default.interpExpr#canCall(e#22, Lit(ctx#0))))
           && (!Lit(DafnyAST.Stmt.Print_q(Lit(s#0)))
             ==> (Lit(DafnyAST.Stmt.Assign_q(Lit(s#0)))
                 ==> (var e#23 := Lit(DafnyAST.Stmt.e(Lit(s#0))); 
                  DafnyAST.__default.interpExpr#canCall(e#23, Lit(ctx#0))))
               && (!Lit(DafnyAST.Stmt.Assign_q(Lit(s#0)))
                 ==> (var s2#11 := Lit(DafnyAST.Stmt.s2(Lit(s#0))); 
                  (var s1#11 := Lit(DafnyAST.Stmt.s1(Lit(s#0))); 
                    DafnyAST.__default.interpStmt_k#canCall(s1#11, Lit(ctx#0))
                       && (var ctx1#11 := DafnyAST.InterpResult.ctx(DafnyAST.__default.interpStmt_k($LS($ly), s1#11, Lit(ctx#0))); 
                        DafnyAST.__default.interpStmt_k#canCall(s2#11, ctx1#11)))))))
       && DafnyAST.__default.interpStmt_k($LS($ly), Lit(s#0), Lit(ctx#0))
         == (if DafnyAST.Stmt.Skip_q(Lit(s#0))
           then #DafnyAST.InterpResult.InterpResult(Lit(ctx#0), Lit(Seq#Empty(): Seq))
           else (if DafnyAST.Stmt.Print_q(Lit(s#0))
             then (var e#20 := Lit(DafnyAST.Stmt.e(Lit(s#0))); 
              Lit(#DafnyAST.InterpResult.InterpResult(Lit(ctx#0), 
                  Lit(Seq#Build(Seq#Empty(): Seq, 
                      $Box(LitInt(DafnyAST.__default.interpExpr($LS($LZ), e#20, Lit(ctx#0)))))))))
             else (if DafnyAST.Stmt.Assign_q(Lit(s#0))
               then (var e#21 := Lit(DafnyAST.Stmt.e(Lit(s#0))); 
                (var v#10 := Lit(DafnyAST.Stmt.v(Lit(s#0))); 
                  #DafnyAST.InterpResult.InterpResult(Map#Build(Lit(ctx#0), 
                      $Box(v#10), 
                      $Box(LitInt(DafnyAST.__default.interpExpr($LS($LZ), e#21, Lit(ctx#0))))), 
                    Lit(Seq#Empty(): Seq))))
               else (var s2#10 := Lit(DafnyAST.Stmt.s2(Lit(s#0))); 
                (var s1#10 := Lit(DafnyAST.Stmt.s1(Lit(s#0))); 
                  (var ctx1#10, o1#10 := DafnyAST.InterpResult.ctx(Lit(DafnyAST.__default.interpStmt_k($LS($ly), s1#10, Lit(ctx#0)))), 
                      DafnyAST.InterpResult.output(Lit(DafnyAST.__default.interpStmt_k($LS($ly), s1#10, Lit(ctx#0)))); 
                    (var ctx2#10, o2#10 := DafnyAST.InterpResult.ctx(DafnyAST.__default.interpStmt_k($LS($ly), s2#10, ctx1#10)), 
                        DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($LS($ly), s2#10, ctx1#10)); 
                      #DafnyAST.InterpResult.InterpResult(ctx2#10, Seq#Append(o1#10, o2#10))))))))));

// function declaration for DafnyAST._default.interpStmt
function DafnyAST.__default.interpStmt(s#0: DatatypeType, ctx#0: Map) : Seq;

function DafnyAST.__default.interpStmt#canCall(s#0: DatatypeType, ctx#0: Map) : bool;

// consequence axiom for DafnyAST.__default.interpStmt
axiom (forall s#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpStmt(s#0, ctx#0) } 
  DafnyAST.__default.interpStmt#canCall(s#0, ctx#0)
       || ($Is(s#0, Tclass.DafnyAST.Stmt()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> $Is(DafnyAST.__default.interpStmt(s#0, ctx#0), TSeq(TInt)));

function DafnyAST.__default.interpStmt#requires(DatatypeType, Map) : bool;

// #requires axiom for DafnyAST.__default.interpStmt
axiom (forall s#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpStmt#requires(s#0, ctx#0) } 
  $Is(s#0, Tclass.DafnyAST.Stmt()) && $Is(ctx#0, TMap(TSeq(TChar), TInt))
     ==> DafnyAST.__default.interpStmt#requires(s#0, ctx#0) == true);

// definition axiom for DafnyAST.__default.interpStmt (revealed)
axiom {:id "id517"} (forall s#0: DatatypeType, ctx#0: Map :: 
  { DafnyAST.__default.interpStmt(s#0, ctx#0) } 
  DafnyAST.__default.interpStmt#canCall(s#0, ctx#0)
       || ($Is(s#0, Tclass.DafnyAST.Stmt()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> DafnyAST.__default.interpStmt_k#canCall(s#0, ctx#0)
       && DafnyAST.InterpResult.InterpResult_q(DafnyAST.__default.interpStmt_k($LS($LZ), s#0, ctx#0))
       && DafnyAST.__default.interpStmt(s#0, ctx#0)
         == DafnyAST.InterpResult.output(DafnyAST.__default.interpStmt_k($LS($LZ), s#0, ctx#0)));

// definition axiom for DafnyAST.__default.interpStmt for all literals (revealed)
axiom {:id "id518"} (forall s#0: DatatypeType, ctx#0: Map :: 
  {:weight 3} { DafnyAST.__default.interpStmt(Lit(s#0), Lit(ctx#0)) } 
  DafnyAST.__default.interpStmt#canCall(Lit(s#0), Lit(ctx#0))
       || ($Is(s#0, Tclass.DafnyAST.Stmt()) && $Is(ctx#0, TMap(TSeq(TChar), TInt)))
     ==> DafnyAST.__default.interpStmt_k#canCall(Lit(s#0), Lit(ctx#0))
       && DafnyAST.InterpResult.InterpResult_q(Lit(DafnyAST.__default.interpStmt_k($LS($LZ), Lit(s#0), Lit(ctx#0))))
       && DafnyAST.__default.interpStmt(Lit(s#0), Lit(ctx#0))
         == Lit(DafnyAST.InterpResult.output(Lit(DafnyAST.__default.interpStmt_k($LS($LZ), Lit(s#0), Lit(ctx#0))))));

// Constructor function declaration
function #DafnyAST.BinOp.Add() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DafnyAST.BinOp.Add()) == ##DafnyAST.BinOp.Add;
// Constructor $Is
axiom $Is(#DafnyAST.BinOp.Add(), Tclass.DafnyAST.BinOp());
// Constructor literal
axiom #DafnyAST.BinOp.Add() == Lit(#DafnyAST.BinOp.Add());
}

const unique ##DafnyAST.BinOp.Add: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DafnyAST.BinOp.Add()) == ##DafnyAST.BinOp.Add;
}

function DafnyAST.BinOp.Add_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DafnyAST.BinOp.Add_q(d) } 
  DafnyAST.BinOp.Add_q(d) <==> DatatypeCtorId(d) == ##DafnyAST.BinOp.Add);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DafnyAST.BinOp.Add_q(d) } 
  DafnyAST.BinOp.Add_q(d) ==> d == #DafnyAST.BinOp.Add());

// Constructor function declaration
function #DafnyAST.BinOp.Sub() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DafnyAST.BinOp.Sub()) == ##DafnyAST.BinOp.Sub;
// Constructor $Is
axiom $Is(#DafnyAST.BinOp.Sub(), Tclass.DafnyAST.BinOp());
// Constructor literal
axiom #DafnyAST.BinOp.Sub() == Lit(#DafnyAST.BinOp.Sub());
}

const unique ##DafnyAST.BinOp.Sub: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DafnyAST.BinOp.Sub()) == ##DafnyAST.BinOp.Sub;
}

function DafnyAST.BinOp.Sub_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DafnyAST.BinOp.Sub_q(d) } 
  DafnyAST.BinOp.Sub_q(d) <==> DatatypeCtorId(d) == ##DafnyAST.BinOp.Sub);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DafnyAST.BinOp.Sub_q(d) } 
  DafnyAST.BinOp.Sub_q(d) ==> d == #DafnyAST.BinOp.Sub());

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DafnyAST.BinOp(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DafnyAST.BinOp())
     ==> $IsAlloc(d, Tclass.DafnyAST.BinOp(), $h));

// Depth-one case-split function
function $IsA#DafnyAST.BinOp(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DafnyAST.BinOp(d) } 
  $IsA#DafnyAST.BinOp(d) ==> DafnyAST.BinOp.Add_q(d) || DafnyAST.BinOp.Sub_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DafnyAST.BinOp.Sub_q(d), $Is(d, Tclass.DafnyAST.BinOp()) } 
    { DafnyAST.BinOp.Add_q(d), $Is(d, Tclass.DafnyAST.BinOp()) } 
  $Is(d, Tclass.DafnyAST.BinOp())
     ==> DafnyAST.BinOp.Add_q(d) || DafnyAST.BinOp.Sub_q(d));

// Datatype extensional equality declaration
function DafnyAST.BinOp#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DafnyAST.BinOp.Add
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.BinOp#Equal(a, b), DafnyAST.BinOp.Add_q(a) } 
    { DafnyAST.BinOp#Equal(a, b), DafnyAST.BinOp.Add_q(b) } 
  DafnyAST.BinOp.Add_q(a) && DafnyAST.BinOp.Add_q(b)
     ==> DafnyAST.BinOp#Equal(a, b));

// Datatype extensional equality definition: #DafnyAST.BinOp.Sub
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.BinOp#Equal(a, b), DafnyAST.BinOp.Sub_q(a) } 
    { DafnyAST.BinOp#Equal(a, b), DafnyAST.BinOp.Sub_q(b) } 
  DafnyAST.BinOp.Sub_q(a) && DafnyAST.BinOp.Sub_q(b)
     ==> DafnyAST.BinOp#Equal(a, b));

// Datatype extensionality axiom: DafnyAST.BinOp
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.BinOp#Equal(a, b) } 
  DafnyAST.BinOp#Equal(a, b) <==> a == b);

const unique class.DafnyAST.BinOp: ClassName;

// Constructor function declaration
function #DafnyAST.Expr.Const(int) : DatatypeType;

const unique ##DafnyAST.Expr.Const: DtCtorId
uses {
// Constructor identifier
axiom (forall a#8#0#0: int :: 
  { #DafnyAST.Expr.Const(a#8#0#0) } 
  DatatypeCtorId(#DafnyAST.Expr.Const(a#8#0#0)) == ##DafnyAST.Expr.Const);
}

function DafnyAST.Expr.Const_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DafnyAST.Expr.Const_q(d) } 
  DafnyAST.Expr.Const_q(d) <==> DatatypeCtorId(d) == ##DafnyAST.Expr.Const);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DafnyAST.Expr.Const_q(d) } 
  DafnyAST.Expr.Const_q(d)
     ==> (exists a#9#0#0: int :: d == #DafnyAST.Expr.Const(a#9#0#0)));

// Constructor $Is
axiom (forall a#10#0#0: int :: 
  { $Is(#DafnyAST.Expr.Const(a#10#0#0), Tclass.DafnyAST.Expr()) } 
  $Is(#DafnyAST.Expr.Const(a#10#0#0), Tclass.DafnyAST.Expr())
     <==> $Is(a#10#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.Expr.n(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.Expr.Const_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.Expr(), $h)
     ==> $IsAlloc(DafnyAST.Expr.n(d), TInt, $h));

// Constructor literal
axiom (forall a#11#0#0: int :: 
  { #DafnyAST.Expr.Const(LitInt(a#11#0#0)) } 
  #DafnyAST.Expr.Const(LitInt(a#11#0#0)) == Lit(#DafnyAST.Expr.Const(a#11#0#0)));

function DafnyAST.Expr.n(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#12#0#0: int :: 
  { #DafnyAST.Expr.Const(a#12#0#0) } 
  DafnyAST.Expr.n(#DafnyAST.Expr.Const(a#12#0#0)) == a#12#0#0);

// Constructor function declaration
function #DafnyAST.Expr.Var(Seq) : DatatypeType;

const unique ##DafnyAST.Expr.Var: DtCtorId
uses {
// Constructor identifier
axiom (forall a#13#0#0: Seq :: 
  { #DafnyAST.Expr.Var(a#13#0#0) } 
  DatatypeCtorId(#DafnyAST.Expr.Var(a#13#0#0)) == ##DafnyAST.Expr.Var);
}

function DafnyAST.Expr.Var_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DafnyAST.Expr.Var_q(d) } 
  DafnyAST.Expr.Var_q(d) <==> DatatypeCtorId(d) == ##DafnyAST.Expr.Var);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DafnyAST.Expr.Var_q(d) } 
  DafnyAST.Expr.Var_q(d)
     ==> (exists a#14#0#0: Seq :: d == #DafnyAST.Expr.Var(a#14#0#0)));

// Constructor $Is
axiom (forall a#15#0#0: Seq :: 
  { $Is(#DafnyAST.Expr.Var(a#15#0#0), Tclass.DafnyAST.Expr()) } 
  $Is(#DafnyAST.Expr.Var(a#15#0#0), Tclass.DafnyAST.Expr())
     <==> $Is(a#15#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.Expr.v(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.Expr.Var_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.Expr(), $h)
     ==> $IsAlloc(DafnyAST.Expr.v(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#16#0#0: Seq :: 
  { #DafnyAST.Expr.Var(Lit(a#16#0#0)) } 
  #DafnyAST.Expr.Var(Lit(a#16#0#0)) == Lit(#DafnyAST.Expr.Var(a#16#0#0)));

function DafnyAST.Expr.v(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#17#0#0: Seq :: 
  { #DafnyAST.Expr.Var(a#17#0#0) } 
  DafnyAST.Expr.v(#DafnyAST.Expr.Var(a#17#0#0)) == a#17#0#0);

// Inductive seq element rank
axiom (forall a#18#0#0: Seq, i: int :: 
  { Seq#Index(a#18#0#0, i), #DafnyAST.Expr.Var(a#18#0#0) } 
  0 <= i && i < Seq#Length(a#18#0#0)
     ==> DtRank($Unbox(Seq#Index(a#18#0#0, i)): DatatypeType)
       < DtRank(#DafnyAST.Expr.Var(a#18#0#0)));

// Inductive seq rank
axiom (forall a#19#0#0: Seq :: 
  { #DafnyAST.Expr.Var(a#19#0#0) } 
  Seq#Rank(a#19#0#0) < DtRank(#DafnyAST.Expr.Var(a#19#0#0)));

// Constructor function declaration
function #DafnyAST.Expr.Op(DatatypeType, DatatypeType, DatatypeType) : DatatypeType;

const unique ##DafnyAST.Expr.Op: DtCtorId
uses {
// Constructor identifier
axiom (forall a#20#0#0: DatatypeType, a#20#1#0: DatatypeType, a#20#2#0: DatatypeType :: 
  { #DafnyAST.Expr.Op(a#20#0#0, a#20#1#0, a#20#2#0) } 
  DatatypeCtorId(#DafnyAST.Expr.Op(a#20#0#0, a#20#1#0, a#20#2#0))
     == ##DafnyAST.Expr.Op);
}

function DafnyAST.Expr.Op_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DafnyAST.Expr.Op_q(d) } 
  DafnyAST.Expr.Op_q(d) <==> DatatypeCtorId(d) == ##DafnyAST.Expr.Op);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DafnyAST.Expr.Op_q(d) } 
  DafnyAST.Expr.Op_q(d)
     ==> (exists a#21#0#0: DatatypeType, a#21#1#0: DatatypeType, a#21#2#0: DatatypeType :: 
      d == #DafnyAST.Expr.Op(a#21#0#0, a#21#1#0, a#21#2#0)));

// Constructor $Is
axiom (forall a#22#0#0: DatatypeType, a#22#1#0: DatatypeType, a#22#2#0: DatatypeType :: 
  { $Is(#DafnyAST.Expr.Op(a#22#0#0, a#22#1#0, a#22#2#0), Tclass.DafnyAST.Expr()) } 
  $Is(#DafnyAST.Expr.Op(a#22#0#0, a#22#1#0, a#22#2#0), Tclass.DafnyAST.Expr())
     <==> $Is(a#22#0#0, Tclass.DafnyAST.BinOp())
       && $Is(a#22#1#0, Tclass.DafnyAST.Expr())
       && $Is(a#22#2#0, Tclass.DafnyAST.Expr()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.Expr.op(d), Tclass.DafnyAST.BinOp(), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.Expr.Op_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.Expr(), $h)
     ==> $IsAlloc(DafnyAST.Expr.op(d), Tclass.DafnyAST.BinOp(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.Expr.e1(d), Tclass.DafnyAST.Expr(), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.Expr.Op_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.Expr(), $h)
     ==> $IsAlloc(DafnyAST.Expr.e1(d), Tclass.DafnyAST.Expr(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.Expr.e2(d), Tclass.DafnyAST.Expr(), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.Expr.Op_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.Expr(), $h)
     ==> $IsAlloc(DafnyAST.Expr.e2(d), Tclass.DafnyAST.Expr(), $h));

// Constructor literal
axiom (forall a#23#0#0: DatatypeType, a#23#1#0: DatatypeType, a#23#2#0: DatatypeType :: 
  { #DafnyAST.Expr.Op(Lit(a#23#0#0), Lit(a#23#1#0), Lit(a#23#2#0)) } 
  #DafnyAST.Expr.Op(Lit(a#23#0#0), Lit(a#23#1#0), Lit(a#23#2#0))
     == Lit(#DafnyAST.Expr.Op(a#23#0#0, a#23#1#0, a#23#2#0)));

function DafnyAST.Expr.op(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#24#0#0: DatatypeType, a#24#1#0: DatatypeType, a#24#2#0: DatatypeType :: 
  { #DafnyAST.Expr.Op(a#24#0#0, a#24#1#0, a#24#2#0) } 
  DafnyAST.Expr.op(#DafnyAST.Expr.Op(a#24#0#0, a#24#1#0, a#24#2#0)) == a#24#0#0);

// Inductive rank
axiom (forall a#25#0#0: DatatypeType, a#25#1#0: DatatypeType, a#25#2#0: DatatypeType :: 
  { #DafnyAST.Expr.Op(a#25#0#0, a#25#1#0, a#25#2#0) } 
  DtRank(a#25#0#0) < DtRank(#DafnyAST.Expr.Op(a#25#0#0, a#25#1#0, a#25#2#0)));

function DafnyAST.Expr.e1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#26#0#0: DatatypeType, a#26#1#0: DatatypeType, a#26#2#0: DatatypeType :: 
  { #DafnyAST.Expr.Op(a#26#0#0, a#26#1#0, a#26#2#0) } 
  DafnyAST.Expr.e1(#DafnyAST.Expr.Op(a#26#0#0, a#26#1#0, a#26#2#0)) == a#26#1#0);

// Inductive rank
axiom (forall a#27#0#0: DatatypeType, a#27#1#0: DatatypeType, a#27#2#0: DatatypeType :: 
  { #DafnyAST.Expr.Op(a#27#0#0, a#27#1#0, a#27#2#0) } 
  DtRank(a#27#1#0) < DtRank(#DafnyAST.Expr.Op(a#27#0#0, a#27#1#0, a#27#2#0)));

function DafnyAST.Expr.e2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#28#0#0: DatatypeType, a#28#1#0: DatatypeType, a#28#2#0: DatatypeType :: 
  { #DafnyAST.Expr.Op(a#28#0#0, a#28#1#0, a#28#2#0) } 
  DafnyAST.Expr.e2(#DafnyAST.Expr.Op(a#28#0#0, a#28#1#0, a#28#2#0)) == a#28#2#0);

// Inductive rank
axiom (forall a#29#0#0: DatatypeType, a#29#1#0: DatatypeType, a#29#2#0: DatatypeType :: 
  { #DafnyAST.Expr.Op(a#29#0#0, a#29#1#0, a#29#2#0) } 
  DtRank(a#29#2#0) < DtRank(#DafnyAST.Expr.Op(a#29#0#0, a#29#1#0, a#29#2#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DafnyAST.Expr(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DafnyAST.Expr())
     ==> $IsAlloc(d, Tclass.DafnyAST.Expr(), $h));

// Depth-one case-split function
function $IsA#DafnyAST.Expr(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DafnyAST.Expr(d) } 
  $IsA#DafnyAST.Expr(d)
     ==> DafnyAST.Expr.Const_q(d) || DafnyAST.Expr.Var_q(d) || DafnyAST.Expr.Op_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DafnyAST.Expr.Op_q(d), $Is(d, Tclass.DafnyAST.Expr()) } 
    { DafnyAST.Expr.Var_q(d), $Is(d, Tclass.DafnyAST.Expr()) } 
    { DafnyAST.Expr.Const_q(d), $Is(d, Tclass.DafnyAST.Expr()) } 
  $Is(d, Tclass.DafnyAST.Expr())
     ==> DafnyAST.Expr.Const_q(d) || DafnyAST.Expr.Var_q(d) || DafnyAST.Expr.Op_q(d));

// Datatype extensional equality declaration
function DafnyAST.Expr#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DafnyAST.Expr.Const
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.Expr#Equal(a, b), DafnyAST.Expr.Const_q(a) } 
    { DafnyAST.Expr#Equal(a, b), DafnyAST.Expr.Const_q(b) } 
  DafnyAST.Expr.Const_q(a) && DafnyAST.Expr.Const_q(b)
     ==> (DafnyAST.Expr#Equal(a, b) <==> DafnyAST.Expr.n(a) == DafnyAST.Expr.n(b)));

// Datatype extensional equality definition: #DafnyAST.Expr.Var
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.Expr#Equal(a, b), DafnyAST.Expr.Var_q(a) } 
    { DafnyAST.Expr#Equal(a, b), DafnyAST.Expr.Var_q(b) } 
  DafnyAST.Expr.Var_q(a) && DafnyAST.Expr.Var_q(b)
     ==> (DafnyAST.Expr#Equal(a, b)
       <==> Seq#Equal(DafnyAST.Expr.v(a), DafnyAST.Expr.v(b))));

// Datatype extensional equality definition: #DafnyAST.Expr.Op
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.Expr#Equal(a, b), DafnyAST.Expr.Op_q(a) } 
    { DafnyAST.Expr#Equal(a, b), DafnyAST.Expr.Op_q(b) } 
  DafnyAST.Expr.Op_q(a) && DafnyAST.Expr.Op_q(b)
     ==> (DafnyAST.Expr#Equal(a, b)
       <==> DafnyAST.BinOp#Equal(DafnyAST.Expr.op(a), DafnyAST.Expr.op(b))
         && DafnyAST.Expr#Equal(DafnyAST.Expr.e1(a), DafnyAST.Expr.e1(b))
         && DafnyAST.Expr#Equal(DafnyAST.Expr.e2(a), DafnyAST.Expr.e2(b))));

// Datatype extensionality axiom: DafnyAST.Expr
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.Expr#Equal(a, b) } 
  DafnyAST.Expr#Equal(a, b) <==> a == b);

const unique class.DafnyAST.Expr: ClassName;

// Constructor function declaration
function #DafnyAST.Stmt.Skip() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#DafnyAST.Stmt.Skip()) == ##DafnyAST.Stmt.Skip;
// Constructor $Is
axiom $Is(#DafnyAST.Stmt.Skip(), Tclass.DafnyAST.Stmt());
// Constructor literal
axiom #DafnyAST.Stmt.Skip() == Lit(#DafnyAST.Stmt.Skip());
}

const unique ##DafnyAST.Stmt.Skip: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#DafnyAST.Stmt.Skip()) == ##DafnyAST.Stmt.Skip;
}

function DafnyAST.Stmt.Skip_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DafnyAST.Stmt.Skip_q(d) } 
  DafnyAST.Stmt.Skip_q(d) <==> DatatypeCtorId(d) == ##DafnyAST.Stmt.Skip);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DafnyAST.Stmt.Skip_q(d) } 
  DafnyAST.Stmt.Skip_q(d) ==> d == #DafnyAST.Stmt.Skip());

// Constructor function declaration
function #DafnyAST.Stmt.Print(DatatypeType) : DatatypeType;

const unique ##DafnyAST.Stmt.Print: DtCtorId
uses {
// Constructor identifier
axiom (forall a#34#0#0: DatatypeType :: 
  { #DafnyAST.Stmt.Print(a#34#0#0) } 
  DatatypeCtorId(#DafnyAST.Stmt.Print(a#34#0#0)) == ##DafnyAST.Stmt.Print);
}

function DafnyAST.Stmt.Print_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DafnyAST.Stmt.Print_q(d) } 
  DafnyAST.Stmt.Print_q(d) <==> DatatypeCtorId(d) == ##DafnyAST.Stmt.Print);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DafnyAST.Stmt.Print_q(d) } 
  DafnyAST.Stmt.Print_q(d)
     ==> (exists a#35#0#0: DatatypeType :: d == #DafnyAST.Stmt.Print(a#35#0#0)));

// Constructor $Is
axiom (forall a#36#0#0: DatatypeType :: 
  { $Is(#DafnyAST.Stmt.Print(a#36#0#0), Tclass.DafnyAST.Stmt()) } 
  $Is(#DafnyAST.Stmt.Print(a#36#0#0), Tclass.DafnyAST.Stmt())
     <==> $Is(a#36#0#0, Tclass.DafnyAST.Expr()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.Stmt.e(d), Tclass.DafnyAST.Expr(), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.Stmt.Print_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.Stmt(), $h)
     ==> $IsAlloc(DafnyAST.Stmt.e(d), Tclass.DafnyAST.Expr(), $h));

// Constructor literal
axiom (forall a#37#0#0: DatatypeType :: 
  { #DafnyAST.Stmt.Print(Lit(a#37#0#0)) } 
  #DafnyAST.Stmt.Print(Lit(a#37#0#0)) == Lit(#DafnyAST.Stmt.Print(a#37#0#0)));

function DafnyAST.Stmt.e(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#38#0#0: DatatypeType :: 
  { #DafnyAST.Stmt.Print(a#38#0#0) } 
  DafnyAST.Stmt.e(#DafnyAST.Stmt.Print(a#38#0#0)) == a#38#0#0);

// Inductive rank
axiom (forall a#39#0#0: DatatypeType :: 
  { #DafnyAST.Stmt.Print(a#39#0#0) } 
  DtRank(a#39#0#0) < DtRank(#DafnyAST.Stmt.Print(a#39#0#0)));

// Constructor function declaration
function #DafnyAST.Stmt.Assign(Seq, DatatypeType) : DatatypeType;

const unique ##DafnyAST.Stmt.Assign: DtCtorId
uses {
// Constructor identifier
axiom (forall a#40#0#0: Seq, a#40#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Assign(a#40#0#0, a#40#1#0) } 
  DatatypeCtorId(#DafnyAST.Stmt.Assign(a#40#0#0, a#40#1#0))
     == ##DafnyAST.Stmt.Assign);
}

function DafnyAST.Stmt.Assign_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DafnyAST.Stmt.Assign_q(d) } 
  DafnyAST.Stmt.Assign_q(d) <==> DatatypeCtorId(d) == ##DafnyAST.Stmt.Assign);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DafnyAST.Stmt.Assign_q(d) } 
  DafnyAST.Stmt.Assign_q(d)
     ==> (exists a#41#0#0: Seq, a#41#1#0: DatatypeType :: 
      d == #DafnyAST.Stmt.Assign(a#41#0#0, a#41#1#0)));

// Constructor $Is
axiom (forall a#42#0#0: Seq, a#42#1#0: DatatypeType :: 
  { $Is(#DafnyAST.Stmt.Assign(a#42#0#0, a#42#1#0), Tclass.DafnyAST.Stmt()) } 
  $Is(#DafnyAST.Stmt.Assign(a#42#0#0, a#42#1#0), Tclass.DafnyAST.Stmt())
     <==> $Is(a#42#0#0, TSeq(TChar)) && $Is(a#42#1#0, Tclass.DafnyAST.Expr()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.Stmt.v(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.Stmt.Assign_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.Stmt(), $h)
     ==> $IsAlloc(DafnyAST.Stmt.v(d), TSeq(TChar), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.Stmt.e(d), Tclass.DafnyAST.Expr(), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.Stmt.Assign_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.Stmt(), $h)
     ==> $IsAlloc(DafnyAST.Stmt.e(d), Tclass.DafnyAST.Expr(), $h));

// Constructor literal
axiom (forall a#43#0#0: Seq, a#43#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Assign(Lit(a#43#0#0), Lit(a#43#1#0)) } 
  #DafnyAST.Stmt.Assign(Lit(a#43#0#0), Lit(a#43#1#0))
     == Lit(#DafnyAST.Stmt.Assign(a#43#0#0, a#43#1#0)));

function DafnyAST.Stmt.v(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#44#0#0: Seq, a#44#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Assign(a#44#0#0, a#44#1#0) } 
  DafnyAST.Stmt.v(#DafnyAST.Stmt.Assign(a#44#0#0, a#44#1#0)) == a#44#0#0);

// Inductive seq element rank
axiom (forall a#45#0#0: Seq, a#45#1#0: DatatypeType, i: int :: 
  { Seq#Index(a#45#0#0, i), #DafnyAST.Stmt.Assign(a#45#0#0, a#45#1#0) } 
  0 <= i && i < Seq#Length(a#45#0#0)
     ==> DtRank($Unbox(Seq#Index(a#45#0#0, i)): DatatypeType)
       < DtRank(#DafnyAST.Stmt.Assign(a#45#0#0, a#45#1#0)));

// Inductive seq rank
axiom (forall a#46#0#0: Seq, a#46#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Assign(a#46#0#0, a#46#1#0) } 
  Seq#Rank(a#46#0#0) < DtRank(#DafnyAST.Stmt.Assign(a#46#0#0, a#46#1#0)));

// Constructor injectivity
axiom (forall a#47#0#0: Seq, a#47#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Assign(a#47#0#0, a#47#1#0) } 
  DafnyAST.Stmt.e(#DafnyAST.Stmt.Assign(a#47#0#0, a#47#1#0)) == a#47#1#0);

// Inductive rank
axiom (forall a#48#0#0: Seq, a#48#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Assign(a#48#0#0, a#48#1#0) } 
  DtRank(a#48#1#0) < DtRank(#DafnyAST.Stmt.Assign(a#48#0#0, a#48#1#0)));

// Constructor function declaration
function #DafnyAST.Stmt.Seq(DatatypeType, DatatypeType) : DatatypeType;

const unique ##DafnyAST.Stmt.Seq: DtCtorId
uses {
// Constructor identifier
axiom (forall a#49#0#0: DatatypeType, a#49#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Seq(a#49#0#0, a#49#1#0) } 
  DatatypeCtorId(#DafnyAST.Stmt.Seq(a#49#0#0, a#49#1#0)) == ##DafnyAST.Stmt.Seq);
}

function DafnyAST.Stmt.Seq_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DafnyAST.Stmt.Seq_q(d) } 
  DafnyAST.Stmt.Seq_q(d) <==> DatatypeCtorId(d) == ##DafnyAST.Stmt.Seq);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DafnyAST.Stmt.Seq_q(d) } 
  DafnyAST.Stmt.Seq_q(d)
     ==> (exists a#50#0#0: DatatypeType, a#50#1#0: DatatypeType :: 
      d == #DafnyAST.Stmt.Seq(a#50#0#0, a#50#1#0)));

// Constructor $Is
axiom (forall a#51#0#0: DatatypeType, a#51#1#0: DatatypeType :: 
  { $Is(#DafnyAST.Stmt.Seq(a#51#0#0, a#51#1#0), Tclass.DafnyAST.Stmt()) } 
  $Is(#DafnyAST.Stmt.Seq(a#51#0#0, a#51#1#0), Tclass.DafnyAST.Stmt())
     <==> $Is(a#51#0#0, Tclass.DafnyAST.Stmt()) && $Is(a#51#1#0, Tclass.DafnyAST.Stmt()));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.Stmt.s1(d), Tclass.DafnyAST.Stmt(), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.Stmt.Seq_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.Stmt(), $h)
     ==> $IsAlloc(DafnyAST.Stmt.s1(d), Tclass.DafnyAST.Stmt(), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.Stmt.s2(d), Tclass.DafnyAST.Stmt(), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.Stmt.Seq_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.Stmt(), $h)
     ==> $IsAlloc(DafnyAST.Stmt.s2(d), Tclass.DafnyAST.Stmt(), $h));

// Constructor literal
axiom (forall a#52#0#0: DatatypeType, a#52#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Seq(Lit(a#52#0#0), Lit(a#52#1#0)) } 
  #DafnyAST.Stmt.Seq(Lit(a#52#0#0), Lit(a#52#1#0))
     == Lit(#DafnyAST.Stmt.Seq(a#52#0#0, a#52#1#0)));

function DafnyAST.Stmt.s1(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#53#0#0: DatatypeType, a#53#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Seq(a#53#0#0, a#53#1#0) } 
  DafnyAST.Stmt.s1(#DafnyAST.Stmt.Seq(a#53#0#0, a#53#1#0)) == a#53#0#0);

// Inductive rank
axiom (forall a#54#0#0: DatatypeType, a#54#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Seq(a#54#0#0, a#54#1#0) } 
  DtRank(a#54#0#0) < DtRank(#DafnyAST.Stmt.Seq(a#54#0#0, a#54#1#0)));

function DafnyAST.Stmt.s2(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#55#0#0: DatatypeType, a#55#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Seq(a#55#0#0, a#55#1#0) } 
  DafnyAST.Stmt.s2(#DafnyAST.Stmt.Seq(a#55#0#0, a#55#1#0)) == a#55#1#0);

// Inductive rank
axiom (forall a#56#0#0: DatatypeType, a#56#1#0: DatatypeType :: 
  { #DafnyAST.Stmt.Seq(a#56#0#0, a#56#1#0) } 
  DtRank(a#56#1#0) < DtRank(#DafnyAST.Stmt.Seq(a#56#0#0, a#56#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DafnyAST.Stmt(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DafnyAST.Stmt())
     ==> $IsAlloc(d, Tclass.DafnyAST.Stmt(), $h));

// Depth-one case-split function
function $IsA#DafnyAST.Stmt(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DafnyAST.Stmt(d) } 
  $IsA#DafnyAST.Stmt(d)
     ==> DafnyAST.Stmt.Skip_q(d)
       || DafnyAST.Stmt.Print_q(d)
       || DafnyAST.Stmt.Assign_q(d)
       || DafnyAST.Stmt.Seq_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DafnyAST.Stmt.Seq_q(d), $Is(d, Tclass.DafnyAST.Stmt()) } 
    { DafnyAST.Stmt.Assign_q(d), $Is(d, Tclass.DafnyAST.Stmt()) } 
    { DafnyAST.Stmt.Print_q(d), $Is(d, Tclass.DafnyAST.Stmt()) } 
    { DafnyAST.Stmt.Skip_q(d), $Is(d, Tclass.DafnyAST.Stmt()) } 
  $Is(d, Tclass.DafnyAST.Stmt())
     ==> DafnyAST.Stmt.Skip_q(d)
       || DafnyAST.Stmt.Print_q(d)
       || DafnyAST.Stmt.Assign_q(d)
       || DafnyAST.Stmt.Seq_q(d));

// Datatype extensional equality declaration
function DafnyAST.Stmt#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DafnyAST.Stmt.Skip
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.Stmt#Equal(a, b), DafnyAST.Stmt.Skip_q(a) } 
    { DafnyAST.Stmt#Equal(a, b), DafnyAST.Stmt.Skip_q(b) } 
  DafnyAST.Stmt.Skip_q(a) && DafnyAST.Stmt.Skip_q(b) ==> DafnyAST.Stmt#Equal(a, b));

// Datatype extensional equality definition: #DafnyAST.Stmt.Print
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.Stmt#Equal(a, b), DafnyAST.Stmt.Print_q(a) } 
    { DafnyAST.Stmt#Equal(a, b), DafnyAST.Stmt.Print_q(b) } 
  DafnyAST.Stmt.Print_q(a) && DafnyAST.Stmt.Print_q(b)
     ==> (DafnyAST.Stmt#Equal(a, b)
       <==> DafnyAST.Expr#Equal(DafnyAST.Stmt.e(a), DafnyAST.Stmt.e(b))));

// Datatype extensional equality definition: #DafnyAST.Stmt.Assign
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.Stmt#Equal(a, b), DafnyAST.Stmt.Assign_q(a) } 
    { DafnyAST.Stmt#Equal(a, b), DafnyAST.Stmt.Assign_q(b) } 
  DafnyAST.Stmt.Assign_q(a) && DafnyAST.Stmt.Assign_q(b)
     ==> (DafnyAST.Stmt#Equal(a, b)
       <==> Seq#Equal(DafnyAST.Stmt.v(a), DafnyAST.Stmt.v(b))
         && DafnyAST.Expr#Equal(DafnyAST.Stmt.e(a), DafnyAST.Stmt.e(b))));

// Datatype extensional equality definition: #DafnyAST.Stmt.Seq
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.Stmt#Equal(a, b), DafnyAST.Stmt.Seq_q(a) } 
    { DafnyAST.Stmt#Equal(a, b), DafnyAST.Stmt.Seq_q(b) } 
  DafnyAST.Stmt.Seq_q(a) && DafnyAST.Stmt.Seq_q(b)
     ==> (DafnyAST.Stmt#Equal(a, b)
       <==> DafnyAST.Stmt#Equal(DafnyAST.Stmt.s1(a), DafnyAST.Stmt.s1(b))
         && DafnyAST.Stmt#Equal(DafnyAST.Stmt.s2(a), DafnyAST.Stmt.s2(b))));

// Datatype extensionality axiom: DafnyAST.Stmt
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.Stmt#Equal(a, b) } 
  DafnyAST.Stmt#Equal(a, b) <==> a == b);

const unique class.DafnyAST.Stmt: ClassName;

// Constructor function declaration
function #DafnyAST.InterpResult.InterpResult(Map, Seq) : DatatypeType;

const unique ##DafnyAST.InterpResult.InterpResult: DtCtorId
uses {
// Constructor identifier
axiom (forall a#57#0#0: Map, a#57#1#0: Seq :: 
  { #DafnyAST.InterpResult.InterpResult(a#57#0#0, a#57#1#0) } 
  DatatypeCtorId(#DafnyAST.InterpResult.InterpResult(a#57#0#0, a#57#1#0))
     == ##DafnyAST.InterpResult.InterpResult);
}

function DafnyAST.InterpResult.InterpResult_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { DafnyAST.InterpResult.InterpResult_q(d) } 
  DafnyAST.InterpResult.InterpResult_q(d)
     <==> DatatypeCtorId(d) == ##DafnyAST.InterpResult.InterpResult);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { DafnyAST.InterpResult.InterpResult_q(d) } 
  DafnyAST.InterpResult.InterpResult_q(d)
     ==> (exists a#58#0#0: Map, a#58#1#0: Seq :: 
      d == #DafnyAST.InterpResult.InterpResult(a#58#0#0, a#58#1#0)));

// Constructor $Is
axiom (forall a#59#0#0: Map, a#59#1#0: Seq :: 
  { $Is(#DafnyAST.InterpResult.InterpResult(a#59#0#0, a#59#1#0), 
      Tclass.DafnyAST.InterpResult()) } 
  $Is(#DafnyAST.InterpResult.InterpResult(a#59#0#0, a#59#1#0), 
      Tclass.DafnyAST.InterpResult())
     <==> $Is(a#59#0#0, TMap(TSeq(TChar), TInt)) && $Is(a#59#1#0, TSeq(TInt)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.InterpResult.ctx(d), TMap(TSeq(TChar), TInt), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.InterpResult.InterpResult_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.InterpResult(), $h)
     ==> $IsAlloc(DafnyAST.InterpResult.ctx(d), TMap(TSeq(TChar), TInt), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(DafnyAST.InterpResult.output(d), TSeq(TInt), $h) } 
  $IsGoodHeap($h)
       && 
      DafnyAST.InterpResult.InterpResult_q(d)
       && $IsAlloc(d, Tclass.DafnyAST.InterpResult(), $h)
     ==> $IsAlloc(DafnyAST.InterpResult.output(d), TSeq(TInt), $h));

// Constructor literal
axiom (forall a#60#0#0: Map, a#60#1#0: Seq :: 
  { #DafnyAST.InterpResult.InterpResult(Lit(a#60#0#0), Lit(a#60#1#0)) } 
  #DafnyAST.InterpResult.InterpResult(Lit(a#60#0#0), Lit(a#60#1#0))
     == Lit(#DafnyAST.InterpResult.InterpResult(a#60#0#0, a#60#1#0)));

function DafnyAST.InterpResult.ctx(DatatypeType) : Map;

// Constructor injectivity
axiom (forall a#61#0#0: Map, a#61#1#0: Seq :: 
  { #DafnyAST.InterpResult.InterpResult(a#61#0#0, a#61#1#0) } 
  DafnyAST.InterpResult.ctx(#DafnyAST.InterpResult.InterpResult(a#61#0#0, a#61#1#0))
     == a#61#0#0);

// Inductive map key rank
axiom (forall a#62#0#0: Map, a#62#1#0: Seq, d: DatatypeType :: 
  { Set#IsMember(Map#Domain(a#62#0#0), $Box(d)), #DafnyAST.InterpResult.InterpResult(a#62#0#0, a#62#1#0) } 
  Set#IsMember(Map#Domain(a#62#0#0), $Box(d))
     ==> DtRank(d) < DtRank(#DafnyAST.InterpResult.InterpResult(a#62#0#0, a#62#1#0)));

// Inductive map value rank
axiom (forall a#63#0#0: Map, a#63#1#0: Seq, bx: Box :: 
  { Set#IsMember(Map#Domain(a#63#0#0), bx), #DafnyAST.InterpResult.InterpResult(a#63#0#0, a#63#1#0) } 
  Set#IsMember(Map#Domain(a#63#0#0), bx)
     ==> DtRank($Unbox(Map#Elements(a#63#0#0)[bx]): DatatypeType)
       < DtRank(#DafnyAST.InterpResult.InterpResult(a#63#0#0, a#63#1#0)));

function DafnyAST.InterpResult.output(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#64#0#0: Map, a#64#1#0: Seq :: 
  { #DafnyAST.InterpResult.InterpResult(a#64#0#0, a#64#1#0) } 
  DafnyAST.InterpResult.output(#DafnyAST.InterpResult.InterpResult(a#64#0#0, a#64#1#0))
     == a#64#1#0);

// Inductive seq element rank
axiom (forall a#65#0#0: Map, a#65#1#0: Seq, i: int :: 
  { Seq#Index(a#65#1#0, i), #DafnyAST.InterpResult.InterpResult(a#65#0#0, a#65#1#0) } 
  0 <= i && i < Seq#Length(a#65#1#0)
     ==> DtRank($Unbox(Seq#Index(a#65#1#0, i)): DatatypeType)
       < DtRank(#DafnyAST.InterpResult.InterpResult(a#65#0#0, a#65#1#0)));

// Inductive seq rank
axiom (forall a#66#0#0: Map, a#66#1#0: Seq :: 
  { #DafnyAST.InterpResult.InterpResult(a#66#0#0, a#66#1#0) } 
  Seq#Rank(a#66#1#0)
     < DtRank(#DafnyAST.InterpResult.InterpResult(a#66#0#0, a#66#1#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.DafnyAST.InterpResult(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.DafnyAST.InterpResult())
     ==> $IsAlloc(d, Tclass.DafnyAST.InterpResult(), $h));

// Depth-one case-split function
function $IsA#DafnyAST.InterpResult(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#DafnyAST.InterpResult(d) } 
  $IsA#DafnyAST.InterpResult(d) ==> DafnyAST.InterpResult.InterpResult_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { DafnyAST.InterpResult.InterpResult_q(d), $Is(d, Tclass.DafnyAST.InterpResult()) } 
  $Is(d, Tclass.DafnyAST.InterpResult())
     ==> DafnyAST.InterpResult.InterpResult_q(d));

// Datatype extensional equality declaration
function DafnyAST.InterpResult#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #DafnyAST.InterpResult.InterpResult
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.InterpResult#Equal(a, b) } 
  DafnyAST.InterpResult#Equal(a, b)
     <==> Map#Equal(DafnyAST.InterpResult.ctx(a), DafnyAST.InterpResult.ctx(b))
       && Seq#Equal(DafnyAST.InterpResult.output(a), DafnyAST.InterpResult.output(b)));

// Datatype extensionality axiom: DafnyAST.InterpResult
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { DafnyAST.InterpResult#Equal(a, b) } 
  DafnyAST.InterpResult#Equal(a, b) <==> a == b);

const unique class.DafnyAST.InterpResult: ClassName;

const unique class.LinkedList.__default: ClassName;

// function declaration for LinkedList._default.Concat
function LinkedList.__default.Concat(LinkedList._default.Concat$T: Ty, 
    $ly: LayerType, 
    l1#0: DatatypeType, 
    l2#0: DatatypeType)
   : DatatypeType;

function LinkedList.__default.Concat#canCall(LinkedList._default.Concat$T: Ty, l1#0: DatatypeType, l2#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall LinkedList._default.Concat$T: Ty, 
    $ly: LayerType, 
    l1#0: DatatypeType, 
    l2#0: DatatypeType :: 
  { LinkedList.__default.Concat(LinkedList._default.Concat$T, $LS($ly), l1#0, l2#0) } 
  LinkedList.__default.Concat(LinkedList._default.Concat$T, $LS($ly), l1#0, l2#0)
     == LinkedList.__default.Concat(LinkedList._default.Concat$T, $ly, l1#0, l2#0));

// fuel synonym axiom
axiom (forall LinkedList._default.Concat$T: Ty, 
    $ly: LayerType, 
    l1#0: DatatypeType, 
    l2#0: DatatypeType :: 
  { LinkedList.__default.Concat(LinkedList._default.Concat$T, AsFuelBottom($ly), l1#0, l2#0) } 
  LinkedList.__default.Concat(LinkedList._default.Concat$T, $ly, l1#0, l2#0)
     == LinkedList.__default.Concat(LinkedList._default.Concat$T, $LZ, l1#0, l2#0));

// consequence axiom for LinkedList.__default.Concat
axiom (forall LinkedList._default.Concat$T: Ty, 
    $ly: LayerType, 
    l1#0: DatatypeType, 
    l2#0: DatatypeType :: 
  { LinkedList.__default.Concat(LinkedList._default.Concat$T, $ly, l1#0, l2#0) } 
  LinkedList.__default.Concat#canCall(LinkedList._default.Concat$T, l1#0, l2#0)
       || ($Is(l1#0, Tclass.LinkedList.List(LinkedList._default.Concat$T))
         && $Is(l2#0, Tclass.LinkedList.List(LinkedList._default.Concat$T)))
     ==> $Is(LinkedList.__default.Concat(LinkedList._default.Concat$T, $ly, l1#0, l2#0), 
      Tclass.LinkedList.List(LinkedList._default.Concat$T)));

// alloc consequence axiom for LinkedList.__default.Concat
axiom (forall $Heap: Heap, 
    LinkedList._default.Concat$T: Ty, 
    $ly: LayerType, 
    l1#0: DatatypeType, 
    l2#0: DatatypeType :: 
  { $IsAlloc(LinkedList.__default.Concat(LinkedList._default.Concat$T, $ly, l1#0, l2#0), 
      Tclass.LinkedList.List(LinkedList._default.Concat$T), 
      $Heap) } 
  (LinkedList.__default.Concat#canCall(LinkedList._default.Concat$T, l1#0, l2#0)
         || (
          $Is(l1#0, Tclass.LinkedList.List(LinkedList._default.Concat$T))
           && $IsAlloc(l1#0, Tclass.LinkedList.List(LinkedList._default.Concat$T), $Heap)
           && 
          $Is(l2#0, Tclass.LinkedList.List(LinkedList._default.Concat$T))
           && $IsAlloc(l2#0, Tclass.LinkedList.List(LinkedList._default.Concat$T), $Heap)))
       && $IsGoodHeap($Heap)
     ==> $IsAlloc(LinkedList.__default.Concat(LinkedList._default.Concat$T, $ly, l1#0, l2#0), 
      Tclass.LinkedList.List(LinkedList._default.Concat$T), 
      $Heap));

function LinkedList.__default.Concat#requires(Ty, LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for LinkedList.__default.Concat
axiom (forall LinkedList._default.Concat$T: Ty, 
    $ly: LayerType, 
    l1#0: DatatypeType, 
    l2#0: DatatypeType :: 
  { LinkedList.__default.Concat#requires(LinkedList._default.Concat$T, $ly, l1#0, l2#0) } 
  $Is(l1#0, Tclass.LinkedList.List(LinkedList._default.Concat$T))
       && $Is(l2#0, Tclass.LinkedList.List(LinkedList._default.Concat$T))
     ==> LinkedList.__default.Concat#requires(LinkedList._default.Concat$T, $ly, l1#0, l2#0)
       == true);

// definition axiom for LinkedList.__default.Concat (revealed)
axiom {:id "id519"} (forall LinkedList._default.Concat$T: Ty, 
    $ly: LayerType, 
    l1#0: DatatypeType, 
    l2#0: DatatypeType :: 
  { LinkedList.__default.Concat(LinkedList._default.Concat$T, $LS($ly), l1#0, l2#0) } 
  LinkedList.__default.Concat#canCall(LinkedList._default.Concat$T, l1#0, l2#0)
       || ($Is(l1#0, Tclass.LinkedList.List(LinkedList._default.Concat$T))
         && $Is(l2#0, Tclass.LinkedList.List(LinkedList._default.Concat$T)))
     ==> (LinkedList.List.Cons_q(l1#0)
         ==> (var t#9 := LinkedList.List.tl(l1#0); 
          LinkedList.__default.Concat#canCall(LinkedList._default.Concat$T, t#9, l2#0)))
       && LinkedList.__default.Concat(LinkedList._default.Concat$T, $LS($ly), l1#0, l2#0)
         == (if LinkedList.List.Cons_q(l1#0)
           then (var t#8 := LinkedList.List.tl(l1#0); 
            (var h#8 := LinkedList.List.hd(l1#0); 
              #LinkedList.List.Cons(h#8, LinkedList.__default.Concat(LinkedList._default.Concat$T, $ly, t#8, l2#0))))
           else l2#0));

// definition axiom for LinkedList.__default.Concat for all literals (revealed)
axiom {:id "id520"} (forall LinkedList._default.Concat$T: Ty, 
    $ly: LayerType, 
    l1#0: DatatypeType, 
    l2#0: DatatypeType :: 
  {:weight 3} { LinkedList.__default.Concat(LinkedList._default.Concat$T, $LS($ly), Lit(l1#0), Lit(l2#0)) } 
  LinkedList.__default.Concat#canCall(LinkedList._default.Concat$T, Lit(l1#0), Lit(l2#0))
       || ($Is(l1#0, Tclass.LinkedList.List(LinkedList._default.Concat$T))
         && $Is(l2#0, Tclass.LinkedList.List(LinkedList._default.Concat$T)))
     ==> (Lit(LinkedList.List.Cons_q(Lit(l1#0)))
         ==> (var t#11 := Lit(LinkedList.List.tl(Lit(l1#0))); 
          LinkedList.__default.Concat#canCall(LinkedList._default.Concat$T, t#11, Lit(l2#0))))
       && LinkedList.__default.Concat(LinkedList._default.Concat$T, $LS($ly), Lit(l1#0), Lit(l2#0))
         == (if LinkedList.List.Cons_q(Lit(l1#0))
           then (var t#10 := Lit(LinkedList.List.tl(Lit(l1#0))); 
            (var h#10 := Lit(LinkedList.List.hd(Lit(l1#0))); 
              Lit(#LinkedList.List.Cons(h#10, 
                  Lit(LinkedList.__default.Concat(LinkedList._default.Concat$T, $LS($ly), t#10, Lit(l2#0)))))))
           else l2#0));

// Constructor function declaration
function #LinkedList.List.Cons(Box, DatatypeType) : DatatypeType;

const unique ##LinkedList.List.Cons: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: Box, a#0#1#0: DatatypeType :: 
  { #LinkedList.List.Cons(a#0#0#0, a#0#1#0) } 
  DatatypeCtorId(#LinkedList.List.Cons(a#0#0#0, a#0#1#0))
     == ##LinkedList.List.Cons);
}

function LinkedList.List.Cons_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { LinkedList.List.Cons_q(d) } 
  LinkedList.List.Cons_q(d) <==> DatatypeCtorId(d) == ##LinkedList.List.Cons);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { LinkedList.List.Cons_q(d) } 
  LinkedList.List.Cons_q(d)
     ==> (exists a#1#0#0: Box, a#1#1#0: DatatypeType :: 
      d == #LinkedList.List.Cons(a#1#0#0, a#1#1#0)));

// Constructor $Is
axiom (forall LinkedList.List$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType :: 
  { $Is(#LinkedList.List.Cons(a#2#0#0, a#2#1#0), 
      Tclass.LinkedList.List(LinkedList.List$T)) } 
  $Is(#LinkedList.List.Cons(a#2#0#0, a#2#1#0), 
      Tclass.LinkedList.List(LinkedList.List$T))
     <==> $IsBox(a#2#0#0, LinkedList.List$T)
       && $Is(a#2#1#0, Tclass.LinkedList.List(LinkedList.List$T)));

// Constructor $IsAlloc
axiom (forall LinkedList.List$T: Ty, a#2#0#0: Box, a#2#1#0: DatatypeType, $h: Heap :: 
  { $IsAlloc(#LinkedList.List.Cons(a#2#0#0, a#2#1#0), 
      Tclass.LinkedList.List(LinkedList.List$T), 
      $h) } 
  $IsGoodHeap($h)
     ==> ($IsAlloc(#LinkedList.List.Cons(a#2#0#0, a#2#1#0), 
        Tclass.LinkedList.List(LinkedList.List$T), 
        $h)
       <==> $IsAllocBox(a#2#0#0, LinkedList.List$T, $h)
         && $IsAlloc(a#2#1#0, Tclass.LinkedList.List(LinkedList.List$T), $h)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, LinkedList.List$T: Ty, $h: Heap :: 
  { $IsAllocBox(LinkedList.List.hd(d), LinkedList.List$T, $h) } 
  $IsGoodHeap($h)
       && 
      LinkedList.List.Cons_q(d)
       && $IsAlloc(d, Tclass.LinkedList.List(LinkedList.List$T), $h)
     ==> $IsAllocBox(LinkedList.List.hd(d), LinkedList.List$T, $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, LinkedList.List$T: Ty, $h: Heap :: 
  { $IsAlloc(LinkedList.List.tl(d), Tclass.LinkedList.List(LinkedList.List$T), $h) } 
  $IsGoodHeap($h)
       && 
      LinkedList.List.Cons_q(d)
       && $IsAlloc(d, Tclass.LinkedList.List(LinkedList.List$T), $h)
     ==> $IsAlloc(LinkedList.List.tl(d), Tclass.LinkedList.List(LinkedList.List$T), $h));

// Constructor literal
axiom (forall a#3#0#0: Box, a#3#1#0: DatatypeType :: 
  { #LinkedList.List.Cons(Lit(a#3#0#0), Lit(a#3#1#0)) } 
  #LinkedList.List.Cons(Lit(a#3#0#0), Lit(a#3#1#0))
     == Lit(#LinkedList.List.Cons(a#3#0#0, a#3#1#0)));

function LinkedList.List.hd(DatatypeType) : Box;

// Constructor injectivity
axiom (forall a#4#0#0: Box, a#4#1#0: DatatypeType :: 
  { #LinkedList.List.Cons(a#4#0#0, a#4#1#0) } 
  LinkedList.List.hd(#LinkedList.List.Cons(a#4#0#0, a#4#1#0)) == a#4#0#0);

// Inductive rank
axiom (forall a#5#0#0: Box, a#5#1#0: DatatypeType :: 
  { #LinkedList.List.Cons(a#5#0#0, a#5#1#0) } 
  BoxRank(a#5#0#0) < DtRank(#LinkedList.List.Cons(a#5#0#0, a#5#1#0)));

function LinkedList.List.tl(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#6#0#0: Box, a#6#1#0: DatatypeType :: 
  { #LinkedList.List.Cons(a#6#0#0, a#6#1#0) } 
  LinkedList.List.tl(#LinkedList.List.Cons(a#6#0#0, a#6#1#0)) == a#6#1#0);

// Inductive rank
axiom (forall a#7#0#0: Box, a#7#1#0: DatatypeType :: 
  { #LinkedList.List.Cons(a#7#0#0, a#7#1#0) } 
  DtRank(a#7#1#0) < DtRank(#LinkedList.List.Cons(a#7#0#0, a#7#1#0)));

// Constructor function declaration
function #LinkedList.List.Nil() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#LinkedList.List.Nil()) == ##LinkedList.List.Nil;
// Constructor literal
axiom #LinkedList.List.Nil() == Lit(#LinkedList.List.Nil());
}

const unique ##LinkedList.List.Nil: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#LinkedList.List.Nil()) == ##LinkedList.List.Nil;
}

function LinkedList.List.Nil_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { LinkedList.List.Nil_q(d) } 
  LinkedList.List.Nil_q(d) <==> DatatypeCtorId(d) == ##LinkedList.List.Nil);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { LinkedList.List.Nil_q(d) } 
  LinkedList.List.Nil_q(d) ==> d == #LinkedList.List.Nil());

// Constructor $Is
axiom (forall LinkedList.List$T: Ty :: 
  { $Is(#LinkedList.List.Nil(), Tclass.LinkedList.List(LinkedList.List$T)) } 
  $Is(#LinkedList.List.Nil(), Tclass.LinkedList.List(LinkedList.List$T)));

// Constructor $IsAlloc
axiom (forall LinkedList.List$T: Ty, $h: Heap :: 
  { $IsAlloc(#LinkedList.List.Nil(), Tclass.LinkedList.List(LinkedList.List$T), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(#LinkedList.List.Nil(), Tclass.LinkedList.List(LinkedList.List$T), $h));

// Depth-one case-split function
function $IsA#LinkedList.List(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#LinkedList.List(d) } 
  $IsA#LinkedList.List(d)
     ==> LinkedList.List.Cons_q(d) || LinkedList.List.Nil_q(d));

// Questionmark data type disjunctivity
axiom (forall LinkedList.List$T: Ty, d: DatatypeType :: 
  { LinkedList.List.Nil_q(d), $Is(d, Tclass.LinkedList.List(LinkedList.List$T)) } 
    { LinkedList.List.Cons_q(d), $Is(d, Tclass.LinkedList.List(LinkedList.List$T)) } 
  $Is(d, Tclass.LinkedList.List(LinkedList.List$T))
     ==> LinkedList.List.Cons_q(d) || LinkedList.List.Nil_q(d));

// Datatype extensional equality declaration
function LinkedList.List#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #LinkedList.List.Cons
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { LinkedList.List#Equal(a, b), LinkedList.List.Cons_q(a) } 
    { LinkedList.List#Equal(a, b), LinkedList.List.Cons_q(b) } 
  LinkedList.List.Cons_q(a) && LinkedList.List.Cons_q(b)
     ==> (LinkedList.List#Equal(a, b)
       <==> LinkedList.List.hd(a) == LinkedList.List.hd(b)
         && LinkedList.List#Equal(LinkedList.List.tl(a), LinkedList.List.tl(b))));

// Datatype extensional equality definition: #LinkedList.List.Nil
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { LinkedList.List#Equal(a, b), LinkedList.List.Nil_q(a) } 
    { LinkedList.List#Equal(a, b), LinkedList.List.Nil_q(b) } 
  LinkedList.List.Nil_q(a) && LinkedList.List.Nil_q(b)
     ==> LinkedList.List#Equal(a, b));

// Datatype extensionality axiom: LinkedList.List
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { LinkedList.List#Equal(a, b) } 
  LinkedList.List#Equal(a, b) <==> a == b);

const unique class.LinkedList.List: ClassName;

const unique class.StackMachine.__default: ClassName;

// function declaration for StackMachine._default.interpInstr
function StackMachine.__default.interpInstr(instr#0: DatatypeType, st#0: DatatypeType) : DatatypeType;

function StackMachine.__default.interpInstr#canCall(instr#0: DatatypeType, st#0: DatatypeType) : bool;

// consequence axiom for StackMachine.__default.interpInstr
axiom (forall instr#0: DatatypeType, st#0: DatatypeType :: 
  { StackMachine.__default.interpInstr(instr#0, st#0) } 
  StackMachine.__default.interpInstr#canCall(instr#0, st#0)
       || ($Is(instr#0, Tclass.StackMachine.Instr())
         && $Is(st#0, Tclass.StackMachine.State()))
     ==> $Is(StackMachine.__default.interpInstr(instr#0, st#0), Tclass.StackMachine.State()));

function StackMachine.__default.interpInstr#requires(DatatypeType, DatatypeType) : bool;

// #requires axiom for StackMachine.__default.interpInstr
axiom (forall instr#0: DatatypeType, st#0: DatatypeType :: 
  { StackMachine.__default.interpInstr#requires(instr#0, st#0) } 
  $Is(instr#0, Tclass.StackMachine.Instr())
       && $Is(st#0, Tclass.StackMachine.State())
     ==> StackMachine.__default.interpInstr#requires(instr#0, st#0) == true);

// definition axiom for StackMachine.__default.interpInstr (revealed)
axiom {:id "id521"} (forall instr#0: DatatypeType, st#0: DatatypeType :: 
  { StackMachine.__default.interpInstr(instr#0, st#0) } 
  StackMachine.__default.interpInstr#canCall(instr#0, st#0)
       || ($Is(instr#0, Tclass.StackMachine.Instr())
         && $Is(st#0, Tclass.StackMachine.State()))
     ==> StackMachine.State.State_q(st#0)
       && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
       && (StackMachine.Instr.PushConst_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
         ==> StackMachine.State.State_q(st#0)
           && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
           && 
          StackMachine.State.State_q(st#0)
           && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
           && (var dt_update_tmp#0#5 := st#0; 
            StackMachine.State.State_q(dt_update_tmp#0#5)
               && StackMachine.State.State_q(dt_update_tmp#0#5)))
       && (!StackMachine.Instr.PushConst_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
         ==> StackMachine.State.State_q(st#0)
           && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
           && (StackMachine.Instr.PushVar_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
             ==> StackMachine.State.State_q(st#0)
               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
               && 
              StackMachine.State.State_q(st#0)
               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
               && (var v#10 := StackMachine.Instr.v($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType); 
                StackMachine.State.State_q(st#0)
                   && (Set#IsMember(Map#Domain(StackMachine.State.regs(st#0)), $Box(v#10))
                     ==> StackMachine.State.State_q(st#0))
                   && (var dt_update_tmp#1#5 := st#0; 
                    StackMachine.State.State_q(dt_update_tmp#1#5)
                       && StackMachine.State.State_q(dt_update_tmp#1#5))))
           && (!StackMachine.Instr.PushVar_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
             ==> StackMachine.State.State_q(st#0)
               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
               && (StackMachine.Instr.PopAdd_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                 ==> StackMachine.State.State_q(st#0)
                   && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                   && (LinkedList.List.Cons_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                     ==> StackMachine.State.State_q(st#0)
                       && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                       && (LinkedList.List.Cons_q(LinkedList.List.tl($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType))
                         ==> StackMachine.State.State_q(st#0)
                           && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                           && 
                          StackMachine.State.State_q(st#0)
                           && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                           && 
                          StackMachine.State.State_q(st#0)
                           && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                           && (var dt_update_tmp#2#5 := st#0; 
                            StackMachine.State.State_q(dt_update_tmp#2#5)
                               && StackMachine.State.State_q(dt_update_tmp#2#5)))))
               && (!StackMachine.Instr.PopAdd_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                 ==> StackMachine.State.State_q(st#0)
                   && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                   && (StackMachine.Instr.PopSub_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                     ==> StackMachine.State.State_q(st#0)
                       && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                       && (LinkedList.List.Cons_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                         ==> StackMachine.State.State_q(st#0)
                           && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                           && (LinkedList.List.Cons_q(LinkedList.List.tl($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType))
                             ==> StackMachine.State.State_q(st#0)
                               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                               && 
                              StackMachine.State.State_q(st#0)
                               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                               && 
                              StackMachine.State.State_q(st#0)
                               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                               && (var dt_update_tmp#3#5 := st#0; 
                                StackMachine.State.State_q(dt_update_tmp#3#5)
                                   && StackMachine.State.State_q(dt_update_tmp#3#5)))))
                   && (!StackMachine.Instr.PopSub_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                     ==> StackMachine.State.State_q(st#0)
                       && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                       && (StackMachine.Instr.PopPrint_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                         ==> StackMachine.State.State_q(st#0)
                           && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                           && (LinkedList.List.Cons_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                             ==> StackMachine.State.State_q(st#0)
                               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                               && 
                              StackMachine.State.State_q(st#0)
                               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                               && (var dt_update_tmp#4#5 := st#0; 
                                StackMachine.State.State_q(st#0)
                                   && StackMachine.State.State_q(dt_update_tmp#4#5))))
                       && (!StackMachine.Instr.PopPrint_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                         ==> StackMachine.State.State_q(st#0)
                           && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                           && (LinkedList.List.Cons_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                             ==> StackMachine.State.State_q(st#0)
                               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                               && 
                              StackMachine.State.State_q(st#0)
                               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                               && 
                              StackMachine.State.State_q(st#0)
                               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))
                               && (var dt_update_tmp#5#5 := st#0; 
                                StackMachine.State.State_q(st#0)
                                   && StackMachine.State.State_q(dt_update_tmp#5#5)))
                           && (!LinkedList.List.Cons_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                             ==> StackMachine.State.State_q(st#0)
                               && _System.Tuple2.___hMake2_q(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))))))))
       && StackMachine.__default.interpInstr(instr#0, st#0)
         == (if StackMachine.Instr.PushConst_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
           then (var tl#24 := $Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType; 
            (var n#12 := StackMachine.Instr.n($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType); 
              (var dt_update_tmp#0#4 := st#0; 
                (var dt_update#stack#0#4 := #LinkedList.List.Cons($Box(n#12), tl#24); 
                  #StackMachine.State.State(dt_update#stack#0#4, 
                    StackMachine.State.regs(dt_update_tmp#0#4), 
                    StackMachine.State.output(dt_update_tmp#0#4))))))
           else (if StackMachine.Instr.PushVar_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
             then (var tl#25 := $Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType; 
              (var v#8 := StackMachine.Instr.v($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType); 
                (var val#4 := (if Set#IsMember(Map#Domain(StackMachine.State.regs(st#0)), $Box(v#8))
                       then $Unbox(Map#Elements(StackMachine.State.regs(st#0))[$Box(v#8)]): int
                       else 0); 
                  (var dt_update_tmp#1#4 := st#0; 
                    (var dt_update#stack#1#4 := #LinkedList.List.Cons($Box(val#4), tl#25); 
                      #StackMachine.State.State(dt_update#stack#1#4, 
                        StackMachine.State.regs(dt_update_tmp#1#4), 
                        StackMachine.State.output(dt_update_tmp#1#4)))))))
             else (if StackMachine.Instr.PopAdd_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
               then (if LinkedList.List.Cons_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                 then (if LinkedList.List.Cons_q(LinkedList.List.tl($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType))
                   then (var tl#26 := LinkedList.List.tl(LinkedList.List.tl($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)); 
                    (var n1#8 := $Unbox(LinkedList.List.hd(LinkedList.List.tl($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType))): int; 
                      (var n2#8 := $Unbox(LinkedList.List.hd($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)): int; 
                        (var dt_update_tmp#2#4 := st#0; 
                          (var dt_update#stack#2#4 := #LinkedList.List.Cons($Box(n1#8 + n2#8), tl#26); 
                            #StackMachine.State.State(dt_update#stack#2#4, 
                              StackMachine.State.regs(dt_update_tmp#2#4), 
                              StackMachine.State.output(dt_update_tmp#2#4)))))))
                   else st#0)
                 else st#0)
               else (if StackMachine.Instr.PopSub_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                 then (if LinkedList.List.Cons_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                   then (if LinkedList.List.Cons_q(LinkedList.List.tl($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType))
                     then (var tl#27 := LinkedList.List.tl(LinkedList.List.tl($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)); 
                      (var n1#9 := $Unbox(LinkedList.List.hd(LinkedList.List.tl($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType))): int; 
                        (var n2#9 := $Unbox(LinkedList.List.hd($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)): int; 
                          (var dt_update_tmp#3#4 := st#0; 
                            (var dt_update#stack#3#4 := #LinkedList.List.Cons($Box(n1#9 - n2#9), tl#27); 
                              #StackMachine.State.State(dt_update#stack#3#4, 
                                StackMachine.State.regs(dt_update_tmp#3#4), 
                                StackMachine.State.output(dt_update_tmp#3#4)))))))
                     else st#0)
                   else st#0)
                 else (if StackMachine.Instr.PopPrint_q($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                   then (if LinkedList.List.Cons_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                     then (var tl#28 := LinkedList.List.tl($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType); 
                      (var n#13 := $Unbox(LinkedList.List.hd($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)): int; 
                        (var dt_update_tmp#4#4 := st#0; 
                          (var dt_update#output#0#4 := Seq#Append(StackMachine.State.output(st#0), Seq#Build(Seq#Empty(): Seq, $Box(n#13))); 
                            (var dt_update#stack#4#4 := tl#28; 
                              #StackMachine.State.State(dt_update#stack#4#4, 
                                StackMachine.State.regs(dt_update_tmp#4#4), 
                                dt_update#output#0#4))))))
                     else st#0)
                   else (if LinkedList.List.Cons_q($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)
                     then (var tl#29 := LinkedList.List.tl($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType); 
                      (var n#14 := $Unbox(LinkedList.List.hd($Unbox(_System.Tuple2._1(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType)): int; 
                        (var v#9 := StackMachine.Instr.v($Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType); 
                          (var dt_update_tmp#5#4 := st#0; 
                            (var dt_update#regs#0#4 := Map#Build(StackMachine.State.regs(st#0), $Box(v#9), $Box(n#14)); 
                              (var dt_update#stack#5#4 := tl#29; 
                                #StackMachine.State.State(dt_update#stack#5#4, 
                                  dt_update#regs#0#4, 
                                  StackMachine.State.output(dt_update_tmp#5#4))))))))
                     else (var PopVar#4 := $Unbox(_System.Tuple2._0(#_System._tuple#2._#Make2($Box(instr#0), $Box(StackMachine.State.stack(st#0))))): DatatypeType; 
                      st#0))))))));

// definition axiom for StackMachine.__default.interpInstr for all literals (revealed)
axiom {:id "id522"} (forall instr#0: DatatypeType, st#0: DatatypeType :: 
  {:weight 3} { StackMachine.__default.interpInstr(Lit(instr#0), Lit(st#0)) } 
  StackMachine.__default.interpInstr#canCall(Lit(instr#0), Lit(st#0))
       || ($Is(instr#0, Tclass.StackMachine.Instr())
         && $Is(st#0, Tclass.StackMachine.State()))
     ==> StackMachine.State.State_q(Lit(st#0))
       && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
       && (Lit(StackMachine.Instr.PushConst_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
         ==> StackMachine.State.State_q(Lit(st#0))
           && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
           && 
          StackMachine.State.State_q(Lit(st#0))
           && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
           && (var dt_update_tmp#0#7 := Lit(st#0); 
            StackMachine.State.State_q(dt_update_tmp#0#7)
               && StackMachine.State.State_q(dt_update_tmp#0#7)))
       && (!Lit(StackMachine.Instr.PushConst_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
         ==> StackMachine.State.State_q(Lit(st#0))
           && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
           && (Lit(StackMachine.Instr.PushVar_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
             ==> StackMachine.State.State_q(Lit(st#0))
               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
               && 
              StackMachine.State.State_q(Lit(st#0))
               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
               && (var v#14 := Lit(StackMachine.Instr.v(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))); 
                StackMachine.State.State_q(Lit(st#0))
                   && (Set#IsMember(Lit(Map#Domain(Lit(StackMachine.State.regs(Lit(st#0))))), $Box(v#14))
                     ==> StackMachine.State.State_q(Lit(st#0)))
                   && (var dt_update_tmp#1#7 := Lit(st#0); 
                    StackMachine.State.State_q(dt_update_tmp#1#7)
                       && StackMachine.State.State_q(dt_update_tmp#1#7))))
           && (!Lit(StackMachine.Instr.PushVar_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
             ==> StackMachine.State.State_q(Lit(st#0))
               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
               && (Lit(StackMachine.Instr.PopAdd_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                 ==> StackMachine.State.State_q(Lit(st#0))
                   && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                   && (Lit(LinkedList.List.Cons_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                     ==> StackMachine.State.State_q(Lit(st#0))
                       && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                       && (Lit(LinkedList.List.Cons_q(Lit(LinkedList.List.tl(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))))
                         ==> StackMachine.State.State_q(Lit(st#0))
                           && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                           && 
                          StackMachine.State.State_q(Lit(st#0))
                           && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                           && 
                          StackMachine.State.State_q(Lit(st#0))
                           && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                           && (var dt_update_tmp#2#7 := Lit(st#0); 
                            StackMachine.State.State_q(dt_update_tmp#2#7)
                               && StackMachine.State.State_q(dt_update_tmp#2#7)))))
               && (!Lit(StackMachine.Instr.PopAdd_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                 ==> StackMachine.State.State_q(Lit(st#0))
                   && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                   && (Lit(StackMachine.Instr.PopSub_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                     ==> StackMachine.State.State_q(Lit(st#0))
                       && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                       && (Lit(LinkedList.List.Cons_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                         ==> StackMachine.State.State_q(Lit(st#0))
                           && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                           && (Lit(LinkedList.List.Cons_q(Lit(LinkedList.List.tl(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))))
                             ==> StackMachine.State.State_q(Lit(st#0))
                               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                               && 
                              StackMachine.State.State_q(Lit(st#0))
                               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                               && 
                              StackMachine.State.State_q(Lit(st#0))
                               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                               && (var dt_update_tmp#3#7 := Lit(st#0); 
                                StackMachine.State.State_q(dt_update_tmp#3#7)
                                   && StackMachine.State.State_q(dt_update_tmp#3#7)))))
                   && (!Lit(StackMachine.Instr.PopSub_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                     ==> StackMachine.State.State_q(Lit(st#0))
                       && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                       && (Lit(StackMachine.Instr.PopPrint_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                         ==> StackMachine.State.State_q(Lit(st#0))
                           && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                           && (Lit(LinkedList.List.Cons_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                             ==> StackMachine.State.State_q(Lit(st#0))
                               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                               && 
                              StackMachine.State.State_q(Lit(st#0))
                               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                               && (var dt_update_tmp#4#7 := Lit(st#0); 
                                StackMachine.State.State_q(Lit(st#0))
                                   && StackMachine.State.State_q(dt_update_tmp#4#7))))
                       && (!Lit(StackMachine.Instr.PopPrint_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                         ==> StackMachine.State.State_q(Lit(st#0))
                           && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                           && (Lit(LinkedList.List.Cons_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                             ==> StackMachine.State.State_q(Lit(st#0))
                               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                               && 
                              StackMachine.State.State_q(Lit(st#0))
                               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                               && 
                              StackMachine.State.State_q(Lit(st#0))
                               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))
                               && (var dt_update_tmp#5#7 := Lit(st#0); 
                                StackMachine.State.State_q(Lit(st#0))
                                   && StackMachine.State.State_q(dt_update_tmp#5#7)))
                           && (!Lit(LinkedList.List.Cons_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType)))
                             ==> StackMachine.State.State_q(Lit(st#0))
                               && _System.Tuple2.___hMake2_q(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))))))))
       && StackMachine.__default.interpInstr(Lit(instr#0), Lit(st#0))
         == (if StackMachine.Instr.PushConst_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))
           then (var tl#36 := Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType); 
            (var n#18 := LitInt(StackMachine.Instr.n(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))); 
              (var dt_update_tmp#0#6 := Lit(st#0); 
                (var dt_update#stack#0#6 := Lit(#LinkedList.List.Cons($Box(n#18), tl#36)); 
                  Lit(#StackMachine.State.State(dt_update#stack#0#6, 
                      Lit(StackMachine.State.regs(dt_update_tmp#0#6)), 
                      Lit(StackMachine.State.output(dt_update_tmp#0#6))))))))
           else (if StackMachine.Instr.PushVar_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))
             then (var tl#37 := Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType); 
              (var v#12 := Lit(StackMachine.Instr.v(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))); 
                (var val#6 := (if Set#IsMember(Lit(Map#Domain(Lit(StackMachine.State.regs(Lit(st#0))))), $Box(v#12))
                       then $Unbox(Map#Elements(Lit(StackMachine.State.regs(Lit(st#0))))[$Box(v#12)]): int
                       else 0); 
                  (var dt_update_tmp#1#6 := Lit(st#0); 
                    (var dt_update#stack#1#6 := #LinkedList.List.Cons($Box(val#6), tl#37); 
                      #StackMachine.State.State(dt_update#stack#1#6, 
                        Lit(StackMachine.State.regs(dt_update_tmp#1#6)), 
                        Lit(StackMachine.State.output(dt_update_tmp#1#6))))))))
             else (if StackMachine.Instr.PopAdd_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))
               then (if LinkedList.List.Cons_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))
                 then (if LinkedList.List.Cons_q(Lit(LinkedList.List.tl(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))))
                   then (var tl#38 := Lit(LinkedList.List.tl(Lit(LinkedList.List.tl(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))))); 
                    (var n1#12 := LitInt($Unbox(LinkedList.List.hd(Lit(LinkedList.List.tl(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))))): int); 
                      (var n2#12 := LitInt($Unbox(LinkedList.List.hd(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))): int); 
                        (var dt_update_tmp#2#6 := Lit(st#0); 
                          (var dt_update#stack#2#6 := Lit(#LinkedList.List.Cons($Box(LitInt(n1#12 + n2#12)), tl#38)); 
                            Lit(#StackMachine.State.State(dt_update#stack#2#6, 
                                Lit(StackMachine.State.regs(dt_update_tmp#2#6)), 
                                Lit(StackMachine.State.output(dt_update_tmp#2#6)))))))))
                   else st#0)
                 else st#0)
               else (if StackMachine.Instr.PopSub_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))
                 then (if LinkedList.List.Cons_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))
                   then (if LinkedList.List.Cons_q(Lit(LinkedList.List.tl(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))))
                     then (var tl#39 := Lit(LinkedList.List.tl(Lit(LinkedList.List.tl(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))))); 
                      (var n1#13 := LitInt($Unbox(LinkedList.List.hd(Lit(LinkedList.List.tl(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))))): int); 
                        (var n2#13 := LitInt($Unbox(LinkedList.List.hd(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))): int); 
                          (var dt_update_tmp#3#6 := Lit(st#0); 
                            (var dt_update#stack#3#6 := Lit(#LinkedList.List.Cons($Box(LitInt(n1#13 - n2#13)), tl#39)); 
                              Lit(#StackMachine.State.State(dt_update#stack#3#6, 
                                  Lit(StackMachine.State.regs(dt_update_tmp#3#6)), 
                                  Lit(StackMachine.State.output(dt_update_tmp#3#6)))))))))
                     else st#0)
                   else st#0)
                 else (if StackMachine.Instr.PopPrint_q(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))
                   then (if LinkedList.List.Cons_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))
                     then (var tl#40 := Lit(LinkedList.List.tl(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))); 
                      (var n#19 := LitInt($Unbox(LinkedList.List.hd(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))): int); 
                        (var dt_update_tmp#4#6 := Lit(st#0); 
                          (var dt_update#output#0#6 := Seq#Append(StackMachine.State.output(Lit(st#0)), Seq#Build(Seq#Empty(): Seq, $Box(n#19))); 
                            (var dt_update#stack#4#6 := tl#40; 
                              #StackMachine.State.State(dt_update#stack#4#6, 
                                Lit(StackMachine.State.regs(dt_update_tmp#4#6)), 
                                dt_update#output#0#6))))))
                     else st#0)
                   else (if LinkedList.List.Cons_q(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))
                     then (var tl#41 := Lit(LinkedList.List.tl(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))); 
                      (var n#20 := LitInt($Unbox(LinkedList.List.hd(Lit($Unbox(_System.Tuple2._1(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))): int); 
                        (var v#13 := Lit(StackMachine.Instr.v(Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType))); 
                          (var dt_update_tmp#5#6 := Lit(st#0); 
                            (var dt_update#regs#0#6 := Map#Build(Lit(StackMachine.State.regs(Lit(st#0))), $Box(v#13), $Box(n#20)); 
                              (var dt_update#stack#5#6 := tl#41; 
                                #StackMachine.State.State(dt_update#stack#5#6, 
                                  dt_update#regs#0#6, 
                                  Lit(StackMachine.State.output(dt_update_tmp#5#6)))))))))
                     else (var PopVar#6 := Lit($Unbox(_System.Tuple2._0(Lit(#_System._tuple#2._#Make2($Box(Lit(instr#0)), $Box(Lit(StackMachine.State.stack(Lit(st#0)))))))): DatatypeType); 
                      Lit(st#0)))))))));

// function declaration for StackMachine._default.interpProg'
function StackMachine.__default.interpProg_k($ly: LayerType, p#0: DatatypeType, st#0: DatatypeType) : DatatypeType;

function StackMachine.__default.interpProg_k#canCall(p#0: DatatypeType, st#0: DatatypeType) : bool;

// layer synonym axiom
axiom (forall $ly: LayerType, p#0: DatatypeType, st#0: DatatypeType :: 
  { StackMachine.__default.interpProg_k($LS($ly), p#0, st#0) } 
  StackMachine.__default.interpProg_k($LS($ly), p#0, st#0)
     == StackMachine.__default.interpProg_k($ly, p#0, st#0));

// fuel synonym axiom
axiom (forall $ly: LayerType, p#0: DatatypeType, st#0: DatatypeType :: 
  { StackMachine.__default.interpProg_k(AsFuelBottom($ly), p#0, st#0) } 
  StackMachine.__default.interpProg_k($ly, p#0, st#0)
     == StackMachine.__default.interpProg_k($LZ, p#0, st#0));

// consequence axiom for StackMachine.__default.interpProg_k
axiom (forall $ly: LayerType, p#0: DatatypeType, st#0: DatatypeType :: 
  { StackMachine.__default.interpProg_k($ly, p#0, st#0) } 
  StackMachine.__default.interpProg_k#canCall(p#0, st#0)
       || ($Is(p#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $Is(st#0, Tclass.StackMachine.State()))
     ==> $Is(StackMachine.__default.interpProg_k($ly, p#0, st#0), Tclass.StackMachine.State()));

function StackMachine.__default.interpProg_k#requires(LayerType, DatatypeType, DatatypeType) : bool;

// #requires axiom for StackMachine.__default.interpProg_k
axiom (forall $ly: LayerType, p#0: DatatypeType, st#0: DatatypeType :: 
  { StackMachine.__default.interpProg_k#requires($ly, p#0, st#0) } 
  $Is(p#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
       && $Is(st#0, Tclass.StackMachine.State())
     ==> StackMachine.__default.interpProg_k#requires($ly, p#0, st#0) == true);

// definition axiom for StackMachine.__default.interpProg_k (revealed)
axiom {:id "id523"} (forall $ly: LayerType, p#0: DatatypeType, st#0: DatatypeType :: 
  { StackMachine.__default.interpProg_k($LS($ly), p#0, st#0) } 
  StackMachine.__default.interpProg_k#canCall(p#0, st#0)
       || ($Is(p#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $Is(st#0, Tclass.StackMachine.State()))
     ==> (LinkedList.List.Cons_q(p#0)
         ==> (var p#6 := LinkedList.List.tl(p#0); 
          (var instr#5 := $Unbox(LinkedList.List.hd(p#0)): DatatypeType; 
            StackMachine.__default.interpProg_k#canCall(p#6, st#0)
               && StackMachine.__default.interpInstr#canCall(instr#5, StackMachine.__default.interpProg_k($ly, p#6, st#0)))))
       && StackMachine.__default.interpProg_k($LS($ly), p#0, st#0)
         == (if LinkedList.List.Cons_q(p#0)
           then (var p#5 := LinkedList.List.tl(p#0); 
            (var instr#4 := $Unbox(LinkedList.List.hd(p#0)): DatatypeType; 
              StackMachine.__default.interpInstr(instr#4, StackMachine.__default.interpProg_k($ly, p#5, st#0))))
           else st#0));

// definition axiom for StackMachine.__default.interpProg_k for all literals (revealed)
axiom {:id "id524"} (forall $ly: LayerType, p#0: DatatypeType, st#0: DatatypeType :: 
  {:weight 3} { StackMachine.__default.interpProg_k($LS($ly), Lit(p#0), Lit(st#0)) } 
  StackMachine.__default.interpProg_k#canCall(Lit(p#0), Lit(st#0))
       || ($Is(p#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $Is(st#0, Tclass.StackMachine.State()))
     ==> (Lit(LinkedList.List.Cons_q(Lit(p#0)))
         ==> (var p#8 := Lit(LinkedList.List.tl(Lit(p#0))); 
          (var instr#7 := Lit($Unbox(LinkedList.List.hd(Lit(p#0))): DatatypeType); 
            StackMachine.__default.interpProg_k#canCall(p#8, Lit(st#0))
               && StackMachine.__default.interpInstr#canCall(instr#7, StackMachine.__default.interpProg_k($LS($ly), p#8, Lit(st#0))))))
       && StackMachine.__default.interpProg_k($LS($ly), Lit(p#0), Lit(st#0))
         == (if LinkedList.List.Cons_q(Lit(p#0))
           then (var p#7 := Lit(LinkedList.List.tl(Lit(p#0))); 
            (var instr#6 := Lit($Unbox(LinkedList.List.hd(Lit(p#0))): DatatypeType); 
              Lit(StackMachine.__default.interpInstr(instr#6, Lit(StackMachine.__default.interpProg_k($LS($ly), p#7, Lit(st#0)))))))
           else st#0));

// _default.EmptyState: Allocation axiom
axiom (forall $h: Heap :: 
  { $IsAlloc(StackMachine.__default.EmptyState(), Tclass.StackMachine.State(), $h) } 
  $IsGoodHeap($h)
     ==> $IsAlloc(StackMachine.__default.EmptyState(), Tclass.StackMachine.State(), $h));

// function declaration for StackMachine._default.interpProg
function StackMachine.__default.interpProg(p#0: DatatypeType, input#0: Map) : Seq;

function StackMachine.__default.interpProg#canCall(p#0: DatatypeType, input#0: Map) : bool;

// consequence axiom for StackMachine.__default.interpProg
axiom (forall p#0: DatatypeType, input#0: Map :: 
  { StackMachine.__default.interpProg(p#0, input#0) } 
  StackMachine.__default.interpProg#canCall(p#0, input#0)
       || ($Is(p#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $Is(input#0, TMap(TSeq(TChar), TInt)))
     ==> $Is(StackMachine.__default.interpProg(p#0, input#0), TSeq(TInt)));

function StackMachine.__default.interpProg#requires(DatatypeType, Map) : bool;

// #requires axiom for StackMachine.__default.interpProg
axiom (forall p#0: DatatypeType, input#0: Map :: 
  { StackMachine.__default.interpProg#requires(p#0, input#0) } 
  $Is(p#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
       && $Is(input#0, TMap(TSeq(TChar), TInt))
     ==> StackMachine.__default.interpProg#requires(p#0, input#0) == true);

// definition axiom for StackMachine.__default.interpProg (revealed)
axiom {:id "id525"} (forall p#0: DatatypeType, input#0: Map :: 
  { StackMachine.__default.interpProg(p#0, input#0) } 
  StackMachine.__default.interpProg#canCall(p#0, input#0)
       || ($Is(p#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $Is(input#0, TMap(TSeq(TChar), TInt)))
     ==> (var dt_update_tmp#0#3 := StackMachine.__default.EmptyState(); 
        StackMachine.State.State_q(dt_update_tmp#0#3)
           && StackMachine.State.State_q(dt_update_tmp#0#3))
       && StackMachine.__default.interpProg_k#canCall(p#0, 
        (var dt_update_tmp#0#3 := StackMachine.__default.EmptyState(); 
          (var dt_update#regs#0#3 := input#0; 
            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#3), 
              dt_update#regs#0#3, 
              StackMachine.State.output(dt_update_tmp#0#3)))))
       && StackMachine.State.State_q(StackMachine.__default.interpProg_k($LS($LZ), 
          p#0, 
          (var dt_update_tmp#0#3 := StackMachine.__default.EmptyState(); 
            (var dt_update#regs#0#3 := input#0; 
              #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#3), 
                dt_update#regs#0#3, 
                StackMachine.State.output(dt_update_tmp#0#3))))))
       && StackMachine.__default.interpProg(p#0, input#0)
         == StackMachine.State.output(StackMachine.__default.interpProg_k($LS($LZ), 
            p#0, 
            (var dt_update_tmp#0#3 := StackMachine.__default.EmptyState(); 
              (var dt_update#regs#0#3 := input#0; 
                #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#3), 
                  dt_update#regs#0#3, 
                  StackMachine.State.output(dt_update_tmp#0#3)))))));

// definition axiom for StackMachine.__default.interpProg for all literals (revealed)
axiom {:id "id526"} (forall p#0: DatatypeType, input#0: Map :: 
  {:weight 3} { StackMachine.__default.interpProg(Lit(p#0), Lit(input#0)) } 
  StackMachine.__default.interpProg#canCall(Lit(p#0), Lit(input#0))
       || ($Is(p#0, Tclass.LinkedList.List(Tclass.StackMachine.Instr()))
         && $Is(input#0, TMap(TSeq(TChar), TInt)))
     ==> (var dt_update_tmp#0#4 := StackMachine.__default.EmptyState(); 
        StackMachine.State.State_q(dt_update_tmp#0#4)
           && StackMachine.State.State_q(dt_update_tmp#0#4))
       && StackMachine.__default.interpProg_k#canCall(Lit(p#0), 
        (var dt_update_tmp#0#4 := StackMachine.__default.EmptyState(); 
          (var dt_update#regs#0#4 := Lit(input#0); 
            #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#4), 
              dt_update#regs#0#4, 
              StackMachine.State.output(dt_update_tmp#0#4)))))
       && StackMachine.State.State_q(StackMachine.__default.interpProg_k($LS($LZ), 
          Lit(p#0), 
          (var dt_update_tmp#0#4 := StackMachine.__default.EmptyState(); 
            (var dt_update#regs#0#4 := Lit(input#0); 
              #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#4), 
                dt_update#regs#0#4, 
                StackMachine.State.output(dt_update_tmp#0#4))))))
       && StackMachine.__default.interpProg(Lit(p#0), Lit(input#0))
         == StackMachine.State.output(StackMachine.__default.interpProg_k($LS($LZ), 
            Lit(p#0), 
            (var dt_update_tmp#0#4 := StackMachine.__default.EmptyState(); 
              (var dt_update#regs#0#4 := Lit(input#0); 
                #StackMachine.State.State(StackMachine.State.stack(dt_update_tmp#0#4), 
                  dt_update#regs#0#4, 
                  StackMachine.State.output(dt_update_tmp#0#4)))))));

// Constructor function declaration
function #StackMachine.Instr.PushConst(int) : DatatypeType;

const unique ##StackMachine.Instr.PushConst: DtCtorId
uses {
// Constructor identifier
axiom (forall a#0#0#0: int :: 
  { #StackMachine.Instr.PushConst(a#0#0#0) } 
  DatatypeCtorId(#StackMachine.Instr.PushConst(a#0#0#0))
     == ##StackMachine.Instr.PushConst);
}

function StackMachine.Instr.PushConst_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PushConst_q(d) } 
  StackMachine.Instr.PushConst_q(d)
     <==> DatatypeCtorId(d) == ##StackMachine.Instr.PushConst);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PushConst_q(d) } 
  StackMachine.Instr.PushConst_q(d)
     ==> (exists a#1#0#0: int :: d == #StackMachine.Instr.PushConst(a#1#0#0)));

// Constructor $Is
axiom (forall a#2#0#0: int :: 
  { $Is(#StackMachine.Instr.PushConst(a#2#0#0), Tclass.StackMachine.Instr()) } 
  $Is(#StackMachine.Instr.PushConst(a#2#0#0), Tclass.StackMachine.Instr())
     <==> $Is(a#2#0#0, TInt));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(StackMachine.Instr.n(d), TInt, $h) } 
  $IsGoodHeap($h)
       && 
      StackMachine.Instr.PushConst_q(d)
       && $IsAlloc(d, Tclass.StackMachine.Instr(), $h)
     ==> $IsAlloc(StackMachine.Instr.n(d), TInt, $h));

// Constructor literal
axiom (forall a#3#0#0: int :: 
  { #StackMachine.Instr.PushConst(LitInt(a#3#0#0)) } 
  #StackMachine.Instr.PushConst(LitInt(a#3#0#0))
     == Lit(#StackMachine.Instr.PushConst(a#3#0#0)));

function StackMachine.Instr.n(DatatypeType) : int;

// Constructor injectivity
axiom (forall a#4#0#0: int :: 
  { #StackMachine.Instr.PushConst(a#4#0#0) } 
  StackMachine.Instr.n(#StackMachine.Instr.PushConst(a#4#0#0)) == a#4#0#0);

// Constructor function declaration
function #StackMachine.Instr.PushVar(Seq) : DatatypeType;

const unique ##StackMachine.Instr.PushVar: DtCtorId
uses {
// Constructor identifier
axiom (forall a#5#0#0: Seq :: 
  { #StackMachine.Instr.PushVar(a#5#0#0) } 
  DatatypeCtorId(#StackMachine.Instr.PushVar(a#5#0#0))
     == ##StackMachine.Instr.PushVar);
}

function StackMachine.Instr.PushVar_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PushVar_q(d) } 
  StackMachine.Instr.PushVar_q(d)
     <==> DatatypeCtorId(d) == ##StackMachine.Instr.PushVar);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PushVar_q(d) } 
  StackMachine.Instr.PushVar_q(d)
     ==> (exists a#6#0#0: Seq :: d == #StackMachine.Instr.PushVar(a#6#0#0)));

// Constructor $Is
axiom (forall a#7#0#0: Seq :: 
  { $Is(#StackMachine.Instr.PushVar(a#7#0#0), Tclass.StackMachine.Instr()) } 
  $Is(#StackMachine.Instr.PushVar(a#7#0#0), Tclass.StackMachine.Instr())
     <==> $Is(a#7#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(StackMachine.Instr.v(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      StackMachine.Instr.PushVar_q(d)
       && $IsAlloc(d, Tclass.StackMachine.Instr(), $h)
     ==> $IsAlloc(StackMachine.Instr.v(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#8#0#0: Seq :: 
  { #StackMachine.Instr.PushVar(Lit(a#8#0#0)) } 
  #StackMachine.Instr.PushVar(Lit(a#8#0#0))
     == Lit(#StackMachine.Instr.PushVar(a#8#0#0)));

function StackMachine.Instr.v(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#9#0#0: Seq :: 
  { #StackMachine.Instr.PushVar(a#9#0#0) } 
  StackMachine.Instr.v(#StackMachine.Instr.PushVar(a#9#0#0)) == a#9#0#0);

// Inductive seq element rank
axiom (forall a#10#0#0: Seq, i: int :: 
  { Seq#Index(a#10#0#0, i), #StackMachine.Instr.PushVar(a#10#0#0) } 
  0 <= i && i < Seq#Length(a#10#0#0)
     ==> DtRank($Unbox(Seq#Index(a#10#0#0, i)): DatatypeType)
       < DtRank(#StackMachine.Instr.PushVar(a#10#0#0)));

// Inductive seq rank
axiom (forall a#11#0#0: Seq :: 
  { #StackMachine.Instr.PushVar(a#11#0#0) } 
  Seq#Rank(a#11#0#0) < DtRank(#StackMachine.Instr.PushVar(a#11#0#0)));

// Constructor function declaration
function #StackMachine.Instr.PopAdd() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#StackMachine.Instr.PopAdd()) == ##StackMachine.Instr.PopAdd;
// Constructor $Is
axiom $Is(#StackMachine.Instr.PopAdd(), Tclass.StackMachine.Instr());
// Constructor literal
axiom #StackMachine.Instr.PopAdd() == Lit(#StackMachine.Instr.PopAdd());
}

const unique ##StackMachine.Instr.PopAdd: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#StackMachine.Instr.PopAdd()) == ##StackMachine.Instr.PopAdd;
}

function StackMachine.Instr.PopAdd_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PopAdd_q(d) } 
  StackMachine.Instr.PopAdd_q(d)
     <==> DatatypeCtorId(d) == ##StackMachine.Instr.PopAdd);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PopAdd_q(d) } 
  StackMachine.Instr.PopAdd_q(d) ==> d == #StackMachine.Instr.PopAdd());

// Constructor function declaration
function #StackMachine.Instr.PopSub() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#StackMachine.Instr.PopSub()) == ##StackMachine.Instr.PopSub;
// Constructor $Is
axiom $Is(#StackMachine.Instr.PopSub(), Tclass.StackMachine.Instr());
// Constructor literal
axiom #StackMachine.Instr.PopSub() == Lit(#StackMachine.Instr.PopSub());
}

const unique ##StackMachine.Instr.PopSub: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#StackMachine.Instr.PopSub()) == ##StackMachine.Instr.PopSub;
}

function StackMachine.Instr.PopSub_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PopSub_q(d) } 
  StackMachine.Instr.PopSub_q(d)
     <==> DatatypeCtorId(d) == ##StackMachine.Instr.PopSub);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PopSub_q(d) } 
  StackMachine.Instr.PopSub_q(d) ==> d == #StackMachine.Instr.PopSub());

// Constructor function declaration
function #StackMachine.Instr.PopPrint() : DatatypeType
uses {
// Constructor identifier
axiom DatatypeCtorId(#StackMachine.Instr.PopPrint()) == ##StackMachine.Instr.PopPrint;
// Constructor $Is
axiom $Is(#StackMachine.Instr.PopPrint(), Tclass.StackMachine.Instr());
// Constructor literal
axiom #StackMachine.Instr.PopPrint() == Lit(#StackMachine.Instr.PopPrint());
}

const unique ##StackMachine.Instr.PopPrint: DtCtorId
uses {
// Constructor identifier
axiom DatatypeCtorId(#StackMachine.Instr.PopPrint()) == ##StackMachine.Instr.PopPrint;
}

function StackMachine.Instr.PopPrint_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PopPrint_q(d) } 
  StackMachine.Instr.PopPrint_q(d)
     <==> DatatypeCtorId(d) == ##StackMachine.Instr.PopPrint);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PopPrint_q(d) } 
  StackMachine.Instr.PopPrint_q(d) ==> d == #StackMachine.Instr.PopPrint());

// Constructor function declaration
function #StackMachine.Instr.PopVar(Seq) : DatatypeType;

const unique ##StackMachine.Instr.PopVar: DtCtorId
uses {
// Constructor identifier
axiom (forall a#24#0#0: Seq :: 
  { #StackMachine.Instr.PopVar(a#24#0#0) } 
  DatatypeCtorId(#StackMachine.Instr.PopVar(a#24#0#0))
     == ##StackMachine.Instr.PopVar);
}

function StackMachine.Instr.PopVar_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PopVar_q(d) } 
  StackMachine.Instr.PopVar_q(d)
     <==> DatatypeCtorId(d) == ##StackMachine.Instr.PopVar);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PopVar_q(d) } 
  StackMachine.Instr.PopVar_q(d)
     ==> (exists a#25#0#0: Seq :: d == #StackMachine.Instr.PopVar(a#25#0#0)));

// Constructor $Is
axiom (forall a#26#0#0: Seq :: 
  { $Is(#StackMachine.Instr.PopVar(a#26#0#0), Tclass.StackMachine.Instr()) } 
  $Is(#StackMachine.Instr.PopVar(a#26#0#0), Tclass.StackMachine.Instr())
     <==> $Is(a#26#0#0, TSeq(TChar)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(StackMachine.Instr.v(d), TSeq(TChar), $h) } 
  $IsGoodHeap($h)
       && 
      StackMachine.Instr.PopVar_q(d)
       && $IsAlloc(d, Tclass.StackMachine.Instr(), $h)
     ==> $IsAlloc(StackMachine.Instr.v(d), TSeq(TChar), $h));

// Constructor literal
axiom (forall a#27#0#0: Seq :: 
  { #StackMachine.Instr.PopVar(Lit(a#27#0#0)) } 
  #StackMachine.Instr.PopVar(Lit(a#27#0#0))
     == Lit(#StackMachine.Instr.PopVar(a#27#0#0)));

// Constructor injectivity
axiom (forall a#28#0#0: Seq :: 
  { #StackMachine.Instr.PopVar(a#28#0#0) } 
  StackMachine.Instr.v(#StackMachine.Instr.PopVar(a#28#0#0)) == a#28#0#0);

// Inductive seq element rank
axiom (forall a#29#0#0: Seq, i: int :: 
  { Seq#Index(a#29#0#0, i), #StackMachine.Instr.PopVar(a#29#0#0) } 
  0 <= i && i < Seq#Length(a#29#0#0)
     ==> DtRank($Unbox(Seq#Index(a#29#0#0, i)): DatatypeType)
       < DtRank(#StackMachine.Instr.PopVar(a#29#0#0)));

// Inductive seq rank
axiom (forall a#30#0#0: Seq :: 
  { #StackMachine.Instr.PopVar(a#30#0#0) } 
  Seq#Rank(a#30#0#0) < DtRank(#StackMachine.Instr.PopVar(a#30#0#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.StackMachine.Instr(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.StackMachine.Instr())
     ==> $IsAlloc(d, Tclass.StackMachine.Instr(), $h));

// Depth-one case-split function
function $IsA#StackMachine.Instr(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#StackMachine.Instr(d) } 
  $IsA#StackMachine.Instr(d)
     ==> StackMachine.Instr.PushConst_q(d)
       || StackMachine.Instr.PushVar_q(d)
       || StackMachine.Instr.PopAdd_q(d)
       || StackMachine.Instr.PopSub_q(d)
       || StackMachine.Instr.PopPrint_q(d)
       || StackMachine.Instr.PopVar_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { StackMachine.Instr.PopVar_q(d), $Is(d, Tclass.StackMachine.Instr()) } 
    { StackMachine.Instr.PopPrint_q(d), $Is(d, Tclass.StackMachine.Instr()) } 
    { StackMachine.Instr.PopSub_q(d), $Is(d, Tclass.StackMachine.Instr()) } 
    { StackMachine.Instr.PopAdd_q(d), $Is(d, Tclass.StackMachine.Instr()) } 
    { StackMachine.Instr.PushVar_q(d), $Is(d, Tclass.StackMachine.Instr()) } 
    { StackMachine.Instr.PushConst_q(d), $Is(d, Tclass.StackMachine.Instr()) } 
  $Is(d, Tclass.StackMachine.Instr())
     ==> StackMachine.Instr.PushConst_q(d)
       || StackMachine.Instr.PushVar_q(d)
       || StackMachine.Instr.PopAdd_q(d)
       || StackMachine.Instr.PopSub_q(d)
       || StackMachine.Instr.PopPrint_q(d)
       || StackMachine.Instr.PopVar_q(d));

// Datatype extensional equality declaration
function StackMachine.Instr#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #StackMachine.Instr.PushConst
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PushConst_q(a) } 
    { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PushConst_q(b) } 
  StackMachine.Instr.PushConst_q(a) && StackMachine.Instr.PushConst_q(b)
     ==> (StackMachine.Instr#Equal(a, b)
       <==> StackMachine.Instr.n(a) == StackMachine.Instr.n(b)));

// Datatype extensional equality definition: #StackMachine.Instr.PushVar
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PushVar_q(a) } 
    { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PushVar_q(b) } 
  StackMachine.Instr.PushVar_q(a) && StackMachine.Instr.PushVar_q(b)
     ==> (StackMachine.Instr#Equal(a, b)
       <==> Seq#Equal(StackMachine.Instr.v(a), StackMachine.Instr.v(b))));

// Datatype extensional equality definition: #StackMachine.Instr.PopAdd
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PopAdd_q(a) } 
    { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PopAdd_q(b) } 
  StackMachine.Instr.PopAdd_q(a) && StackMachine.Instr.PopAdd_q(b)
     ==> StackMachine.Instr#Equal(a, b));

// Datatype extensional equality definition: #StackMachine.Instr.PopSub
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PopSub_q(a) } 
    { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PopSub_q(b) } 
  StackMachine.Instr.PopSub_q(a) && StackMachine.Instr.PopSub_q(b)
     ==> StackMachine.Instr#Equal(a, b));

// Datatype extensional equality definition: #StackMachine.Instr.PopPrint
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PopPrint_q(a) } 
    { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PopPrint_q(b) } 
  StackMachine.Instr.PopPrint_q(a) && StackMachine.Instr.PopPrint_q(b)
     ==> StackMachine.Instr#Equal(a, b));

// Datatype extensional equality definition: #StackMachine.Instr.PopVar
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PopVar_q(a) } 
    { StackMachine.Instr#Equal(a, b), StackMachine.Instr.PopVar_q(b) } 
  StackMachine.Instr.PopVar_q(a) && StackMachine.Instr.PopVar_q(b)
     ==> (StackMachine.Instr#Equal(a, b)
       <==> Seq#Equal(StackMachine.Instr.v(a), StackMachine.Instr.v(b))));

// Datatype extensionality axiom: StackMachine.Instr
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { StackMachine.Instr#Equal(a, b) } 
  StackMachine.Instr#Equal(a, b) <==> a == b);

const unique class.StackMachine.Instr: ClassName;

// Constructor function declaration
function #StackMachine.State.State(DatatypeType, Map, Seq) : DatatypeType;

const unique ##StackMachine.State.State: DtCtorId
uses {
// Constructor identifier
axiom (forall a#31#0#0: DatatypeType, a#31#1#0: Map, a#31#2#0: Seq :: 
  { #StackMachine.State.State(a#31#0#0, a#31#1#0, a#31#2#0) } 
  DatatypeCtorId(#StackMachine.State.State(a#31#0#0, a#31#1#0, a#31#2#0))
     == ##StackMachine.State.State);
}

function StackMachine.State.State_q(DatatypeType) : bool;

// Questionmark and identifier
axiom (forall d: DatatypeType :: 
  { StackMachine.State.State_q(d) } 
  StackMachine.State.State_q(d)
     <==> DatatypeCtorId(d) == ##StackMachine.State.State);

// Constructor questionmark has arguments
axiom (forall d: DatatypeType :: 
  { StackMachine.State.State_q(d) } 
  StackMachine.State.State_q(d)
     ==> (exists a#32#0#0: DatatypeType, a#32#1#0: Map, a#32#2#0: Seq :: 
      d == #StackMachine.State.State(a#32#0#0, a#32#1#0, a#32#2#0)));

// Constructor $Is
axiom (forall a#33#0#0: DatatypeType, a#33#1#0: Map, a#33#2#0: Seq :: 
  { $Is(#StackMachine.State.State(a#33#0#0, a#33#1#0, a#33#2#0), 
      Tclass.StackMachine.State()) } 
  $Is(#StackMachine.State.State(a#33#0#0, a#33#1#0, a#33#2#0), 
      Tclass.StackMachine.State())
     <==> $Is(a#33#0#0, Tclass.LinkedList.List(TInt))
       && $Is(a#33#1#0, TMap(TSeq(TChar), TInt))
       && $Is(a#33#2#0, TSeq(TInt)));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(StackMachine.State.stack(d), Tclass.LinkedList.List(TInt), $h) } 
  $IsGoodHeap($h)
       && 
      StackMachine.State.State_q(d)
       && $IsAlloc(d, Tclass.StackMachine.State(), $h)
     ==> $IsAlloc(StackMachine.State.stack(d), Tclass.LinkedList.List(TInt), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(StackMachine.State.regs(d), TMap(TSeq(TChar), TInt), $h) } 
  $IsGoodHeap($h)
       && 
      StackMachine.State.State_q(d)
       && $IsAlloc(d, Tclass.StackMachine.State(), $h)
     ==> $IsAlloc(StackMachine.State.regs(d), TMap(TSeq(TChar), TInt), $h));

// Destructor $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(StackMachine.State.output(d), TSeq(TInt), $h) } 
  $IsGoodHeap($h)
       && 
      StackMachine.State.State_q(d)
       && $IsAlloc(d, Tclass.StackMachine.State(), $h)
     ==> $IsAlloc(StackMachine.State.output(d), TSeq(TInt), $h));

// Constructor literal
axiom (forall a#34#0#0: DatatypeType, a#34#1#0: Map, a#34#2#0: Seq :: 
  { #StackMachine.State.State(Lit(a#34#0#0), Lit(a#34#1#0), Lit(a#34#2#0)) } 
  #StackMachine.State.State(Lit(a#34#0#0), Lit(a#34#1#0), Lit(a#34#2#0))
     == Lit(#StackMachine.State.State(a#34#0#0, a#34#1#0, a#34#2#0)));

function StackMachine.State.stack(DatatypeType) : DatatypeType;

// Constructor injectivity
axiom (forall a#35#0#0: DatatypeType, a#35#1#0: Map, a#35#2#0: Seq :: 
  { #StackMachine.State.State(a#35#0#0, a#35#1#0, a#35#2#0) } 
  StackMachine.State.stack(#StackMachine.State.State(a#35#0#0, a#35#1#0, a#35#2#0))
     == a#35#0#0);

// Inductive rank
axiom (forall a#36#0#0: DatatypeType, a#36#1#0: Map, a#36#2#0: Seq :: 
  { #StackMachine.State.State(a#36#0#0, a#36#1#0, a#36#2#0) } 
  DtRank(a#36#0#0)
     < DtRank(#StackMachine.State.State(a#36#0#0, a#36#1#0, a#36#2#0)));

function StackMachine.State.regs(DatatypeType) : Map;

// Constructor injectivity
axiom (forall a#37#0#0: DatatypeType, a#37#1#0: Map, a#37#2#0: Seq :: 
  { #StackMachine.State.State(a#37#0#0, a#37#1#0, a#37#2#0) } 
  StackMachine.State.regs(#StackMachine.State.State(a#37#0#0, a#37#1#0, a#37#2#0))
     == a#37#1#0);

// Inductive map key rank
axiom (forall a#38#0#0: DatatypeType, a#38#1#0: Map, a#38#2#0: Seq, d: DatatypeType :: 
  { Set#IsMember(Map#Domain(a#38#1#0), $Box(d)), #StackMachine.State.State(a#38#0#0, a#38#1#0, a#38#2#0) } 
  Set#IsMember(Map#Domain(a#38#1#0), $Box(d))
     ==> DtRank(d) < DtRank(#StackMachine.State.State(a#38#0#0, a#38#1#0, a#38#2#0)));

// Inductive map value rank
axiom (forall a#39#0#0: DatatypeType, a#39#1#0: Map, a#39#2#0: Seq, bx: Box :: 
  { Set#IsMember(Map#Domain(a#39#1#0), bx), #StackMachine.State.State(a#39#0#0, a#39#1#0, a#39#2#0) } 
  Set#IsMember(Map#Domain(a#39#1#0), bx)
     ==> DtRank($Unbox(Map#Elements(a#39#1#0)[bx]): DatatypeType)
       < DtRank(#StackMachine.State.State(a#39#0#0, a#39#1#0, a#39#2#0)));

function StackMachine.State.output(DatatypeType) : Seq;

// Constructor injectivity
axiom (forall a#40#0#0: DatatypeType, a#40#1#0: Map, a#40#2#0: Seq :: 
  { #StackMachine.State.State(a#40#0#0, a#40#1#0, a#40#2#0) } 
  StackMachine.State.output(#StackMachine.State.State(a#40#0#0, a#40#1#0, a#40#2#0))
     == a#40#2#0);

// Inductive seq element rank
axiom (forall a#41#0#0: DatatypeType, a#41#1#0: Map, a#41#2#0: Seq, i: int :: 
  { Seq#Index(a#41#2#0, i), #StackMachine.State.State(a#41#0#0, a#41#1#0, a#41#2#0) } 
  0 <= i && i < Seq#Length(a#41#2#0)
     ==> DtRank($Unbox(Seq#Index(a#41#2#0, i)): DatatypeType)
       < DtRank(#StackMachine.State.State(a#41#0#0, a#41#1#0, a#41#2#0)));

// Inductive seq rank
axiom (forall a#42#0#0: DatatypeType, a#42#1#0: Map, a#42#2#0: Seq :: 
  { #StackMachine.State.State(a#42#0#0, a#42#1#0, a#42#2#0) } 
  Seq#Rank(a#42#2#0)
     < DtRank(#StackMachine.State.State(a#42#0#0, a#42#1#0, a#42#2#0)));

// Datatype $IsAlloc
axiom (forall d: DatatypeType, $h: Heap :: 
  { $IsAlloc(d, Tclass.StackMachine.State(), $h) } 
  $IsGoodHeap($h) && $Is(d, Tclass.StackMachine.State())
     ==> $IsAlloc(d, Tclass.StackMachine.State(), $h));

// Depth-one case-split function
function $IsA#StackMachine.State(DatatypeType) : bool;

// Depth-one case-split axiom
axiom (forall d: DatatypeType :: 
  { $IsA#StackMachine.State(d) } 
  $IsA#StackMachine.State(d) ==> StackMachine.State.State_q(d));

// Questionmark data type disjunctivity
axiom (forall d: DatatypeType :: 
  { StackMachine.State.State_q(d), $Is(d, Tclass.StackMachine.State()) } 
  $Is(d, Tclass.StackMachine.State()) ==> StackMachine.State.State_q(d));

// Datatype extensional equality declaration
function StackMachine.State#Equal(DatatypeType, DatatypeType) : bool;

// Datatype extensional equality definition: #StackMachine.State.State
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { StackMachine.State#Equal(a, b) } 
  StackMachine.State#Equal(a, b)
     <==> LinkedList.List#Equal(StackMachine.State.stack(a), StackMachine.State.stack(b))
       && Map#Equal(StackMachine.State.regs(a), StackMachine.State.regs(b))
       && Seq#Equal(StackMachine.State.output(a), StackMachine.State.output(b)));

// Datatype extensionality axiom: StackMachine.State
axiom (forall a: DatatypeType, b: DatatypeType :: 
  { StackMachine.State#Equal(a, b) } 
  StackMachine.State#Equal(a, b) <==> a == b);

const unique class.StackMachine.State: ClassName;

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

const unique tytagFamily$_tuple#3: TyTagFamily;

const unique tytagFamily$_#Func3: TyTagFamily;

const unique tytagFamily$_#PartialFunc3: TyTagFamily;

const unique tytagFamily$_#TotalFunc3: TyTagFamily;

const unique tytagFamily$Expr: TyTagFamily;

const unique tytagFamily$Instr: TyTagFamily;

const unique tytagFamily$List: TyTagFamily;

const unique tytagFamily$BinOp: TyTagFamily;

const unique tytagFamily$Stmt: TyTagFamily;

const unique tytagFamily$State: TyTagFamily;

const unique tytagFamily$InterpResult: TyTagFamily;
