.class public Lye/a0$f;
.super Lse/a;
.source "SourceFile"

# interfaces
.implements Lre/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/a0;
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
        "Lre/g0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lye/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/a0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lye/a0;


# direct methods
.method public constructor <init>(Lye/a0;Lye/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lye/a0<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lye/a0$f;->h:Lye/a0;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    iput-object p2, p0, Lye/a0$f;->g:Lye/a0;

    return-void
.end method


# virtual methods
.method public a(C)C
    .locals 3

    invoke-virtual {p0}, Lye/a0$f;->value()C

    move-result v0

    iget-object v1, p0, Lye/a0$f;->g:Lye/a0;

    iget-object v1, v1, Lye/a0;->r:[C

    iget v2, p0, Loe/I;->e:I

    aput-char p1, v1, v2

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

    iget-object v0, p0, Lye/a0$f;->g:Lye/a0;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    iget v1, p0, Loe/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()C
    .locals 2

    iget-object v0, p0, Lye/a0$f;->g:Lye/a0;

    iget-object v0, v0, Lye/a0;->r:[C

    iget v1, p0, Loe/I;->e:I

    aget-char v0, v0, v1

    return v0
.end method
