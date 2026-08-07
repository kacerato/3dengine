.class public LR2/M$d$a;
.super LR2/M$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR2/M$d;->b(LR2/M;Ljava/lang/CharSequence;)LR2/M$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:LR2/M$d;


# direct methods
.method public constructor <init>(LR2/M$d;LR2/M;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, LR2/M$d$a;->i:LR2/M$d;

    invoke-direct {p0, p2, p3}, LR2/M$g;-><init>(LR2/M;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 0

    return p1
.end method

.method public g(I)I
    .locals 1

    iget-object v0, p0, LR2/M$d$a;->i:LR2/M$d;

    iget v0, v0, LR2/M$d;->a:I

    add-int/2addr p1, v0

    iget-object v0, p0, LR2/M$g;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
