.class public final Ln1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/g;


# instance fields
.field public final synthetic a:Ln1/a;


# direct methods
.method public constructor <init>(Ln1/a;)V
    .locals 0

    iput-object p1, p0, Ln1/i;->a:Ln1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln1/e;)V
    .locals 2

    iget-object v0, p0, Ln1/i;->a:Ln1/a;

    invoke-static {v0, p1}, Ln1/a;->r(Ln1/a;Ln1/e;)V

    iget-object p1, p0, Ln1/i;->a:Ln1/a;

    invoke-static {p1}, Ln1/a;->q(Ln1/a;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln1/p;

    iget-object v1, p0, Ln1/i;->a:Ln1/a;

    invoke-static {v1}, Ln1/a;->p(Ln1/a;)Ln1/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ln1/p;->a(Ln1/e;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ln1/i;->a:Ln1/a;

    invoke-static {p1}, Ln1/a;->q(Ln1/a;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Ln1/i;->a:Ln1/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ln1/a;->s(Ln1/a;Landroid/os/Bundle;)V

    return-void
.end method
