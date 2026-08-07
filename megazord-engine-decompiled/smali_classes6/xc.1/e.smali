.class public Lxc/e;
.super Lbd/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc/e$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxc/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxc/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "materialTemplate",
            "params",
            "samples"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;",
            "Ljava/util/List<",
            "Lxc/f;",
            ">;",
            "Ljava/util/List<",
            "Lxc/g;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lbd/m;-><init>()V

    iput-object p1, p0, Lxc/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    iput-object p2, p0, Lxc/e;->c:Ljava/util/List;

    iput-object p3, p0, Lxc/e;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxc/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lxc/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxc/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lxc/e;->d:Ljava/util/List;

    return-object v0
.end method

.method public u()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 2

    iget-object v0, p0, Lxc/e;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    iget-object v1, p0, Lxc/e;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->s(Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    return-object v0
.end method
