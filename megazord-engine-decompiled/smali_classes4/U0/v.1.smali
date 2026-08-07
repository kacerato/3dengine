.class public final LU0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/e;


# instance fields
.field public final synthetic a:LQ1/l;

.field public final synthetic b:LU0/w;


# direct methods
.method public constructor <init>(LU0/w;LQ1/l;)V
    .locals 0

    iput-object p1, p0, LU0/v;->b:LU0/w;

    iput-object p2, p0, LU0/v;->a:LQ1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LQ1/k;)V
    .locals 1
    .param p1    # LQ1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, LU0/v;->b:LU0/w;

    invoke-static {p1}, LU0/w;->b(LU0/w;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, LU0/v;->a:LQ1/l;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
