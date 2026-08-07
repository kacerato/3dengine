.class public LQ5/j$L$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$L$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ5/j$L$a$a;


# direct methods
.method public constructor <init>(LQ5/j$L$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$L$a$a$a;->a:LQ5/j$L$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    new-instance v0, LQ5/j$L$a$a$a$b;

    invoke-direct {v0, p0}, LQ5/j$L$a$a$a$b;-><init>(LQ5/j$L$a$a$a;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, LQ5/j$L$a$a$a$a;

    invoke-direct {v0, p0}, LQ5/j$L$a$a$a$a;-><init>(LQ5/j$L$a$a$a;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
