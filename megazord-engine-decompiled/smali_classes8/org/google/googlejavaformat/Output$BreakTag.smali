.class public final Lorg/google/googlejavaformat/Output$BreakTag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/Output;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BreakTag"
.end annotation


# instance fields
.field taken:LR2/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR2/C<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LR2/C;->a()LR2/C;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/Output$BreakTag;->taken:LR2/C;

    return-void
.end method


# virtual methods
.method public recordBroken(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "broken"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, LR2/C;->f(Ljava/lang/Object;)LR2/C;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/Output$BreakTag;->taken:LR2/C;

    return-void
.end method

.method public wasBreakTaken()Z
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/Output$BreakTag;->taken:LR2/C;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LR2/C;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
