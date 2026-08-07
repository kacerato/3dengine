.class public Lye/b0$f;
.super Lse/a;
.source "SourceFile"

# interfaces
.implements Lre/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/b0;
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
        "Lre/h0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lye/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lye/b0<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lye/b0;


# direct methods
.method public constructor <init>(Lye/b0;Lye/b0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lye/b0<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lye/b0$f;->h:Lye/b0;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    iput-object p2, p0, Lye/b0$f;->g:Lye/b0;

    return-void
.end method


# virtual methods
.method public f(D)D
    .locals 4

    invoke-virtual {p0}, Lye/b0$f;->value()D

    move-result-wide v0

    iget-object v2, p0, Lye/b0$f;->g:Lye/b0;

    iget-object v2, v2, Lye/b0;->r:[D

    iget v3, p0, Loe/I;->e:I

    aput-wide p1, v2, v3

    return-wide v0
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

    iget-object v0, p0, Lye/b0$f;->g:Lye/b0;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    iget v1, p0, Loe/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()D
    .locals 3

    iget-object v0, p0, Lye/b0$f;->g:Lye/b0;

    iget-object v0, v0, Lye/b0;->r:[D

    iget v1, p0, Loe/I;->e:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
