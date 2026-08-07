.class public final Lue/e$a;
.super Lue/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lue/e;->l([II)Lue/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>([IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lue/e;-><init>([IIZ)V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1

    iget-object v0, p0, Lue/e;->b:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not grow ArrayList wrapped external array"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
