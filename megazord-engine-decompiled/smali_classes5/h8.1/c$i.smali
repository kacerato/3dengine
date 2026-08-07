.class public Lh8/c$i;
.super Lh8/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh8/c;->g(Z)Lh8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic G:Lh8/c;


# direct methods
.method public constructor <init>(Lh8/c;Landroid/app/Activity;Ln8/d;Ln8/c;ZLh8/b$i;)V
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

    iput-object p1, p0, Lh8/c$i;->G:Lh8/c;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lh8/b;-><init>(Landroid/app/Activity;Ln8/d;Ln8/c;ZLh8/b$i;)V

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

    iget-object v0, p0, Lh8/c$i;->G:Lh8/c;

    invoke-virtual {v0, p1, p2}, Lh8/c;->q(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public R(Landroid/view/View;Lj8/b;Z)V
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

    iget-object v0, p0, Lh8/c$i;->G:Lh8/c;

    invoke-static {v0, p1, p2, p3}, Lh8/c;->d(Lh8/c;Landroid/view/View;Lj8/b;Z)V

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

    iget-object v0, p0, Lh8/c$i;->G:Lh8/c;

    invoke-virtual {v0, p1, p2}, Lh8/c;->u(Ljava/io/File;Landroid/view/View;)V

    return-void
.end method
