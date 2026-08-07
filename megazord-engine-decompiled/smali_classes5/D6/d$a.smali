.class public LD6/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD6/d;->h(LD6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LD6/b;

.field public final synthetic c:LD6/d;


# direct methods
.method public constructor <init>(LD6/d;LD6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$elementList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LD6/d$a;->c:LD6/d;

    iput-object p2, p0, LD6/d$a;->b:LD6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LD6/d$a;->c:LD6/d;

    invoke-static {v0}, LD6/d;->a(LD6/d;)LD6/a;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LD6/d$a;->b:LD6/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LD6/d$a;->c:LD6/d;

    invoke-static {v1}, LD6/d;->a(LD6/d;)LD6/a;

    move-result-object v1

    invoke-interface {v1, v0}, LD6/a;->e(Ljava/util/List;)V

    :cond_0
    return-void
.end method
