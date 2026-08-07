.class public abstract LIe/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(LIe/m$b;LIe/g;)LIe/n;
    .locals 1
    .param p0    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # LIe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LIe/n$a;

    invoke-direct {v0, p0, p1}, LIe/n$a;-><init>(LIe/m$b;LIe/g;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()LIe/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
