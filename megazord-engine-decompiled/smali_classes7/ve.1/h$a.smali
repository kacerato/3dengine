.class public Lve/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/h;->iterator()Lre/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lve/h$c;

.field public c:Lve/h$c;

.field public final synthetic d:Lve/h;


# direct methods
.method public constructor <init>(Lve/h;)V
    .locals 0

    iput-object p1, p0, Lve/h$a;->d:Lve/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lve/h;->d:Lve/h$c;

    iput-object p1, p0, Lve/h$a;->b:Lve/h$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lve/h$a;->b:Lve/h$c;

    invoke-static {v0}, Lve/h;->f(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()S
    .locals 2

    iget-object v0, p0, Lve/h$a;->b:Lve/h$c;

    invoke-static {v0}, Lve/h;->j(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lve/h$a;->b:Lve/h$c;

    invoke-virtual {v0}, Lve/h$c;->c()S

    move-result v0

    iget-object v1, p0, Lve/h$a;->b:Lve/h$c;

    iput-object v1, p0, Lve/h$a;->c:Lve/h$c;

    invoke-virtual {v1}, Lve/h$c;->a()Lve/h$c;

    move-result-object v1

    iput-object v1, p0, Lve/h$a;->b:Lve/h$c;

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lve/h$a;->c:Lve/h$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lve/h$a;->d:Lve/h;

    invoke-static {v1, v0}, Lve/h;->a(Lve/h;Lve/h$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lve/h$a;->c:Lve/h$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
