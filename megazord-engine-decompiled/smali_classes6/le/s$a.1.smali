.class public Lle/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/s;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lre/p;

.field public final synthetic c:Lle/s;


# direct methods
.method public constructor <init>(Lle/s;)V
    .locals 0

    iput-object p1, p0, Lle/s$a;->c:Lle/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lle/s;->b:LCe/b;

    invoke-interface {p1}, LCe/b;->iterator()Lre/p;

    move-result-object p1

    iput-object p1, p0, Lle/s$a;->b:Lre/p;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Character;
    .locals 1

    iget-object v0, p0, Lle/s$a;->b:Lre/p;

    invoke-interface {v0}, Lre/p;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lle/s$a;->b:Lre/p;

    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lle/s$a;->a()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lle/s$a;->b:Lre/p;

    invoke-interface {v0}, Lre/V;->remove()V

    return-void
.end method
