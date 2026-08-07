.class public Lkc/c;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field public static final c:Lea/b;


# instance fields
.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkc/b;

    invoke-direct {v0}, Lkc/b;-><init>()V

    sput-object v0, Lkc/c;->c:Lea/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lcom/google/android/filament/EntityManager;->f()Lcom/google/android/filament/EntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/EntityManager;->a()I

    move-result v0

    iput v0, p0, Lkc/c;->b:I

    int-to-long v0, v0

    sget-object v2, Lkc/c;->c:Lea/b;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void
.end method

.method public static synthetic r(J)V
    .locals 0

    invoke-static {p0, p1}, Lkc/c;->u(J)V

    return-void
.end method

.method private static synthetic u(J)V
    .locals 0

    long-to-int p0, p0

    invoke-static {p0}, Ljc/b;->a(I)V

    return-void
.end method


# virtual methods
.method public destroyImmediate()V
    .locals 2

    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->d()V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->x(Lkc/c;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isUsed(Lkc/c;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->u(Lkc/c;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->s(Lkc/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Entity still used by a light"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Entity still used by a camera"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Entity still used by a renderable"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Entity still used by a scene"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lkc/c;->b:I

    return v0
.end method

.method public s()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lkc/c;->destroyImmediate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
