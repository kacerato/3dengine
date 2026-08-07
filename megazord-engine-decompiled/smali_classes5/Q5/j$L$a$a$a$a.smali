.class public LQ5/j$L$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$L$a$a$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LQ5/j$L$a$a$a;


# direct methods
.method public constructor <init>(LQ5/j$L$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$L$a$a$a$a;->b:LQ5/j$L$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LQ5/j$L$a$a$a$a;->b:LQ5/j$L$a$a$a;

    iget-object v0, v0, LQ5/j$L$a$a$a;->a:LQ5/j$L$a$a;

    iget-object v0, v0, LQ5/j$L$a$a;->c:LQ5/j$L$a;

    iget-object v0, v0, LQ5/j$L$a;->a:LQ5/j$L;

    iget-object v0, v0, LQ5/j$L;->c:LQ5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQ5/b;->a()V

    :cond_0
    return-void
.end method
