.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"


# static fields
.field public static final c:Lea/b;


# instance fields
.field public b:Z

.field private boneCount:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final skinningBuffer:Lcom/google/android/filament/SkinningBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->c:Lea/b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boneCount"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    const/16 v0, 0x100

    if-gt p1, v0, :cond_0

    new-instance v0, Lcom/google/android/filament/SkinningBuffer$a;

    invoke-direct {v0}, Lcom/google/android/filament/SkinningBuffer$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/filament/SkinningBuffer$a;->a(I)Lcom/google/android/filament/SkinningBuffer$a;

    move-result-object v0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/SkinningBuffer$a;->b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/SkinningBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->skinningBuffer:Lcom/google/android/filament/SkinningBuffer;

    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->boneCount:I

    invoke-virtual {v0}, Lcom/google/android/filament/SkinningBuffer;->h()J

    move-result-wide v0

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->c:Lea/b;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Can`t be more than 256 bones"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public destroyImmediate()V
    .locals 2

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->b:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->b:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "SkinningBuffer still used by a renderable"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getBoneCount()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->boneCount:I

    return v0
.end method

.method public r()Lcom/google/android/filament/SkinningBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->skinningBuffer:Lcom/google/android/filament/SkinningBuffer;

    return-object v0
.end method

.method public s(Ljava/nio/Buffer;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrices",
            "boneCount",
            "offset"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->b:Z

    if-nez v0, :cond_1

    const/16 v0, 0x100

    if-gt p2, v0, :cond_0

    iput p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->boneCount:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkinningBuffer;->skinningBuffer:Lcom/google/android/filament/SkinningBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/filament/SkinningBuffer;->i(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Can`t be more than 256 bones"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method
