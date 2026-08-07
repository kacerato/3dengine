.class public LR2/M$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/M$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR2/M;->i(LR2/e;)LR2/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LR2/e;


# direct methods
.method public constructor <init>(LR2/e;)V
    .locals 0

    iput-object p1, p0, LR2/M$a;->a:LR2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LR2/M;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, LR2/M$a;->b(LR2/M;Ljava/lang/CharSequence;)LR2/M$g;

    move-result-object p1

    return-object p1
.end method

.method public b(LR2/M;Ljava/lang/CharSequence;)LR2/M$g;
    .locals 1

    new-instance v0, LR2/M$a$a;

    invoke-direct {v0, p0, p1, p2}, LR2/M$a$a;-><init>(LR2/M$a;LR2/M;Ljava/lang/CharSequence;)V

    return-object v0
.end method
