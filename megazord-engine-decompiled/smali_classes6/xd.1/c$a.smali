.class public Lxd/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxd/c;->d(LAd/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LAd/e;

.field public final synthetic c:Lxd/c;


# direct methods
.method public constructor <init>(Lxd/c;LAd/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lxd/c$a;->c:Lxd/c;

    iput-object p2, p0, Lxd/c$a;->b:LAd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lxd/c$a;->c:Lxd/c;

    iget-object v1, p0, Lxd/c$a;->b:LAd/e;

    invoke-static {v0, v1}, Lxd/c;->a(Lxd/c;LAd/e;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lxd/c$a$a;

    invoke-direct {v1, p0, v0}, Lxd/c$a$a;-><init>(Lxd/c$a;Ljava/lang/String;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
