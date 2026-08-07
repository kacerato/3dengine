.class public LKe/c;
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
    .locals 0
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

    new-instance p2, LLe/d;

    invoke-virtual {p1}, LIe/g;->h()LJe/c;

    move-result-object p1

    invoke-direct {p2, p1}, LLe/d;-><init>(LJe/c;)V

    return-object p2
.end method
