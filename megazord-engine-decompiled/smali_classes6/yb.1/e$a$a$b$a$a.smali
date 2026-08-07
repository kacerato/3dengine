.class public Lyb/e$a$a$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$a$b$a;->b(Lr7/c$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lyb/e$a$a$b$a;


# direct methods
.method public constructor <init>(Lyb/e$a$a$b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$a$b$a$a;->b:Lyb/e$a$a$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lyb/e$a$a$b$a$a;->b:Lyb/e$a$a$b$a;

    iget-object v0, v0, Lyb/e$a$a$b$a;->a:Lyb/e$a$a$b;

    iget-object v0, v0, Lyb/e$a$a$b;->a:Lyb/e$a$a;

    iget-object v0, v0, Lyb/e$a$a;->b:Lyb/e$a;

    iget-object v0, v0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lyb/e;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method
