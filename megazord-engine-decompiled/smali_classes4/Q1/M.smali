.class public final LQ1/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/h;


# instance fields
.field public final synthetic a:LQ1/l;


# direct methods
.method public constructor <init>(LQ1/l;)V
    .locals 0

    iput-object p1, p0, LQ1/M;->a:LQ1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LQ1/M;->a:LQ1/l;

    invoke-static {v0}, LQ1/l;->f(LQ1/l;)LQ1/Q;

    move-result-object v0

    invoke-virtual {v0}, LQ1/Q;->A()Z

    return-void
.end method
