.class public LR2/M$a$a;
.super LR2/M$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR2/M$a;->b(LR2/M;Ljava/lang/CharSequence;)LR2/M$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:LR2/M$a;


# direct methods
.method public constructor <init>(LR2/M$a;LR2/M;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, LR2/M$a$a;->i:LR2/M$a;

    invoke-direct {p0, p2, p3}, LR2/M$g;-><init>(LR2/M;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public g(I)I
    .locals 2

    iget-object v0, p0, LR2/M$a$a;->i:LR2/M$a;

    iget-object v0, v0, LR2/M$a;->a:LR2/e;

    iget-object v1, p0, LR2/M$g;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, LR2/e;->o(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method
