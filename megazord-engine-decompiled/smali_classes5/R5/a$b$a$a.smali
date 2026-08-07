.class public LR5/a$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR5/a$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LR5/a$b$a;


# direct methods
.method public constructor <init>(LR5/a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LR5/a$b$a$a;->b:LR5/a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LR5/a$b$a$a;->b:LR5/a$b$a;

    iget-object v0, v0, LR5/a$b$a;->b:LR5/a$b;

    iget-object v0, v0, LR5/a$b;->a:LR5/d$a;

    invoke-interface {v0}, LR5/d$a;->onFinish()V

    return-void
.end method
