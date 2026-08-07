.class public LR2/y$a;
.super LR2/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR2/y;->s(Ljava/lang/String;)LR2/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LR2/y;


# direct methods
.method public constructor <init>(LR2/y;LR2/y;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LR2/y$a;->c:LR2/y;

    iput-object p3, p0, LR2/y$a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, LR2/y;-><init>(LR2/y;LR2/y$a;)V

    return-void
.end method


# virtual methods
.method public q()LR2/y;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, LR2/y$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LR2/y$a;->c:LR2/y;

    invoke-virtual {v0, p1}, LR2/y;->r(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public s(Ljava/lang/String;)LR2/y;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "already specified useForNull"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
