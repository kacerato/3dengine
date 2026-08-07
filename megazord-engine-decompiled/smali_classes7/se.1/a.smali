.class public Lse/a;
.super Loe/I;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Loe/I<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:Loe/b0;


# direct methods
.method public constructor <init>(Loe/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Loe/b0<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Loe/I;-><init>(Loe/b0;)V

    iput-object p1, p0, Lse/a;->f:Loe/b0;

    return-void
.end method


# virtual methods
.method public k(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lse/a;->f:Loe/b0;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    aget-object p1, v0, p1

    sget-object v0, Loe/b0;->p:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    sget-object v0, Loe/b0;->o:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
