.class public LI/f$e;
.super LI/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LI/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LI/f$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, LI/f$e$a;

    invoke-direct {v0}, LI/f$e$a;-><init>()V

    invoke-direct {p0, v0}, LI/f$a;-><init>(LI/f$d;)V

    return-void
.end method
