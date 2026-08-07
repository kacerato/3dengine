.class public abstract LGc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()LGc/a;
.end method

.method public b(Lva/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 1

    iget-object v0, p0, LGc/a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object v0
.end method

.method public d(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentMaterial"
        }
    .end annotation

    iput-object p1, p0, LGc/a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
