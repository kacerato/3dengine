.class public LR9/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR9/k$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR9/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LR9/k;


# direct methods
.method public constructor <init>(LR9/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LR9/k$b;->a:LR9/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LR9/k$b;->a:LR9/k;

    invoke-static {v0}, LR9/k;->a(LR9/k;)LR9/k$g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LR9/k$g;->c(II)F

    move-result p1

    return p1
.end method
