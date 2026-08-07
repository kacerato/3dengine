.class public Lxe/f$f;
.super Lse/a;
.source "SourceFile"

# interfaces
.implements Lre/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxe/f;
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
        "Lre/k0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final g:Lxe/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxe/f<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lxe/f;


# direct methods
.method public constructor <init>(Lxe/f;Lxe/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxe/f<",
            "TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lxe/f$f;->h:Lxe/f;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    iput-object p2, p0, Lxe/f$f;->g:Lxe/f;

    return-void
.end method


# virtual methods
.method public d(J)J
    .locals 4

    invoke-virtual {p0}, Lxe/f$f;->value()J

    move-result-wide v0

    iget-object v2, p0, Lxe/f$f;->g:Lxe/f;

    iget-object v2, v2, Lxe/f;->t:[J

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

    iget-object v0, p0, Lxe/f$f;->g:Lxe/f;

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    iget v1, p0, Loe/I;->e:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public value()J
    .locals 3

    iget-object v0, p0, Lxe/f$f;->g:Lxe/f;

    iget-object v0, v0, Lxe/f;->t:[J

    iget v1, p0, Loe/I;->e:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
