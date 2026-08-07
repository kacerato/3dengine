.class public final LT9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:I

.field public final c:I

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "width",
            "height",
            "pts"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT9/c;->a:Ljava/nio/ByteBuffer;

    iput p2, p0, LT9/c;->b:I

    iput p3, p0, LT9/c;->c:I

    iput-wide p4, p0, LT9/c;->d:J

    return-void
.end method
