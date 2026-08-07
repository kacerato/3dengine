.class public LR2/M$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/M$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR2/M;->j(LR2/h;)LR2/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LR2/h;


# direct methods
.method public constructor <init>(LR2/h;)V
    .locals 0

    iput-object p1, p0, LR2/M$c;->a:LR2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LR2/M;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, LR2/M$c;->b(LR2/M;Ljava/lang/CharSequence;)LR2/M$g;

    move-result-object p1

    return-object p1
.end method

.method public b(LR2/M;Ljava/lang/CharSequence;)LR2/M$g;
    .locals 2

    iget-object v0, p0, LR2/M$c;->a:LR2/h;

    invoke-virtual {v0, p2}, LR2/h;->d(Ljava/lang/CharSequence;)LR2/g;

    move-result-object v0

    new-instance v1, LR2/M$c$a;

    invoke-direct {v1, p0, p1, p2, v0}, LR2/M$c$a;-><init>(LR2/M$c;LR2/M;Ljava/lang/CharSequence;LR2/g;)V

    return-object v1
.end method
