.class public abstract LR2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime LR2/k;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)LR2/h;
    .locals 0

    invoke-static {p0}, LR2/G;->b(Ljava/lang/String;)LR2/h;

    move-result-object p0

    return-object p0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, LR2/G;->i()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract d(Ljava/lang/CharSequence;)LR2/g;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
