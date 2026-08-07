.class public LPe/a;
.super LIe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPe/a$b;,
        LPe/a$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, LIe/a;-><init>()V

    iput p1, p0, LPe/a;->a:I

    iput-boolean p2, p0, LPe/a;->b:Z

    return-void
.end method

.method public static synthetic l(LPe/a;)Z
    .locals 0

    iget-boolean p0, p0, LPe/a;->b:Z

    return p0
.end method

.method public static synthetic m(LPe/a;)I
    .locals 0

    iget p0, p0, LPe/a;->a:I

    return p0
.end method

.method public static n()LPe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, LPe/a;->q(Z)LPe/a;

    move-result-object v0

    return-object v0
.end method

.method public static o(I)LPe/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LPe/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LPe/a;-><init>(IZ)V

    return-object v0
.end method

.method public static p(IZ)LPe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LPe/a;

    invoke-direct {v0, p0, p1}, LPe/a;-><init>(IZ)V

    return-object v0
.end method

.method public static q(Z)LPe/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x7

    invoke-static {v0, p0}, LPe/a;->p(IZ)LPe/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public k(LIe/i$b;)V
    .locals 2
    .param p1    # LIe/i$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LPe/a$a;

    invoke-direct {v0, p0}, LPe/a$a;-><init>(LPe/a;)V

    const-class v1, LJe/a;

    invoke-interface {p1, v1, v0}, LIe/i$b;->c(Ljava/lang/Class;LIe/i$a;)V

    return-void
.end method
