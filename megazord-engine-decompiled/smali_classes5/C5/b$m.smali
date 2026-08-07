.class public LC5/b$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/b;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:La5/c;

.field public final synthetic b:LC5/b;


# direct methods
.method public constructor <init>(LC5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC5/b$m;->b:LC5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    new-instance p3, LC5/b$m$a;

    invoke-direct {p3, p0}, LC5/b$m$a;-><init>(LC5/b$m;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p3}, LZ5/c;->b(Landroid/content/Context;Ljava/lang/String;LZ5/a;)LW5/b;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, LL4/a$e;->Below:LL4/a$e;

    new-instance v4, LC5/b$m$b;

    invoke-direct {v4, p0}, LC5/b$m$b;-><init>(LC5/b$m;)V

    const/16 p2, 0x132

    invoke-static {p2}, Lf8/c;->g(I)F

    move-result v5

    const/16 p2, 0xc8

    invoke-static {p2}, Lf8/c;->f(I)F

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string v2, "Brush"

    const/4 v7, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v9}, LL4/a;->e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;LL4/a$e;La5/d;FFZZZ)La5/c;

    move-result-object p1

    iput-object p1, p0, LC5/b$m;->a:La5/c;

    iget-object p1, p1, La5/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-static {p1}, LZ5/c;->Y(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    return-void
.end method
