.class public final Ln1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/p;


# instance fields
.field public final synthetic a:Ln1/a;


# direct methods
.method public constructor <init>(Ln1/a;)V
    .locals 0

    iput-object p1, p0, Ln1/o;->a:Ln1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln1/e;)V
    .locals 0

    iget-object p1, p0, Ln1/o;->a:Ln1/a;

    invoke-static {p1}, Ln1/a;->p(Ln1/a;)Ln1/e;

    move-result-object p1

    invoke-interface {p1}, Ln1/e;->onResume()V

    return-void
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method
