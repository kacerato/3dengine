.class public Lxe/e$f;
.super Lse/a;
.source "SourceFile"

# interfaces
.implements Lre/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxe/e;
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
.field public final g:Lxe/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxe/e<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lxe/e;


# direct methods
.method public constructor <init>(Lxe/e;Lxe/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxe/e<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lxe/e$f;->h:Lxe/e;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    iput-object p2, p0, Lxe/e$f;->g:Lxe/e;

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 3

    invoke-virtual {p0}, Lxe/e$f;->value()I

    move-result v0

    iget-object v1, p0, Lxe/e$f;->g:Lxe/e;

    iget-object v1, v1, Lxe/e;->t:[I

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

    iget-object v0, p0, Lxe/e$f;->g:Lxe/e;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    iget v1, p0, Loe/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()I
    .locals 2

    iget-object v0, p0, Lxe/e$f;->g:Lxe/e;

    iget-object v0, v0, Lxe/e;->t:[I

    iget v1, p0, Loe/I;->e:I

    aget v0, v0, v1

    return v0
.end method
