.class public Lga/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/a;->add(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lga/a;


# direct methods
.method public constructor <init>(Lga/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lga/a$a;->c:Lga/a;

    iput-object p2, p0, Lga/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lga/a$a;->c:Lga/a;

    invoke-static {v0}, Lga/a;->a(Lga/a;)Lga/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lga/a$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lga/a$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lga/a$a;->c:Lga/a;

    invoke-static {v1}, Lga/a;->b(Lga/a;)Lbd/a;

    move-result-object v1

    invoke-virtual {v1}, Lbd/a;->e()V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lga/a$a;->c:Lga/a;

    invoke-static {v0}, Lga/a;->b(Lga/a;)Lbd/a;

    move-result-object v0

    invoke-virtual {v0}, Lbd/a;->e()V

    return-void
.end method
