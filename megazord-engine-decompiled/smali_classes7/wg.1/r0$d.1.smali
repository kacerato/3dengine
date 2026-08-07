.class public final Lwg/r0$d;
.super LEg/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LEg/d0<",
        "Lwg/r0$c;",
        ">;"
    }
.end annotation


# instance fields
.field public c:J
    .annotation build Ldg/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, LEg/d0;-><init>()V

    iput-wide p1, p0, Lwg/r0$d;->c:J

    return-void
.end method
