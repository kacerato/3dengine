.class public LPe/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LPe/a;->k(LIe/i$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LIe/i$a<",
        "LJe/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:LPe/a;


# direct methods
.method public constructor <init>(LPe/a;)V
    .locals 0

    iput-object p1, p0, LPe/a$a;->a:LPe/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LIe/i;)V
    .locals 0
    .param p1    # LIe/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, LJe/a;

    invoke-virtual {p0, p1}, LPe/a$a;->b(LJe/a;)V

    return-void
.end method

.method public b(LJe/a;)V
    .locals 2
    .param p1    # LJe/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LPe/a$a;->a:LPe/a;

    invoke-static {v0}, LPe/a;->l(LPe/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LPe/a$b;

    iget-object v1, p0, LPe/a$a;->a:LPe/a;

    invoke-static {v1}, LPe/a;->m(LPe/a;)I

    move-result v1

    invoke-direct {v0, v1}, LPe/a$b;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, LPe/a$c;

    iget-object v1, p0, LPe/a$a;->a:LPe/a;

    invoke-static {v1}, LPe/a;->m(LPe/a;)I

    move-result v1

    invoke-direct {v0, v1}, LPe/a$c;-><init>(I)V

    :goto_0
    invoke-virtual {p1, v0}, LJe/a;->o(LJe/a$p;)LJe/a;

    return-void
.end method
