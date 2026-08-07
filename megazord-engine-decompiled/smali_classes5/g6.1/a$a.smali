.class public Lg6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg6/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lg6/a;


# direct methods
.method public constructor <init>(Lg6/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lg6/a$a;->b:Lg6/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lg6/a$a;->b:Lg6/a;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lg6/a$a;->b:Lg6/a;

    iget-object v2, v2, Lf6/b;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lg6/a;->q(Lg6/a;Ljava/io/File;)V

    iget-object v0, p0, Lg6/a$a;->b:Lg6/a;

    invoke-virtual {v0}, Lf6/b;->b()V

    return-void
.end method
