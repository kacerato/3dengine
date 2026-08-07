.class public Lle/y0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/y0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lre/s0;

.field public final synthetic c:Lle/y0;


# direct methods
.method public constructor <init>(Lle/y0;)V
    .locals 0

    iput-object p1, p0, Lle/y0$a;->c:Lle/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/y0;->b:LCe/g;

    invoke-interface {p1}, LCe/g;->iterator()Lre/s0;

    move-result-object p1

    iput-object p1, p0, Lle/y0$a;->b:Lre/s0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Short;
    .locals 1

    iget-object v0, p0, Lle/y0$a;->b:Lre/s0;

    invoke-interface {v0}, Lre/s0;->next()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/y0$a;->b:Lre/s0;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/y0$a;->a()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/y0$a;->b:Lre/s0;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
