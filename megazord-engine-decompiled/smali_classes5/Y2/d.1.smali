.class public interface abstract LY2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation build LQ2/c;
.end annotation

.annotation runtime LY2/p;
.end annotation

.annotation runtime Ld3/f;
    value = "Implement it normally"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a([BII)Z
    .annotation build Ld3/a;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResult()Ljava/lang/Object;
    .annotation runtime LY2/C;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
