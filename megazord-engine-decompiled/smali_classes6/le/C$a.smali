.class public Lle/C$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/C;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lre/y;

.field public final synthetic c:Lle/C;


# direct methods
.method public constructor <init>(Lle/C;)V
    .locals 0

    iput-object p1, p0, Lle/C$a;->c:Lle/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/C;->b:LCe/c;

    invoke-interface {p1}, LCe/c;->iterator()Lre/y;

    move-result-object p1

    iput-object p1, p0, Lle/C$a;->b:Lre/y;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Lle/C$a;->b:Lre/y;

    invoke-interface {v0}, Lre/y;->next()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/C$a;->b:Lre/y;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/C$a;->a()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/C$a;->b:Lre/y;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
