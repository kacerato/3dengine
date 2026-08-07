.class public LNe/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LIe/g;LIe/v;)Ljava/lang/Object;
    .locals 6
    .param p1    # LIe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, LNe/e;

    invoke-virtual {p1}, LIe/g;->h()LJe/c;

    move-result-object v1

    new-instance v2, LNe/a;

    sget-object v3, LNe/g;->a:LIe/s;

    invoke-virtual {v3, p2}, LIe/s;->g(LIe/v;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, LIe/g;->a()LNe/b;

    move-result-object v4

    invoke-virtual {p1}, LIe/g;->d()LNe/i;

    move-result-object p1

    sget-object v5, LNe/g;->c:LIe/s;

    invoke-virtual {v5, p2}, LIe/s;->b(LIe/v;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LNe/h;

    invoke-direct {v2, v3, v4, p1, v5}, LNe/a;-><init>(Ljava/lang/String;LNe/b;LNe/i;LNe/h;)V

    sget-object p1, LNe/g;->b:LIe/s;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, v3}, LIe/s;->c(LIe/v;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    invoke-direct {v0, v1, v2, p2, p1}, LNe/e;-><init>(LJe/c;LNe/a;IZ)V

    return-object v0
.end method
