.class public final synthetic LK2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/e;


# instance fields
.field public final synthetic a:LK2/t;

.field public final synthetic b:LQ1/l;


# direct methods
.method public synthetic constructor <init>(LK2/t;LQ1/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/k;->a:LK2/t;

    iput-object p2, p0, LK2/k;->b:LQ1/l;

    return-void
.end method


# virtual methods
.method public final a(LQ1/k;)V
    .locals 2

    iget-object v0, p0, LK2/k;->a:LK2/t;

    iget-object v1, p0, LK2/k;->b:LQ1/l;

    invoke-virtual {v0, v1, p1}, LK2/t;->q(LQ1/l;LQ1/k;)V

    return-void
.end method
