.class public LKe/f;
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
    .locals 3
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

    new-instance v0, LLe/i;

    invoke-virtual {p1}, LIe/g;->h()LJe/c;

    move-result-object v1

    sget-object v2, LJe/b;->e:LIe/s;

    invoke-virtual {v2, p2}, LIe/s;->g(LIe/v;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, LIe/g;->e()LIe/c;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, LLe/i;-><init>(LJe/c;Ljava/lang/String;LIe/c;)V

    return-object v0
.end method
