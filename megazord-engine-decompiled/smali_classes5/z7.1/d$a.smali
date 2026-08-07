.class public Lz7/d$a;
.super Lz7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz7/d;->h(Z)Lz7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic G:Lz7/d;


# direct methods
.method public constructor <init>(Lz7/d;Landroid/app/Activity;LF7/e;LF7/d;ZLz7/b$i;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "activity",
            "explorerDataProvider",
            "filter",
            "startSearching",
            "gridZoomListener"
        }
    .end annotation

    iput-object p1, p0, Lz7/d$a;->G:Lz7/d;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lz7/b;-><init>(Landroid/app/Activity;LF7/e;LF7/d;ZLz7/b$i;)V

    return-void
.end method


# virtual methods
.method public Q(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "openFolder",
            "v"
        }
    .end annotation

    iget-object v0, p0, Lz7/d$a;->G:Lz7/d;

    invoke-virtual {v0, p1, p2}, Lz7/d;->s(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public R(Landroid/view/View;LB7/b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "element",
            "fromUserAction"
        }
    .end annotation

    iget-object v0, p0, Lz7/d$a;->G:Lz7/d;

    invoke-static {v0, p1, p2, p3}, Lz7/d;->e(Lz7/d;Landroid/view/View;LB7/b;Z)V

    return-void
.end method

.method public S(Ljava/io/File;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "v"
        }
    .end annotation

    iget-object v0, p0, Lz7/d$a;->G:Lz7/d;

    invoke-virtual {v0, p1, p2}, Lz7/d;->v(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method
