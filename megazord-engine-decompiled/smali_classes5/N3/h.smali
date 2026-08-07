.class public LN3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LN3/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;LN3/h$a;Lo3/h;)LN3/f;
    .locals 0

    invoke-static {p0, p1, p2}, LN3/h;->d(Ljava/lang/String;LN3/h$a;Lo3/h;)LN3/f;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lo3/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lo3/g<",
            "*>;"
        }
    .end annotation

    invoke-static {p0, p1}, LN3/f;->a(Ljava/lang/String;Ljava/lang/String;)LN3/f;

    move-result-object p0

    const-class p1, LN3/f;

    invoke-static {p0, p1}, Lo3/g;->o(Ljava/lang/Object;Ljava/lang/Class;)Lo3/g;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;LN3/h$a;)Lo3/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LN3/h$a<",
            "Landroid/content/Context;",
            ">;)",
            "Lo3/g<",
            "*>;"
        }
    .end annotation

    const-class v0, LN3/f;

    invoke-static {v0}, Lo3/g;->q(Ljava/lang/Class;)Lo3/g$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo3/v;->l(Ljava/lang/Class;)Lo3/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo3/g$b;->b(Lo3/v;)Lo3/g$b;

    move-result-object v0

    new-instance v1, LN3/g;

    invoke-direct {v1, p0, p1}, LN3/g;-><init>(Ljava/lang/String;LN3/h$a;)V

    invoke-virtual {v0, v1}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/g$b;->d()Lo3/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;LN3/h$a;Lo3/h;)LN3/f;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p2, v0}, Lo3/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-interface {p1, p2}, LN3/h$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LN3/f;->a(Ljava/lang/String;Ljava/lang/String;)LN3/f;

    move-result-object p0

    return-object p0
.end method
