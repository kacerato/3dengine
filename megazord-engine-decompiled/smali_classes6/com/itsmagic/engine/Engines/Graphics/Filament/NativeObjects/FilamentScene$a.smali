.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Ljc/b;->k(J)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->r()Led/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lye/X;->e(J)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s()Led/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lye/X;->e(J)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u()Led/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lye/X;->e(J)Ljava/lang/Object;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->v()Led/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lye/X;->e(J)Ljava/lang/Object;

    return-void
.end method
