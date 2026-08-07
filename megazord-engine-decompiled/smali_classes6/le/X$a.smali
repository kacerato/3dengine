.class public Lle/X$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/X;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lre/Q;

.field public final synthetic c:Lle/X;


# direct methods
.method public constructor <init>(Lle/X;)V
    .locals 0

    iput-object p1, p0, Lle/X$a;->c:Lle/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/X;->b:LCe/e;

    invoke-interface {p1}, LCe/e;->iterator()Lre/Q;

    move-result-object p1

    iput-object p1, p0, Lle/X$a;->b:Lre/Q;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lle/X$a;->b:Lre/Q;

    invoke-interface {v0}, Lre/Q;->next()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/X$a;->b:Lre/Q;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/X$a;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/X$a;->b:Lre/Q;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
