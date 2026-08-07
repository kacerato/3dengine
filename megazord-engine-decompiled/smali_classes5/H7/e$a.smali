.class public LH7/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH7/e;-><init>([LH7/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LH7/d;

.field public final synthetic c:LH7/e;


# direct methods
.method public constructor <init>(LH7/e;ILH7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalI",
            "val$button"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LH7/e$a;->c:LH7/e;

    iput p2, p0, LH7/e$a;->a:I

    iput-object p3, p0, LH7/e$a;->b:LH7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, LH7/e$a;->a:I

    iget-object v1, p0, LH7/e$a;->c:LH7/e;

    invoke-static {v1}, LH7/e;->a(LH7/e;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, LH7/e$a;->c:LH7/e;

    invoke-static {p1}, LH7/e;->a(LH7/e;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p1, p0, LH7/e$a;->c:LH7/e;

    invoke-static {p1}, LH7/e;->a(LH7/e;)I

    move-result p1

    iget-object v1, p0, LH7/e$a;->c:LH7/e;

    invoke-static {v1}, LH7/e;->c(LH7/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object p1, p0, LH7/e$a;->c:LH7/e;

    invoke-static {p1}, LH7/e;->c(LH7/e;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, LH7/e$a;->c:LH7/e;

    invoke-static {v1}, LH7/e;->a(LH7/e;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LH7/d;

    invoke-virtual {p1, v0, v0}, LH7/d;->x(ZZ)V

    :cond_0
    iget-object p1, p0, LH7/e$a;->c:LH7/e;

    iget v0, p0, LH7/e$a;->a:I

    invoke-static {p1, v0}, LH7/e;->b(LH7/e;I)I

    goto :goto_0

    :cond_1
    iget p1, p0, LH7/e$a;->a:I

    iget-object v1, p0, LH7/e$a;->c:LH7/e;

    invoke-static {v1}, LH7/e;->a(LH7/e;)I

    move-result v1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, LH7/e$a;->b:LH7/d;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, LH7/d;->x(ZZ)V

    :cond_2
    :goto_0
    return-void
.end method
