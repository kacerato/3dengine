.class public final LK2/m;
.super LK2/j;
.source "SourceFile"


# instance fields
.field public final synthetic c:LK2/j;

.field public final synthetic d:LK2/t;


# direct methods
.method public constructor <init>(LK2/t;LQ1/l;LK2/j;)V
    .locals 0

    iput-object p1, p0, LK2/m;->d:LK2/t;

    iput-object p3, p0, LK2/m;->c:LK2/j;

    invoke-direct {p0, p2}, LK2/j;-><init>(LQ1/l;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LK2/m;->d:LK2/t;

    iget-object v1, p0, LK2/m;->c:LK2/j;

    invoke-static {v0, v1}, LK2/t;->m(LK2/t;LK2/j;)V

    return-void
.end method
