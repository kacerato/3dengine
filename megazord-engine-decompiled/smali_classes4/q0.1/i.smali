.class public abstract Lq0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "cct"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;LB0/a;LB0/a;)Lq0/i;
    .locals 2

    new-instance v0, Lq0/c;

    const-string v1, "cct"

    invoke-direct {v0, p0, p1, p2, v1}, Lq0/c;-><init>(Landroid/content/Context;LB0/a;LB0/a;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;LB0/a;LB0/a;Ljava/lang/String;)Lq0/i;
    .locals 1

    new-instance v0, Lq0/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lq0/c;-><init>(Landroid/content/Context;LB0/a;LB0/a;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract c()Landroid/content/Context;
.end method

.method public abstract d()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e()LB0/a;
.end method

.method public abstract f()LB0/a;
.end method
