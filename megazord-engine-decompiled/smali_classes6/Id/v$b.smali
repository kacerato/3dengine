.class public final LId/v$b;
.super LId/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LId/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final e:LId/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LId/y<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LId/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/y<",
            "*>;)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 2
    invoke-direct {p0, v0, v1}, LId/z;-><init>(J)V

    .line 3
    iput-object p1, p0, LId/v$b;->e:LId/y;

    return-void
.end method

.method public synthetic constructor <init>(LId/y;LId/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LId/v$b;-><init>(LId/y;)V

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-object v0, p0, LId/v$b;->e:LId/y;

    invoke-virtual {v0}, LId/y;->getCursor()J

    move-result-wide v0

    return-wide v0
.end method
