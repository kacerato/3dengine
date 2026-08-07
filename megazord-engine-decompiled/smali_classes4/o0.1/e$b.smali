.class public final Lo0/e$b;
.super Lo0/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lo0/k$b;

.field public b:Lo0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo0/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo0/k;
    .locals 4

    new-instance v0, Lo0/e;

    iget-object v1, p0, Lo0/e$b;->a:Lo0/k$b;

    iget-object v2, p0, Lo0/e$b;->b:Lo0/a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo0/e;-><init>(Lo0/k$b;Lo0/a;Lo0/e$a;)V

    return-object v0
.end method

.method public b(Lo0/a;)Lo0/k$a;
    .locals 0
    .param p1    # Lo0/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lo0/e$b;->b:Lo0/a;

    return-object p0
.end method

.method public c(Lo0/k$b;)Lo0/k$a;
    .locals 0
    .param p1    # Lo0/k$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lo0/e$b;->a:Lo0/k$b;

    return-object p0
.end method
