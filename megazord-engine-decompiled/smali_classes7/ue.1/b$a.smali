.class public final Lue/b$a;
.super Lue/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lue/b;->l([CC)Lue/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>([CCZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lue/b;-><init>([CCZ)V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    iget-object v0, p0, Lue/b;->b:[C

    array-length v0, v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not grow ArrayList wrapped external array"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
