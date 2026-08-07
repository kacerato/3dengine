.class public Lye/d0$f;
.super Lse/a;
.source "SourceFile"

# interfaces
.implements Lre/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/d0;
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
        "Lre/j0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lye/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/d0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lye/d0;


# direct methods
.method public constructor <init>(Lye/d0;Lye/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lye/d0<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lye/d0$f;->h:Lye/d0;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    iput-object p2, p0, Lye/d0$f;->g:Lye/d0;

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 3

    invoke-virtual {p0}, Lye/d0$f;->value()I

    move-result v0

    iget-object v1, p0, Lye/d0$f;->g:Lye/d0;

    iget-object v1, v1, Lye/d0;->r:[I

    iget v2, p0, Loe/I;->e:I

    aput p1, v1, v2

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

    iget-object v0, p0, Lye/d0$f;->g:Lye/d0;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    iget v1, p0, Loe/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()I
    .locals 2

    iget-object v0, p0, Lye/d0$f;->g:Lye/d0;

    iget-object v0, v0, Lye/d0;->r:[I

    iget v1, p0, Loe/I;->e:I

    aget v0, v0, v1

    return v0
.end method
