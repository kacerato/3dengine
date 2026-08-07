.class public Lkf/q$c;
.super Lkf/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lkf/q$f;-><init>()V

    iput-object p1, p0, Lkf/q$c;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public b(LTe/J$c;LTe/f;)LVe/c;
    .locals 2

    new-instance v0, Lkf/q$d;

    iget-object v1, p0, Lkf/q$c;->b:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, Lkf/q$d;-><init>(Ljava/lang/Runnable;LTe/f;)V

    invoke-virtual {p1, v0}, LTe/J$c;->b(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    return-object p1
.end method
