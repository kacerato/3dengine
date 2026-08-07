.class public final LM0/k;
.super LM0/o;
.source "SourceFile"


# instance fields
.field public final synthetic f:LM0/l;


# direct methods
.method public constructor <init>(LM0/l;LM0/q;)V
    .locals 0

    iput-object p1, p0, LM0/k;->f:LM0/l;

    invoke-direct {p0, p2}, LM0/o;-><init>(LM0/q;)V

    return-void
.end method


# virtual methods
.method public final B1(LM0/e;)V
    .locals 1

    iget-object v0, p0, LM0/k;->f:LM0/l;

    iget-object v0, v0, LM0/q;->d:LQ1/l;

    invoke-virtual {v0, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method
