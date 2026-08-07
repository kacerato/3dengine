.class public Lqe/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lre/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe/c;->iterator()Lre/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lre/g;

.field public final synthetic c:Lqe/c;


# direct methods
.method public constructor <init>(Lqe/c;)V
    .locals 0

    iput-object p1, p0, Lqe/c$a;->c:Lqe/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lqe/c;->b:Lke/a;

    invoke-interface {p1}, Lke/a;->iterator()Lre/g;

    move-result-object p1

    iput-object p1, p0, Lqe/c$a;->b:Lre/g;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lqe/c$a;->b:Lre/g;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()B
    .locals 1

    iget-object v0, p0, Lqe/c$a;->b:Lre/g;

    invoke-interface {v0}, Lre/g;->next()B

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
