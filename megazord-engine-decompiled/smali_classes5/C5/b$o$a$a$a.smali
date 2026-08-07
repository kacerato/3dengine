.class public LC5/b$o$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/b$o$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LTb/d;

.field public final synthetic c:LC5/b$o$a$a;


# direct methods
.method public constructor <init>(LC5/b$o$a$a;LTb/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$finalNewBrushImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/b$o$a$a$a;->c:LC5/b$o$a$a;

    iput-object p2, p0, LC5/b$o$a$a$a;->b:LTb/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LC5/b$o$a$a$a;->c:LC5/b$o$a$a;

    iget-object v0, v0, LC5/b$o$a$a;->c:LC5/b$o$a;

    iget-object v0, v0, LC5/b$o$a;->c:LC5/b$o;

    iget-object v0, v0, LC5/b$o;->b:LC5/b;

    iget-object v1, p0, LC5/b$o$a$a$a;->b:LTb/d;

    invoke-static {v0, v1}, LC5/b;->h0(LC5/b;LTb/d;)LTb/d;

    iget-object v0, p0, LC5/b$o$a$a$a;->c:LC5/b$o$a$a;

    iget-object v1, v0, LC5/b$o$a$a;->c:LC5/b$o$a;

    iget-object v1, v1, LC5/b$o$a;->c:LC5/b$o;

    iget-object v1, v1, LC5/b$o;->b:LC5/b;

    iget-object v0, v0, LC5/b$o$a$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v1, v0}, LC5/b;->W(LC5/b;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
