.class public final Ldh/b$a;
.super Llh/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public c:J


# direct methods
.method public constructor <init>(Llh/x;)V
    .locals 0

    invoke-direct {p0, p1}, Llh/h;-><init>(Llh/x;)V

    return-void
.end method


# virtual methods
.method public d0(Llh/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Llh/h;->d0(Llh/c;J)V

    iget-wide v0, p0, Ldh/b$a;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Ldh/b$a;->c:J

    return-void
.end method
