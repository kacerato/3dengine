.class public LR2/J$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/I;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR2/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LR2/I<",
        "TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final d:J


# instance fields
.field public final b:LR2/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR2/I<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final c:LR2/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR2/t<",
            "TA;+TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LR2/I;LR2/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR2/I<",
            "TB;>;",
            "LR2/t<",
            "TA;+TB;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR2/I;

    iput-object p1, p0, LR2/J$c;->b:LR2/I;

    .line 4
    invoke-static {p2}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR2/t;

    iput-object p1, p0, LR2/J$c;->c:LR2/t;

    return-void
.end method

.method public synthetic constructor <init>(LR2/I;LR2/t;LR2/J$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LR2/J$c;-><init>(LR2/I;LR2/t;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime LR2/E;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    iget-object v0, p0, LR2/J$c;->b:LR2/I;

    iget-object v1, p0, LR2/J$c;->c:LR2/t;

    invoke-interface {v1, p1}, LR2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LR2/I;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, LR2/J$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LR2/J$c;

    iget-object v0, p0, LR2/J$c;->c:LR2/t;

    iget-object v2, p1, LR2/J$c;->c:LR2/t;

    invoke-interface {v0, v2}, LR2/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LR2/J$c;->b:LR2/I;

    iget-object p1, p1, LR2/J$c;->b:LR2/I;

    invoke-interface {v0, p1}, LR2/I;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LR2/J$c;->c:LR2/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, LR2/J$c;->b:LR2/I;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, LR2/J$c;->b:LR2/I;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LR2/J$c;->c:LR2/t;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
