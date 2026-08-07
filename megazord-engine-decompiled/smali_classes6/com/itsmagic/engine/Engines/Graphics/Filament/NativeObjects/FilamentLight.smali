.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field private static final concreteEntityReferences:Ljava/util/Map;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lkc/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lea/b;


# instance fields
.field public final b:Lkc/c;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->d:Lea/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->concreteEntityReferences:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/LightManager$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 9
    invoke-static {}, Lc9/a;->F()V

    .line 10
    invoke-static {}, Ljc/a;->d()V

    .line 11
    new-instance v0, Lkc/c;

    invoke-direct {v0}, Lkc/c;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->b:Lkc/c;

    .line 12
    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/filament/LightManager$a;->a(Lcom/google/android/filament/Engine;I)V

    .line 13
    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result p1

    int-to-long v1, p1

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->d:Lea/b;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    .line 14
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->concreteEntityReferences:Ljava/util/Map;

    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/LightManager$a;Lcom/google/android/filament/Engine;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "engine"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    .line 2
    invoke-static {}, Lc9/a;->F()V

    .line 3
    invoke-static {}, Ljc/a;->d()V

    .line 4
    new-instance v0, Lkc/c;

    invoke-direct {v0}, Lkc/c;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->b:Lkc/c;

    .line 5
    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Lcom/google/android/filament/LightManager$a;->a(Lcom/google/android/filament/Engine;I)V

    .line 6
    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result p1

    int-to-long p1, p1

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->d:Lea/b;

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    .line 7
    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->concreteEntityReferences:Ljava/util/Map;

    invoke-virtual {v0}, Lkc/c;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->concreteEntityReferences:Ljava/util/Map;

    return-object v0
.end method

.method public static s(Lkc/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entity"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->concreteEntityReferences:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public destroyImmediate()V
    .locals 2

    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->d()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->b:Lkc/c;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->x(Lkc/c;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->c:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->b:Lkc/c;

    invoke-virtual {v0}, Lkc/c;->destroyImmediate()V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Light entity still bound to a scene"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public r()Lkc/c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->b:Lkc/c;

    return-object v0
.end method

.method public setColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->c0()Lcom/google/android/filament/LightManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->b:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/LightManager;->B(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/filament/LightManager;->Q(IFFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public setIntensity(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->c0()Lcom/google/android/filament/LightManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->b:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/LightManager;->B(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/LightManager;->T(IF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->c0()Lcom/google/android/filament/LightManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->b:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/LightManager;->B(I)I

    move-result v1

    const/4 v2, 0x3

    new-array v3, v2, [F

    invoke-virtual {v0, v1, v3}, Lcom/google/android/filament/LightManager;->y(I[F)[F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {v0, v1, v3, v4, p1}, Lcom/google/android/filament/LightManager;->R(IFFF)V

    new-array p1, v2, [F

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/LightManager;->y(I[F)[F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public v(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->c0()Lcom/google/android/filament/LightManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->b:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/LightManager;->B(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/filament/LightManager;->X(IFFF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public w(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->c:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->c0()Lcom/google/android/filament/LightManager;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentLight;->b:Lkc/c;

    invoke-virtual {v1}, Lkc/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/LightManager;->B(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/LightManager;->Y(IZ)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method
