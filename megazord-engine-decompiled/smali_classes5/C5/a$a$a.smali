.class public LC5/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/a$a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LC5/a$a;


# direct methods
.method public constructor <init>(LC5/a$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$step"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LC5/a$a$a;->c:LC5/a$a;

    iput-object p2, p0, LC5/a$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LC5/a$a$a;->c:LC5/a$a;

    iget-object v0, v0, LC5/a$a;->a:LC5/a;

    iget-object v1, p0, LC5/a$a$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, LC5/a;->o1(LC5/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, LC5/a$a$a;->c:LC5/a$a;

    iget-object v0, v0, LC5/a$a;->a:LC5/a;

    invoke-static {v0}, LC5/a;->p1(LC5/a;)Lorg/ITsMagic/Atlas/e$c;

    move-result-object v0

    iget-object v1, p0, LC5/a$a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/ITsMagic/Atlas/e$c;->b(Ljava/lang/String;)V

    return-void
.end method
