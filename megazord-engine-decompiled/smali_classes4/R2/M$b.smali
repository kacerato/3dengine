.class public LR2/M$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/M$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR2/M;->k(Ljava/lang/String;)LR2/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LR2/M$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LR2/M;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, LR2/M$b;->b(LR2/M;Ljava/lang/CharSequence;)LR2/M$g;

    move-result-object p1

    return-object p1
.end method

.method public b(LR2/M;Ljava/lang/CharSequence;)LR2/M$g;
    .locals 1

    new-instance v0, LR2/M$b$a;

    invoke-direct {v0, p0, p1, p2}, LR2/M$b$a;-><init>(LR2/M$b;LR2/M;Ljava/lang/CharSequence;)V

    return-object v0
.end method
