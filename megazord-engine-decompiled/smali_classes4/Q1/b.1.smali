.class public LQ1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQ1/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LQ1/v;

    invoke-direct {v0}, LQ1/v;-><init>()V

    iput-object v0, p0, LQ1/b;->a:LQ1/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LQ1/b;->a:LQ1/v;

    invoke-virtual {v0}, LQ1/v;->c()V

    return-void
.end method

.method public b()LQ1/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LQ1/b;->a:LQ1/v;

    return-object v0
.end method
