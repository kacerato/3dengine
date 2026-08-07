.class public LC5/b$o$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/b$o$a;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LC5/b$o$a;


# direct methods
.method public constructor <init>(LC5/b$o$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LC5/b$o$a$b;->b:LC5/b$o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LC5/b$o$a$b;->b:LC5/b$o$a;

    iget-object v0, v0, LC5/b$o$a;->c:LC5/b$o;

    iget-object v0, v0, LC5/b$o;->b:LC5/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LC5/b;->h0(LC5/b;LTb/d;)LTb/d;

    iget-object v0, p0, LC5/b$o$a$b;->b:LC5/b$o$a;

    iget-object v0, v0, LC5/b$o$a;->c:LC5/b$o;

    iget-object v0, v0, LC5/b$o;->b:LC5/b;

    invoke-static {v0, v1}, LC5/b;->W(LC5/b;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
