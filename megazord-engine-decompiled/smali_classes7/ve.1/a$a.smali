.class public Lve/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/a;->iterator()Lre/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lve/a$c;

.field public c:Lve/a$c;

.field public final synthetic d:Lve/a;


# direct methods
.method public constructor <init>(Lve/a;)V
    .locals 0

    iput-object p1, p0, Lve/a$a;->d:Lve/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lve/a;->d:Lve/a$c;

    iput-object p1, p0, Lve/a$a;->b:Lve/a$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lve/a$a;->b:Lve/a$c;

    invoke-static {v0}, Lve/a;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public next()B
    .locals 2

    iget-object v0, p0, Lve/a$a;->b:Lve/a$c;

    invoke-static {v0}, Lve/a;->j(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lve/a$a;->b:Lve/a$c;

    invoke-virtual {v0}, Lve/a$c;->c()B

    move-result v0

    iget-object v1, p0, Lve/a$a;->b:Lve/a$c;

    iput-object v1, p0, Lve/a$a;->c:Lve/a$c;

    invoke-virtual {v1}, Lve/a$c;->a()Lve/a$c;

    move-result-object v1

    iput-object v1, p0, Lve/a$a;->b:Lve/a$c;

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lve/a$a;->c:Lve/a$c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lve/a$a;->d:Lve/a;

    invoke-static {v1, v0}, Lve/a;->a(Lve/a;Lve/a$c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lve/a$a;->c:Lve/a$c;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
