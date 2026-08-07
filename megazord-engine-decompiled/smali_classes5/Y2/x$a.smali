.class public LY2/x$a;
.super LY2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LY2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LY2/x;


# direct methods
.method public constructor <init>(LY2/x;)V
    .locals 0

    iput-object p1, p0, LY2/x$a;->c:LY2/x;

    invoke-direct {p0}, LY2/v;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, LY2/x$a;->c:LY2/x;

    invoke-static {p2}, LY2/x;->a(LY2/x;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
