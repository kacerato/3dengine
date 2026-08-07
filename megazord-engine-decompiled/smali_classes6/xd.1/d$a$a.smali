.class public Lxd/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxd/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lxd/d$a;


# direct methods
.method public constructor <init>(Lxd/d$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$responseMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lxd/d$a$a;->c:Lxd/d$a;

    iput-object p2, p0, Lxd/d$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lxd/d$a$a;->c:Lxd/d$a;

    iget-object v0, v0, Lxd/d$a;->c:Lxd/d;

    iget-object v1, p0, Lxd/d$a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lxd/d;->b(Lxd/d;Ljava/lang/String;)V

    return-void
.end method
