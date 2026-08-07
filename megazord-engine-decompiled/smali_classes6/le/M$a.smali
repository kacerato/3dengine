.class public Lle/M$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/M;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lre/H;

.field public final synthetic c:Lle/M;


# direct methods
.method public constructor <init>(Lle/M;)V
    .locals 0

    iput-object p1, p0, Lle/M$a;->c:Lle/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/M;->b:LCe/d;

    invoke-interface {p1}, LCe/d;->iterator()Lre/H;

    move-result-object p1

    iput-object p1, p0, Lle/M$a;->b:Lre/H;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lle/M$a;->b:Lre/H;

    invoke-interface {v0}, Lre/H;->next()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/M$a;->b:Lre/H;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/M$a;->a()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/M$a;->b:Lre/H;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
