.class public LKe/h;
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

    new-instance p1, LLe/l;

    invoke-direct {p1}, LLe/l;-><init>()V

    return-object p1
.end method
