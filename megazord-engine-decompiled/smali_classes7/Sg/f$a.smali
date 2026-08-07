.class public LSg/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LNg/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 0

    return p3
.end method

.method public b([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LSg/f$a;->a([BII)I

    move-result p1

    return p1
.end method
