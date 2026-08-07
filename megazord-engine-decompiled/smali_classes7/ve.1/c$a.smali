.class public Lve/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/c;->iterator()Lre/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lve/c$c;

.field public c:Lve/c$c;

.field public final synthetic d:Lve/c;


# direct methods
.method public constructor <init>(Lve/c;)V
    .locals 0

    iput-object p1, p0, Lve/c$a;->d:Lve/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lve/c;->d:Lve/c$c;

    iput-object p1, p0, Lve/c$a;->b:Lve/c$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lve/c$a;->b:Lve/c$c;

    invoke-static {v0}, Lve/c;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()D
    .locals 3

    iget-object v0, p0, Lve/c$a;->b:Lve/c$c;

    invoke-static {v0}, Lve/c;->j(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lve/c$a;->b:Lve/c$c;

    invoke-virtual {v0}, Lve/c$c;->c()D

    move-result-wide v0

    iget-object v2, p0, Lve/c$a;->b:Lve/c$c;

    iput-object v2, p0, Lve/c$a;->c:Lve/c$c;

    invoke-virtual {v2}, Lve/c$c;->a()Lve/c$c;

    move-result-object v2

    iput-object v2, p0, Lve/c$a;->b:Lve/c$c;

    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lve/c$a;->c:Lve/c$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lve/c$a;->d:Lve/c;

    invoke-static {v1, v0}, Lve/c;->b(Lve/c;Lve/c$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lve/c$a;->c:Lve/c$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
