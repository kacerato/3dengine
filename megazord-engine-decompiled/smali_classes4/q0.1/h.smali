.class public abstract Lq0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/h$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lq0/h;
    .locals 4

    new-instance v0, Lq0/b;

    sget-object v1, Lq0/h$a;->FATAL_ERROR:Lq0/h$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lq0/b;-><init>(Lq0/h$a;J)V

    return-object v0
.end method

.method public static d()Lq0/h;
    .locals 4

    new-instance v0, Lq0/b;

    sget-object v1, Lq0/h$a;->INVALID_PAYLOAD:Lq0/h$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lq0/b;-><init>(Lq0/h$a;J)V

    return-object v0
.end method

.method public static e(J)Lq0/h;
    .locals 2

    new-instance v0, Lq0/b;

    sget-object v1, Lq0/h$a;->OK:Lq0/h$a;

    invoke-direct {v0, v1, p0, p1}, Lq0/b;-><init>(Lq0/h$a;J)V

    return-object v0
.end method

.method public static f()Lq0/h;
    .locals 4

    new-instance v0, Lq0/b;

    sget-object v1, Lq0/h$a;->TRANSIENT_ERROR:Lq0/h$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lq0/b;-><init>(Lq0/h$a;J)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Lq0/h$a;
.end method
