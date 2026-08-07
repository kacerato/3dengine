.class public Lve/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/b;->iterator()Lre/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lve/b$c;

.field public c:Lve/b$c;

.field public final synthetic d:Lve/b;


# direct methods
.method public constructor <init>(Lve/b;)V
    .locals 0

    iput-object p1, p0, Lve/b$a;->d:Lve/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lve/b;->d:Lve/b$c;

    iput-object p1, p0, Lve/b$a;->b:Lve/b$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lve/b$a;->b:Lve/b$c;

    invoke-static {v0}, Lve/b;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()C
    .locals 2

    iget-object v0, p0, Lve/b$a;->b:Lve/b$c;

    invoke-static {v0}, Lve/b;->j(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lve/b$a;->b:Lve/b$c;

    invoke-virtual {v0}, Lve/b$c;->c()C

    move-result v0

    iget-object v1, p0, Lve/b$a;->b:Lve/b$c;

    iput-object v1, p0, Lve/b$a;->c:Lve/b$c;

    invoke-virtual {v1}, Lve/b$c;->a()Lve/b$c;

    move-result-object v1

    iput-object v1, p0, Lve/b$a;->b:Lve/b$c;

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lve/b$a;->c:Lve/b$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lve/b$a;->d:Lve/b;

    invoke-static {v1, v0}, Lve/b;->a(Lve/b;Lve/b$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lve/b$a;->c:Lve/b$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
