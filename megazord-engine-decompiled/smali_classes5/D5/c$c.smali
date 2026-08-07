.class public LD5/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD5/c;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:La5/c;

.field public final synthetic b:LD5/c;


# direct methods
.method public constructor <init>(LD5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LD5/c$c;->b:LD5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LD5/c$c;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, LD5/c$c;->b(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LW5/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LD5/c$c;->b:LD5/c;

    invoke-static {v0}, LD5/c;->H(LD5/c;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    new-instance v1, LD5/c$c$b;

    invoke-direct {v1, p0, p1}, LD5/c$c$b;-><init>(LD5/c$c;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTerrainLayerSelector(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$S;)V

    return-void
.end method

.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, LD5/c$c;->b(Ljava/util/List;)V

    sget-object v3, LL4/a$e;->Below:LL4/a$e;

    new-instance v4, LD5/c$c$a;

    invoke-direct {v4, p0}, LD5/c$c$a;-><init>(LD5/c$c;)V

    const/16 p2, 0xc8

    invoke-static {p2}, Lf8/c;->g(I)F

    move-result v5

    const/16 p2, 0x56

    invoke-static {p2}, Lf8/c;->f(I)F

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string v2, "Layer"

    const/4 v7, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v9}, LL4/a;->e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;LL4/a$e;La5/d;FFZZZ)La5/c;

    move-result-object p1

    iput-object p1, p0, LD5/c$c;->a:La5/c;

    return-void
.end method
