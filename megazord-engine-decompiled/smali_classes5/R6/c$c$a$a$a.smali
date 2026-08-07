.class public LR6/c$c$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBd/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR6/c$c$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LR6/c$c$a$a;


# direct methods
.method public constructor <init>(LR6/c$c$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LR6/c$c$a$a$a;->a:LR6/c$c$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-static {}, Lv8/j;->v0()V

    iget-object v0, p0, LR6/c$c$a$a$a;->a:LR6/c$c$a$a;

    iget-object v0, v0, LR6/c$c$a$a;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    return-void
.end method
