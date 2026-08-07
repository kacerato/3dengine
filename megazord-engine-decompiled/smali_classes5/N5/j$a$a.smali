.class public LN5/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN5/j$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:LN5/j$a;


# direct methods
.method public constructor <init>(LN5/j$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$w"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN5/j$a$a;->c:LN5/j$a;

    iput p2, p0, LN5/j$a$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LN5/j$a$a;->c:LN5/j$a;

    iget-object v0, v0, LN5/j$a;->b:LN5/j;

    invoke-static {v0}, LN5/j;->p1(LN5/j;)I

    move-result v0

    iget v1, p0, LN5/j$a$a;->b:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, LN5/j$a$a;->c:LN5/j$a;

    iget-object v0, v0, LN5/j$a;->b:LN5/j;

    invoke-static {v0, v1}, LN5/j;->r1(LN5/j;I)I

    iget-object v0, p0, LN5/j$a$a;->c:LN5/j$a;

    iget-object v0, v0, LN5/j$a;->b:LN5/j;

    invoke-static {v0}, LN5/j;->s1(LN5/j;)V

    :cond_0
    return-void
.end method
