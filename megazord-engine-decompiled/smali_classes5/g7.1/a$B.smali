.class public Lg7/a$B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a;->T2(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:Z

.field public final synthetic d:Lg7/a;


# direct methods
.method public constructor <init>(Lg7/a;LI7/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$loading",
            "val$closePanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$B;->d:Lg7/a;

    iput-object p2, p0, Lg7/a$B;->b:LI7/a;

    iput-boolean p3, p0, Lg7/a$B;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lg7/a$B;->d:Lg7/a;

    invoke-static {v0}, Lg7/a;->u1(Lg7/a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lg7/a$B;->d:Lg7/a;

    invoke-static {v1, v0}, Lg7/a;->v1(Lg7/a;Ljava/util/List;)V

    new-instance v1, Lg7/a$B$a;

    invoke-direct {v1, p0, v0}, Lg7/a$B$a;-><init>(Lg7/a$B;Ljava/util/List;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lg7/a$B$b;

    invoke-direct {v0, p0}, Lg7/a$B$b;-><init>(Lg7/a$B;)V

    :goto_0
    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to slice sprites: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lg7/a$B$b;

    invoke-direct {v0, p0}, Lg7/a$B$b;-><init>(Lg7/a$B;)V

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    new-instance v1, Lg7/a$B$b;

    invoke-direct {v1, p0}, Lg7/a$B$b;-><init>(Lg7/a$B;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    throw v0
.end method
