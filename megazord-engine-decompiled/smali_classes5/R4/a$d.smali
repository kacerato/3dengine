.class public LR4/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX7/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR4/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LX7/k<",
        "LR4/a$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LR4/a;


# direct methods
.method public constructor <init>(LR4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LR4/a$d;->a:LR4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(LX7/i;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    check-cast p1, LR4/a$f;

    invoke-virtual {p0, p1, p2}, LR4/a$d;->h(LR4/a$f;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic c(LX7/i;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "eElement"
        }
    .end annotation

    check-cast p1, LR4/a$f;

    invoke-virtual {p0, p1}, LR4/a$d;->g(LR4/a$f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LR4/a$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LR4/a$d;->a:LR4/a;

    invoke-static {v0}, LR4/a;->q1(LR4/a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(LX7/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    check-cast p1, LR4/a$f;

    invoke-virtual {p0, p1}, LR4/a$d;->j(LR4/a$f;)V

    return-void
.end method

.method public bridge synthetic f(LX7/i;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "element",
            "open"
        }
    .end annotation

    check-cast p1, LR4/a$f;

    invoke-virtual {p0, p1, p2}, LR4/a$d;->i(LR4/a$f;Z)V

    return-void
.end method

.method public g(LR4/a$f;)Ljava/util/List;
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
            "LR4/a$f;",
            ")",
            "Ljava/util/List<",
            "LR4/a$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LR4/a$d;->a:LR4/a;

    invoke-static {v0, p1}, LR4/a;->p1(LR4/a;LR4/a$f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(LR4/a$f;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "v"
        }
    .end annotation

    return-void
.end method

.method public i(LR4/a$f;Z)V
    .locals 1
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

    if-eqz p1, :cond_0

    invoke-static {p1}, LR4/a$f;->u(LR4/a$f;)LR4/a$e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, LR4/a$f;->u(LR4/a$f;)LR4/a$e;

    move-result-object p1

    invoke-static {p1, p2}, LR4/a$e;->c(LR4/a$e;Z)Z

    :cond_0
    return-void
.end method

.method public j(LR4/a$f;)V
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
