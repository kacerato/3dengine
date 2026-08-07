.class public Lye/f0$e;
.super Lse/a;
.source "SourceFile"

# interfaces
.implements Lre/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lse/a<",
        "TK;>;",
        "Lre/l0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lye/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/f0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lye/f0;


# direct methods
.method public constructor <init>(Lye/f0;Lye/f0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lye/f0<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lye/f0$e;->h:Lye/f0;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    iput-object p2, p0, Lye/f0$e;->g:Lye/f0;

    return-void
.end method


# virtual methods
.method public c(S)S
    .locals 3

    invoke-virtual {p0}, Lye/f0$e;->value()S

    move-result v0

    iget-object v1, p0, Lye/f0$e;->g:Lye/f0;

    iget-object v1, v1, Lye/f0;->r:[S

    iget v2, p0, Loe/I;->e:I

    aput-short p1, v1, v2

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

    iget-object v0, p0, Lye/f0$e;->g:Lye/f0;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    iget v1, p0, Loe/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()S
    .locals 2

    iget-object v0, p0, Lye/f0$e;->g:Lye/f0;

    iget-object v0, v0, Lye/f0;->r:[S

    iget v1, p0, Loe/I;->e:I

    aget-short v0, v0, v1

    return v0
.end method
