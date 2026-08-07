.class public final Lj0/a$b;
.super Lj0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "GPU"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lj0/a;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/x;)V

    return-void
.end method
