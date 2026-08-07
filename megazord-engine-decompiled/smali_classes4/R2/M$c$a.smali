.class public LR2/M$c$a;
.super LR2/M$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR2/M$c;->b(LR2/M;Ljava/lang/CharSequence;)LR2/M$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:LR2/g;


# direct methods
.method public constructor <init>(LR2/M$c;LR2/M;Ljava/lang/CharSequence;LR2/g;)V
    .locals 0

    iput-object p4, p0, LR2/M$c$a;->i:LR2/g;

    invoke-direct {p0, p2, p3}, LR2/M$g;-><init>(LR2/M;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 0

    iget-object p1, p0, LR2/M$c$a;->i:LR2/g;

    invoke-virtual {p1}, LR2/g;->a()I

    move-result p1

    return p1
.end method

.method public g(I)I
    .locals 1

    iget-object v0, p0, LR2/M$c$a;->i:LR2/g;

    invoke-virtual {v0, p1}, LR2/g;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LR2/M$c$a;->i:LR2/g;

    invoke-virtual {p1}, LR2/g;->f()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
