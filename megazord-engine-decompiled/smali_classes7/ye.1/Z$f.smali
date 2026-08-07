.class public Lye/Z$f;
.super Lse/a;
.source "SourceFile"

# interfaces
.implements Lre/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lse/a<",
        "TK;>;",
        "Lre/f0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lye/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/Z<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lye/Z;


# direct methods
.method public constructor <init>(Lye/Z;Lye/Z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lye/Z<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lye/Z$f;->h:Lye/Z;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    iput-object p2, p0, Lye/Z$f;->g:Lye/Z;

    return-void
.end method


# virtual methods
.method public b(B)B
    .locals 3

    invoke-virtual {p0}, Lye/Z$f;->value()B

    move-result v0

    iget-object v1, p0, Lye/Z$f;->g:Lye/Z;

    iget-object v1, v1, Lye/Z;->r:[B

    iget v2, p0, Loe/I;->e:I

    aput-byte p1, v1, v2

    return v0
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Loe/I;->j()V

    return-void
.end method

.method public key()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lye/Z$f;->g:Lye/Z;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    iget v1, p0, Loe/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()B
    .locals 2

    iget-object v0, p0, Lye/Z$f;->g:Lye/Z;

    iget-object v0, v0, Lye/Z;->r:[B

    iget v1, p0, Loe/I;->e:I

    aget-byte v0, v0, v1

    return v0
.end method
