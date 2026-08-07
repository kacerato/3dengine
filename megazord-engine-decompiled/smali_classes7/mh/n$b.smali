.class public Lmh/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmh/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lkc/c;

.field public b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public d:Lkc/d;

.field public e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public f:LMb/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmh/n$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lmh/n$b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmh/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 0

    iget-object p0, p0, Lmh/n$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object p0
.end method

.method public static synthetic b(Lmh/n$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 0

    iput-object p1, p0, Lmh/n$b;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object p1
.end method

.method public static synthetic c(Lmh/n$b;)Lkc/d;
    .locals 0

    iget-object p0, p0, Lmh/n$b;->d:Lkc/d;

    return-object p0
.end method

.method public static synthetic d(Lmh/n$b;Lkc/d;)Lkc/d;
    .locals 0

    iput-object p1, p0, Lmh/n$b;->d:Lkc/d;

    return-object p1
.end method

.method public static synthetic e(Lmh/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 0

    iget-object p0, p0, Lmh/n$b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object p0
.end method

.method public static synthetic f(Lmh/n$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 0

    iput-object p1, p0, Lmh/n$b;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object p1
.end method

.method public static synthetic g(Lmh/n$b;)Lkc/c;
    .locals 0

    iget-object p0, p0, Lmh/n$b;->a:Lkc/c;

    return-object p0
.end method

.method public static synthetic h(Lmh/n$b;Lkc/c;)Lkc/c;
    .locals 0

    iput-object p1, p0, Lmh/n$b;->a:Lkc/c;

    return-object p1
.end method

.method public static synthetic i(Lmh/n$b;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
    .locals 0

    iget-object p0, p0, Lmh/n$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    return-object p0
.end method

.method public static synthetic j(Lmh/n$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
    .locals 0

    iput-object p1, p0, Lmh/n$b;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    return-object p1
.end method

.method public static synthetic k(Lmh/n$b;)LMb/p;
    .locals 0

    iget-object p0, p0, Lmh/n$b;->f:LMb/p;

    return-object p0
.end method

.method public static synthetic l(Lmh/n$b;LMb/p;)LMb/p;
    .locals 0

    iput-object p1, p0, Lmh/n$b;->f:LMb/p;

    return-object p1
.end method
