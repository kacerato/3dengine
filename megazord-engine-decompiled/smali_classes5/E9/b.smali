.class public LE9/b;
.super Lbd/m;
.source "SourceFile"


# instance fields
.field public b:Lkc/c;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public d:Lkc/c;

.field public e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/Core/PooledObject;

.field public final i:[F

.field public j:Z

.field public final k:Ljava/lang/Runnable;

.field public final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lbd/m;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, LE9/b;->i:[F

    new-instance v0, LE9/b$a;

    invoke-direct {v0, p0}, LE9/b$a;-><init>(LE9/b;)V

    iput-object v0, p0, LE9/b;->k:Ljava/lang/Runnable;

    new-instance v0, LE9/b$b;

    invoke-direct {v0, p0}, LE9/b$b;-><init>(LE9/b;)V

    iput-object v0, p0, LE9/b;->l:Ljava/lang/Runnable;

    return-void
.end method
