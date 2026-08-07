.class public abstract Lnf/b;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build LUe/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lnf/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public j8()Ljava/lang/Object;
    .locals 1
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lnf/b;->b:Ljava/lang/Object;

    return-object v0
.end method
