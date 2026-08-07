.class public Lg7/a$C$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a$C$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg7/a$C$a;


# direct methods
.method public constructor <init>(Lg7/a$C$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$C$a$a;->b:Lg7/a$C$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lg7/a$C$a$a;->b:Lg7/a$C$a;

    iget-object v0, v0, Lg7/a$C$a;->b:Lg7/a$C;

    iget-object v0, v0, Lg7/a$C;->c:Lg7/a;

    invoke-static {v0}, Lg7/a;->W1(Lg7/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LMb/g;->O0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v0}, LMb/g;->P0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
