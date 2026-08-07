.class public Lx6/b$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/b;->G1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx6/b;


# direct methods
.method public constructor <init>(Lx6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lx6/b$j;->b:Lx6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    sget-object v0, Ln6/b$k;->IsTemplate:Ln6/b$k;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v0}, Ln6/b;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln6/b$k;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lx6/b$j$a;

    invoke-direct {v1, p0, v0}, Lx6/b$j$a;-><init>(Lx6/b$j;Ljava/util/List;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lx6/b$j$b;

    invoke-direct {v1, p0, v0}, Lx6/b$j$b;-><init>(Lx6/b$j;Ljava/lang/RuntimeException;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
