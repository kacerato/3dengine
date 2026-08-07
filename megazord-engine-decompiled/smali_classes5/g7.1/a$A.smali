.class public Lg7/a$A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/a;->w2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg7/a;


# direct methods
.method public constructor <init>(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lg7/a$A;->b:Lg7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, LMb/g;

    iget-object v1, p0, Lg7/a$A;->b:Lg7/a;

    invoke-static {v1}, Lg7/a;->W1(Lg7/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LMb/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    new-instance v2, Lg7/a$A$a;

    invoke-direct {v2, p0, v0, v1}, Lg7/a$A$a;-><init>(Lg7/a$A;LMb/g;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    invoke-static {v2}, Lf8/c;->j0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lg7/a$A$b;

    invoke-direct {v0, p0}, Lg7/a$A$b;-><init>(Lg7/a$A;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
