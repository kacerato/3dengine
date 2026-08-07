.class public LU6/c$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG8/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LU6/c;->S()Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LU6/c;


# direct methods
.method public constructor <init>(LU6/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LU6/c$l;->a:LU6/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    new-instance v0, LU6/c$l$a;

    invoke-direct {v0, p0}, LU6/c$l$a;-><init>(LU6/c$l;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    :try_start_0
    new-instance v0, LU6/c$l$b;

    invoke-direct {v0, p0}, LU6/c$l$b;-><init>(LU6/c$l;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
