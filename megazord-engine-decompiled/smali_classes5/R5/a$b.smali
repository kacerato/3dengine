.class public LR5/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/y$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR5/a;->D(Ljava/util/List;LR5/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LR5/d$a;

.field public final synthetic b:LR5/a;


# direct methods
.method public constructor <init>(LR5/a;LR5/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LR5/a$b;->b:LR5/a;

    iput-object p2, p0, LR5/a$b;->a:LR5/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, LB7/e;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, LB7/e;-><init>(Ljava/lang/String;Ljava/lang/String;LB7/d;)V

    iget-object p1, p0, LR5/a$b;->a:LR5/d$a;

    iget-object v1, p0, LR5/a$b;->b:LR5/a;

    invoke-interface {p1, v0, v1}, LR5/d$a;->a(LB7/b;LR5/d;)V

    return-void
.end method

.method public onFinish()V
    .locals 1

    new-instance v0, LR5/a$b$a;

    invoke-direct {v0, p0}, LR5/a$b$a;-><init>(LR5/a$b;)V

    invoke-static {v0}, Lf8/c;->c0(Ljava/lang/Runnable;)V

    return-void
.end method
