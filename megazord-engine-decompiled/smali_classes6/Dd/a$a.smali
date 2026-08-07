.class public LDd/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDd/a;->a(ILDd/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LDd/b;

.field public final synthetic c:LDd/a;


# direct methods
.method public constructor <init>(LDd/a;LDd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LDd/a$a;->c:LDd/a;

    iput-object p2, p0, LDd/a$a;->b:LDd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LDd/a$a;->b:LDd/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LDd/b;->run()V

    :cond_0
    return-void
.end method
