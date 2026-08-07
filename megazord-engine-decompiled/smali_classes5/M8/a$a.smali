.class public LM8/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM8/a;->k(LM8/d;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM8/d;

.field public final synthetic b:[I

.field public final synthetic c:LM8/a;


# direct methods
.method public constructor <init>(LM8/a;LM8/d;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$serviceListener",
            "val$count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LM8/a$a;->c:LM8/a;

    iput-object p2, p0, LM8/a$a;->a:LM8/d;

    iput-object p3, p0, LM8/a$a;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LM8/a$a;->a:LM8/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LM8/d;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LM8/a$a;->a:LM8/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LM8/d;->onSuccess()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, LM8/a$a;->a:LM8/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, LM8/a$a;->b:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    invoke-interface {v0, v3, v3}, LM8/d;->onProgressChange(II)V

    :cond_0
    return-void
.end method
