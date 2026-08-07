.class public LKe/e;
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
    .locals 2
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

    new-instance v0, LLe/g;

    invoke-virtual {p1}, LIe/g;->h()LJe/c;

    move-result-object p1

    sget-object v1, LJe/b;->d:LIe/s;

    invoke-virtual {v1, p2}, LIe/s;->g(LIe/v;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2}, LLe/g;-><init>(LJe/c;I)V

    return-object v0
.end method
