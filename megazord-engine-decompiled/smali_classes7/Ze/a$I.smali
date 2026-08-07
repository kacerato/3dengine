.class public final LZe/a$I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "I"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LXe/o<",
        "TT;",
        "Lsf/d<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/TimeUnit;

.field public final c:LTe/J;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZe/a$I;->b:Ljava/util/concurrent/TimeUnit;

    iput-object p2, p0, LZe/a$I;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lsf/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lsf/d<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lsf/d;

    iget-object v1, p0, LZe/a$I;->c:LTe/J;

    iget-object v2, p0, LZe/a$I;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LTe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, LZe/a$I;->b:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Lsf/d;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, LZe/a$I;->a(Ljava/lang/Object;)Lsf/d;

    move-result-object p1

    return-object p1
.end method
