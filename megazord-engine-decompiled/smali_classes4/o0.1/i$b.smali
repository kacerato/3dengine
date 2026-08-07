.class public final Lo0/i$b;
.super Lo0/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lo0/o$c;

.field public b:Lo0/o$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo0/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lo0/o;
    .locals 4

    new-instance v0, Lo0/i;

    iget-object v1, p0, Lo0/i$b;->a:Lo0/o$c;

    iget-object v2, p0, Lo0/i$b;->b:Lo0/o$b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo0/i;-><init>(Lo0/o$c;Lo0/o$b;Lo0/i$a;)V

    return-object v0
.end method

.method public b(Lo0/o$b;)Lo0/o$a;
    .locals 0
    .param p1    # Lo0/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lo0/i$b;->b:Lo0/o$b;

    return-object p0
.end method

.method public c(Lo0/o$c;)Lo0/o$a;
    .locals 0
    .param p1    # Lo0/o$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lo0/i$b;->a:Lo0/o$c;

    return-object p0
.end method
