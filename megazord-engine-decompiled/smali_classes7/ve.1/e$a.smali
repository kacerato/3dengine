.class public Lve/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/e;->iterator()Lre/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lve/e$c;

.field public c:Lve/e$c;

.field public final synthetic d:Lve/e;


# direct methods
.method public constructor <init>(Lve/e;)V
    .locals 0

    iput-object p1, p0, Lve/e$a;->d:Lve/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lve/e;->d:Lve/e$c;

    iput-object p1, p0, Lve/e$a;->b:Lve/e$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lve/e$a;->b:Lve/e$c;

    invoke-static {v0}, Lve/e;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()I
    .locals 2

    iget-object v0, p0, Lve/e$a;->b:Lve/e$c;

    invoke-static {v0}, Lve/e;->j(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lve/e$a;->b:Lve/e$c;

    invoke-virtual {v0}, Lve/e$c;->c()I

    move-result v0

    iget-object v1, p0, Lve/e$a;->b:Lve/e$c;

    iput-object v1, p0, Lve/e$a;->c:Lve/e$c;

    invoke-virtual {v1}, Lve/e$c;->a()Lve/e$c;

    move-result-object v1

    iput-object v1, p0, Lve/e$a;->b:Lve/e$c;

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lve/e$a;->c:Lve/e$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lve/e$a;->d:Lve/e;

    invoke-static {v1, v0}, Lve/e;->a(Lve/e;Lve/e$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lve/e$a;->c:Lve/e$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
