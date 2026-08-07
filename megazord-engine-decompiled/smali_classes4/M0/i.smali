.class public final LM0/i;
.super LM0/o;
.source "SourceFile"


# instance fields
.field public final synthetic f:LM0/j;


# direct methods
.method public constructor <init>(LM0/j;LM0/q;)V
    .locals 0

    iput-object p1, p0, LM0/i;->f:LM0/j;

    invoke-direct {p0, p2}, LM0/o;-><init>(LM0/q;)V

    return-void
.end method


# virtual methods
.method public final G([B)V
    .locals 1

    iget-object v0, p0, LM0/i;->f:LM0/j;

    iget-object v0, v0, LM0/q;->d:LQ1/l;

    invoke-virtual {v0, p1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method
