.class public abstract Lte/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lte/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lte/f;",
        ">",
        "Ljava/lang/Object;",
        "Lte/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public volatile b:Lte/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile c:Lte/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public J4(Lte/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lte/g;->b:Lte/f;

    return-void
.end method

.method public getNext()Lte/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lte/g;->b:Lte/f;

    return-object v0
.end method

.method public ka()Lte/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lte/g;->c:Lte/f;

    return-object v0
.end method

.method public r9(Lte/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lte/g;->c:Lte/f;

    return-void
.end method
