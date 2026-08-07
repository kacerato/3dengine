.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field public static final c:Lea/b;

.field private static final concreteCBReferences:Lye/X;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/X<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Z

.field private filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final indirectLight:Lcom/google/android/filament/IndirectLight;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->c:Lea/b;

    new-instance v0, Lye/X;

    invoke-direct {v0}, Lye/X;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->concreteCBReferences:Lye/X;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/IndirectLight$a;LOb/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "cubemapInstance"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->d()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LOb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, LOb/b;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->A()Lcom/google/android/filament/Texture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/IndirectLight$a;->f(Lcom/google/android/filament/Texture;)Lcom/google/android/filament/IndirectLight$a;

    :cond_1
    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/IndirectLight$a;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndirectLight;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->indirectLight:Lcom/google/android/filament/IndirectLight;

    invoke-virtual {p1}, Lcom/google/android/filament/IndirectLight;->q()J

    move-result-wide v0

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->c:Lea/b;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    if-eqz p2, :cond_2

    sget-object p2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->concreteCBReferences:Lye/X;

    invoke-virtual {p1}, Lcom/google/android/filament/IndirectLight;->q()J

    move-result-wide v0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {p2, v0, v1, p1}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static synthetic r()Lye/X;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->concreteCBReferences:Lye/X;

    return-object v0
.end method

.method public static u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentTexture"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->concreteCBReferences:Lye/X;

    invoke-virtual {v0, p0}, Lye/X;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public destroyImmediate()V
    .locals 2

    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->d()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->b:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->D(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->filamentTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "IndirectLight still bound to a scene"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public s()Lcom/google/android/filament/IndirectLight;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->indirectLight:Lcom/google/android/filament/IndirectLight;

    return-object v0
.end method
