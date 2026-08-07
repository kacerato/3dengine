.class public LL6/j$e;
.super LX7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL6/j;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LL6/j;


# direct methods
.method public constructor <init>(LL6/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LL6/j$e;->a:LL6/j;

    invoke-direct {p0}, LX7/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LX7/i;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX7/i;",
            ")",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LL6/j$e;->a:LL6/j;

    invoke-static {v0, p1}, LL6/j;->v1(LL6/j;LX7/i;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LL6/j$e;->a:LL6/j;

    invoke-static {v0}, LL6/j;->w1(LL6/j;)LL6/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LL6/j$e;->a:LL6/j;

    invoke-static {v0}, LL6/j;->x1(LL6/j;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public e(LX7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    return-void
.end method

.method public f(LX7/i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    return-void
.end method
