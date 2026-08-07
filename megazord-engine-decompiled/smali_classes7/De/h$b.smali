.class public LDe/h$b;
.super Lse/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDe/h;->Se()Lse/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lse/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public g:Lre/Q;

.field public h:I

.field public final synthetic i:LDe/h;


# direct methods
.method public constructor <init>(LDe/h;Loe/b0;)V
    .locals 0

    iput-object p1, p0, LDe/h$b;->i:LDe/h;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    iget-object p1, p1, LDe/h;->r:Lte/e;

    invoke-interface {p1}, Lke/g;->iterator()Lre/Q;

    move-result-object p1

    iput-object p1, p0, LDe/h$b;->g:Lre/Q;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LDe/h$b;->g:Lre/Q;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, LDe/h$b;->g:Lre/Q;

    invoke-interface {v0}, Lre/Q;->next()I

    move-result v0

    iput v0, p0, LDe/h$b;->h:I

    invoke-virtual {p0, v0}, Lse/a;->k(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-object v0, p0, LDe/h$b;->g:Lre/Q;

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Loe/I;->c:Loe/H;

    invoke-virtual {v1}, Loe/H;->xe()V

    iget-object v1, p0, LDe/h$b;->i:LDe/h;

    iget v2, p0, LDe/h$b;->h:I

    invoke-virtual {v1, v2}, LDe/h;->ue(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Loe/I;->c:Loe/H;

    invoke-virtual {v1, v0}, Loe/H;->se(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Loe/I;->c:Loe/H;

    invoke-virtual {v2, v0}, Loe/H;->se(Z)V

    throw v1
.end method
