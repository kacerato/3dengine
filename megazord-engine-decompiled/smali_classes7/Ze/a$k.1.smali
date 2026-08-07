.class public final LZe/a$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXe/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LXe/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LXe/e;


# direct methods
.method public constructor <init>(LXe/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZe/a$k;->b:LXe/e;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, LZe/a$k;->b:LXe/e;

    invoke-interface {p1}, LXe/e;->getAsBoolean()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
