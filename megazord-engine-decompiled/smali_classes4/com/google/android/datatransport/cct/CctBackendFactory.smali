.class public Lcom/google/android/datatransport/cct/CctBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lq0/i;)Lq0/n;
    .locals 3

    new-instance v0, Ln0/d;

    invoke-virtual {p1}, Lq0/i;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lq0/i;->f()LB0/a;

    move-result-object v2

    invoke-virtual {p1}, Lq0/i;->e()LB0/a;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ln0/d;-><init>(Landroid/content/Context;LB0/a;LB0/a;)V

    return-object v0
.end method
