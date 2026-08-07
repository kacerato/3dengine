.class public LIe/x;
.super LIe/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LIe/a;-><init>()V

    return-void
.end method

.method public static l()LIe/x;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LIe/x;

    invoke-direct {v0}, LIe/x;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b(LIe/m$b;)V
    .locals 2
    .param p1    # LIe/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LIe/x$a;

    invoke-direct {v0, p0}, LIe/x$a;-><init>(LIe/x;)V

    const-class v1, Lpi/y;

    invoke-interface {p1, v1, v0}, LIe/m$b;->c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;

    return-void
.end method
