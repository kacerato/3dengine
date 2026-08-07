.class public final LR2/m$d;
.super LR2/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LR2/m<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final b:LR2/m$d;

.field public static final c:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR2/m$d;

    invoke-direct {v0}, LR2/m$d;-><init>()V

    sput-object v0, LR2/m$d;->b:LR2/m$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LR2/m;-><init>()V

    return-void
.end method

.method private k()Ljava/lang/Object;
    .locals 1

    sget-object v0, LR2/m$d;->b:LR2/m$d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
