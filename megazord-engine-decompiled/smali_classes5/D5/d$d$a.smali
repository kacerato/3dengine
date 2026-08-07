.class public LD5/d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/e$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD5/d$d;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD5/d$d;


# direct methods
.method public constructor <init>(LD5/d$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LD5/d$d$a;->a:LD5/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "canceled"
        }
    .end annotation

    iget-object p2, p0, LD5/d$d$a;->a:LD5/d$d;

    iget-object p2, p2, LD5/d$d;->a:LD5/d;

    invoke-static {p2}, LD5/d;->H(LD5/d;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object p2

    iput p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushIntensity:F

    return-void
.end method
