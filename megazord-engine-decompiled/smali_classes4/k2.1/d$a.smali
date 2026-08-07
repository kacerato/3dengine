.class public Lk2/d$a;
.super Lv2/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lv2/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lv2/j;-><init>(Lv2/o;)V

    return-void
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
